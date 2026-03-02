// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vlng.h for the primary calling header

#include "Vlng__pch.h"
#include "Vlng___024root.h"

void Vlng___024root___eval_act(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_act\n"); );
}

void Vlng___024root___nba_sequent__TOP__0(Vlng___024root* vlSelf);

void Vlng___024root___eval_nba(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vlng___024root___nba_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vlng___024root___nba_sequent__TOP__0(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___nba_sequent__TOP__0\n"); );
    // Init
    CData/*7:0*/ __Vdly__D;
    __Vdly__D = 0;
    CData/*3:0*/ __Vdly__sar_logic__DOT__counter;
    __Vdly__sar_logic__DOT__counter = 0;
    // Body
    __Vdly__sar_logic__DOT__counter = vlSelf->sar_logic__DOT__counter;
    __Vdly__D = vlSelf->D;
    if (vlSelf->rst) {
        vlSelf->B = 0U;
        vlSelf->BN = 0U;
        __Vdly__D = 0U;
        __Vdly__sar_logic__DOT__counter = 0U;
    } else if (((IData)(vlSelf->En) & ((IData)(vlSelf->Op) 
                                       ^ (IData)(vlSelf->Om)))) {
        if ((7U > (IData)(vlSelf->sar_logic__DOT__counter))) {
            __Vdly__D = (0xffU & ((IData)(vlSelf->D) 
                                  | ((IData)(vlSelf->Op) 
                                     << (IData)(vlSelf->sar_logic__DOT__counter))));
            vlSelf->sar_logic__DOT____Vlvbound_h5c5d257c__0 
                = vlSelf->Op;
            vlSelf->sar_logic__DOT____Vlvbound_h248704ae__0 
                = vlSelf->Om;
            if ((6U >= (7U & VL_MODDIV_III(32, (IData)(vlSelf->sar_logic__DOT__counter), (IData)(7U))))) {
                vlSelf->B = (((~ ((IData)(1U) << (7U 
                                                  & VL_MODDIV_III(32, (IData)(vlSelf->sar_logic__DOT__counter), (IData)(7U))))) 
                              & (IData)(vlSelf->B)) 
                             | (0x7fU & ((IData)(vlSelf->sar_logic__DOT____Vlvbound_h5c5d257c__0) 
                                         << (7U & VL_MODDIV_III(32, (IData)(vlSelf->sar_logic__DOT__counter), (IData)(7U))))));
                vlSelf->BN = (((~ ((IData)(1U) << (7U 
                                                   & VL_MODDIV_III(32, (IData)(vlSelf->sar_logic__DOT__counter), (IData)(7U))))) 
                               & (IData)(vlSelf->BN)) 
                              | (0x7fU & ((IData)(vlSelf->sar_logic__DOT____Vlvbound_h248704ae__0) 
                                          << (7U & 
                                              VL_MODDIV_III(32, (IData)(vlSelf->sar_logic__DOT__counter), (IData)(7U))))));
            }
            __Vdly__sar_logic__DOT__counter = (0xfU 
                                               & ((IData)(1U) 
                                                  + (IData)(vlSelf->sar_logic__DOT__counter)));
        }
    }
    vlSelf->D = __Vdly__D;
    vlSelf->sar_logic__DOT__counter = __Vdly__sar_logic__DOT__counter;
}

void Vlng___024root___eval_triggers__act(Vlng___024root* vlSelf);

bool Vlng___024root___eval_phase__act(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vlng___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vlng___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vlng___024root___eval_phase__nba(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vlng___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__nba(Vlng___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__act(Vlng___024root* vlSelf);
#endif  // VL_DEBUG

void Vlng___024root___eval(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vlng___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("sar_logic.v", 1, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vlng___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("sar_logic.v", 1, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vlng___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vlng___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vlng___024root___eval_debug_assertions(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->Op & 0xfeU))) {
        Verilated::overWidthError("Op");}
    if (VL_UNLIKELY((vlSelf->En & 0xfeU))) {
        Verilated::overWidthError("En");}
    if (VL_UNLIKELY((vlSelf->Om & 0xfeU))) {
        Verilated::overWidthError("Om");}
    if (VL_UNLIKELY((vlSelf->rst & 0xfeU))) {
        Verilated::overWidthError("rst");}
}
#endif  // VL_DEBUG
