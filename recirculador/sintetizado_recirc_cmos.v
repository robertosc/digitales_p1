/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "sintetizado_recirc_cmos.v:1" *)
module sintetizado_recirc_cmos(clk_2f, data_input, valid, active, reset, demux_0_estructural, demux_1_probador_estructural, valid_out_estructural);
  (* src = "sintetizado_recirc_cmos.v:10" *)
  wire [31:0] _000_;
  (* src = "sintetizado_recirc_cmos.v:10" *)
  wire [31:0] _001_;
  (* src = "sintetizado_recirc_cmos.v:10" *)
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
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  (* src = "sintetizado_recirc_cmos.v:4" *)
  input active;
  (* src = "sintetizado_recirc_cmos.v:1" *)
  input clk_2f;
  (* src = "sintetizado_recirc_cmos.v:2" *)
  input [31:0] data_input;
  (* src = "sintetizado_recirc_cmos.v:6" *)
  output [31:0] demux_0_estructural;
  (* src = "sintetizado_recirc_cmos.v:7" *)
  output [31:0] demux_1_probador_estructural;
  (* src = "sintetizado_recirc_cmos.v:5" *)
  input reset;
  (* src = "sintetizado_recirc_cmos.v:3" *)
  input valid;
  (* src = "sintetizado_recirc_cmos.v:8" *)
  output valid_out_estructural;
  NOT _200_ (
    .A(valid),
    .Y(_003_)
  );
  NOT _201_ (
    .A(active),
    .Y(_004_)
  );
  NOR _202_ (
    .A(_003_),
    .B(_004_),
    .Y(_005_)
  );
  NAND _203_ (
    .A(valid),
    .B(active),
    .Y(_006_)
  );
  NAND _204_ (
    .A(reset),
    .B(_005_),
    .Y(_007_)
  );
  NOT _205_ (
    .A(_007_),
    .Y(_002_)
  );
  NAND _206_ (
    .A(demux_1_probador_estructural[15]),
    .B(_002_),
    .Y(_008_)
  );
  NAND _207_ (
    .A(data_input[15]),
    .B(_007_),
    .Y(_009_)
  );
  NAND _208_ (
    .A(_008_),
    .B(_009_),
    .Y(_001_[15])
  );
  NAND _209_ (
    .A(demux_1_probador_estructural[16]),
    .B(_002_),
    .Y(_010_)
  );
  NAND _210_ (
    .A(data_input[16]),
    .B(_007_),
    .Y(_011_)
  );
  NAND _211_ (
    .A(_010_),
    .B(_011_),
    .Y(_001_[16])
  );
  NAND _212_ (
    .A(demux_1_probador_estructural[17]),
    .B(_002_),
    .Y(_012_)
  );
  NAND _213_ (
    .A(data_input[17]),
    .B(_007_),
    .Y(_013_)
  );
  NAND _214_ (
    .A(_012_),
    .B(_013_),
    .Y(_001_[17])
  );
  NAND _215_ (
    .A(demux_1_probador_estructural[18]),
    .B(_002_),
    .Y(_014_)
  );
  NAND _216_ (
    .A(data_input[18]),
    .B(_007_),
    .Y(_015_)
  );
  NAND _217_ (
    .A(_014_),
    .B(_015_),
    .Y(_001_[18])
  );
  NAND _218_ (
    .A(demux_1_probador_estructural[19]),
    .B(_002_),
    .Y(_016_)
  );
  NAND _219_ (
    .A(data_input[19]),
    .B(_007_),
    .Y(_017_)
  );
  NAND _220_ (
    .A(_016_),
    .B(_017_),
    .Y(_001_[19])
  );
  NAND _221_ (
    .A(demux_1_probador_estructural[20]),
    .B(_002_),
    .Y(_018_)
  );
  NAND _222_ (
    .A(data_input[20]),
    .B(_007_),
    .Y(_019_)
  );
  NAND _223_ (
    .A(_018_),
    .B(_019_),
    .Y(_001_[20])
  );
  NAND _224_ (
    .A(demux_1_probador_estructural[21]),
    .B(_002_),
    .Y(_020_)
  );
  NAND _225_ (
    .A(data_input[21]),
    .B(_007_),
    .Y(_021_)
  );
  NAND _226_ (
    .A(_020_),
    .B(_021_),
    .Y(_001_[21])
  );
  NAND _227_ (
    .A(demux_1_probador_estructural[22]),
    .B(_002_),
    .Y(_022_)
  );
  NAND _228_ (
    .A(data_input[22]),
    .B(_007_),
    .Y(_023_)
  );
  NAND _229_ (
    .A(_022_),
    .B(_023_),
    .Y(_001_[22])
  );
  NAND _230_ (
    .A(demux_1_probador_estructural[23]),
    .B(_002_),
    .Y(_024_)
  );
  NAND _231_ (
    .A(data_input[23]),
    .B(_007_),
    .Y(_025_)
  );
  NAND _232_ (
    .A(_024_),
    .B(_025_),
    .Y(_001_[23])
  );
  NAND _233_ (
    .A(demux_1_probador_estructural[24]),
    .B(_002_),
    .Y(_026_)
  );
  NAND _234_ (
    .A(data_input[24]),
    .B(_007_),
    .Y(_027_)
  );
  NAND _235_ (
    .A(_026_),
    .B(_027_),
    .Y(_001_[24])
  );
  NAND _236_ (
    .A(demux_1_probador_estructural[25]),
    .B(_002_),
    .Y(_028_)
  );
  NAND _237_ (
    .A(data_input[25]),
    .B(_007_),
    .Y(_029_)
  );
  NAND _238_ (
    .A(_028_),
    .B(_029_),
    .Y(_001_[25])
  );
  NAND _239_ (
    .A(demux_1_probador_estructural[26]),
    .B(_002_),
    .Y(_030_)
  );
  NAND _240_ (
    .A(data_input[26]),
    .B(_007_),
    .Y(_031_)
  );
  NAND _241_ (
    .A(_030_),
    .B(_031_),
    .Y(_001_[26])
  );
  NAND _242_ (
    .A(demux_1_probador_estructural[27]),
    .B(_002_),
    .Y(_032_)
  );
  NAND _243_ (
    .A(data_input[27]),
    .B(_007_),
    .Y(_033_)
  );
  NAND _244_ (
    .A(_032_),
    .B(_033_),
    .Y(_001_[27])
  );
  NAND _245_ (
    .A(demux_1_probador_estructural[28]),
    .B(_002_),
    .Y(_034_)
  );
  NAND _246_ (
    .A(data_input[28]),
    .B(_007_),
    .Y(_035_)
  );
  NAND _247_ (
    .A(_034_),
    .B(_035_),
    .Y(_001_[28])
  );
  NAND _248_ (
    .A(demux_1_probador_estructural[29]),
    .B(_002_),
    .Y(_036_)
  );
  NAND _249_ (
    .A(data_input[29]),
    .B(_007_),
    .Y(_037_)
  );
  NAND _250_ (
    .A(_036_),
    .B(_037_),
    .Y(_001_[29])
  );
  NAND _251_ (
    .A(demux_1_probador_estructural[30]),
    .B(_002_),
    .Y(_038_)
  );
  NAND _252_ (
    .A(data_input[30]),
    .B(_007_),
    .Y(_039_)
  );
  NAND _253_ (
    .A(_038_),
    .B(_039_),
    .Y(_001_[30])
  );
  NAND _254_ (
    .A(demux_1_probador_estructural[31]),
    .B(_002_),
    .Y(_040_)
  );
  NAND _255_ (
    .A(data_input[31]),
    .B(_007_),
    .Y(_041_)
  );
  NAND _256_ (
    .A(_040_),
    .B(_041_),
    .Y(_001_[31])
  );
  NOR _257_ (
    .A(demux_0_estructural[0]),
    .B(_005_),
    .Y(_042_)
  );
  NOR _258_ (
    .A(data_input[0]),
    .B(_006_),
    .Y(_043_)
  );
  NOT _259_ (
    .A(_043_),
    .Y(_044_)
  );
  NAND _260_ (
    .A(reset),
    .B(_044_),
    .Y(_045_)
  );
  NOR _261_ (
    .A(_042_),
    .B(_045_),
    .Y(_000_[0])
  );
  NOR _262_ (
    .A(demux_0_estructural[1]),
    .B(_005_),
    .Y(_046_)
  );
  NOR _263_ (
    .A(data_input[1]),
    .B(_006_),
    .Y(_047_)
  );
  NOT _264_ (
    .A(_047_),
    .Y(_048_)
  );
  NAND _265_ (
    .A(reset),
    .B(_048_),
    .Y(_049_)
  );
  NOR _266_ (
    .A(_046_),
    .B(_049_),
    .Y(_000_[1])
  );
  NOR _267_ (
    .A(demux_0_estructural[2]),
    .B(_005_),
    .Y(_050_)
  );
  NOR _268_ (
    .A(data_input[2]),
    .B(_006_),
    .Y(_051_)
  );
  NOT _269_ (
    .A(_051_),
    .Y(_052_)
  );
  NAND _270_ (
    .A(reset),
    .B(_052_),
    .Y(_053_)
  );
  NOR _271_ (
    .A(_050_),
    .B(_053_),
    .Y(_000_[2])
  );
  NOR _272_ (
    .A(demux_0_estructural[3]),
    .B(_005_),
    .Y(_054_)
  );
  NOR _273_ (
    .A(data_input[3]),
    .B(_006_),
    .Y(_055_)
  );
  NOT _274_ (
    .A(_055_),
    .Y(_056_)
  );
  NAND _275_ (
    .A(reset),
    .B(_056_),
    .Y(_057_)
  );
  NOR _276_ (
    .A(_054_),
    .B(_057_),
    .Y(_000_[3])
  );
  NOR _277_ (
    .A(demux_0_estructural[4]),
    .B(_005_),
    .Y(_058_)
  );
  NOR _278_ (
    .A(data_input[4]),
    .B(_006_),
    .Y(_059_)
  );
  NOT _279_ (
    .A(_059_),
    .Y(_060_)
  );
  NAND _280_ (
    .A(reset),
    .B(_060_),
    .Y(_061_)
  );
  NOR _281_ (
    .A(_058_),
    .B(_061_),
    .Y(_000_[4])
  );
  NOR _282_ (
    .A(demux_0_estructural[5]),
    .B(_005_),
    .Y(_062_)
  );
  NOR _283_ (
    .A(data_input[5]),
    .B(_006_),
    .Y(_063_)
  );
  NOT _284_ (
    .A(_063_),
    .Y(_064_)
  );
  NAND _285_ (
    .A(reset),
    .B(_064_),
    .Y(_065_)
  );
  NOR _286_ (
    .A(_062_),
    .B(_065_),
    .Y(_000_[5])
  );
  NOR _287_ (
    .A(demux_0_estructural[6]),
    .B(_005_),
    .Y(_066_)
  );
  NOR _288_ (
    .A(data_input[6]),
    .B(_006_),
    .Y(_067_)
  );
  NOT _289_ (
    .A(_067_),
    .Y(_068_)
  );
  NAND _290_ (
    .A(reset),
    .B(_068_),
    .Y(_069_)
  );
  NOR _291_ (
    .A(_066_),
    .B(_069_),
    .Y(_000_[6])
  );
  NOR _292_ (
    .A(demux_0_estructural[7]),
    .B(_005_),
    .Y(_070_)
  );
  NOR _293_ (
    .A(data_input[7]),
    .B(_006_),
    .Y(_071_)
  );
  NOT _294_ (
    .A(_071_),
    .Y(_072_)
  );
  NAND _295_ (
    .A(reset),
    .B(_072_),
    .Y(_073_)
  );
  NOR _296_ (
    .A(_070_),
    .B(_073_),
    .Y(_000_[7])
  );
  NOR _297_ (
    .A(demux_0_estructural[8]),
    .B(_005_),
    .Y(_074_)
  );
  NOR _298_ (
    .A(data_input[8]),
    .B(_006_),
    .Y(_075_)
  );
  NOT _299_ (
    .A(_075_),
    .Y(_076_)
  );
  NAND _300_ (
    .A(reset),
    .B(_076_),
    .Y(_077_)
  );
  NOR _301_ (
    .A(_074_),
    .B(_077_),
    .Y(_000_[8])
  );
  NOR _302_ (
    .A(demux_0_estructural[9]),
    .B(_005_),
    .Y(_078_)
  );
  NOR _303_ (
    .A(data_input[9]),
    .B(_006_),
    .Y(_079_)
  );
  NOT _304_ (
    .A(_079_),
    .Y(_080_)
  );
  NAND _305_ (
    .A(reset),
    .B(_080_),
    .Y(_081_)
  );
  NOR _306_ (
    .A(_078_),
    .B(_081_),
    .Y(_000_[9])
  );
  NOR _307_ (
    .A(demux_0_estructural[10]),
    .B(_005_),
    .Y(_082_)
  );
  NOR _308_ (
    .A(data_input[10]),
    .B(_006_),
    .Y(_083_)
  );
  NOT _309_ (
    .A(_083_),
    .Y(_084_)
  );
  NAND _310_ (
    .A(reset),
    .B(_084_),
    .Y(_085_)
  );
  NOR _311_ (
    .A(_082_),
    .B(_085_),
    .Y(_000_[10])
  );
  NOR _312_ (
    .A(demux_0_estructural[11]),
    .B(_005_),
    .Y(_086_)
  );
  NOR _313_ (
    .A(data_input[11]),
    .B(_006_),
    .Y(_087_)
  );
  NOT _314_ (
    .A(_087_),
    .Y(_088_)
  );
  NAND _315_ (
    .A(reset),
    .B(_088_),
    .Y(_089_)
  );
  NOR _316_ (
    .A(_086_),
    .B(_089_),
    .Y(_000_[11])
  );
  NOR _317_ (
    .A(demux_0_estructural[12]),
    .B(_005_),
    .Y(_090_)
  );
  NOR _318_ (
    .A(data_input[12]),
    .B(_006_),
    .Y(_091_)
  );
  NOT _319_ (
    .A(_091_),
    .Y(_092_)
  );
  NAND _320_ (
    .A(reset),
    .B(_092_),
    .Y(_093_)
  );
  NOR _321_ (
    .A(_090_),
    .B(_093_),
    .Y(_000_[12])
  );
  NOR _322_ (
    .A(demux_0_estructural[13]),
    .B(_005_),
    .Y(_094_)
  );
  NOR _323_ (
    .A(data_input[13]),
    .B(_006_),
    .Y(_095_)
  );
  NOT _324_ (
    .A(_095_),
    .Y(_096_)
  );
  NAND _325_ (
    .A(reset),
    .B(_096_),
    .Y(_097_)
  );
  NOR _326_ (
    .A(_094_),
    .B(_097_),
    .Y(_000_[13])
  );
  NOR _327_ (
    .A(demux_0_estructural[14]),
    .B(_005_),
    .Y(_098_)
  );
  NOR _328_ (
    .A(data_input[14]),
    .B(_006_),
    .Y(_099_)
  );
  NOT _329_ (
    .A(_099_),
    .Y(_100_)
  );
  NAND _330_ (
    .A(reset),
    .B(_100_),
    .Y(_101_)
  );
  NOR _331_ (
    .A(_098_),
    .B(_101_),
    .Y(_000_[14])
  );
  NOR _332_ (
    .A(demux_0_estructural[15]),
    .B(_005_),
    .Y(_102_)
  );
  NOR _333_ (
    .A(data_input[15]),
    .B(_006_),
    .Y(_103_)
  );
  NOT _334_ (
    .A(_103_),
    .Y(_104_)
  );
  NAND _335_ (
    .A(reset),
    .B(_104_),
    .Y(_105_)
  );
  NOR _336_ (
    .A(_102_),
    .B(_105_),
    .Y(_000_[15])
  );
  NOR _337_ (
    .A(demux_0_estructural[16]),
    .B(_005_),
    .Y(_106_)
  );
  NOR _338_ (
    .A(data_input[16]),
    .B(_006_),
    .Y(_107_)
  );
  NOT _339_ (
    .A(_107_),
    .Y(_108_)
  );
  NAND _340_ (
    .A(reset),
    .B(_108_),
    .Y(_109_)
  );
  NOR _341_ (
    .A(_106_),
    .B(_109_),
    .Y(_000_[16])
  );
  NOR _342_ (
    .A(demux_0_estructural[17]),
    .B(_005_),
    .Y(_110_)
  );
  NOR _343_ (
    .A(data_input[17]),
    .B(_006_),
    .Y(_111_)
  );
  NOT _344_ (
    .A(_111_),
    .Y(_112_)
  );
  NAND _345_ (
    .A(reset),
    .B(_112_),
    .Y(_113_)
  );
  NOR _346_ (
    .A(_110_),
    .B(_113_),
    .Y(_000_[17])
  );
  NOR _347_ (
    .A(demux_0_estructural[18]),
    .B(_005_),
    .Y(_114_)
  );
  NOR _348_ (
    .A(data_input[18]),
    .B(_006_),
    .Y(_115_)
  );
  NOT _349_ (
    .A(_115_),
    .Y(_116_)
  );
  NAND _350_ (
    .A(reset),
    .B(_116_),
    .Y(_117_)
  );
  NOR _351_ (
    .A(_114_),
    .B(_117_),
    .Y(_000_[18])
  );
  NOR _352_ (
    .A(demux_0_estructural[19]),
    .B(_005_),
    .Y(_118_)
  );
  NOR _353_ (
    .A(data_input[19]),
    .B(_006_),
    .Y(_119_)
  );
  NOT _354_ (
    .A(_119_),
    .Y(_120_)
  );
  NAND _355_ (
    .A(reset),
    .B(_120_),
    .Y(_121_)
  );
  NOR _356_ (
    .A(_118_),
    .B(_121_),
    .Y(_000_[19])
  );
  NOR _357_ (
    .A(demux_0_estructural[20]),
    .B(_005_),
    .Y(_122_)
  );
  NOR _358_ (
    .A(data_input[20]),
    .B(_006_),
    .Y(_123_)
  );
  NOT _359_ (
    .A(_123_),
    .Y(_124_)
  );
  NAND _360_ (
    .A(reset),
    .B(_124_),
    .Y(_125_)
  );
  NOR _361_ (
    .A(_122_),
    .B(_125_),
    .Y(_000_[20])
  );
  NOR _362_ (
    .A(demux_0_estructural[21]),
    .B(_005_),
    .Y(_126_)
  );
  NOR _363_ (
    .A(data_input[21]),
    .B(_006_),
    .Y(_127_)
  );
  NOT _364_ (
    .A(_127_),
    .Y(_128_)
  );
  NAND _365_ (
    .A(reset),
    .B(_128_),
    .Y(_129_)
  );
  NOR _366_ (
    .A(_126_),
    .B(_129_),
    .Y(_000_[21])
  );
  NOR _367_ (
    .A(demux_0_estructural[22]),
    .B(_005_),
    .Y(_130_)
  );
  NOR _368_ (
    .A(data_input[22]),
    .B(_006_),
    .Y(_131_)
  );
  NOT _369_ (
    .A(_131_),
    .Y(_132_)
  );
  NAND _370_ (
    .A(reset),
    .B(_132_),
    .Y(_133_)
  );
  NOR _371_ (
    .A(_130_),
    .B(_133_),
    .Y(_000_[22])
  );
  NOR _372_ (
    .A(demux_0_estructural[23]),
    .B(_005_),
    .Y(_134_)
  );
  NOR _373_ (
    .A(data_input[23]),
    .B(_006_),
    .Y(_135_)
  );
  NOT _374_ (
    .A(_135_),
    .Y(_136_)
  );
  NAND _375_ (
    .A(reset),
    .B(_136_),
    .Y(_137_)
  );
  NOR _376_ (
    .A(_134_),
    .B(_137_),
    .Y(_000_[23])
  );
  NOR _377_ (
    .A(demux_0_estructural[24]),
    .B(_005_),
    .Y(_138_)
  );
  NOR _378_ (
    .A(data_input[24]),
    .B(_006_),
    .Y(_139_)
  );
  NOT _379_ (
    .A(_139_),
    .Y(_140_)
  );
  NAND _380_ (
    .A(reset),
    .B(_140_),
    .Y(_141_)
  );
  NOR _381_ (
    .A(_138_),
    .B(_141_),
    .Y(_000_[24])
  );
  NOR _382_ (
    .A(demux_0_estructural[25]),
    .B(_005_),
    .Y(_142_)
  );
  NOR _383_ (
    .A(data_input[25]),
    .B(_006_),
    .Y(_143_)
  );
  NOT _384_ (
    .A(_143_),
    .Y(_144_)
  );
  NAND _385_ (
    .A(reset),
    .B(_144_),
    .Y(_145_)
  );
  NOR _386_ (
    .A(_142_),
    .B(_145_),
    .Y(_000_[25])
  );
  NOR _387_ (
    .A(demux_0_estructural[26]),
    .B(_005_),
    .Y(_146_)
  );
  NOR _388_ (
    .A(data_input[26]),
    .B(_006_),
    .Y(_147_)
  );
  NOT _389_ (
    .A(_147_),
    .Y(_148_)
  );
  NAND _390_ (
    .A(reset),
    .B(_148_),
    .Y(_149_)
  );
  NOR _391_ (
    .A(_146_),
    .B(_149_),
    .Y(_000_[26])
  );
  NOR _392_ (
    .A(demux_0_estructural[27]),
    .B(_005_),
    .Y(_150_)
  );
  NOR _393_ (
    .A(data_input[27]),
    .B(_006_),
    .Y(_151_)
  );
  NOT _394_ (
    .A(_151_),
    .Y(_152_)
  );
  NAND _395_ (
    .A(reset),
    .B(_152_),
    .Y(_153_)
  );
  NOR _396_ (
    .A(_150_),
    .B(_153_),
    .Y(_000_[27])
  );
  NOR _397_ (
    .A(demux_0_estructural[28]),
    .B(_005_),
    .Y(_154_)
  );
  NOR _398_ (
    .A(data_input[28]),
    .B(_006_),
    .Y(_155_)
  );
  NOT _399_ (
    .A(_155_),
    .Y(_156_)
  );
  NAND _400_ (
    .A(reset),
    .B(_156_),
    .Y(_157_)
  );
  NOR _401_ (
    .A(_154_),
    .B(_157_),
    .Y(_000_[28])
  );
  NOR _402_ (
    .A(demux_0_estructural[29]),
    .B(_005_),
    .Y(_158_)
  );
  NOR _403_ (
    .A(data_input[29]),
    .B(_006_),
    .Y(_159_)
  );
  NOT _404_ (
    .A(_159_),
    .Y(_160_)
  );
  NAND _405_ (
    .A(reset),
    .B(_160_),
    .Y(_161_)
  );
  NOR _406_ (
    .A(_158_),
    .B(_161_),
    .Y(_000_[29])
  );
  NOR _407_ (
    .A(demux_0_estructural[30]),
    .B(_005_),
    .Y(_162_)
  );
  NOR _408_ (
    .A(data_input[30]),
    .B(_006_),
    .Y(_163_)
  );
  NOT _409_ (
    .A(_163_),
    .Y(_164_)
  );
  NAND _410_ (
    .A(reset),
    .B(_164_),
    .Y(_165_)
  );
  NOR _411_ (
    .A(_162_),
    .B(_165_),
    .Y(_000_[30])
  );
  NOR _412_ (
    .A(demux_0_estructural[31]),
    .B(_005_),
    .Y(_166_)
  );
  NOR _413_ (
    .A(data_input[31]),
    .B(_006_),
    .Y(_167_)
  );
  NOT _414_ (
    .A(_167_),
    .Y(_168_)
  );
  NAND _415_ (
    .A(reset),
    .B(_168_),
    .Y(_169_)
  );
  NOR _416_ (
    .A(_166_),
    .B(_169_),
    .Y(_000_[31])
  );
  NAND _417_ (
    .A(demux_1_probador_estructural[0]),
    .B(_002_),
    .Y(_170_)
  );
  NAND _418_ (
    .A(data_input[0]),
    .B(_007_),
    .Y(_171_)
  );
  NAND _419_ (
    .A(_170_),
    .B(_171_),
    .Y(_001_[0])
  );
  NAND _420_ (
    .A(demux_1_probador_estructural[1]),
    .B(_002_),
    .Y(_172_)
  );
  NAND _421_ (
    .A(data_input[1]),
    .B(_007_),
    .Y(_173_)
  );
  NAND _422_ (
    .A(_172_),
    .B(_173_),
    .Y(_001_[1])
  );
  NAND _423_ (
    .A(demux_1_probador_estructural[2]),
    .B(_002_),
    .Y(_174_)
  );
  NAND _424_ (
    .A(data_input[2]),
    .B(_007_),
    .Y(_175_)
  );
  NAND _425_ (
    .A(_174_),
    .B(_175_),
    .Y(_001_[2])
  );
  NAND _426_ (
    .A(demux_1_probador_estructural[3]),
    .B(_002_),
    .Y(_176_)
  );
  NAND _427_ (
    .A(data_input[3]),
    .B(_007_),
    .Y(_177_)
  );
  NAND _428_ (
    .A(_176_),
    .B(_177_),
    .Y(_001_[3])
  );
  NAND _429_ (
    .A(demux_1_probador_estructural[4]),
    .B(_002_),
    .Y(_178_)
  );
  NAND _430_ (
    .A(data_input[4]),
    .B(_007_),
    .Y(_179_)
  );
  NAND _431_ (
    .A(_178_),
    .B(_179_),
    .Y(_001_[4])
  );
  NAND _432_ (
    .A(demux_1_probador_estructural[5]),
    .B(_002_),
    .Y(_180_)
  );
  NAND _433_ (
    .A(data_input[5]),
    .B(_007_),
    .Y(_181_)
  );
  NAND _434_ (
    .A(_180_),
    .B(_181_),
    .Y(_001_[5])
  );
  NAND _435_ (
    .A(demux_1_probador_estructural[6]),
    .B(_002_),
    .Y(_182_)
  );
  NAND _436_ (
    .A(data_input[6]),
    .B(_007_),
    .Y(_183_)
  );
  NAND _437_ (
    .A(_182_),
    .B(_183_),
    .Y(_001_[6])
  );
  NAND _438_ (
    .A(demux_1_probador_estructural[7]),
    .B(_002_),
    .Y(_184_)
  );
  NAND _439_ (
    .A(data_input[7]),
    .B(_007_),
    .Y(_185_)
  );
  NAND _440_ (
    .A(_184_),
    .B(_185_),
    .Y(_001_[7])
  );
  NAND _441_ (
    .A(demux_1_probador_estructural[8]),
    .B(_002_),
    .Y(_186_)
  );
  NAND _442_ (
    .A(data_input[8]),
    .B(_007_),
    .Y(_187_)
  );
  NAND _443_ (
    .A(_186_),
    .B(_187_),
    .Y(_001_[8])
  );
  NAND _444_ (
    .A(demux_1_probador_estructural[9]),
    .B(_002_),
    .Y(_188_)
  );
  NAND _445_ (
    .A(data_input[9]),
    .B(_007_),
    .Y(_189_)
  );
  NAND _446_ (
    .A(_188_),
    .B(_189_),
    .Y(_001_[9])
  );
  NAND _447_ (
    .A(demux_1_probador_estructural[10]),
    .B(_002_),
    .Y(_190_)
  );
  NAND _448_ (
    .A(data_input[10]),
    .B(_007_),
    .Y(_191_)
  );
  NAND _449_ (
    .A(_190_),
    .B(_191_),
    .Y(_001_[10])
  );
  NAND _450_ (
    .A(demux_1_probador_estructural[11]),
    .B(_002_),
    .Y(_192_)
  );
  NAND _451_ (
    .A(data_input[11]),
    .B(_007_),
    .Y(_193_)
  );
  NAND _452_ (
    .A(_192_),
    .B(_193_),
    .Y(_001_[11])
  );
  NAND _453_ (
    .A(demux_1_probador_estructural[12]),
    .B(_002_),
    .Y(_194_)
  );
  NAND _454_ (
    .A(data_input[12]),
    .B(_007_),
    .Y(_195_)
  );
  NAND _455_ (
    .A(_194_),
    .B(_195_),
    .Y(_001_[12])
  );
  NAND _456_ (
    .A(demux_1_probador_estructural[13]),
    .B(_002_),
    .Y(_196_)
  );
  NAND _457_ (
    .A(data_input[13]),
    .B(_007_),
    .Y(_197_)
  );
  NAND _458_ (
    .A(_196_),
    .B(_197_),
    .Y(_001_[13])
  );
  NAND _459_ (
    .A(demux_1_probador_estructural[14]),
    .B(_002_),
    .Y(_198_)
  );
  NAND _460_ (
    .A(data_input[14]),
    .B(_007_),
    .Y(_199_)
  );
  NAND _461_ (
    .A(_198_),
    .B(_199_),
    .Y(_001_[14])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _462_ (
    .C(clk_2f),
    .D(_000_[0]),
    .Q(demux_0_estructural[0])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _463_ (
    .C(clk_2f),
    .D(_000_[1]),
    .Q(demux_0_estructural[1])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _464_ (
    .C(clk_2f),
    .D(_000_[2]),
    .Q(demux_0_estructural[2])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _465_ (
    .C(clk_2f),
    .D(_000_[3]),
    .Q(demux_0_estructural[3])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _466_ (
    .C(clk_2f),
    .D(_000_[4]),
    .Q(demux_0_estructural[4])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _467_ (
    .C(clk_2f),
    .D(_000_[5]),
    .Q(demux_0_estructural[5])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _468_ (
    .C(clk_2f),
    .D(_000_[6]),
    .Q(demux_0_estructural[6])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _469_ (
    .C(clk_2f),
    .D(_000_[7]),
    .Q(demux_0_estructural[7])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _470_ (
    .C(clk_2f),
    .D(_000_[8]),
    .Q(demux_0_estructural[8])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _471_ (
    .C(clk_2f),
    .D(_000_[9]),
    .Q(demux_0_estructural[9])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _472_ (
    .C(clk_2f),
    .D(_000_[10]),
    .Q(demux_0_estructural[10])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _473_ (
    .C(clk_2f),
    .D(_000_[11]),
    .Q(demux_0_estructural[11])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _474_ (
    .C(clk_2f),
    .D(_000_[12]),
    .Q(demux_0_estructural[12])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _475_ (
    .C(clk_2f),
    .D(_000_[13]),
    .Q(demux_0_estructural[13])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _476_ (
    .C(clk_2f),
    .D(_000_[14]),
    .Q(demux_0_estructural[14])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _477_ (
    .C(clk_2f),
    .D(_000_[15]),
    .Q(demux_0_estructural[15])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _478_ (
    .C(clk_2f),
    .D(_000_[16]),
    .Q(demux_0_estructural[16])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _479_ (
    .C(clk_2f),
    .D(_000_[17]),
    .Q(demux_0_estructural[17])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _480_ (
    .C(clk_2f),
    .D(_000_[18]),
    .Q(demux_0_estructural[18])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _481_ (
    .C(clk_2f),
    .D(_000_[19]),
    .Q(demux_0_estructural[19])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _482_ (
    .C(clk_2f),
    .D(_000_[20]),
    .Q(demux_0_estructural[20])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _483_ (
    .C(clk_2f),
    .D(_000_[21]),
    .Q(demux_0_estructural[21])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _484_ (
    .C(clk_2f),
    .D(_000_[22]),
    .Q(demux_0_estructural[22])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _485_ (
    .C(clk_2f),
    .D(_000_[23]),
    .Q(demux_0_estructural[23])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _486_ (
    .C(clk_2f),
    .D(_000_[24]),
    .Q(demux_0_estructural[24])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _487_ (
    .C(clk_2f),
    .D(_000_[25]),
    .Q(demux_0_estructural[25])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _488_ (
    .C(clk_2f),
    .D(_000_[26]),
    .Q(demux_0_estructural[26])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _489_ (
    .C(clk_2f),
    .D(_000_[27]),
    .Q(demux_0_estructural[27])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _490_ (
    .C(clk_2f),
    .D(_000_[28]),
    .Q(demux_0_estructural[28])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _491_ (
    .C(clk_2f),
    .D(_000_[29]),
    .Q(demux_0_estructural[29])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _492_ (
    .C(clk_2f),
    .D(_000_[30]),
    .Q(demux_0_estructural[30])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _493_ (
    .C(clk_2f),
    .D(_000_[31]),
    .Q(demux_0_estructural[31])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _494_ (
    .C(clk_2f),
    .D(_001_[0]),
    .Q(demux_1_probador_estructural[0])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _495_ (
    .C(clk_2f),
    .D(_001_[1]),
    .Q(demux_1_probador_estructural[1])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _496_ (
    .C(clk_2f),
    .D(_001_[2]),
    .Q(demux_1_probador_estructural[2])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _497_ (
    .C(clk_2f),
    .D(_001_[3]),
    .Q(demux_1_probador_estructural[3])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _498_ (
    .C(clk_2f),
    .D(_001_[4]),
    .Q(demux_1_probador_estructural[4])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _499_ (
    .C(clk_2f),
    .D(_001_[5]),
    .Q(demux_1_probador_estructural[5])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _500_ (
    .C(clk_2f),
    .D(_001_[6]),
    .Q(demux_1_probador_estructural[6])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _501_ (
    .C(clk_2f),
    .D(_001_[7]),
    .Q(demux_1_probador_estructural[7])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _502_ (
    .C(clk_2f),
    .D(_001_[8]),
    .Q(demux_1_probador_estructural[8])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _503_ (
    .C(clk_2f),
    .D(_001_[9]),
    .Q(demux_1_probador_estructural[9])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _504_ (
    .C(clk_2f),
    .D(_001_[10]),
    .Q(demux_1_probador_estructural[10])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _505_ (
    .C(clk_2f),
    .D(_001_[11]),
    .Q(demux_1_probador_estructural[11])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _506_ (
    .C(clk_2f),
    .D(_001_[12]),
    .Q(demux_1_probador_estructural[12])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _507_ (
    .C(clk_2f),
    .D(_001_[13]),
    .Q(demux_1_probador_estructural[13])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _508_ (
    .C(clk_2f),
    .D(_001_[14]),
    .Q(demux_1_probador_estructural[14])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _509_ (
    .C(clk_2f),
    .D(_001_[15]),
    .Q(demux_1_probador_estructural[15])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _510_ (
    .C(clk_2f),
    .D(_001_[16]),
    .Q(demux_1_probador_estructural[16])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _511_ (
    .C(clk_2f),
    .D(_001_[17]),
    .Q(demux_1_probador_estructural[17])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _512_ (
    .C(clk_2f),
    .D(_001_[18]),
    .Q(demux_1_probador_estructural[18])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _513_ (
    .C(clk_2f),
    .D(_001_[19]),
    .Q(demux_1_probador_estructural[19])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _514_ (
    .C(clk_2f),
    .D(_001_[20]),
    .Q(demux_1_probador_estructural[20])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _515_ (
    .C(clk_2f),
    .D(_001_[21]),
    .Q(demux_1_probador_estructural[21])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _516_ (
    .C(clk_2f),
    .D(_001_[22]),
    .Q(demux_1_probador_estructural[22])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _517_ (
    .C(clk_2f),
    .D(_001_[23]),
    .Q(demux_1_probador_estructural[23])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _518_ (
    .C(clk_2f),
    .D(_001_[24]),
    .Q(demux_1_probador_estructural[24])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _519_ (
    .C(clk_2f),
    .D(_001_[25]),
    .Q(demux_1_probador_estructural[25])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _520_ (
    .C(clk_2f),
    .D(_001_[26]),
    .Q(demux_1_probador_estructural[26])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _521_ (
    .C(clk_2f),
    .D(_001_[27]),
    .Q(demux_1_probador_estructural[27])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _522_ (
    .C(clk_2f),
    .D(_001_[28]),
    .Q(demux_1_probador_estructural[28])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _523_ (
    .C(clk_2f),
    .D(_001_[29]),
    .Q(demux_1_probador_estructural[29])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _524_ (
    .C(clk_2f),
    .D(_001_[30]),
    .Q(demux_1_probador_estructural[30])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _525_ (
    .C(clk_2f),
    .D(_001_[31]),
    .Q(demux_1_probador_estructural[31])
  );
  (* src = "sintetizado_recirc_cmos.v:10" *)
  DFF _526_ (
    .C(clk_2f),
    .D(_002_),
    .Q(valid_out_estructural)
  );
endmodule
