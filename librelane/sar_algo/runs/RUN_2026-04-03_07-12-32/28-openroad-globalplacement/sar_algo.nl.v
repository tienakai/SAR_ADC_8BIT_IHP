module sar_algo (En,
    Om,
    Op,
    clk_algo,
    fclk_comp,
    fclk_in,
    fclk_samp,
    fdac_clk,
    rst,
    B,
    BN,
    D);
 input En;
 input Om;
 input Op;
 input clk_algo;
 output fclk_comp;
 input fclk_in;
 output fclk_samp;
 output fdac_clk;
 input rst;
 output [6:0] B;
 output [6:0] BN;
 output [7:0] D;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire \cnt[0] ;
 wire \cnt[1] ;
 wire \cnt[2] ;
 wire \cnt[3] ;
 wire \counter[0] ;
 wire \counter[1] ;
 wire \counter[2] ;
 wire \counter[3] ;

 sg13g2_inv_1 _104_ (.Y(fclk_samp),
    .A(_001_));
 sg13g2_inv_1 _105_ (.Y(_065_),
    .A(\counter[3] ));
 sg13g2_inv_1 _106_ (.Y(_066_),
    .A(\counter[2] ));
 sg13g2_inv_1 _107_ (.Y(_067_),
    .A(BN[6]));
 sg13g2_inv_1 _108_ (.Y(_068_),
    .A(BN[5]));
 sg13g2_inv_1 _109_ (.Y(_002_),
    .A(rst));
 sg13g2_nand3_1 _110_ (.B(\cnt[1] ),
    .C(\cnt[0] ),
    .A(En),
    .Y(_069_));
 sg13g2_nand4_1 _111_ (.B(\cnt[2] ),
    .C(\cnt[1] ),
    .A(En),
    .Y(_070_),
    .D(\cnt[0] ));
 sg13g2_and2_1 _112_ (.A(\cnt[3] ),
    .B(_070_),
    .X(_064_));
 sg13g2_xnor2_1 _113_ (.Y(_063_),
    .A(\cnt[2] ),
    .B(_069_));
 sg13g2_a21o_1 _114_ (.A2(\cnt[0] ),
    .A1(En),
    .B1(\cnt[1] ),
    .X(_071_));
 sg13g2_and2_1 _115_ (.A(_069_),
    .B(_071_),
    .X(_062_));
 sg13g2_xor2_1 _116_ (.B(\cnt[0] ),
    .A(En),
    .X(_061_));
 sg13g2_nor3_1 _117_ (.A(\cnt[3] ),
    .B(fclk_samp),
    .C(_070_),
    .Y(_000_));
 sg13g2_o21ai_1 _118_ (.B1(fclk_samp),
    .Y(_072_),
    .A1(\cnt[3] ),
    .A2(_070_));
 sg13g2_nor2b_1 _119_ (.A(_000_),
    .B_N(_072_),
    .Y(_060_));
 sg13g2_nand2_1 _120_ (.Y(_073_),
    .A(\counter[1] ),
    .B(\counter[0] ));
 sg13g2_nand3b_1 _121_ (.B(_001_),
    .C(En),
    .Y(_074_),
    .A_N(\counter[3] ));
 sg13g2_nor2_1 _122_ (.A(_066_),
    .B(_074_),
    .Y(_075_));
 sg13g2_or2_1 _123_ (.X(_076_),
    .B(_074_),
    .A(_066_));
 sg13g2_nor2_1 _124_ (.A(_073_),
    .B(_076_),
    .Y(_077_));
 sg13g2_nand2_1 _125_ (.Y(_078_),
    .A(En),
    .B(fclk_samp));
 sg13g2_a21o_1 _126_ (.A2(_078_),
    .A1(\counter[3] ),
    .B1(_077_),
    .X(_059_));
 sg13g2_nor3_1 _127_ (.A(\counter[2] ),
    .B(_073_),
    .C(_074_),
    .Y(_079_));
 sg13g2_o21ai_1 _128_ (.B1(En),
    .Y(_080_),
    .A1(fclk_samp),
    .A2(_065_));
 sg13g2_a22oi_1 _129_ (.Y(_081_),
    .B1(_080_),
    .B2(\counter[2] ),
    .A2(_075_),
    .A1(_073_));
 sg13g2_nand2b_1 _130_ (.Y(_058_),
    .B(_081_),
    .A_N(_079_));
 sg13g2_nand2b_1 _131_ (.Y(_082_),
    .B(\counter[0] ),
    .A_N(\counter[1] ));
 sg13g2_nand2b_1 _132_ (.Y(_083_),
    .B(\counter[1] ),
    .A_N(\counter[0] ));
 sg13g2_a21oi_1 _133_ (.A1(_082_),
    .A2(_083_),
    .Y(_084_),
    .B1(_074_));
 sg13g2_a21o_1 _134_ (.A2(_080_),
    .A1(\counter[1] ),
    .B1(_084_),
    .X(_057_));
 sg13g2_nand2_1 _135_ (.Y(_085_),
    .A(\counter[0] ),
    .B(_080_));
 sg13g2_o21ai_1 _136_ (.B1(_085_),
    .Y(_056_),
    .A1(\counter[0] ),
    .A2(_074_));
 sg13g2_nor3_1 _137_ (.A(\counter[2] ),
    .B(\counter[1] ),
    .C(_074_),
    .Y(_086_));
 sg13g2_nor2b_1 _138_ (.A(\counter[0] ),
    .B_N(_086_),
    .Y(_087_));
 sg13g2_nor3_1 _139_ (.A(_066_),
    .B(_074_),
    .C(_083_),
    .Y(_088_));
 sg13g2_nor2b_1 _140_ (.A(Om),
    .B_N(Op),
    .Y(_089_));
 sg13g2_nand2b_1 _141_ (.Y(_090_),
    .B(Op),
    .A_N(Om));
 sg13g2_nor3_1 _142_ (.A(\counter[1] ),
    .B(\counter[0] ),
    .C(_089_),
    .Y(_091_));
 sg13g2_o21ai_1 _143_ (.B1(_091_),
    .Y(_092_),
    .A1(_086_),
    .A2(_088_));
 sg13g2_o21ai_1 _144_ (.B1(_092_),
    .Y(_055_),
    .A1(_067_),
    .A2(_087_));
 sg13g2_nor3_1 _145_ (.A(\counter[2] ),
    .B(_074_),
    .C(_082_),
    .Y(_093_));
 sg13g2_nor2_1 _146_ (.A(_082_),
    .B(_089_),
    .Y(_094_));
 sg13g2_o21ai_1 _147_ (.B1(_094_),
    .Y(_095_),
    .A1(_086_),
    .A2(_088_));
 sg13g2_o21ai_1 _148_ (.B1(_095_),
    .Y(_054_),
    .A1(_068_),
    .A2(_093_));
 sg13g2_nor3_1 _149_ (.A(\counter[2] ),
    .B(_074_),
    .C(_083_),
    .Y(_096_));
 sg13g2_nor2_1 _150_ (.A(BN[4]),
    .B(_096_),
    .Y(_097_));
 sg13g2_a21oi_1 _151_ (.A1(_089_),
    .A2(_096_),
    .Y(_053_),
    .B1(_097_));
 sg13g2_mux2_1 _152_ (.A0(BN[3]),
    .A1(_090_),
    .S(_079_),
    .X(_052_));
 sg13g2_nor3_1 _153_ (.A(\counter[1] ),
    .B(\counter[0] ),
    .C(_076_),
    .Y(_098_));
 sg13g2_mux2_1 _154_ (.A0(BN[2]),
    .A1(_090_),
    .S(_098_),
    .X(_051_));
 sg13g2_nor2_1 _155_ (.A(_076_),
    .B(_082_),
    .Y(_099_));
 sg13g2_mux2_1 _156_ (.A0(BN[1]),
    .A1(_090_),
    .S(_099_),
    .X(_050_));
 sg13g2_mux2_1 _157_ (.A0(BN[0]),
    .A1(_090_),
    .S(_088_),
    .X(_049_));
 sg13g2_mux2_1 _158_ (.A0(D[7]),
    .A1(_089_),
    .S(_087_),
    .X(_048_));
 sg13g2_mux2_1 _159_ (.A0(D[6]),
    .A1(_089_),
    .S(_093_),
    .X(_047_));
 sg13g2_mux2_1 _160_ (.A0(D[5]),
    .A1(_089_),
    .S(_096_),
    .X(_046_));
 sg13g2_nor2_1 _161_ (.A(D[4]),
    .B(_079_),
    .Y(_100_));
 sg13g2_a21oi_1 _162_ (.A1(_079_),
    .A2(_090_),
    .Y(_045_),
    .B1(_100_));
 sg13g2_mux2_1 _163_ (.A0(D[3]),
    .A1(_089_),
    .S(_098_),
    .X(_044_));
 sg13g2_mux2_1 _164_ (.A0(D[2]),
    .A1(_089_),
    .S(_099_),
    .X(_043_));
 sg13g2_nor2_1 _165_ (.A(D[1]),
    .B(_088_),
    .Y(_101_));
 sg13g2_a21oi_1 _166_ (.A1(_088_),
    .A2(_090_),
    .Y(_042_),
    .B1(_101_));
 sg13g2_mux2_1 _167_ (.A0(D[0]),
    .A1(_089_),
    .S(_077_),
    .X(_041_));
 sg13g2_mux2_1 _168_ (.A0(B[6]),
    .A1(_089_),
    .S(_087_),
    .X(_040_));
 sg13g2_mux2_1 _169_ (.A0(B[5]),
    .A1(_089_),
    .S(_093_),
    .X(_039_));
 sg13g2_mux2_1 _170_ (.A0(B[4]),
    .A1(_089_),
    .S(_096_),
    .X(_038_));
 sg13g2_nor2_1 _171_ (.A(B[3]),
    .B(_079_),
    .Y(_102_));
 sg13g2_a21oi_1 _172_ (.A1(_079_),
    .A2(_090_),
    .Y(_037_),
    .B1(_102_));
 sg13g2_mux2_1 _173_ (.A0(B[2]),
    .A1(_089_),
    .S(_098_),
    .X(_036_));
 sg13g2_mux2_1 _174_ (.A0(B[1]),
    .A1(_089_),
    .S(_099_),
    .X(_035_));
 sg13g2_nor2_1 _175_ (.A(B[0]),
    .B(_088_),
    .Y(_103_));
 sg13g2_a21oi_1 _176_ (.A1(_088_),
    .A2(_090_),
    .Y(_034_),
    .B1(_103_));
 sg13g2_inv_1 _177_ (.Y(_003_),
    .A(rst));
 sg13g2_inv_1 _178_ (.Y(_004_),
    .A(rst));
 sg13g2_inv_1 _179_ (.Y(_005_),
    .A(rst));
 sg13g2_inv_1 _180_ (.Y(_006_),
    .A(rst));
 sg13g2_inv_1 _181_ (.Y(_007_),
    .A(rst));
 sg13g2_inv_1 _182_ (.Y(_008_),
    .A(rst));
 sg13g2_inv_1 _183_ (.Y(_009_),
    .A(rst));
 sg13g2_inv_1 _184_ (.Y(_010_),
    .A(rst));
 sg13g2_inv_1 _185_ (.Y(_011_),
    .A(rst));
 sg13g2_inv_1 _186_ (.Y(_012_),
    .A(rst));
 sg13g2_inv_1 _187_ (.Y(_013_),
    .A(rst));
 sg13g2_inv_1 _188_ (.Y(_014_),
    .A(rst));
 sg13g2_inv_1 _189_ (.Y(_015_),
    .A(rst));
 sg13g2_inv_1 _190_ (.Y(_016_),
    .A(rst));
 sg13g2_inv_1 _191_ (.Y(_017_),
    .A(rst));
 sg13g2_inv_1 _192_ (.Y(_018_),
    .A(rst));
 sg13g2_inv_1 _193_ (.Y(_019_),
    .A(rst));
 sg13g2_inv_1 _194_ (.Y(_020_),
    .A(rst));
 sg13g2_inv_1 _195_ (.Y(_021_),
    .A(rst));
 sg13g2_inv_1 _196_ (.Y(_022_),
    .A(rst));
 sg13g2_inv_1 _197_ (.Y(_023_),
    .A(rst));
 sg13g2_inv_1 _198_ (.Y(_024_),
    .A(rst));
 sg13g2_inv_1 _199_ (.Y(_025_),
    .A(rst));
 sg13g2_inv_1 _200_ (.Y(_026_),
    .A(rst));
 sg13g2_inv_1 _201_ (.Y(_027_),
    .A(rst));
 sg13g2_inv_1 _202_ (.Y(_028_),
    .A(rst));
 sg13g2_inv_1 _203_ (.Y(_029_),
    .A(rst));
 sg13g2_inv_1 _204_ (.Y(_030_),
    .A(rst));
 sg13g2_inv_1 _205_ (.Y(_031_),
    .A(rst));
 sg13g2_inv_1 _206_ (.Y(_032_),
    .A(rst));
 sg13g2_inv_1 _207_ (.Y(_033_),
    .A(rst));
 sg13g2_dfrbpq_1 _208_ (.RESET_B(_002_),
    .D(_034_),
    .Q(B[0]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _209_ (.RESET_B(_003_),
    .D(_035_),
    .Q(B[1]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _210_ (.RESET_B(_004_),
    .D(_036_),
    .Q(B[2]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _211_ (.RESET_B(_005_),
    .D(_037_),
    .Q(B[3]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _212_ (.RESET_B(_006_),
    .D(_038_),
    .Q(B[4]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _213_ (.RESET_B(_007_),
    .D(_039_),
    .Q(B[5]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _214_ (.RESET_B(_008_),
    .D(_040_),
    .Q(B[6]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _215_ (.RESET_B(_009_),
    .D(_041_),
    .Q(D[0]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _216_ (.RESET_B(_010_),
    .D(_042_),
    .Q(D[1]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _217_ (.RESET_B(_011_),
    .D(_043_),
    .Q(D[2]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _218_ (.RESET_B(_012_),
    .D(_044_),
    .Q(D[3]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _219_ (.RESET_B(_013_),
    .D(_045_),
    .Q(D[4]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _220_ (.RESET_B(_014_),
    .D(_046_),
    .Q(D[5]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _221_ (.RESET_B(_015_),
    .D(_047_),
    .Q(D[6]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _222_ (.RESET_B(_016_),
    .D(_048_),
    .Q(D[7]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _223_ (.RESET_B(_017_),
    .D(_049_),
    .Q(BN[0]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _224_ (.RESET_B(_018_),
    .D(_050_),
    .Q(BN[1]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _225_ (.RESET_B(_019_),
    .D(_051_),
    .Q(BN[2]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _226_ (.RESET_B(_020_),
    .D(_052_),
    .Q(BN[3]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _227_ (.RESET_B(_021_),
    .D(_053_),
    .Q(BN[4]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _228_ (.RESET_B(_022_),
    .D(_054_),
    .Q(BN[5]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _229_ (.RESET_B(_023_),
    .D(_055_),
    .Q(BN[6]),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _230_ (.RESET_B(_024_),
    .D(_056_),
    .Q(\counter[0] ),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _231_ (.RESET_B(_025_),
    .D(_057_),
    .Q(\counter[1] ),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _232_ (.RESET_B(_026_),
    .D(_058_),
    .Q(\counter[2] ),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _233_ (.RESET_B(_027_),
    .D(_059_),
    .Q(\counter[3] ),
    .CLK(clk_algo));
 sg13g2_dfrbpq_1 _234_ (.RESET_B(_028_),
    .D(_060_),
    .Q(_001_),
    .CLK(fclk_in));
 sg13g2_dfrbpq_1 _235_ (.RESET_B(_029_),
    .D(_061_),
    .Q(\cnt[0] ),
    .CLK(fclk_in));
 sg13g2_dfrbpq_1 _236_ (.RESET_B(_030_),
    .D(_062_),
    .Q(\cnt[1] ),
    .CLK(fclk_in));
 sg13g2_dfrbpq_1 _237_ (.RESET_B(_031_),
    .D(_063_),
    .Q(\cnt[2] ),
    .CLK(fclk_in));
 sg13g2_dfrbpq_1 _238_ (.RESET_B(_032_),
    .D(_064_),
    .Q(\cnt[3] ),
    .CLK(fclk_in));
 sg13g2_dfrbpq_1 _239_ (.RESET_B(_033_),
    .D(_000_),
    .Q(fdac_clk),
    .CLK(fclk_in));
 sg13g2_buf_1 _240_ (.A(fclk_in),
    .X(fclk_comp));
endmodule
