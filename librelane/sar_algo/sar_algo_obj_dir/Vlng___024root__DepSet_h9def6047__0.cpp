// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vlng.h for the primary calling header

#include "Vlng__pch.h"
#include "Vlng__Syms.h"
#include "Vlng___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__ico(Vlng___024root* vlSelf);
#endif  // VL_DEBUG

void Vlng___024root___eval_triggers__ico(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_triggers__ico\n"); );
    // Body
    vlSelf->__VicoTriggered.set(0U, (IData)(vlSelf->__VicoFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vlng___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vlng___024root___dump_triggers__act(Vlng___024root* vlSelf);
#endif  // VL_DEBUG

void Vlng___024root___eval_triggers__act(Vlng___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vlng__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vlng___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, (((IData)(vlSelf->fclk_in) 
                                      & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__fclk_in__0))) 
                                     | ((IData)(vlSelf->rst) 
                                        & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__rst__0)))));
    vlSelf->__VactTriggered.set(1U, (((IData)(vlSelf->clk_algo) 
                                      & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__clk_algo__0))) 
                                     | ((IData)(vlSelf->rst) 
                                        & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__rst__0)))));
    vlSelf->__Vtrigprevexpr___TOP__fclk_in__0 = vlSelf->fclk_in;
    vlSelf->__Vtrigprevexpr___TOP__rst__0 = vlSelf->rst;
    vlSelf->__Vtrigprevexpr___TOP__clk_algo__0 = vlSelf->clk_algo;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vlng___024root___dump_triggers__act(vlSelf);
    }
#endif
}
