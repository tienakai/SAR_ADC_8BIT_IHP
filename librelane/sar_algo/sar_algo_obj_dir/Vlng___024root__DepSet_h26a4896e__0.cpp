// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vlng.h for the primary calling header

#include "Vlng__pch.h"
#include "Vlng___024root.h"

void Vlng___024root___ico_sequent__TOP__0(Vlng___024root* vlSelf);

void Vlng___024root___eval_ico(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        Vlng___024root___ico_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vlng___024root___ico_sequent__TOP__0(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___ico_sequent__TOP__0\n"); );
    // Body
    vlSelf->fclk_comp = vlSelf->fclk_in;
    vlSelf->sar_algo__DOT__cmp = ((IData)(vlSelf->Op) 
                                  > (IData)(vlSelf->Om));
}

void Vlng___024root___eval_triggers__ico(Vlng___024root* vlSelf);

bool Vlng___024root___eval_phase__ico(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__ico\n"); );
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    Vlng___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelf->__VicoTriggered.any();
    if (__VicoExecute) {
        Vlng___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void Vlng___024root___eval_act(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_act\n"); );
}

void Vlng___024root___nba_sequent__TOP__0(Vlng___024root* vlSelf);
void Vlng___024root___nba_sequent__TOP__1(Vlng___024root* vlSelf);
void Vlng___024root___nba_sequent__TOP__2(Vlng___024root* vlSelf);

void Vlng___024root___eval_nba(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vlng___024root___nba_sequent__TOP__0(vlSelf);
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vlng___024root___nba_sequent__TOP__1(vlSelf);
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vlng___024root___nba_sequent__TOP__2(vlSelf);
    }
}

VL_INLINE_OPT void Vlng___024root___nba_sequent__TOP__0(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___nba_sequent__TOP__0\n"); );
    // Init
    CData/*3:0*/ __Vdly__sar_algo__DOT__cnt;
    __Vdly__sar_algo__DOT__cnt = 0;
    // Body
    vlSelf->__Vdly__fclk_samp = vlSelf->fclk_samp;
    __Vdly__sar_algo__DOT__cnt = vlSelf->sar_algo__DOT__cnt;
    if (vlSelf->rst) {
        __Vdly__sar_algo__DOT__cnt = 0U;
        vlSelf->__Vdly__fclk_samp = 1U;
    } else if (vlSelf->En) {
        if ((7U == (IData)(vlSelf->sar_algo__DOT__cnt))) {
            vlSelf->__Vdly__fclk_samp = (1U & (~ (IData)(vlSelf->fclk_samp)));
            __Vdly__sar_algo__DOT__cnt = 0U;
        } else {
            __Vdly__sar_algo__DOT__cnt = (0xfU & ((IData)(1U) 
                                                  + (IData)(vlSelf->sar_algo__DOT__cnt)));
        }
    }
    vlSelf->fdac_clk = ((~ (IData)(vlSelf->rst)) & 
                        (((7U == (IData)(vlSelf->sar_algo__DOT__cnt)) 
                          & (~ (IData)(vlSelf->fclk_samp))) 
                         & (IData)(vlSelf->En)));
    vlSelf->sar_algo__DOT__cnt = __Vdly__sar_algo__DOT__cnt;
}

VL_INLINE_OPT void Vlng___024root___nba_sequent__TOP__1(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___nba_sequent__TOP__1\n"); );
    // Init
    CData/*3:0*/ __Vdly__sar_algo__DOT__counter;
    __Vdly__sar_algo__DOT__counter = 0;
    // Body
    __Vdly__sar_algo__DOT__counter = vlSelf->sar_algo__DOT__counter;
    if (vlSelf->rst) {
        vlSelf->B = 0U;
        vlSelf->BN = 0U;
        vlSelf->D = 0U;
        __Vdly__sar_algo__DOT__counter = 0U;
    } else if (vlSelf->En) {
        if (vlSelf->fclk_samp) {
            __Vdly__sar_algo__DOT__counter = 0U;
        } else if ((8U > (IData)(vlSelf->sar_algo__DOT__counter))) {
            vlSelf->D = (((~ ((IData)(1U) << (7U & 
                                              ((IData)(7U) 
                                               - (IData)(vlSelf->sar_algo__DOT__counter))))) 
                          & (IData)(vlSelf->D)) | (0xffU 
                                                   & ((IData)(vlSelf->sar_algo__DOT__cmp) 
                                                      << 
                                                      (7U 
                                                       & ((IData)(7U) 
                                                          - (IData)(vlSelf->sar_algo__DOT__counter))))));
            if ((7U > (IData)(vlSelf->sar_algo__DOT__counter))) {
                vlSelf->sar_algo__DOT____Vlvbound_hd3ba2b09__0 
                    = vlSelf->sar_algo__DOT__cmp;
                vlSelf->sar_algo__DOT____Vlvbound_ha023587f__0 
                    = (1U & (~ (IData)(vlSelf->sar_algo__DOT__cmp)));
                if ((6U >= (7U & ((IData)(6U) - (IData)(vlSelf->sar_algo__DOT__counter))))) {
                    vlSelf->B = (((~ ((IData)(1U) << 
                                      (7U & ((IData)(6U) 
                                             - (IData)(vlSelf->sar_algo__DOT__counter))))) 
                                  & (IData)(vlSelf->B)) 
                                 | (0x7fU & ((IData)(vlSelf->sar_algo__DOT____Vlvbound_hd3ba2b09__0) 
                                             << (7U 
                                                 & ((IData)(6U) 
                                                    - (IData)(vlSelf->sar_algo__DOT__counter))))));
                    vlSelf->BN = (((~ ((IData)(1U) 
                                       << (7U & ((IData)(6U) 
                                                 - (IData)(vlSelf->sar_algo__DOT__counter))))) 
                                   & (IData)(vlSelf->BN)) 
                                  | (0x7fU & ((IData)(vlSelf->sar_algo__DOT____Vlvbound_ha023587f__0) 
                                              << (7U 
                                                  & ((IData)(6U) 
                                                     - (IData)(vlSelf->sar_algo__DOT__counter))))));
                }
            }
            __Vdly__sar_algo__DOT__counter = (0xfU 
                                              & ((IData)(1U) 
                                                 + (IData)(vlSelf->sar_algo__DOT__counter)));
        }
    }
    vlSelf->sar_algo__DOT__counter = __Vdly__sar_algo__DOT__counter;
}

VL_INLINE_OPT void Vlng___024root___nba_sequent__TOP__2(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___nba_sequent__TOP__2\n"); );
    // Body
    vlSelf->fclk_samp = vlSelf->__Vdly__fclk_samp;
}

void Vlng___024root___eval_triggers__act(Vlng___024root* vlSelf);

bool Vlng___024root___eval_phase__act(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<2> __VpreTriggered;
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
VL_ATTR_COLD void Vlng___024root___dump_triggers__ico(Vlng___024root* vlSelf);
#endif  // VL_DEBUG
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
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelf->__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY((0x64U < __VicoIterCount))) {
#ifdef VL_DEBUG
            Vlng___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("sar_algo.v", 2, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (Vlng___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelf->__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vlng___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("sar_algo.v", 2, "", "NBA region did not converge.");
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
                VL_FATAL_MT("sar_algo.v", 2, "", "Active region did not converge.");
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
    if (VL_UNLIKELY((vlSelf->VDD & 0xfeU))) {
        Verilated::overWidthError("VDD");}
    if (VL_UNLIKELY((vlSelf->VSS & 0xfeU))) {
        Verilated::overWidthError("VSS");}
    if (VL_UNLIKELY((vlSelf->fclk_in & 0xfeU))) {
        Verilated::overWidthError("fclk_in");}
    if (VL_UNLIKELY((vlSelf->rst & 0xfeU))) {
        Verilated::overWidthError("rst");}
    if (VL_UNLIKELY((vlSelf->Op & 0xfeU))) {
        Verilated::overWidthError("Op");}
    if (VL_UNLIKELY((vlSelf->Om & 0xfeU))) {
        Verilated::overWidthError("Om");}
    if (VL_UNLIKELY((vlSelf->En & 0xfeU))) {
        Verilated::overWidthError("En");}
    if (VL_UNLIKELY((vlSelf->clk_algo & 0xfeU))) {
        Verilated::overWidthError("clk_algo");}
}
#endif  // VL_DEBUG
