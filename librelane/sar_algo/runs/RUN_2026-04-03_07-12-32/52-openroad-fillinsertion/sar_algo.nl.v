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

 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net1;
 wire net2;
 wire net3;
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
 wire net4;
 wire \cnt[0] ;
 wire \cnt[1] ;
 wire \cnt[2] ;
 wire \cnt[3] ;
 wire \counter[0] ;
 wire \counter[1] ;
 wire \counter[2] ;
 wire \counter[3] ;
 wire net28;
 wire net29;
 wire net30;
 wire net5;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire fclk_in_regs;
 wire clknet_0_fclk_in;
 wire clknet_1_0__leaf_fclk_in;
 wire clknet_0_fclk_in_regs;
 wire clknet_1_0__leaf_fclk_in_regs;
 wire clknet_1_1__leaf_fclk_in_regs;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;

 sg13g2_inv_1 _104_ (.Y(net29),
    .A(net51));
 sg13g2_inv_1 _105_ (.Y(_065_),
    .A(\counter[3] ));
 sg13g2_inv_1 _106_ (.Y(_066_),
    .A(\counter[2] ));
 sg13g2_inv_1 _107_ (.Y(_067_),
    .A(net12));
 sg13g2_inv_1 _108_ (.Y(_068_),
    .A(net11));
 sg13g2_inv_1 _109_ (.Y(_002_),
    .A(net37));
 sg13g2_nand3_1 _110_ (.B(net48),
    .C(net50),
    .A(net1),
    .Y(_069_));
 sg13g2_nand4_1 _111_ (.B(net46),
    .C(net48),
    .A(net1),
    .Y(_070_),
    .D(\cnt[0] ));
 sg13g2_and2_1 _112_ (.A(net44),
    .B(net49),
    .X(_064_));
 sg13g2_xnor2_1 _113_ (.Y(_063_),
    .A(net46),
    .B(_069_));
 sg13g2_a21o_1 _114_ (.A2(net50),
    .A1(net1),
    .B1(net48),
    .X(_071_));
 sg13g2_and2_1 _115_ (.A(_069_),
    .B(_071_),
    .X(_062_));
 sg13g2_xor2_1 _116_ (.B(net50),
    .A(net1),
    .X(_061_));
 sg13g2_nor3_1 _117_ (.A(net44),
    .B(net29),
    .C(_070_),
    .Y(_000_));
 sg13g2_o21ai_1 _118_ (.B1(net29),
    .Y(_072_),
    .A1(net44),
    .A2(net49));
 sg13g2_nor2b_1 _119_ (.A(net45),
    .B_N(_072_),
    .Y(_060_));
 sg13g2_nand2_1 _120_ (.Y(_073_),
    .A(\counter[1] ),
    .B(\counter[0] ));
 sg13g2_nand3b_1 _121_ (.B(_001_),
    .C(net1),
    .Y(_074_),
    .A_N(\counter[3] ));
 sg13g2_nor2_1 _122_ (.A(_066_),
    .B(net31),
    .Y(_075_));
 sg13g2_or2_1 _123_ (.X(_076_),
    .B(net31),
    .A(_066_));
 sg13g2_nor2_1 _124_ (.A(_073_),
    .B(_076_),
    .Y(_077_));
 sg13g2_nand2_1 _125_ (.Y(_078_),
    .A(net1),
    .B(net29));
 sg13g2_a21o_1 _126_ (.A2(_078_),
    .A1(\counter[3] ),
    .B1(_077_),
    .X(_059_));
 sg13g2_nor3_1 _127_ (.A(\counter[2] ),
    .B(_073_),
    .C(net31),
    .Y(_079_));
 sg13g2_o21ai_1 _128_ (.B1(net1),
    .Y(_080_),
    .A1(net29),
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
    .B1(net31));
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
    .A2(net31));
 sg13g2_nor3_1 _137_ (.A(\counter[2] ),
    .B(\counter[1] ),
    .C(net31),
    .Y(_086_));
 sg13g2_nor2b_1 _138_ (.A(\counter[0] ),
    .B_N(_086_),
    .Y(_087_));
 sg13g2_nor3_1 _139_ (.A(_066_),
    .B(net31),
    .C(_083_),
    .Y(_088_));
 sg13g2_nor2b_1 _140_ (.A(net2),
    .B_N(net3),
    .Y(_089_));
 sg13g2_nand2b_1 _141_ (.Y(_090_),
    .B(net3),
    .A_N(net2));
 sg13g2_nor3_1 _142_ (.A(\counter[1] ),
    .B(\counter[0] ),
    .C(net32),
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
    .B(net31),
    .C(_082_),
    .Y(_093_));
 sg13g2_nor2_1 _146_ (.A(_082_),
    .B(net33),
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
 sg13g2_nor2_1 _150_ (.A(net10),
    .B(_096_),
    .Y(_097_));
 sg13g2_a21oi_1 _151_ (.A1(net33),
    .A2(_096_),
    .Y(_053_),
    .B1(_097_));
 sg13g2_mux2_1 _152_ (.A0(net9),
    .A1(_090_),
    .S(_079_),
    .X(_052_));
 sg13g2_nor3_1 _153_ (.A(\counter[1] ),
    .B(\counter[0] ),
    .C(_076_),
    .Y(_098_));
 sg13g2_mux2_1 _154_ (.A0(net8),
    .A1(_090_),
    .S(_098_),
    .X(_051_));
 sg13g2_nor2_1 _155_ (.A(_076_),
    .B(_082_),
    .Y(_099_));
 sg13g2_mux2_1 _156_ (.A0(net7),
    .A1(_090_),
    .S(_099_),
    .X(_050_));
 sg13g2_mux2_1 _157_ (.A0(net6),
    .A1(_090_),
    .S(_088_),
    .X(_049_));
 sg13g2_mux2_1 _158_ (.A0(net27),
    .A1(net32),
    .S(_087_),
    .X(_048_));
 sg13g2_mux2_1 _159_ (.A0(net26),
    .A1(net32),
    .S(_093_),
    .X(_047_));
 sg13g2_mux2_1 _160_ (.A0(net25),
    .A1(net32),
    .S(_096_),
    .X(_046_));
 sg13g2_nor2_1 _161_ (.A(net24),
    .B(_079_),
    .Y(_100_));
 sg13g2_a21oi_1 _162_ (.A1(_079_),
    .A2(_090_),
    .Y(_045_),
    .B1(_100_));
 sg13g2_mux2_1 _163_ (.A0(net23),
    .A1(net33),
    .S(_098_),
    .X(_044_));
 sg13g2_mux2_1 _164_ (.A0(net22),
    .A1(net33),
    .S(_099_),
    .X(_043_));
 sg13g2_nor2_1 _165_ (.A(net21),
    .B(_088_),
    .Y(_101_));
 sg13g2_a21oi_1 _166_ (.A1(_088_),
    .A2(_090_),
    .Y(_042_),
    .B1(_101_));
 sg13g2_mux2_1 _167_ (.A0(net20),
    .A1(net33),
    .S(_077_),
    .X(_041_));
 sg13g2_mux2_1 _168_ (.A0(net19),
    .A1(net32),
    .S(_087_),
    .X(_040_));
 sg13g2_mux2_1 _169_ (.A0(net18),
    .A1(net32),
    .S(_093_),
    .X(_039_));
 sg13g2_mux2_1 _170_ (.A0(net17),
    .A1(net32),
    .S(_096_),
    .X(_038_));
 sg13g2_nor2_1 _171_ (.A(net16),
    .B(_079_),
    .Y(_102_));
 sg13g2_a21oi_1 _172_ (.A1(_079_),
    .A2(_090_),
    .Y(_037_),
    .B1(_102_));
 sg13g2_mux2_1 _173_ (.A0(net15),
    .A1(net32),
    .S(_098_),
    .X(_036_));
 sg13g2_mux2_1 _174_ (.A0(net14),
    .A1(net33),
    .S(_099_),
    .X(_035_));
 sg13g2_nor2_1 _175_ (.A(net13),
    .B(_088_),
    .Y(_103_));
 sg13g2_a21oi_1 _176_ (.A1(_088_),
    .A2(_090_),
    .Y(_034_),
    .B1(_103_));
 sg13g2_inv_1 _177_ (.Y(_003_),
    .A(net37));
 sg13g2_inv_1 _178_ (.Y(_004_),
    .A(net37));
 sg13g2_inv_1 _179_ (.Y(_005_),
    .A(net37));
 sg13g2_inv_1 _180_ (.Y(_006_),
    .A(net38));
 sg13g2_inv_1 _181_ (.Y(_007_),
    .A(net38));
 sg13g2_inv_1 _182_ (.Y(_008_),
    .A(net38));
 sg13g2_inv_1 _183_ (.Y(_009_),
    .A(net34));
 sg13g2_inv_1 _184_ (.Y(_010_),
    .A(net34));
 sg13g2_inv_1 _185_ (.Y(_011_),
    .A(net35));
 sg13g2_inv_1 _186_ (.Y(_012_),
    .A(net35));
 sg13g2_inv_1 _187_ (.Y(_013_),
    .A(net37));
 sg13g2_inv_1 _188_ (.Y(_014_),
    .A(net37));
 sg13g2_inv_1 _189_ (.Y(_015_),
    .A(net38));
 sg13g2_inv_1 _190_ (.Y(_016_),
    .A(net38));
 sg13g2_inv_1 _191_ (.Y(_017_),
    .A(net34));
 sg13g2_inv_1 _192_ (.Y(_018_),
    .A(net34));
 sg13g2_inv_1 _193_ (.Y(_019_),
    .A(net34));
 sg13g2_inv_1 _194_ (.Y(_020_),
    .A(net34));
 sg13g2_inv_1 _195_ (.Y(_021_),
    .A(net35));
 sg13g2_inv_1 _196_ (.Y(_022_),
    .A(net35));
 sg13g2_inv_1 _197_ (.Y(_023_),
    .A(net37));
 sg13g2_inv_1 _198_ (.Y(_024_),
    .A(net35));
 sg13g2_inv_1 _199_ (.Y(_025_),
    .A(net37));
 sg13g2_inv_1 _200_ (.Y(_026_),
    .A(net35));
 sg13g2_inv_1 _201_ (.Y(_027_),
    .A(net35));
 sg13g2_inv_1 _202_ (.Y(_028_),
    .A(net36));
 sg13g2_inv_1 _203_ (.Y(_029_),
    .A(net34));
 sg13g2_inv_1 _204_ (.Y(_030_),
    .A(net34));
 sg13g2_inv_1 _205_ (.Y(_031_),
    .A(net36));
 sg13g2_inv_1 _206_ (.Y(_032_),
    .A(net36));
 sg13g2_inv_1 _207_ (.Y(_033_),
    .A(net36));
 sg13g2_dfrbpq_1 _208_ (.RESET_B(_002_),
    .D(_034_),
    .Q(net13),
    .CLK(net42));
 sg13g2_dfrbpq_1 _209_ (.RESET_B(_003_),
    .D(_035_),
    .Q(net14),
    .CLK(net42));
 sg13g2_dfrbpq_1 _210_ (.RESET_B(_004_),
    .D(_036_),
    .Q(net15),
    .CLK(net42));
 sg13g2_dfrbpq_1 _211_ (.RESET_B(_005_),
    .D(_037_),
    .Q(net16),
    .CLK(net42));
 sg13g2_dfrbpq_1 _212_ (.RESET_B(_006_),
    .D(_038_),
    .Q(net17),
    .CLK(net42));
 sg13g2_dfrbpq_1 _213_ (.RESET_B(_007_),
    .D(_039_),
    .Q(net18),
    .CLK(net43));
 sg13g2_dfrbpq_1 _214_ (.RESET_B(_008_),
    .D(_040_),
    .Q(net19),
    .CLK(net43));
 sg13g2_dfrbpq_1 _215_ (.RESET_B(_009_),
    .D(_041_),
    .Q(net20),
    .CLK(net40));
 sg13g2_dfrbpq_1 _216_ (.RESET_B(_010_),
    .D(_042_),
    .Q(net21),
    .CLK(net40));
 sg13g2_dfrbpq_1 _217_ (.RESET_B(_011_),
    .D(_043_),
    .Q(net22),
    .CLK(net40));
 sg13g2_dfrbpq_1 _218_ (.RESET_B(_012_),
    .D(_044_),
    .Q(net23),
    .CLK(net41));
 sg13g2_dfrbpq_1 _219_ (.RESET_B(_013_),
    .D(_045_),
    .Q(net24),
    .CLK(net42));
 sg13g2_dfrbpq_1 _220_ (.RESET_B(_014_),
    .D(_046_),
    .Q(net25),
    .CLK(net42));
 sg13g2_dfrbpq_1 _221_ (.RESET_B(_015_),
    .D(_047_),
    .Q(net26),
    .CLK(net43));
 sg13g2_dfrbpq_1 _222_ (.RESET_B(_016_),
    .D(_048_),
    .Q(net27),
    .CLK(net43));
 sg13g2_dfrbpq_1 _223_ (.RESET_B(_017_),
    .D(_049_),
    .Q(net6),
    .CLK(net40));
 sg13g2_dfrbpq_1 _224_ (.RESET_B(_018_),
    .D(_050_),
    .Q(net7),
    .CLK(net40));
 sg13g2_dfrbpq_1 _225_ (.RESET_B(_019_),
    .D(_051_),
    .Q(net8),
    .CLK(net40));
 sg13g2_dfrbpq_1 _226_ (.RESET_B(_020_),
    .D(_052_),
    .Q(net9),
    .CLK(net40));
 sg13g2_dfrbpq_1 _227_ (.RESET_B(_021_),
    .D(_053_),
    .Q(net10),
    .CLK(net40));
 sg13g2_dfrbpq_1 _228_ (.RESET_B(_022_),
    .D(_054_),
    .Q(net11),
    .CLK(net41));
 sg13g2_dfrbpq_1 _229_ (.RESET_B(_023_),
    .D(_055_),
    .Q(net12),
    .CLK(net42));
 sg13g2_dfrbpq_1 _230_ (.RESET_B(_024_),
    .D(_056_),
    .Q(\counter[0] ),
    .CLK(net41));
 sg13g2_dfrbpq_1 _231_ (.RESET_B(_025_),
    .D(_057_),
    .Q(\counter[1] ),
    .CLK(net41));
 sg13g2_dfrbpq_1 _232_ (.RESET_B(_026_),
    .D(_058_),
    .Q(\counter[2] ),
    .CLK(net41));
 sg13g2_dfrbpq_1 _233_ (.RESET_B(_027_),
    .D(_059_),
    .Q(\counter[3] ),
    .CLK(net41));
 sg13g2_dfrbpq_1 _234_ (.RESET_B(_028_),
    .D(_060_),
    .Q(_001_),
    .CLK(clknet_1_1__leaf_fclk_in_regs));
 sg13g2_dfrbpq_1 _235_ (.RESET_B(_029_),
    .D(_061_),
    .Q(\cnt[0] ),
    .CLK(clknet_1_0__leaf_fclk_in_regs));
 sg13g2_dfrbpq_1 _236_ (.RESET_B(_030_),
    .D(_062_),
    .Q(\cnt[1] ),
    .CLK(clknet_1_0__leaf_fclk_in_regs));
 sg13g2_dfrbpq_1 _237_ (.RESET_B(_031_),
    .D(net47),
    .Q(\cnt[2] ),
    .CLK(clknet_1_0__leaf_fclk_in_regs));
 sg13g2_dfrbpq_1 _238_ (.RESET_B(_032_),
    .D(_064_),
    .Q(\cnt[3] ),
    .CLK(clknet_1_1__leaf_fclk_in_regs));
 sg13g2_dfrbpq_1 _239_ (.RESET_B(_033_),
    .D(net45),
    .Q(net30),
    .CLK(clknet_1_1__leaf_fclk_in_regs));
 sg13g2_buf_1 _240_ (.A(clknet_1_0__leaf_fclk_in),
    .X(net28));
 sg13g2_buf_1 input1 (.A(En),
    .X(net1));
 sg13g2_buf_1 input2 (.A(Om),
    .X(net2));
 sg13g2_buf_1 input3 (.A(Op),
    .X(net3));
 sg13g2_buf_1 input4 (.A(clk_algo),
    .X(net4));
 sg13g2_buf_1 input5 (.A(rst),
    .X(net5));
 sg13g2_buf_1 output6 (.A(net6),
    .X(BN[0]));
 sg13g2_buf_1 output7 (.A(net7),
    .X(BN[1]));
 sg13g2_buf_1 output8 (.A(net8),
    .X(BN[2]));
 sg13g2_buf_1 output9 (.A(net9),
    .X(BN[3]));
 sg13g2_buf_1 output10 (.A(net10),
    .X(BN[4]));
 sg13g2_buf_1 output11 (.A(net11),
    .X(BN[5]));
 sg13g2_buf_1 output12 (.A(net12),
    .X(BN[6]));
 sg13g2_buf_1 output13 (.A(net13),
    .X(B[0]));
 sg13g2_buf_1 output14 (.A(net14),
    .X(B[1]));
 sg13g2_buf_1 output15 (.A(net15),
    .X(B[2]));
 sg13g2_buf_1 output16 (.A(net16),
    .X(B[3]));
 sg13g2_buf_1 output17 (.A(net17),
    .X(B[4]));
 sg13g2_buf_1 output18 (.A(net18),
    .X(B[5]));
 sg13g2_buf_1 output19 (.A(net19),
    .X(B[6]));
 sg13g2_buf_1 output20 (.A(net20),
    .X(D[0]));
 sg13g2_buf_1 output21 (.A(net21),
    .X(D[1]));
 sg13g2_buf_1 output22 (.A(net22),
    .X(D[2]));
 sg13g2_buf_1 output23 (.A(net23),
    .X(D[3]));
 sg13g2_buf_1 output24 (.A(net24),
    .X(D[4]));
 sg13g2_buf_1 output25 (.A(net25),
    .X(D[5]));
 sg13g2_buf_1 output26 (.A(net26),
    .X(D[6]));
 sg13g2_buf_1 output27 (.A(net27),
    .X(D[7]));
 sg13g2_buf_1 output28 (.A(net28),
    .X(fclk_comp));
 sg13g2_buf_1 output29 (.A(net29),
    .X(fclk_samp));
 sg13g2_buf_1 output30 (.A(net30),
    .X(fdac_clk));
 sg13g2_buf_1 fanout31 (.A(_074_),
    .X(net31));
 sg13g2_buf_1 fanout32 (.A(net33),
    .X(net32));
 sg13g2_buf_1 fanout33 (.A(_089_),
    .X(net33));
 sg13g2_buf_1 fanout34 (.A(net35),
    .X(net34));
 sg13g2_buf_1 fanout35 (.A(net39),
    .X(net35));
 sg13g2_buf_1 fanout36 (.A(net39),
    .X(net36));
 sg13g2_buf_1 fanout37 (.A(net39),
    .X(net37));
 sg13g2_buf_1 fanout38 (.A(net39),
    .X(net38));
 sg13g2_buf_1 fanout39 (.A(net5),
    .X(net39));
 sg13g2_buf_1 fanout40 (.A(net41),
    .X(net40));
 sg13g2_buf_1 fanout41 (.A(net4),
    .X(net41));
 sg13g2_buf_1 fanout42 (.A(net4),
    .X(net42));
 sg13g2_buf_1 fanout43 (.A(net4),
    .X(net43));
 sg13g2_buf_16 clkbuf_regs_0_fclk_in (.X(fclk_in_regs),
    .A(fclk_in));
 sg13g2_buf_16 clkbuf_0_fclk_in (.X(clknet_0_fclk_in),
    .A(fclk_in));
 sg13g2_buf_16 clkbuf_1_0__f_fclk_in (.X(clknet_1_0__leaf_fclk_in),
    .A(clknet_0_fclk_in));
 sg13g2_buf_16 clkbuf_0_fclk_in_regs (.X(clknet_0_fclk_in_regs),
    .A(fclk_in_regs));
 sg13g2_buf_16 clkbuf_1_0__f_fclk_in_regs (.X(clknet_1_0__leaf_fclk_in_regs),
    .A(clknet_0_fclk_in_regs));
 sg13g2_buf_16 clkbuf_1_1__f_fclk_in_regs (.X(clknet_1_1__leaf_fclk_in_regs),
    .A(clknet_0_fclk_in_regs));
 sg13g2_dlygate4sd3_1 hold44 (.A(\cnt[3] ),
    .X(net44));
 sg13g2_dlygate4sd3_1 hold45 (.A(_000_),
    .X(net45));
 sg13g2_dlygate4sd3_1 hold46 (.A(\cnt[2] ),
    .X(net46));
 sg13g2_dlygate4sd3_1 hold47 (.A(_063_),
    .X(net47));
 sg13g2_dlygate4sd3_1 hold48 (.A(\cnt[1] ),
    .X(net48));
 sg13g2_dlygate4sd3_1 hold49 (.A(_070_),
    .X(net49));
 sg13g2_dlygate4sd3_1 hold50 (.A(\cnt[0] ),
    .X(net50));
 sg13g2_dlygate4sd3_1 hold51 (.A(_001_),
    .X(net51));
 sg13g2_decap_8 FILLER_0_4 ();
 sg13g2_decap_8 FILLER_0_15 ();
 sg13g2_decap_8 FILLER_0_22 ();
 sg13g2_decap_8 FILLER_0_29 ();
 sg13g2_fill_2 FILLER_0_36 ();
 sg13g2_fill_2 FILLER_0_77 ();
 sg13g2_fill_1 FILLER_0_79 ();
 sg13g2_decap_4 FILLER_0_110 ();
 sg13g2_fill_2 FILLER_0_123 ();
 sg13g2_decap_8 FILLER_0_182 ();
 sg13g2_fill_2 FILLER_0_189 ();
 sg13g2_decap_8 FILLER_0_200 ();
 sg13g2_decap_8 FILLER_0_207 ();
 sg13g2_decap_8 FILLER_0_214 ();
 sg13g2_decap_4 FILLER_0_221 ();
 sg13g2_fill_2 FILLER_0_225 ();
 sg13g2_decap_8 FILLER_0_231 ();
 sg13g2_fill_1 FILLER_0_238 ();
 sg13g2_decap_8 FILLER_0_242 ();
 sg13g2_decap_8 FILLER_0_249 ();
 sg13g2_decap_8 FILLER_0_256 ();
 sg13g2_decap_8 FILLER_0_267 ();
 sg13g2_decap_8 FILLER_0_274 ();
 sg13g2_decap_8 FILLER_0_281 ();
 sg13g2_decap_8 FILLER_0_288 ();
 sg13g2_decap_4 FILLER_0_295 ();
 sg13g2_fill_2 FILLER_0_303 ();
 sg13g2_decap_8 FILLER_1_4 ();
 sg13g2_decap_8 FILLER_1_11 ();
 sg13g2_decap_8 FILLER_1_18 ();
 sg13g2_decap_8 FILLER_1_25 ();
 sg13g2_decap_8 FILLER_1_32 ();
 sg13g2_decap_8 FILLER_1_39 ();
 sg13g2_fill_1 FILLER_1_80 ();
 sg13g2_fill_1 FILLER_1_153 ();
 sg13g2_fill_1 FILLER_1_181 ();
 sg13g2_decap_8 FILLER_1_218 ();
 sg13g2_fill_2 FILLER_1_225 ();
 sg13g2_decap_8 FILLER_1_264 ();
 sg13g2_decap_8 FILLER_1_271 ();
 sg13g2_decap_8 FILLER_1_278 ();
 sg13g2_decap_8 FILLER_1_285 ();
 sg13g2_decap_8 FILLER_1_292 ();
 sg13g2_decap_4 FILLER_1_299 ();
 sg13g2_fill_2 FILLER_1_303 ();
 sg13g2_decap_8 FILLER_2_0 ();
 sg13g2_decap_8 FILLER_2_7 ();
 sg13g2_decap_8 FILLER_2_14 ();
 sg13g2_decap_8 FILLER_2_21 ();
 sg13g2_decap_8 FILLER_2_28 ();
 sg13g2_decap_8 FILLER_2_35 ();
 sg13g2_decap_8 FILLER_2_42 ();
 sg13g2_fill_1 FILLER_2_49 ();
 sg13g2_fill_2 FILLER_2_80 ();
 sg13g2_fill_1 FILLER_2_82 ();
 sg13g2_fill_2 FILLER_2_94 ();
 sg13g2_fill_2 FILLER_2_132 ();
 sg13g2_fill_2 FILLER_2_159 ();
 sg13g2_fill_1 FILLER_2_170 ();
 sg13g2_decap_8 FILLER_2_204 ();
 sg13g2_decap_8 FILLER_2_211 ();
 sg13g2_decap_8 FILLER_2_218 ();
 sg13g2_decap_8 FILLER_2_225 ();
 sg13g2_decap_8 FILLER_2_232 ();
 sg13g2_decap_8 FILLER_2_239 ();
 sg13g2_decap_4 FILLER_2_246 ();
 sg13g2_fill_1 FILLER_2_250 ();
 sg13g2_decap_8 FILLER_2_255 ();
 sg13g2_decap_8 FILLER_2_262 ();
 sg13g2_decap_8 FILLER_2_269 ();
 sg13g2_decap_8 FILLER_2_276 ();
 sg13g2_decap_8 FILLER_2_283 ();
 sg13g2_decap_8 FILLER_2_290 ();
 sg13g2_decap_8 FILLER_2_297 ();
 sg13g2_decap_4 FILLER_2_304 ();
 sg13g2_fill_1 FILLER_2_308 ();
 sg13g2_decap_8 FILLER_3_0 ();
 sg13g2_decap_8 FILLER_3_7 ();
 sg13g2_decap_8 FILLER_3_14 ();
 sg13g2_decap_8 FILLER_3_21 ();
 sg13g2_decap_8 FILLER_3_28 ();
 sg13g2_decap_8 FILLER_3_35 ();
 sg13g2_decap_8 FILLER_3_42 ();
 sg13g2_fill_2 FILLER_3_49 ();
 sg13g2_fill_1 FILLER_3_51 ();
 sg13g2_decap_4 FILLER_3_87 ();
 sg13g2_fill_2 FILLER_3_91 ();
 sg13g2_decap_8 FILLER_3_178 ();
 sg13g2_fill_1 FILLER_3_185 ();
 sg13g2_fill_2 FILLER_3_190 ();
 sg13g2_decap_8 FILLER_3_195 ();
 sg13g2_decap_8 FILLER_3_202 ();
 sg13g2_decap_8 FILLER_3_209 ();
 sg13g2_decap_8 FILLER_3_216 ();
 sg13g2_decap_8 FILLER_3_223 ();
 sg13g2_decap_8 FILLER_3_230 ();
 sg13g2_decap_8 FILLER_3_237 ();
 sg13g2_decap_8 FILLER_3_244 ();
 sg13g2_decap_8 FILLER_3_251 ();
 sg13g2_decap_8 FILLER_3_258 ();
 sg13g2_decap_8 FILLER_3_265 ();
 sg13g2_decap_8 FILLER_3_272 ();
 sg13g2_decap_8 FILLER_3_279 ();
 sg13g2_decap_8 FILLER_3_286 ();
 sg13g2_decap_8 FILLER_3_293 ();
 sg13g2_decap_8 FILLER_3_300 ();
 sg13g2_fill_2 FILLER_3_307 ();
 sg13g2_decap_8 FILLER_4_4 ();
 sg13g2_decap_8 FILLER_4_11 ();
 sg13g2_decap_8 FILLER_4_18 ();
 sg13g2_decap_8 FILLER_4_25 ();
 sg13g2_decap_8 FILLER_4_32 ();
 sg13g2_decap_8 FILLER_4_39 ();
 sg13g2_decap_8 FILLER_4_46 ();
 sg13g2_decap_4 FILLER_4_63 ();
 sg13g2_fill_2 FILLER_4_97 ();
 sg13g2_fill_2 FILLER_4_166 ();
 sg13g2_decap_8 FILLER_4_217 ();
 sg13g2_decap_8 FILLER_4_224 ();
 sg13g2_decap_8 FILLER_4_231 ();
 sg13g2_decap_8 FILLER_4_238 ();
 sg13g2_decap_8 FILLER_4_245 ();
 sg13g2_decap_8 FILLER_4_252 ();
 sg13g2_decap_8 FILLER_4_259 ();
 sg13g2_decap_8 FILLER_4_266 ();
 sg13g2_decap_8 FILLER_4_273 ();
 sg13g2_decap_8 FILLER_4_280 ();
 sg13g2_decap_8 FILLER_4_287 ();
 sg13g2_decap_8 FILLER_4_294 ();
 sg13g2_decap_4 FILLER_4_301 ();
 sg13g2_decap_8 FILLER_5_0 ();
 sg13g2_decap_8 FILLER_5_7 ();
 sg13g2_decap_8 FILLER_5_14 ();
 sg13g2_decap_8 FILLER_5_21 ();
 sg13g2_decap_8 FILLER_5_28 ();
 sg13g2_decap_8 FILLER_5_35 ();
 sg13g2_decap_8 FILLER_5_42 ();
 sg13g2_decap_8 FILLER_5_49 ();
 sg13g2_decap_8 FILLER_5_56 ();
 sg13g2_decap_8 FILLER_5_63 ();
 sg13g2_decap_8 FILLER_5_70 ();
 sg13g2_decap_4 FILLER_5_77 ();
 sg13g2_decap_8 FILLER_5_91 ();
 sg13g2_decap_8 FILLER_5_98 ();
 sg13g2_fill_1 FILLER_5_105 ();
 sg13g2_fill_1 FILLER_5_152 ();
 sg13g2_decap_8 FILLER_5_180 ();
 sg13g2_decap_8 FILLER_5_191 ();
 sg13g2_decap_4 FILLER_5_198 ();
 sg13g2_decap_8 FILLER_5_205 ();
 sg13g2_decap_8 FILLER_5_212 ();
 sg13g2_decap_8 FILLER_5_219 ();
 sg13g2_decap_8 FILLER_5_226 ();
 sg13g2_decap_8 FILLER_5_233 ();
 sg13g2_decap_8 FILLER_5_240 ();
 sg13g2_decap_8 FILLER_5_247 ();
 sg13g2_decap_8 FILLER_5_254 ();
 sg13g2_decap_8 FILLER_5_261 ();
 sg13g2_decap_8 FILLER_5_268 ();
 sg13g2_decap_8 FILLER_5_275 ();
 sg13g2_decap_8 FILLER_5_282 ();
 sg13g2_decap_8 FILLER_5_289 ();
 sg13g2_decap_8 FILLER_5_296 ();
 sg13g2_decap_4 FILLER_5_303 ();
 sg13g2_fill_2 FILLER_5_307 ();
 sg13g2_decap_8 FILLER_6_0 ();
 sg13g2_decap_8 FILLER_6_7 ();
 sg13g2_decap_8 FILLER_6_14 ();
 sg13g2_decap_8 FILLER_6_21 ();
 sg13g2_decap_8 FILLER_6_28 ();
 sg13g2_decap_8 FILLER_6_35 ();
 sg13g2_decap_8 FILLER_6_42 ();
 sg13g2_decap_8 FILLER_6_49 ();
 sg13g2_decap_8 FILLER_6_56 ();
 sg13g2_decap_8 FILLER_6_63 ();
 sg13g2_decap_4 FILLER_6_70 ();
 sg13g2_decap_8 FILLER_6_104 ();
 sg13g2_fill_2 FILLER_6_111 ();
 sg13g2_fill_1 FILLER_6_113 ();
 sg13g2_decap_8 FILLER_6_117 ();
 sg13g2_decap_8 FILLER_6_142 ();
 sg13g2_decap_8 FILLER_6_153 ();
 sg13g2_decap_8 FILLER_6_160 ();
 sg13g2_decap_8 FILLER_6_171 ();
 sg13g2_decap_8 FILLER_6_178 ();
 sg13g2_decap_4 FILLER_6_185 ();
 sg13g2_fill_1 FILLER_6_189 ();
 sg13g2_decap_8 FILLER_6_226 ();
 sg13g2_decap_8 FILLER_6_233 ();
 sg13g2_decap_8 FILLER_6_240 ();
 sg13g2_decap_8 FILLER_6_247 ();
 sg13g2_decap_8 FILLER_6_254 ();
 sg13g2_decap_8 FILLER_6_261 ();
 sg13g2_decap_8 FILLER_6_268 ();
 sg13g2_decap_8 FILLER_6_275 ();
 sg13g2_decap_8 FILLER_6_282 ();
 sg13g2_decap_8 FILLER_6_289 ();
 sg13g2_decap_8 FILLER_6_296 ();
 sg13g2_decap_4 FILLER_6_303 ();
 sg13g2_fill_2 FILLER_6_307 ();
 sg13g2_decap_8 FILLER_7_4 ();
 sg13g2_decap_8 FILLER_7_11 ();
 sg13g2_decap_8 FILLER_7_18 ();
 sg13g2_decap_8 FILLER_7_25 ();
 sg13g2_decap_8 FILLER_7_32 ();
 sg13g2_decap_8 FILLER_7_39 ();
 sg13g2_decap_8 FILLER_7_46 ();
 sg13g2_fill_2 FILLER_7_53 ();
 sg13g2_decap_8 FILLER_7_60 ();
 sg13g2_decap_8 FILLER_7_67 ();
 sg13g2_decap_8 FILLER_7_74 ();
 sg13g2_decap_8 FILLER_7_81 ();
 sg13g2_decap_4 FILLER_7_88 ();
 sg13g2_fill_2 FILLER_7_92 ();
 sg13g2_fill_2 FILLER_7_126 ();
 sg13g2_fill_1 FILLER_7_128 ();
 sg13g2_fill_2 FILLER_7_144 ();
 sg13g2_fill_1 FILLER_7_153 ();
 sg13g2_decap_8 FILLER_7_193 ();
 sg13g2_decap_8 FILLER_7_200 ();
 sg13g2_decap_8 FILLER_7_207 ();
 sg13g2_decap_8 FILLER_7_214 ();
 sg13g2_decap_8 FILLER_7_221 ();
 sg13g2_fill_2 FILLER_7_228 ();
 sg13g2_decap_8 FILLER_7_233 ();
 sg13g2_decap_8 FILLER_7_240 ();
 sg13g2_decap_8 FILLER_7_247 ();
 sg13g2_decap_8 FILLER_7_254 ();
 sg13g2_decap_8 FILLER_7_261 ();
 sg13g2_decap_8 FILLER_7_268 ();
 sg13g2_decap_8 FILLER_7_275 ();
 sg13g2_decap_8 FILLER_7_282 ();
 sg13g2_decap_8 FILLER_7_289 ();
 sg13g2_decap_8 FILLER_7_296 ();
 sg13g2_fill_2 FILLER_7_303 ();
 sg13g2_decap_8 FILLER_8_0 ();
 sg13g2_decap_8 FILLER_8_7 ();
 sg13g2_decap_8 FILLER_8_14 ();
 sg13g2_decap_8 FILLER_8_21 ();
 sg13g2_decap_8 FILLER_8_28 ();
 sg13g2_decap_8 FILLER_8_35 ();
 sg13g2_decap_8 FILLER_8_42 ();
 sg13g2_decap_8 FILLER_8_79 ();
 sg13g2_fill_2 FILLER_8_86 ();
 sg13g2_fill_1 FILLER_8_88 ();
 sg13g2_decap_4 FILLER_8_94 ();
 sg13g2_fill_2 FILLER_8_98 ();
 sg13g2_decap_8 FILLER_8_103 ();
 sg13g2_decap_8 FILLER_8_110 ();
 sg13g2_decap_8 FILLER_8_117 ();
 sg13g2_fill_2 FILLER_8_124 ();
 sg13g2_fill_1 FILLER_8_126 ();
 sg13g2_decap_8 FILLER_8_156 ();
 sg13g2_decap_8 FILLER_8_163 ();
 sg13g2_decap_8 FILLER_8_170 ();
 sg13g2_decap_8 FILLER_8_177 ();
 sg13g2_fill_1 FILLER_8_184 ();
 sg13g2_fill_2 FILLER_8_215 ();
 sg13g2_fill_1 FILLER_8_217 ();
 sg13g2_decap_8 FILLER_8_255 ();
 sg13g2_decap_8 FILLER_8_262 ();
 sg13g2_decap_8 FILLER_8_269 ();
 sg13g2_decap_8 FILLER_8_276 ();
 sg13g2_decap_8 FILLER_8_283 ();
 sg13g2_decap_8 FILLER_8_290 ();
 sg13g2_decap_8 FILLER_8_297 ();
 sg13g2_decap_4 FILLER_8_304 ();
 sg13g2_fill_1 FILLER_8_308 ();
 sg13g2_decap_8 FILLER_9_4 ();
 sg13g2_decap_8 FILLER_9_11 ();
 sg13g2_decap_8 FILLER_9_18 ();
 sg13g2_decap_8 FILLER_9_25 ();
 sg13g2_decap_8 FILLER_9_32 ();
 sg13g2_decap_8 FILLER_9_39 ();
 sg13g2_decap_8 FILLER_9_46 ();
 sg13g2_fill_2 FILLER_9_53 ();
 sg13g2_fill_1 FILLER_9_55 ();
 sg13g2_decap_8 FILLER_9_60 ();
 sg13g2_fill_1 FILLER_9_67 ();
 sg13g2_decap_8 FILLER_9_102 ();
 sg13g2_decap_8 FILLER_9_109 ();
 sg13g2_decap_8 FILLER_9_116 ();
 sg13g2_decap_8 FILLER_9_123 ();
 sg13g2_fill_2 FILLER_9_130 ();
 sg13g2_fill_1 FILLER_9_132 ();
 sg13g2_fill_2 FILLER_9_136 ();
 sg13g2_fill_1 FILLER_9_138 ();
 sg13g2_decap_8 FILLER_9_153 ();
 sg13g2_decap_8 FILLER_9_160 ();
 sg13g2_decap_8 FILLER_9_177 ();
 sg13g2_decap_8 FILLER_9_184 ();
 sg13g2_decap_4 FILLER_9_191 ();
 sg13g2_fill_2 FILLER_9_195 ();
 sg13g2_decap_8 FILLER_9_207 ();
 sg13g2_decap_4 FILLER_9_214 ();
 sg13g2_fill_2 FILLER_9_228 ();
 sg13g2_fill_1 FILLER_9_230 ();
 sg13g2_decap_8 FILLER_9_235 ();
 sg13g2_decap_8 FILLER_9_242 ();
 sg13g2_decap_8 FILLER_9_249 ();
 sg13g2_decap_8 FILLER_9_256 ();
 sg13g2_decap_8 FILLER_9_263 ();
 sg13g2_decap_8 FILLER_9_270 ();
 sg13g2_decap_8 FILLER_9_277 ();
 sg13g2_decap_8 FILLER_9_284 ();
 sg13g2_decap_8 FILLER_9_291 ();
 sg13g2_decap_8 FILLER_9_298 ();
 sg13g2_decap_8 FILLER_10_0 ();
 sg13g2_decap_8 FILLER_10_7 ();
 sg13g2_decap_8 FILLER_10_14 ();
 sg13g2_decap_8 FILLER_10_21 ();
 sg13g2_decap_8 FILLER_10_28 ();
 sg13g2_decap_8 FILLER_10_35 ();
 sg13g2_decap_8 FILLER_10_42 ();
 sg13g2_decap_8 FILLER_10_49 ();
 sg13g2_decap_8 FILLER_10_56 ();
 sg13g2_decap_8 FILLER_10_63 ();
 sg13g2_fill_2 FILLER_10_70 ();
 sg13g2_decap_8 FILLER_10_102 ();
 sg13g2_decap_8 FILLER_10_109 ();
 sg13g2_fill_2 FILLER_10_116 ();
 sg13g2_decap_8 FILLER_10_128 ();
 sg13g2_decap_8 FILLER_10_135 ();
 sg13g2_fill_2 FILLER_10_142 ();
 sg13g2_decap_8 FILLER_10_157 ();
 sg13g2_decap_4 FILLER_10_164 ();
 sg13g2_decap_8 FILLER_10_181 ();
 sg13g2_fill_1 FILLER_10_188 ();
 sg13g2_fill_2 FILLER_10_222 ();
 sg13g2_fill_1 FILLER_10_224 ();
 sg13g2_decap_4 FILLER_10_255 ();
 sg13g2_decap_8 FILLER_10_289 ();
 sg13g2_decap_8 FILLER_10_296 ();
 sg13g2_decap_4 FILLER_10_303 ();
 sg13g2_fill_2 FILLER_10_307 ();
 sg13g2_decap_8 FILLER_11_0 ();
 sg13g2_decap_8 FILLER_11_7 ();
 sg13g2_decap_8 FILLER_11_14 ();
 sg13g2_decap_8 FILLER_11_21 ();
 sg13g2_decap_8 FILLER_11_28 ();
 sg13g2_decap_8 FILLER_11_35 ();
 sg13g2_decap_8 FILLER_11_42 ();
 sg13g2_decap_8 FILLER_11_49 ();
 sg13g2_decap_8 FILLER_11_56 ();
 sg13g2_decap_8 FILLER_11_63 ();
 sg13g2_decap_4 FILLER_11_70 ();
 sg13g2_fill_2 FILLER_11_77 ();
 sg13g2_fill_1 FILLER_11_79 ();
 sg13g2_fill_1 FILLER_11_171 ();
 sg13g2_decap_8 FILLER_11_199 ();
 sg13g2_fill_1 FILLER_11_206 ();
 sg13g2_decap_8 FILLER_11_244 ();
 sg13g2_fill_1 FILLER_11_251 ();
 sg13g2_decap_8 FILLER_11_289 ();
 sg13g2_decap_8 FILLER_11_296 ();
 sg13g2_decap_4 FILLER_11_303 ();
 sg13g2_fill_2 FILLER_11_307 ();
 sg13g2_decap_8 FILLER_12_8 ();
 sg13g2_decap_8 FILLER_12_19 ();
 sg13g2_decap_8 FILLER_12_26 ();
 sg13g2_decap_8 FILLER_12_33 ();
 sg13g2_decap_8 FILLER_12_40 ();
 sg13g2_decap_8 FILLER_12_47 ();
 sg13g2_fill_1 FILLER_12_54 ();
 sg13g2_decap_8 FILLER_12_59 ();
 sg13g2_decap_8 FILLER_12_66 ();
 sg13g2_decap_8 FILLER_12_73 ();
 sg13g2_decap_8 FILLER_12_80 ();
 sg13g2_decap_4 FILLER_12_87 ();
 sg13g2_fill_2 FILLER_12_91 ();
 sg13g2_decap_8 FILLER_12_107 ();
 sg13g2_decap_4 FILLER_12_114 ();
 sg13g2_fill_1 FILLER_12_118 ();
 sg13g2_decap_8 FILLER_12_122 ();
 sg13g2_decap_4 FILLER_12_129 ();
 sg13g2_fill_2 FILLER_12_133 ();
 sg13g2_decap_8 FILLER_12_139 ();
 sg13g2_fill_1 FILLER_12_146 ();
 sg13g2_decap_8 FILLER_12_150 ();
 sg13g2_decap_8 FILLER_12_157 ();
 sg13g2_decap_8 FILLER_12_164 ();
 sg13g2_fill_1 FILLER_12_171 ();
 sg13g2_decap_8 FILLER_12_179 ();
 sg13g2_decap_8 FILLER_12_186 ();
 sg13g2_decap_8 FILLER_12_193 ();
 sg13g2_decap_8 FILLER_12_200 ();
 sg13g2_decap_8 FILLER_12_207 ();
 sg13g2_fill_1 FILLER_12_214 ();
 sg13g2_decap_8 FILLER_12_219 ();
 sg13g2_decap_4 FILLER_12_226 ();
 sg13g2_fill_1 FILLER_12_230 ();
 sg13g2_decap_8 FILLER_12_235 ();
 sg13g2_decap_8 FILLER_12_242 ();
 sg13g2_fill_1 FILLER_12_249 ();
 sg13g2_decap_8 FILLER_12_267 ();
 sg13g2_decap_8 FILLER_12_274 ();
 sg13g2_decap_8 FILLER_12_281 ();
 sg13g2_decap_8 FILLER_12_288 ();
 sg13g2_fill_2 FILLER_12_299 ();
endmodule
