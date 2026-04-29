// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vlng.h for the primary calling header

#ifndef VERILATED_VLNG___024ROOT_H_
#define VERILATED_VLNG___024ROOT_H_  // guard

#include "verilated.h"


class Vlng__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vlng___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(fclk_in,0,0);
    VL_IN8(rst,0,0);
    VL_IN8(clk_algo,0,0);
    VL_IN8(VDD,0,0);
    VL_IN8(VSS,0,0);
    VL_IN8(Op,0,0);
    VL_IN8(Om,0,0);
    VL_IN8(En,0,0);
    VL_OUT8(fclk_samp,0,0);
    VL_OUT8(fclk_comp,0,0);
    VL_OUT8(fdac_clk,0,0);
    VL_OUT8(B,6,0);
    VL_OUT8(BN,6,0);
    VL_OUT8(D,7,0);
    CData/*3:0*/ sar_algo__DOT__cnt;
    CData/*3:0*/ sar_algo__DOT__counter;
    CData/*0:0*/ sar_algo__DOT__cmp;
    CData/*0:0*/ sar_algo__DOT____Vlvbound_hd3ba2b09__0;
    CData/*0:0*/ sar_algo__DOT____Vlvbound_ha023587f__0;
    CData/*0:0*/ __Vdly__fclk_samp;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__fclk_in__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__rst__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk_algo__0;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ __VactIterCount;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<2> __VactTriggered;
    VlTriggerVec<2> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vlng__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vlng___024root(Vlng__Syms* symsp, const char* v__name);
    ~Vlng___024root();
    VL_UNCOPYABLE(Vlng___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
