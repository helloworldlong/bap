% free variables:
mem32_array_108 : ARRAY BITVECTOR(32) OF BITVECTOR(8);
symb_1_109 : BITVECTOR(8);
symb_2_110 : BITVECTOR(8);
symb_3_111 : BITVECTOR(8);
symb_4_112 : BITVECTOR(8);
symb_5_113 : BITVECTOR(8);
symb_6_114 : BITVECTOR(8);
% end free variables.

ASSERT(
0bin1 =
(LET mem32_array_108_0 = (mem32_array_108 WITH [0hexbf8e6779] := symb_1_109) IN
(LET mem32_array_108_1 =
                          (mem32_array_108_0 WITH [0hexbf8e677a] := symb_2_110)
                          IN
(LET mem32_array_108_2 =
                          (mem32_array_108_1 WITH [0hexbf8e677b] := symb_3_111)
                          IN
(LET mem32_array_108_3 =
                          (mem32_array_108_2 WITH [0hexbf8e677c] := symb_4_112)
                          IN
(LET mem32_array_108_4 =
                          (mem32_array_108_3 WITH [0hexbf8e677d] := symb_5_113)
                          IN
(LET mem32_array_108_5 =
                          (mem32_array_108_4 WITH [0hexbf8e677e] := symb_6_114)
                          IN
((0bin1&IF (0hexbf8e677e=0hexbf8e677e) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbf8e677d=0hexbf8e677d) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbf8e677c=0hexbf8e677c) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbf8e677b=0hexbf8e677b) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbf8e677a=0hexbf8e677a) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbf8e6779=0hexbf8e6779) THEN 0bin1 ELSE 0bin0 ENDIF)&
((0bin1&IF (0hexbf8e6779=0hexbf8e6779) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_6 = 0hex00000061 IN
(LET R_ESP_32_3_7 = 0hexbf8e6760 IN
((0bin1&
 IF (0hexbf8e6779=
 BVPLUS(32, R_ESP_32_3_7,0hex00000019)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_8 =
                      (0bin000000000000000000000000 @ mem32_array_108_5[
                                                      0hexbf8e6779])
                      IN
(LET R_ZF_23_9 = 0bin1 IN
(LET R_AF_22_10 = 0bin0 IN
(LET R_OF_25_11 = 0bin0 IN
(LET R_SF_24_12 = 0bin0 IN
(LET R_DF_26_13 = 0bin0 IN
(LET R_CF_20_14 = 0bin0 IN
(LET R_EFLAGS_19_15 = 0hex00000246 IN
(LET R_PF_21_16 = 0bin1 IN
(LET T_t_115_17 = BVSUB(8, (R_EAX_32_11_8[7:0]),0hex62) IN
(LET R_CF_20_18 =
                   IF (BVLT((R_EAX_32_11_8[7:0]),
                   0hex62)) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_OF_25_19 =
                   ((BVXOR((R_EAX_32_11_8[7:0]),0hex62)&
                    BVXOR((R_EAX_32_11_8[7:0]),T_t_115_17))[7:7])
                   IN
(LET R_AF_22_20 =
                   IF (0hex10=
                   (0hex10&
                   BVXOR(BVXOR(T_t_115_17,(R_EAX_32_11_8[7:0])),0hex62))) THEN 0bin1 ELSE 0bin0 ENDIF
                   IN
(LET R_PF_21_21 =
                   ~(((LET T_acc_116_22 = BVXOR((T_t_115_17 >> 4),T_t_115_17) IN
                      (LET T_acc_119_117_23 =
                                               BVXOR((T_acc_116_22 >> 2),
                                               T_acc_116_22) IN
                      BVXOR((T_acc_119_117_23 >> 1),T_acc_119_117_23)))[0:0]))
                   IN
(LET R_SF_24_24 = (T_t_115_17[7:7]) IN
(LET R_ZF_23_25 = IF (0hex00=T_t_115_17) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_DF_26_26 = 0bin0 IN
(LET R_EIP_9_27 = 0hex080485f4 IN
(R_ZF_23_25&
((0bin1&IF (0hexbf8e677a=0hexbf8e677a) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_ESP_32_3_28 = 0hexbf8e6760 IN
((0bin1&
 IF (0hexbf8e677a=
 BVPLUS(32, R_ESP_32_3_28,0hex0000001a)) THEN 0bin1 ELSE 0bin0 ENDIF)&
(LET R_EAX_32_11_29 =
                       (0bin000000000000000000000000 @ mem32_array_108_5[
                                                       0hexbf8e677a])
                       IN
(LET R_DF_26_30 = 0bin0 IN
(LET T_t_111_118_31 = BVSUB(8, (R_EAX_32_11_29[7:0]),0hex63) IN
(LET R_CF_20_32 =
                   IF (BVLT((R_EAX_32_11_29[7:0]),
                   0hex63)) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_OF_25_33 =
                   ((BVXOR((R_EAX_32_11_29[7:0]),0hex63)&
                    BVXOR((R_EAX_32_11_29[7:0]),T_t_111_118_31))[7:7])
                   IN
(LET R_AF_22_34 =
                   IF (0hex10=
                   (0hex10&
                   BVXOR(BVXOR(T_t_111_118_31,(R_EAX_32_11_29[7:0])),0hex63))) THEN 0bin1 ELSE 0bin0 ENDIF
                   IN
(LET R_PF_21_35 =
                   ~(((LET T_acc_112_119_36 =
                                               BVXOR((T_t_111_118_31 >> 4),
                                               T_t_111_118_31) IN
                      (LET T_acc_112_122_120_37 =
                                                   BVXOR((T_acc_112_119_36 >> 2),
                                                   T_acc_112_119_36) IN
                      BVXOR((T_acc_112_122_120_37 >> 1),T_acc_112_122_120_37)))[0:0]))
                   IN
(LET R_SF_24_38 = (T_t_111_118_31[7:7]) IN
(LET R_ZF_23_39 = IF (0hex00=T_t_111_118_31) THEN 0bin1 ELSE 0bin0 ENDIF IN
(LET R_DF_26_40 = 0bin0 IN
(LET R_EIP_9_41 = 0hex08048610 IN (~(R_ZF_23_39)&0bin1))))))))))))))))))))))))))))))))))))))))))))))))))
);
QUERY(FALSE);
COUNTEREXAMPLE;
