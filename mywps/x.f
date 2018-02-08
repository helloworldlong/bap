% free variables:
mem32_array_108 : ARRAY BITVECTOR(32) OF BITVECTOR(8);
symb_1_109 : BITVECTOR(8);
symb_2_110 : BITVECTOR(8);
symb_3_111 : BITVECTOR(8);
symb_4_112 : BITVECTOR(8);
symb_5_113 : BITVECTOR(8);
symb_6_114 : BITVECTOR(8);
symb_7_115 : BITVECTOR(8);
symb_8_116 : BITVECTOR(8);
symb_9_117 : BITVECTOR(8);
symb_10_118 : BITVECTOR(8);
symb_11_119 : BITVECTOR(8);
symb_12_120 : BITVECTOR(8);
symb_13_121 : BITVECTOR(8);
symb_14_122 : BITVECTOR(8);
symb_15_123 : BITVECTOR(8);
% end free variables.

ASSERT(
0bin1 =
(LET mem32_array_108_0 = (mem32_array_108 WITH [0hexbfc20d48] := symb_1_109) IN
(LET mem32_array_108_1 =
                          (mem32_array_108_0 WITH [0hexbfc20d49] := symb_2_110)
                          IN
(LET mem32_array_108_2 =
                          (mem32_array_108_1 WITH [0hexbfc20d4a] := symb_3_111)
                          IN
(LET mem32_array_108_3 =
                          (mem32_array_108_2 WITH [0hexbfc20d4b] := symb_4_112)
                          IN
(LET mem32_array_108_4 =
                          (mem32_array_108_3 WITH [0hexbfc20d4c] := symb_5_113)
                          IN
(LET mem32_array_108_5 =
                          (mem32_array_108_4 WITH [0hexbfc20d4d] := symb_6_114)
                          IN
(LET mem32_array_108_6 =
                          (mem32_array_108_5 WITH [0hexbfc20d4e] := symb_7_115)
                          IN
(LET mem32_array_108_7 =
                          (mem32_array_108_6 WITH [0hexbfc20d4f] := symb_8_116)
                          IN
(LET mem32_array_108_8 =
                          (mem32_array_108_7 WITH [0hexbfc20d50] := symb_9_117)
                          IN
(LET mem32_array_108_9 =
                          (mem32_array_108_8 WITH [0hexbfc20d51] := symb_10_118)
                          IN
(LET mem32_array_108_10 =
                           (mem32_array_108_9 WITH [0hexbfc20d52] := 
                           symb_11_119) IN
(LET mem32_array_108_11 =
                           (mem32_array_108_10 WITH [0hexbfc20d53] := 
                           symb_12_120) IN
(LET mem32_array_108_12 =
                           (mem32_array_108_11 WITH [0hexbfc20d54] := 
                           symb_13_121) IN
(LET mem32_array_108_13 =
                           (mem32_array_108_12 WITH [0hexbfc20d55] := 
                           symb_14_122) IN
(LET mem32_array_108_14 =
                           (mem32_array_108_13 WITH [0hexbfc20d56] := 
                           symb_15_123) IN
((0bin1&IF (0hexbfc20d56=0hexbfc20d56) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d55=0hexbfc20d55) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d54=0hexbfc20d54) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d53=0hexbfc20d53) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d52=0hexbfc20d52) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d51=0hexbfc20d51) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d50=0hexbfc20d50) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d4f=0hexbfc20d4f) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d4e=0hexbfc20d4e) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d4d=0hexbfc20d4d) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d4c=0hexbfc20d4c) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d4b=0hexbfc20d4b) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d4a=0hexbfc20d4a) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d49=0hexbfc20d49) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d48=0hexbfc20d48) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbfc20d48=0hexbfc20d48) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_15 = 0hex00000000 IN
(LET R_ESP_32_3_16 = 0hexbfc20d30 IN
((0bin1&
 IF (0hexbfc20d48=
 BVPLUS(32, R_ESP_32_3_16,0hex00000018)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_17 =
                       (0bin000000000000000000000000 @ mem32_array_108_14[
                                                       0hexbfc20d48])
                       IN
(LET R_ZF_23_18 = 0bin0 IN
(LET R_AF_22_19 = 0bin1 IN
(LET R_OF_25_20 = 0bin0 IN
(LET R_SF_24_21 = 0bin0 IN
(LET R_DF_26_22 = 0bin0 IN
(LET R_CF_20_23 = 0bin1 IN
(LET R_EFLAGS_19_24 = 0hex00000217 IN
(LET R_PF_21_25 = 0bin1 IN
(LET T_t_124_26 = BVSUB(8, (R_EAX_32_11_17[7:0]),0hex61) IN
(LET R_CF_20_27 =
                   IF (BVLT((R_EAX_32_11_17[7:0]),
                   0hex61)) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_OF_25_28 =
                   ((BVXOR((R_EAX_32_11_17[7:0]),0hex61)&
                    BVXOR((R_EAX_32_11_17[7:0]),T_t_124_26))[7:7])
                   IN
(LET R_AF_22_29 =
                   IF (0hex10=
                   (0hex10&
                   BVXOR(BVXOR(T_t_124_26,(R_EAX_32_11_17[7:0])),0hex61))) THEN 0bin1 ELSE 0bin0 ENDIF
                   IN
(LET R_PF_21_30 =
                   ~(((LET T_acc_125_31 = BVXOR((T_t_124_26 >> 4),T_t_124_26) IN
                      (LET T_acc_128_126_32 =
                                               BVXOR((T_acc_125_31 >> 2),
                                               T_acc_125_31) IN
                      BVXOR((T_acc_128_126_32 >> 1),T_acc_128_126_32)))[0:0]))
                   IN
(LET R_SF_24_33 = (T_t_124_26[7:7]) IN
(LET R_ZF_23_34 = IF (0hex00=T_t_124_26) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_DF_26_35 = 0bin0 IN
(LET R_EIP_9_36 = 0hex080485d5 IN
(R_ZF_23_34&
((0bin1&IF (0hexbfc20d49=0hexbfc20d49) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_ESP_32_3_37 = 0hexbfc20d30 IN
((0bin1&
 IF (0hexbfc20d49=
 BVPLUS(32, R_ESP_32_3_37,0hex00000019)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_38 =
                       (0bin000000000000000000000000 @ mem32_array_108_14[
                                                       0hexbfc20d49])
                       IN
(LET R_DF_26_39 = 0bin0 IN
(LET T_t_111_127_40 = BVSUB(8, (R_EAX_32_11_38[7:0]),0hex62) IN
(LET R_CF_20_41 =
                   IF (BVLT((R_EAX_32_11_38[7:0]),
                   0hex62)) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_OF_25_42 =
                   ((BVXOR((R_EAX_32_11_38[7:0]),0hex62)&
                    BVXOR((R_EAX_32_11_38[7:0]),T_t_111_127_40))[7:7])
                   IN
(LET R_AF_22_43 =
                   IF (0hex10=
                   (0hex10&
                   BVXOR(BVXOR(T_t_111_127_40,(R_EAX_32_11_38[7:0])),0hex62))) THEN 0bin1 ELSE 0bin0 ENDIF
                   IN
(LET R_PF_21_44 =
                   ~(((LET T_acc_112_128_45 =
                                               BVXOR((T_t_111_127_40 >> 4),
                                               T_t_111_127_40) IN
                      (LET T_acc_112_131_129_46 =
                                                   BVXOR((T_acc_112_128_45 >> 2),
                                                   T_acc_112_128_45) IN
                      BVXOR((T_acc_112_131_129_46 >> 1),T_acc_112_131_129_46)))[0:0]))
                   IN
(LET R_SF_24_47 = (T_t_111_127_40[7:7]) IN
(LET R_ZF_23_48 = IF (0hex00=T_t_111_127_40) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_DF_26_49 = 0bin0 IN
(LET R_EIP_9_50 = 0hex080485f4 IN (~(R_ZF_23_48)&0bin1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
);
QUERY(FALSE);
COUNTEREXAMPLE;
