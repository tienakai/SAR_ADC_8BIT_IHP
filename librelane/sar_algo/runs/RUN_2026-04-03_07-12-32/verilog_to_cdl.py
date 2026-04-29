#!/usr/bin/env python3
import re
from pathlib import Path

VERILOG = Path("52-openroad-fillinsertion/sar_algo.pnl.v")
CDL_LIB = Path("/opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/cdl/sg13g2_stdcell.cdl")
OUT = Path("sar_algo.cdl")
TOP = "sar_algo"

PIN_ALIASES = {
    "X": ["Y"],
    "Y": ["X"],
    "B_N": ["B"],
    "A_N": ["A"],
}

FLOAT_OK_PINS = {"Y", "X", "Q", "QN", "S", "CO"}

def read_text(p):
    return p.read_text(encoding="utf-8", errors="ignore")

def parse_cdl_pin_orders(cdl_text):
    pin_order = {}
    lines = cdl_text.splitlines()
    i = 0
    while i < len(lines):
        line = lines[i].rstrip()
        if re.match(r'^\s*\.SUBCKT\b', line, re.I):
            full = line
            j = i + 1
            while j < len(lines) and lines[j].lstrip().startswith('+'):
                full += ' ' + lines[j].lstrip()[1:].strip()
                j += 1
            m = re.match(r'^\s*\.SUBCKT\s+(\S+)\s+(.*)$', full, re.I)
            if m:
                cell = m.group(1)
                pins = m.group(2).split()
                pin_order[cell] = pins
            i = j
        else:
            i += 1
    return pin_order

def parse_top_ports(verilog_text):
    m = re.search(r'\bmodule\s+' + re.escape(TOP) + r'\s*\((.*?)\)\s*;', verilog_text, re.S)
    if not m:
        raise RuntimeError(f"Khong tim thay module {TOP}")
    header_ports = [x.strip() for x in m.group(1).replace('\n', ' ').split(',') if x.strip()]

    decl_width = {}
    for mm in re.finditer(r'^\s*(input|output|inout)\s*(\[(\d+):(\d+)\])?\s*([^;]+);', verilog_text, re.M):
        names = [x.strip() for x in mm.group(5).split(',')]
        if mm.group(2):
            msb = int(mm.group(3))
            lsb = int(mm.group(4))
            lo = min(msb, lsb)
            hi = max(msb, lsb)
            for n in names:
                decl_width[n] = (lo, hi)
        else:
            for n in names:
                decl_width[n] = None

    expanded = []
    for p in header_ports:
        if p in decl_width and decl_width[p] is not None:
            lo, hi = decl_width[p]
            for b in range(lo, hi + 1):
                expanded.append(f"{p}[{b}]")
        else:
            expanded.append(p)
    return expanded

def norm_net(net):
    net = net.strip()
    if net.startswith("\\"):
        net = net[1:].strip()
    net = re.sub(r'\s+', '', net)
    return net

def parse_instances(verilog_text):
    insts = []
    pattern = re.compile(r'^\s*(sg13g2_[A-Za-z0-9_]+)\s+([A-Za-z0-9_.$]+)\s*\((.*?)\)\s*;\s*$', re.M | re.S)
    for m in pattern.finditer(verilog_text):
        cell = m.group(1)
        name = m.group(2)
        body = m.group(3)
        pins = {}
        for pm in re.finditer(r'\.(\w+)\s*\(\s*(.*?)\s*\)', body, re.S):
            pins[pm.group(1)] = norm_net(pm.group(2))
        insts.append((cell, name, pins))
    return insts

def resolve_pin(p, pins):
    if p in pins:
        return pins[p]
    for alt in PIN_ALIASES.get(p, []):
        if alt in pins:
            return pins[alt]
    return None

def main():
    vtxt = read_text(VERILOG)
    ctxt = read_text(CDL_LIB)

    pin_order = parse_cdl_pin_orders(ctxt)
    top_ports = parse_top_ports(vtxt)
    insts = parse_instances(vtxt)

    missing_cells = sorted({cell for cell, _, _ in insts if cell not in pin_order})
    if missing_cells:
        print("CAC CELL KHONG TIM THAY PIN ORDER TRONG CDL LIB:")
        for c in missing_cells:
            print(c)
        raise SystemExit(1)

    with OUT.open("w", encoding="utf-8") as f:
        f.write(f'.include "{CDL_LIB}"\n\n')
        f.write(".SUBCKT " + TOP + " " + " ".join(top_ports) + "\n\n")

        for cell, name, pins in insts:
            order = pin_order[cell]
            nets = []
            missing = []
            for p in order:
                net = resolve_pin(p, pins)
                if net is None:
                    if p in FLOAT_OK_PINS:
                        net = f"__FLOAT__{name}_{p}"
                    else:
                        missing.append(p)
                        continue
                nets.append(net)

            if missing:
                print(f"INSTANCE {name} ({cell}) THIEU PIN: {missing}")
                print(f"CO CAC PIN: {sorted(pins.keys())}")
                raise SystemExit(2)

            f.write(f"X{name} " + " ".join(nets) + f" {cell}\n")

        f.write(f"\n.ENDS {TOP}\n")

    print(f"Da tao: {OUT}")
    print(f"So instance: {len(insts)}")

if __name__ == "__main__":
    main()
