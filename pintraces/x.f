% free variables:
mem32_array_108 : ARRAY BITVECTOR(32) OF BITVECTOR(8);
symb_1_109 : BITVECTOR(8);
symb_2_110 : BITVECTOR(8);
symb_3_111 : BITVECTOR(8);
symb_4_112 : BITVECTOR(8);
symb_5_113 : BITVECTOR(8);
% end free variables.

ASSERT(
0bin1 =
(LET mem32_array_108_0 = (mem32_array_108 WITH [0hexbff0dcf9] := symb_1_109) IN
(LET mem32_array_108_1 =
                          (mem32_array_108_0 WITH [0hexbff0dcfa] := symb_2_110)
                          IN
(LET mem32_array_108_2 =
                          (mem32_array_108_1 WITH [0hexbff0dcfb] := symb_3_111)
                          IN
(LET mem32_array_108_3 =
                          (mem32_array_108_2 WITH [0hexbff0dcfc] := symb_4_112)
                          IN
(LET mem32_array_108_4 =
                          (mem32_array_108_3 WITH [0hexbff0dcfd] := symb_5_113)
                          IN
((0bin1&IF (0hexbff0dcfd=0hexbff0dcfd) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcfc=0hexbff0dcfc) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcfb=0hexbff0dcfb) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcfa=0hexbff0dcfa) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcf9=0hexbff0dcf9) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcf9=0hexbff0dcf9) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_5 = 0hex00000061 IN
(LET R_ESP_32_3_6 = 0hexbff0dce0 IN
((0bin1&
 IF (0hexbff0dcf9=
 BVPLUS(32, R_ESP_32_3_6,0hex00000019)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_7 =
                      (0bin000000000000000000000000 @ mem32_array_108_4[
                                                      0hexbff0dcf9])
                      IN
(LET R_ZF_23_8 = 0bin1 IN
(LET R_AF_22_9 = 0bin0 IN
(LET R_OF_25_10 = 0bin0 IN
(LET R_SF_24_11 = 0bin0 IN
(LET R_DF_26_12 = 0bin0 IN
(LET R_CF_20_13 = 0bin0 IN
(LET R_EFLAGS_19_14 = 0hex00000246 IN
(LET R_PF_21_15 = 0bin1 IN
(LET T_t_114_16 = BVSUB(8, (R_EAX_32_11_7[7:0]),0hex62) IN
(LET R_CF_20_17 =
                   IF (BVLT((R_EAX_32_11_7[7:0]),
                   0hex62)) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_OF_25_18 =
                   ((BVXOR((R_EAX_32_11_7[7:0]),0hex62)&
                    BVXOR((R_EAX_32_11_7[7:0]),T_t_114_16))[7:7])
                   IN
(LET R_AF_22_19 =
                   IF (0hex10=
                   (0hex10&
                   BVXOR(BVXOR(T_t_114_16,(R_EAX_32_11_7[7:0])),0hex62))) THEN 0bin1 ELSE 0bin0 ENDIF
                   IN
(LET R_PF_21_20 =
                   ~(((LET T_acc_115_21 = BVXOR((T_t_114_16 >> 4),T_t_114_16) IN
                      (LET T_acc_118_116_22 =
                                               BVXOR((T_acc_115_21 >> 2),
                                               T_acc_115_21) IN
                      BVXOR((T_acc_118_116_22 >> 1),T_acc_118_116_22)))[0:0]))
                   IN
(LET R_SF_24_23 = (T_t_114_16[7:7]) IN
(LET R_ZF_23_24 = IF (0hex00=T_t_114_16) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_DF_26_25 = 0bin0 IN
(LET R_EIP_9_26 = 0hex080485f4 IN
(~(R_ZF_23_24)&
((0bin1&IF (0hexbff0dcfa=0hexbff0dcfa) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_ESP_32_3_27 = 0hexbff0dce0 IN
((0bin1&
 IF (0hexbff0dcfa=
 BVPLUS(32, R_ESP_32_3_27,0hex0000001a)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_28 =
                       (0bin000000000000000000000000 @ mem32_array_108_4[
                                                       0hexbff0dcfa])
                       IN
(LET R_DF_26_29 = 0bin0 IN
(LET T_t_111_117_30 = BVSUB(8, (R_EAX_32_11_28[7:0]),0hex63) IN
(LET R_CF_20_31 =
                   IF (BVLT((R_EAX_32_11_28[7:0]),
                   0hex63)) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_OF_25_32 =
                   ((BVXOR((R_EAX_32_11_28[7:0]),0hex63)&
                    BVXOR((R_EAX_32_11_28[7:0]),T_t_111_117_30))[7:7])
                   IN
(LET R_AF_22_33 =
                   IF (0hex10=
                   (0hex10&
                   BVXOR(BVXOR(T_t_111_117_30,(R_EAX_32_11_28[7:0])),0hex63))) THEN 0bin1 ELSE 0bin0 ENDIF
                   IN
(LET R_PF_21_34 =
                   ~(((LET T_acc_112_118_35 =
                                               BVXOR((T_t_111_117_30 >> 4),
                                               T_t_111_117_30) IN
                      (LET T_acc_112_121_119_36 =
                                                   BVXOR((T_acc_112_118_35 >> 2),
                                                   T_acc_112_118_35) IN
                      BVXOR((T_acc_112_121_119_36 >> 1),T_acc_112_121_119_36)))[0:0]))
                   IN
(LET R_SF_24_37 = (T_t_111_117_30[7:7]) IN
(LET R_ZF_23_38 = IF (0hex00=T_t_111_117_30) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_DF_26_39 = 0bin0 IN
(LET R_EIP_9_40 = 0hex08048610 IN
(R_ZF_23_38&
((0bin1&IF (0hexbff0dcfb=0hexbff0dcfb) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_ESP_32_3_41 = 0hexbff0dce0 IN
((0bin1&
 IF (0hexbff0dcfb=
 BVPLUS(32, R_ESP_32_3_41,0hex0000001b)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_42 =
                       (0bin000000000000000000000000 @ mem32_array_108_4[
                                                       0hexbff0dcfb])
                       IN
(LET R_DF_26_43 = 0bin0 IN
(LET T_t_113_120_44 = BVSUB(8, (R_EAX_32_11_42[7:0]),0hex64) IN
(LET R_CF_20_45 =
                   IF (BVLT((R_EAX_32_11_42[7:0]),
                   0hex64)) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_OF_25_46 =
                   ((BVXOR((R_EAX_32_11_42[7:0]),0hex64)&
                    BVXOR((R_EAX_32_11_42[7:0]),T_t_113_120_44))[7:7])
                   IN
(LET R_AF_22_47 =
                   IF (0hex10=
                   (0hex10&
                   BVXOR(BVXOR(T_t_113_120_44,(R_EAX_32_11_42[7:0])),0hex64))) THEN 0bin1 ELSE 0bin0 ENDIF
                   IN
(LET R_PF_21_48 =
                   ~(((LET T_acc_114_121_49 =
                                               BVXOR((T_t_113_120_44 >> 4),
                                               T_t_113_120_44) IN
                      (LET T_acc_114_124_122_50 =
                                                   BVXOR((T_acc_114_121_49 >> 2),
                                                   T_acc_114_121_49) IN
                      BVXOR((T_acc_114_124_122_50 >> 1),T_acc_114_124_122_50)))[0:0]))
                   IN
(LET R_SF_24_51 = (T_t_113_120_44[7:7]) IN
(LET R_ZF_23_52 = IF (0hex00=T_t_113_120_44) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_DF_26_53 = 0bin0 IN
(LET R_EIP_9_54 = 0hex0804862c IN
(R_ZF_23_52&
((0bin1&IF (0hexbff0dcfc=0hexbff0dcfc) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_ESP_32_3_55 = 0hexbff0dce0 IN
((0bin1&
 IF (0hexbff0dcfc=
 BVPLUS(32, R_ESP_32_3_55,0hex0000001c)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_56 =
                       (0bin000000000000000000000000 @ mem32_array_108_4[
                                                       0hexbff0dcfc])
                       IN
(LET R_DF_26_57 = 0bin0 IN
(LET T_t_115_123_58 = BVSUB(8, (R_EAX_32_11_56[7:0]),0hex65) IN
(LET R_CF_20_59 =
                   IF (BVLT((R_EAX_32_11_56[7:0]),
                   0hex65)) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_OF_25_60 =
                   ((BVXOR((R_EAX_32_11_56[7:0]),0hex65)&
                    BVXOR((R_EAX_32_11_56[7:0]),T_t_115_123_58))[7:7])
                   IN
(LET R_AF_22_61 =
                   IF (0hex10=
                   (0hex10&
                   BVXOR(BVXOR(T_t_115_123_58,(R_EAX_32_11_56[7:0])),0hex65))) THEN 0bin1 ELSE 0bin0 ENDIF
                   IN
(LET R_PF_21_62 =
                   ~(((LET T_acc_116_124_63 =
                                               BVXOR((T_t_115_123_58 >> 4),
                                               T_t_115_123_58) IN
                      (LET T_acc_116_127_125_64 =
                                                   BVXOR((T_acc_116_124_63 >> 2),
                                                   T_acc_116_124_63) IN
                      BVXOR((T_acc_116_127_125_64 >> 1),T_acc_116_127_125_64)))[0:0]))
                   IN
(LET R_SF_24_65 = (T_t_115_123_58[7:7]) IN
(LET R_ZF_23_66 = IF (0hex00=T_t_115_123_58) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_DF_26_67 = 0bin0 IN
(LET R_EIP_9_68 = 0hex08048648 IN
(R_ZF_23_66&
((0bin1&IF (0hexbff0dcd2=0hexbff0dcd2) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_69 = (mem32_array_108_4 WITH [0hexbff0dcd2] := 0hexf0) IN
((0bin1&IF (0hexbff0dcd0=0hexbff0dcd0) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_70 =
                           (mem32_array_108_69 WITH [0hexbff0dcd0] := 
                           BVUMINUS(0hex08)) IN
((0bin1&IF (0hexbff0dcd1=0hexbff0dcd1) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_71 = (mem32_array_108_70 WITH [0hexbff0dcd1] := 0hexdc) IN
((0bin1&IF (0hexbff0dcd3=0hexbff0dcd3) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_72 = (mem32_array_108_71 WITH [0hexbff0dcd3] := 0hexbf) IN
(LET R_ESP_32_3_73 = 0hexbff0dcd4 IN
(LET T_t_117_126_74 = R_EAX_32_11_56 IN
(LET R_ESP_32_3_75 = BVSUB(32, R_ESP_32_3_73,0hex00000004) IN
(((((0bin1&
    IF (0hexbff0dcd0=
    BVPLUS(32, R_ESP_32_3_75,0hex00000000)) THEN 0bin1 ELSE 0bin0 ENDIF)&
   IF (0hexbff0dcd1=
   BVPLUS(32, R_ESP_32_3_75,0hex00000001)) THEN 0bin1 ELSE 0bin0 ENDIF)&
  IF (0hexbff0dcd2=
  BVPLUS(32, R_ESP_32_3_75,0hex00000002)) THEN 0bin1 ELSE 0bin0 ENDIF)&
 IF (0hexbff0dcd3=
 BVPLUS(32, R_ESP_32_3_75,0hex00000003)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_76 =
                           (LET T_tempmem_127_77 = mem32_array_108_72 IN
                           (LET T_tempval_128_78 = T_t_117_126_74 IN
                           (LET T_tempmem_131_129_79 =
                                                        (T_tempmem_127_77 WITH [
                                                        0hexbff0dcd0] := 
                                                        (T_tempval_128_78)[7:0])
                                                        IN
                           (LET T_tempmem_132_130_80 =
                                                        (T_tempmem_131_129_79 WITH [
                                                        0hexbff0dcd1] := 
                                                        (T_tempval_128_78)[15:8])
                                                        IN
                           (LET T_tempmem_133_131_81 =
                                                        (T_tempmem_132_130_80 WITH [
                                                        0hexbff0dcd2] := 
                                                        (T_tempval_128_78)[23:16])
                                                        IN
                           (LET T_tempmem_134_132_82 =
                                                        (T_tempmem_133_131_81 WITH [
                                                        0hexbff0dcd3] := 
                                                        (T_tempval_128_78)[31:24])
                                                        IN
                           T_tempmem_134_132_82)))))) IN
((0bin1&IF (0hexbff0dcd5=0hexbff0dcd5) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_83 = (mem32_array_108_76 WITH [0hexbff0dcd5] := 0hexc9) IN
((0bin1&IF (0hexbff0dcd6=0hexbff0dcd6) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_84 = (mem32_array_108_83 WITH [0hexbff0dcd6] := 0hex7b) IN
((0bin1&IF (0hexbff0dcd4=0hexbff0dcd4) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_85 = (mem32_array_108_84 WITH [0hexbff0dcd4] := 0hex38) IN
((0bin1&IF (0hexbff0dcd7=0hexbff0dcd7) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_86 = (mem32_array_108_85 WITH [0hexbff0dcd7] := 0hexb7) IN
(LET R_ESP_32_3_87 = 0hexbff0dcc8 IN
(((((0bin1&
    IF (0hexbff0dcd7=
    BVPLUS(32, BVPLUS(32, R_ESP_32_3_87,0hex0000000c),0hex00000003)) THEN 0bin1 ELSE 0bin0 ENDIF)&
   IF (0hexbff0dcd6=
   BVPLUS(32, BVPLUS(32, R_ESP_32_3_87,0hex0000000c),0hex00000002)) THEN 0bin1 ELSE 0bin0 ENDIF)&
  IF (0hexbff0dcd5=
  BVPLUS(32, BVPLUS(32, R_ESP_32_3_87,0hex0000000c),0hex00000001)) THEN 0bin1 ELSE 0bin0 ENDIF)&
 IF (0hexbff0dcd4=
 BVPLUS(32, BVPLUS(32, R_ESP_32_3_87,0hex0000000c),0hex00000000)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_88 =
                       (LET T_loadnorm_133_89 = mem32_array_108_86 IN
                       (((T_loadnorm_133_89[0hexbff0dcd7]@T_loadnorm_133_89[
                                                          0hexbff0dcd6])@
                        T_loadnorm_133_89[0hexbff0dcd5])@T_loadnorm_133_89[
                                                         0hexbff0dcd4]))
                       IN
(LET R_DF_26_90 = 0bin0 IN
(LET R_ESP_32_3_91 = 0hexbff0dcb4 IN
(LET T_t_118_134_92 = R_ESP_32_3_91 IN
(LET R_ESP_32_3_93 = BVSUB(32, R_ESP_32_3_91,0hex0000004c) IN
(LET R_CF_20_94 =
                   IF (BVLT(T_t_118_134_92,
                   0hex0000004c)) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_OF_25_95 =
                   ((BVXOR(T_t_118_134_92,0hex0000004c)&
                    BVXOR(T_t_118_134_92,R_ESP_32_3_93))[31:31])
                   IN
(LET R_AF_22_96 =
                   IF (0hex00000010=
                   (0hex00000010&
                   BVXOR(BVXOR(R_ESP_32_3_93,T_t_118_134_92),0hex0000004c))) THEN 0bin1 ELSE 0bin0 ENDIF
                   IN
(LET R_PF_21_97 =
                   ~(((LET T_acc_119_135_98 =
                                               BVXOR((R_ESP_32_3_93 >> 4),
                                               R_ESP_32_3_93) IN
                      (LET T_acc_119_138_136_99 =
                                                   BVXOR((T_acc_119_135_98 >> 2),
                                                   T_acc_119_135_98) IN
                      BVXOR((T_acc_119_138_136_99 >> 1),T_acc_119_138_136_99)))[0:0]))
                   IN
(LET R_SF_24_100 = (R_ESP_32_3_93[31:31]) IN
(LET R_ZF_23_101 =
                    IF (0hex00000000=
                    R_ESP_32_3_93) THEN 0bin1 ELSE 0bin0 ENDIF IN
((0bin1&IF (0hexbff0dcd2=0hexbff0dcd2) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcd0=0hexbff0dcd0) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcd1=0hexbff0dcd1) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcd3=0hexbff0dcd3) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_102 = 0hex9d239190 IN
(LET R_ESP_32_3_103 = 0hexbff0dccc IN
(((((0bin1&
    IF (0hexbff0dcd3=
    BVPLUS(32, BVPLUS(32, R_ESP_32_3_103,0hex00000004),0hex00000003)) THEN 0bin1 ELSE 0bin0 ENDIF)&
   IF (0hexbff0dcd2=
   BVPLUS(32, BVPLUS(32, R_ESP_32_3_103,0hex00000004),0hex00000002)) THEN 0bin1 ELSE 0bin0 ENDIF)&
  IF (0hexbff0dcd1=
  BVPLUS(32, BVPLUS(32, R_ESP_32_3_103,0hex00000004),0hex00000001)) THEN 0bin1 ELSE 0bin0 ENDIF)&
 IF (0hexbff0dcd0=
 BVPLUS(32, BVPLUS(32, R_ESP_32_3_103,0hex00000004),0hex00000000)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_104 =
                        (LET T_loadnorm_140_137_105 = mem32_array_108_86 IN
                        (((T_loadnorm_140_137_105[0hexbff0dcd3]@T_loadnorm_140_137_105[
                                                                0hexbff0dcd2])@
                         T_loadnorm_140_137_105[0hexbff0dcd1])@T_loadnorm_140_137_105[
                                                               0hexbff0dcd0]))
                        IN
((0bin1&IF (0hexbff0dcd2=0hexbff0dcd2) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcd0=0hexbff0dcd0) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcd1=0hexbff0dcd1) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcd3=0hexbff0dcd3) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_ESI_32_5_106 = 0hex00000000 IN
(LET R_ESP_32_3_107 = 0hexbff0dcd4 IN
(LET T_t_120_138_108 = R_ESI_32_5_106 IN
(LET R_ESP_32_3_109 = BVSUB(32, R_ESP_32_3_107,0hex00000004) IN
(((((0bin1&
    IF (0hexbff0dcd0=
    BVPLUS(32, R_ESP_32_3_109,0hex00000000)) THEN 0bin1 ELSE 0bin0 ENDIF)&
   IF (0hexbff0dcd1=
   BVPLUS(32, R_ESP_32_3_109,0hex00000001)) THEN 0bin1 ELSE 0bin0 ENDIF)&
  IF (0hexbff0dcd2=
  BVPLUS(32, R_ESP_32_3_109,0hex00000002)) THEN 0bin1 ELSE 0bin0 ENDIF)&
 IF (0hexbff0dcd3=
 BVPLUS(32, R_ESP_32_3_109,0hex00000003)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_110 =
                            (LET T_tempmem_141_139_111 = mem32_array_108_86 IN
                            (LET T_tempval_142_140_112 = T_t_120_138_108 IN
                            (LET T_tempmem_141_143_141_113 =
                                                              (T_tempmem_141_139_111 WITH [
                                                              0hexbff0dcd0] := 
                                                              (T_tempval_142_140_112)[7:0])
                                                              IN
                            (LET T_tempmem_141_144_142_114 =
                                                              (T_tempmem_141_143_141_113 WITH [
                                                              0hexbff0dcd1] := 
                                                              (T_tempval_142_140_112)[15:8])
                                                              IN
                            (LET T_tempmem_141_145_143_115 =
                                                              (T_tempmem_141_144_142_114 WITH [
                                                              0hexbff0dcd2] := 
                                                              (T_tempval_142_140_112)[23:16])
                                                              IN
                            (LET T_tempmem_141_146_144_116 =
                                                              (T_tempmem_141_145_143_115 WITH [
                                                              0hexbff0dcd3] := 
                                                              (T_tempval_142_140_112)[31:24])
                                                              IN
                            T_tempmem_141_146_144_116)))))) IN
((0bin1&IF (0hexbff0dce0=0hexbff0dce0) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_117 =
                            (mem32_array_108_110 WITH [0hexbff0dce0] := 
                            0hex59) IN
((0bin1&IF (0hexbff0dce2=0hexbff0dce2) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_118 =
                            (mem32_array_108_117 WITH [0hexbff0dce2] := 
                            0hex04) IN
((0bin1&IF (0hexbff0dce3=0hexbff0dce3) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_119 =
                            (mem32_array_108_118 WITH [0hexbff0dce3] := 
                            0hex08) IN
((0bin1&IF (0hexbff0dce1=0hexbff0dce1) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_120 =
                            (mem32_array_108_119 WITH [0hexbff0dce1] := 
                            0hex87) IN
(LET R_ESP_32_3_121 = 0hexbff0dcb0 IN
(((((0bin1&
    IF (0hexbff0dce3=
    BVPLUS(32, BVPLUS(32, R_ESP_32_3_121,0hex00000030),0hex00000003)) THEN 0bin1 ELSE 0bin0 ENDIF)&
   IF (0hexbff0dce2=
   BVPLUS(32, BVPLUS(32, R_ESP_32_3_121,0hex00000030),0hex00000002)) THEN 0bin1 ELSE 0bin0 ENDIF)&
  IF (0hexbff0dce1=
  BVPLUS(32, BVPLUS(32, R_ESP_32_3_121,0hex00000030),0hex00000001)) THEN 0bin1 ELSE 0bin0 ENDIF)&
 IF (0hexbff0dce0=
 BVPLUS(32, BVPLUS(32, R_ESP_32_3_121,0hex00000030),0hex00000000)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_122 =
                        (LET T_loadnorm_144_145_123 = mem32_array_108_120 IN
                        (((T_loadnorm_144_145_123[0hexbff0dce3]@T_loadnorm_144_145_123[
                                                                0hexbff0dce2])@
                         T_loadnorm_144_145_123[0hexbff0dce1])@T_loadnorm_144_145_123[
                                                               0hexbff0dce0]))
                        IN
((0bin1&IF (0hexbff0dcfd=0hexbff0dcfd) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcfe=0hexbff0dcfe) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_124 =
                            (mem32_array_108_120 WITH [0hexbff0dcfe] := 
                            0hex67) IN
((0bin1&IF (0hexbff0dcfc=0hexbff0dcfc) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbff0dcff=0hexbff0dcff) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_125 =
                            (mem32_array_108_124 WITH [0hexbff0dcff] := 
                            0hex68) IN
(LET R_EBP_32_1_126 = 0hexbff0dd38 IN
(LET R_EAX_32_11_127 = 0hexbff0dd54 IN
(((((0bin1&
    IF (0hexbff0dcfc=
    BVPLUS(32, BVPLUS(32, R_EBP_32_1_126,0hexffffffc4),0hex00000000)) THEN 0bin1 ELSE 0bin0 ENDIF)&
   IF (0hexbff0dcfd=
   BVPLUS(32, BVPLUS(32, R_EBP_32_1_126,0hexffffffc4),0hex00000001)) THEN 0bin1 ELSE 0bin0 ENDIF)&
  IF (0hexbff0dcfe=
  BVPLUS(32, BVPLUS(32, R_EBP_32_1_126,0hexffffffc4),0hex00000002)) THEN 0bin1 ELSE 0bin0 ENDIF)&
 IF (0hexbff0dcff=
 BVPLUS(32, BVPLUS(32, R_EBP_32_1_126,0hexffffffc4),0hex00000003)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET mem32_array_108_128 =
                            (LET T_tempmem_145_146_129 = mem32_array_108_125 IN
                            (LET T_tempval_146_147_130 = R_EAX_32_11_127 IN
                            (LET T_tempmem_145_150_148_131 =
                                                              (T_tempmem_145_146_129 WITH [
                                                              0hexbff0dcfc] := 
                                                              (T_tempval_146_147_130)[7:0])
                                                              IN
                            (LET T_tempmem_145_151_149_132 =
                                                              (T_tempmem_145_150_148_131 WITH [
                                                              0hexbff0dcfd] := 
                                                              (T_tempval_146_147_130)[15:8])
                                                              IN
                            (LET T_tempmem_145_152_150_133 =
                                                              (T_tempmem_145_151_149_132 WITH [
                                                              0hexbff0dcfe] := 
                                                              (T_tempval_146_147_130)[23:16])
                                                              IN
                            (LET T_tempmem_145_153_151_134 =
                                                              (T_tempmem_145_152_150_133 WITH [
                                                              0hexbff0dcff] := 
                                                              (T_tempval_146_147_130)[31:24])
                                                              IN
                            T_tempmem_145_153_151_134)))))) IN
0bin1)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
);
QUERY(FALSE);
COUNTEREXAMPLE;
