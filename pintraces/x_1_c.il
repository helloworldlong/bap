/*ReadSyscall*/ @context "mem32[0xbff0dcf9]" = 0x62, 1, u8, wr
  @context "mem32[0xbff0dcfa]" = 0x63, 2, u8, wr
  @context "mem32[0xbff0dcfb]" = 0x64, 3, u8, wr
  @context "mem32[0xbff0dcfc]" = 0x65, 4, u8, wr
  @context "mem32[0xbff0dcfd]" = 0x66, 5, u8, wr
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcf9:u32, e_little]:u8 = symb_1:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcfa:u32, e_little]:u8 = symb_2:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcfb:u32, e_little]:u8 = symb_3:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcfc:u32, e_little]:u8 = symb_4:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcfd:u32, e_little]:u8 = symb_5:u8
assert true & 0xbff0dcfd:u32 == 0xbff0dcfd:u32
assert true & 0xbff0dcfc:u32 == 0xbff0dcfc:u32
assert true & 0xbff0dcfb:u32 == 0xbff0dcfb:u32
assert true & 0xbff0dcfa:u32 == 0xbff0dcfa:u32
assert true & 0xbff0dcf9:u32 == 0xbff0dcf9:u32
/*All blocks must have two statements*/
label addr_134514157 @asm "movzbl 0x19(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x61, 0, u32, wr
  @context "R_ESP_32" = 0xbff0dce0, 0, u32, rd
  @context "mem32[0xbff0dcf9]" = 0x62, 1, u8, rd
assert true & 0xbff0dcf9:u32 == 0xbff0dcf9:u32
R_EAX_32:u32 = 0x61:u32
R_ESP_32:u32 = 0xbff0dce0:u32
label pc_0x80485ed
assert true & 0xbff0dcf9:u32 == R_ESP_32:u32 + 0x19:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbff0dcf9:u32, e_little]:u8)
label addr_134514162 @asm "cmp    $0x62,%al" @tid "0"
  @context "R_EAX_32" = 0x62, 1, u32, rd
  @context "R_EFLAGS" = 0x246, 0, u32, wr
R_ZF:bool = true
R_AF:bool = false
R_OF:bool = false
R_SF:bool = false
R_DF:bool = false
R_CF:bool = false
R_EFLAGS:u32 = 0x246:u32
R_PF:bool = true
label pc_0x80485f2
T_t:u8 = low:u8(R_EAX_32:u32) - 0x62:u8
R_CF:bool = low:u8(R_EAX_32:u32) < 0x62:u8
R_OF:bool =
  high:bool((low:u8(R_EAX_32:u32) ^ 0x62:u8) &
            (low:u8(R_EAX_32:u32) ^ T_t:u8))
R_AF:bool = 0x10:u8 == (0x10:u8 & (T_t:u8 ^ low:u8(R_EAX_32:u32) ^ 0x62:u8))
R_PF:bool =
  ~low:bool(let T_acc:u8 := T_t:u8 >> 4:u8 ^ T_t:u8 in
            let T_acc_118:u8 := T_acc:u8 >> 2:u8 ^ T_acc:u8 in
            T_acc_118:u8 >> 1:u8 ^ T_acc_118:u8)
R_SF:bool = high:bool(T_t:u8)
R_ZF:bool = 0:u8 == T_t:u8
label addr_134514164 @asm "je     0x0000000008048609" @tid "0"
  @context "R_EIP" = 0x80485f4, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 1, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x80485f4:u32
label pc_0x80485f4
assert ~(R_ZF:bool)
/*Removed: cjmp R_ZF:bool, 0x8048609:u32, "nocjmp0"*/
label addr_134514185 @asm "movzbl 0x1a(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x62, 1, u32, wr
  @context "R_ESP_32" = 0xbff0dce0, 0, u32, rd
  @context "mem32[0xbff0dcfa]" = 0x63, 2, u8, rd
assert true & 0xbff0dcfa:u32 == 0xbff0dcfa:u32
R_ESP_32:u32 = 0xbff0dce0:u32
label pc_0x8048609
assert true & 0xbff0dcfa:u32 == R_ESP_32:u32 + 0x1a:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbff0dcfa:u32, e_little]:u8)
label addr_134514190 @asm "cmp    $0x63,%al" @tid "0"
  @context "R_EAX_32" = 0x63, 2, u32, rd
  @context "R_EFLAGS" = 0x246, 1, u32, wr
R_DF:bool = false
label pc_0x804860e
T_t_111:u8 = low:u8(R_EAX_32:u32) - 0x63:u8
R_CF:bool = low:u8(R_EAX_32:u32) < 0x63:u8
R_OF:bool =
  high:bool((low:u8(R_EAX_32:u32) ^ 0x63:u8) &
            (low:u8(R_EAX_32:u32) ^ T_t_111:u8))
R_AF:bool =
  0x10:u8 == (0x10:u8 & (T_t_111:u8 ^ low:u8(R_EAX_32:u32) ^ 0x63:u8))
R_PF:bool =
  ~low:bool(let T_acc_112:u8 := T_t_111:u8 >> 4:u8 ^ T_t_111:u8 in
            let T_acc_112_121:u8 := T_acc_112:u8 >> 2:u8 ^ T_acc_112:u8 in
            T_acc_112_121:u8 >> 1:u8 ^ T_acc_112_121:u8)
R_SF:bool = high:bool(T_t_111:u8)
R_ZF:bool = 0:u8 == T_t_111:u8
label addr_134514192 @asm "je     0x0000000008048625" @tid "0"
  @context "R_EIP" = 0x8048610, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 2, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x8048610:u32
label pc_0x8048610
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x8048625:u32, "nocjmp1"*/
label addr_134514213 @asm "movzbl 0x1b(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x63, 2, u32, wr
  @context "R_ESP_32" = 0xbff0dce0, 0, u32, rd
  @context "mem32[0xbff0dcfb]" = 0x64, 3, u8, rd
assert true & 0xbff0dcfb:u32 == 0xbff0dcfb:u32
R_ESP_32:u32 = 0xbff0dce0:u32
label pc_0x8048625
assert true & 0xbff0dcfb:u32 == R_ESP_32:u32 + 0x1b:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbff0dcfb:u32, e_little]:u8)
label addr_134514218 @asm "cmp    $0x64,%al" @tid "0"
  @context "R_EAX_32" = 0x64, 3, u32, rd
  @context "R_EFLAGS" = 0x246, 2, u32, wr
R_DF:bool = false
label pc_0x804862a
T_t_113:u8 = low:u8(R_EAX_32:u32) - 0x64:u8
R_CF:bool = low:u8(R_EAX_32:u32) < 0x64:u8
R_OF:bool =
  high:bool((low:u8(R_EAX_32:u32) ^ 0x64:u8) &
            (low:u8(R_EAX_32:u32) ^ T_t_113:u8))
R_AF:bool =
  0x10:u8 == (0x10:u8 & (T_t_113:u8 ^ low:u8(R_EAX_32:u32) ^ 0x64:u8))
R_PF:bool =
  ~low:bool(let T_acc_114:u8 := T_t_113:u8 >> 4:u8 ^ T_t_113:u8 in
            let T_acc_114_124:u8 := T_acc_114:u8 >> 2:u8 ^ T_acc_114:u8 in
            T_acc_114_124:u8 >> 1:u8 ^ T_acc_114_124:u8)
R_SF:bool = high:bool(T_t_113:u8)
R_ZF:bool = 0:u8 == T_t_113:u8
label addr_134514220 @asm "je     0x0000000008048641" @tid "0"
  @context "R_EIP" = 0x804862c, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 3, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x804862c:u32
label pc_0x804862c
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x8048641:u32, "nocjmp2"*/
label addr_134514241 @asm "movzbl 0x1c(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x64, 3, u32, wr
  @context "R_ESP_32" = 0xbff0dce0, 0, u32, rd
  @context "mem32[0xbff0dcfc]" = 0x65, 4, u8, rd
assert true & 0xbff0dcfc:u32 == 0xbff0dcfc:u32
R_ESP_32:u32 = 0xbff0dce0:u32
label pc_0x8048641
assert true & 0xbff0dcfc:u32 == R_ESP_32:u32 + 0x1c:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbff0dcfc:u32, e_little]:u8)
label addr_134514246 @asm "cmp    $0x65,%al" @tid "0"
  @context "R_EAX_32" = 0x65, 4, u32, rd
  @context "R_EFLAGS" = 0x246, 3, u32, wr
R_DF:bool = false
label pc_0x8048646
T_t_115:u8 = low:u8(R_EAX_32:u32) - 0x65:u8
R_CF:bool = low:u8(R_EAX_32:u32) < 0x65:u8
R_OF:bool =
  high:bool((low:u8(R_EAX_32:u32) ^ 0x65:u8) &
            (low:u8(R_EAX_32:u32) ^ T_t_115:u8))
R_AF:bool =
  0x10:u8 == (0x10:u8 & (T_t_115:u8 ^ low:u8(R_EAX_32:u32) ^ 0x65:u8))
R_PF:bool =
  ~low:bool(let T_acc_116:u8 := T_t_115:u8 >> 4:u8 ^ T_t_115:u8 in
            let T_acc_116_127:u8 := T_acc_116:u8 >> 2:u8 ^ T_acc_116:u8 in
            T_acc_116_127:u8 >> 1:u8 ^ T_acc_116_127:u8)
R_SF:bool = high:bool(T_t_115:u8)
R_ZF:bool = 0:u8 == T_t_115:u8
label addr_134514248 @asm "je     0x000000000804865d" @tid "0"
  @context "R_EIP" = 0x8048648, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 4, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x8048648:u32
label pc_0x8048648
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x804865d:u32, "nocjmp3"*/
label addr_3078288624 @asm "push   %eax" @tid "0"
  @context "R_EAX_32" = 0x65, 4, u32, rd
  @context "R_ESP_32" = 0xbff0dcd4, 0, u32, rd
  @context "mem32[0xbff0dcd0]" = 0xf8, 0, u8, wr
  @context "mem32[0xbff0dcd1]" = 0xdc, 0, u8, wr
  @context "mem32[0xbff0dcd2]" = 0xf0, 0, u8, wr
  @context "mem32[0xbff0dcd3]" = 0xbf, 0, u8, wr
assert true & 0xbff0dcd2:u32 == 0xbff0dcd2:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcd2:u32, e_little]:u8 = 0xf0:u8
assert true & 0xbff0dcd0:u32 == 0xbff0dcd0:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcd0:u32, e_little]:u8 = -8:u8
assert true & 0xbff0dcd1:u32 == 0xbff0dcd1:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcd1:u32, e_little]:u8 = 0xdc:u8
assert true & 0xbff0dcd3:u32 == 0xbff0dcd3:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcd3:u32, e_little]:u8 = 0xbf:u8
R_ESP_32:u32 = 0xbff0dcd4:u32
label pc_0xb77af4f0
T_t_117:u32 = R_EAX_32:u32
R_ESP_32:u32 = R_ESP_32:u32 - 4:u32
assert true & 0xbff0dcd0:u32 == R_ESP_32:u32 + 0:u32 &
       0xbff0dcd1:u32 == R_ESP_32:u32 + 1:u32 &
       0xbff0dcd2:u32 == R_ESP_32:u32 + 2:u32 &
       0xbff0dcd3:u32 == R_ESP_32:u32 + 3:u32
mem32_array:u32!u8 =
  let T_tempmem:u32!u8 := mem32_array:u32!u8 in
  let T_tempval:u32 := T_t_117:u32 in
  let T_tempmem_131:u32!u8 :=
                               T_tempmem:u32!u8 with [0xbff0dcd0:u32,
                               e_little]:u8 = extract:7:0:[T_tempval:u32] in
  let T_tempmem_132:u32!u8 :=
                               T_tempmem_131:u32!u8 with [0xbff0dcd1:u32,
                               e_little]:u8 = extract:15:8:[T_tempval:u32] in
  let T_tempmem_133:u32!u8 :=
                               T_tempmem_132:u32!u8 with [0xbff0dcd2:u32,
                               e_little]:u8 = extract:23:16:[T_tempval:u32] in
  let T_tempmem_134:u32!u8 :=
                               T_tempmem_133:u32!u8 with [0xbff0dcd3:u32,
                               e_little]:u8 = extract:31:24:[T_tempval:u32] in
  T_tempmem_134:u32!u8
label addr_3078288631 @asm "mov    0xc(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x65, 4, u32, wr
  @context "R_ESP_32" = 0xbff0dcc8, 0, u32, rd
  @context "mem32[0xbff0dcd4]" = 0x38, 0, u8, rd
  @context "mem32[0xbff0dcd5]" = 0xc9, 0, u8, rd
  @context "mem32[0xbff0dcd6]" = 0x7b, 0, u8, rd
  @context "mem32[0xbff0dcd7]" = 0xb7, 0, u8, rd
assert true & 0xbff0dcd5:u32 == 0xbff0dcd5:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcd5:u32, e_little]:u8 = 0xc9:u8
assert true & 0xbff0dcd6:u32 == 0xbff0dcd6:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcd6:u32, e_little]:u8 = 0x7b:u8
assert true & 0xbff0dcd4:u32 == 0xbff0dcd4:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcd4:u32, e_little]:u8 = 0x38:u8
assert true & 0xbff0dcd7:u32 == 0xbff0dcd7:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcd7:u32, e_little]:u8 = 0xb7:u8
R_ESP_32:u32 = 0xbff0dcc8:u32
label pc_0xb77af4f7
assert true & 0xbff0dcd7:u32 == R_ESP_32:u32 + 0xc:u32 + 3:u32 &
       0xbff0dcd6:u32 == R_ESP_32:u32 + 0xc:u32 + 2:u32 &
       0xbff0dcd5:u32 == R_ESP_32:u32 + 0xc:u32 + 1:u32 &
       0xbff0dcd4:u32 == R_ESP_32:u32 + 0xc:u32 + 0:u32
R_EAX_32:u32 =
  let T_loadnorm:u32!u8 := mem32_array:u32!u8 in
  concat:[
   concat:[
    concat:[T_loadnorm:u32!u8[0xbff0dcd7:u32, e_little]:u8][
     T_loadnorm:u32!u8[0xbff0dcd6:u32, e_little]:u8]][
    T_loadnorm:u32!u8[0xbff0dcd5:u32, e_little]:u8]][
   T_loadnorm:u32!u8[0xbff0dcd4:u32, e_little]:u8]
label addr_3078262952 @asm "sub    $0x4c,%esp" @tid "0"
  @context "R_ESP_32" = 0xbff0dcb4, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 4, u32, wr
R_DF:bool = false
R_ESP_32:u32 = 0xbff0dcb4:u32
label pc_0xb77a90a8
T_t_118:u32 = R_ESP_32:u32
R_ESP_32:u32 = R_ESP_32:u32 - 0x4c:u32
R_CF:bool = T_t_118:u32 < 0x4c:u32
R_OF:bool =
  high:bool((T_t_118:u32 ^ 0x4c:u32) & (T_t_118:u32 ^ R_ESP_32:u32))
R_AF:bool = 0x10:u32 == (0x10:u32 & (R_ESP_32:u32 ^ T_t_118:u32 ^ 0x4c:u32))
R_PF:bool =
  ~low:bool(let T_acc_119:u32 := R_ESP_32:u32 >> 4:u32 ^ R_ESP_32:u32 in
            let T_acc_119_138:u32 := T_acc_119:u32 >> 2:u32 ^ T_acc_119:u32 in
            T_acc_119_138:u32 >> 1:u32 ^ T_acc_119_138:u32)
R_SF:bool = high:bool(R_ESP_32:u32)
R_ZF:bool = 0:u32 == R_ESP_32:u32
label addr_3078288647 @asm "mov    0x4(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x9d239190, 0, u32, wr
  @context "R_ESP_32" = 0xbff0dccc, 0, u32, rd
  @context "mem32[0xbff0dcd0]" = 0x65, 4, u8, rd
  @context "mem32[0xbff0dcd1]" = 0x0, 4, u8, rd
  @context "mem32[0xbff0dcd2]" = 0x0, 4, u8, rd
  @context "mem32[0xbff0dcd3]" = 0x0, 4, u8, rd
assert true & 0xbff0dcd2:u32 == 0xbff0dcd2:u32
assert true & 0xbff0dcd0:u32 == 0xbff0dcd0:u32
assert true & 0xbff0dcd1:u32 == 0xbff0dcd1:u32
assert true & 0xbff0dcd3:u32 == 0xbff0dcd3:u32
R_EAX_32:u32 = 0x9d239190:u32
R_ESP_32:u32 = 0xbff0dccc:u32
label pc_0xb77af507
assert true & 0xbff0dcd3:u32 == R_ESP_32:u32 + 4:u32 + 3:u32 &
       0xbff0dcd2:u32 == R_ESP_32:u32 + 4:u32 + 2:u32 &
       0xbff0dcd1:u32 == R_ESP_32:u32 + 4:u32 + 1:u32 &
       0xbff0dcd0:u32 == R_ESP_32:u32 + 4:u32 + 0:u32
R_EAX_32:u32 =
  let T_loadnorm_140:u32!u8 := mem32_array:u32!u8 in
  concat:[
   concat:[
    concat:[T_loadnorm_140:u32!u8[0xbff0dcd3:u32, e_little]:u8][
     T_loadnorm_140:u32!u8[0xbff0dcd2:u32, e_little]:u8]][
    T_loadnorm_140:u32!u8[0xbff0dcd1:u32, e_little]:u8]][
   T_loadnorm_140:u32!u8[0xbff0dcd0:u32, e_little]:u8]
label addr_2636353938 @asm "push   %esi" @tid "0"
  @context "R_ESI_32" = 0x0, 0, u32, rd
  @context "R_ESP_32" = 0xbff0dcd4, 0, u32, rd
  @context "mem32[0xbff0dcd0]" = 0x65, 4, u8, wr
  @context "mem32[0xbff0dcd1]" = 0x0, 4, u8, wr
  @context "mem32[0xbff0dcd2]" = 0x0, 4, u8, wr
  @context "mem32[0xbff0dcd3]" = 0x0, 4, u8, wr
assert true & 0xbff0dcd2:u32 == 0xbff0dcd2:u32
assert true & 0xbff0dcd0:u32 == 0xbff0dcd0:u32
assert true & 0xbff0dcd1:u32 == 0xbff0dcd1:u32
assert true & 0xbff0dcd3:u32 == 0xbff0dcd3:u32
R_ESI_32:u32 = 0:u32
R_ESP_32:u32 = 0xbff0dcd4:u32
label pc_0x9d239192
T_t_120:u32 = R_ESI_32:u32
R_ESP_32:u32 = R_ESP_32:u32 - 4:u32
assert true & 0xbff0dcd0:u32 == R_ESP_32:u32 + 0:u32 &
       0xbff0dcd1:u32 == R_ESP_32:u32 + 1:u32 &
       0xbff0dcd2:u32 == R_ESP_32:u32 + 2:u32 &
       0xbff0dcd3:u32 == R_ESP_32:u32 + 3:u32
mem32_array:u32!u8 =
  let T_tempmem_141:u32!u8 := mem32_array:u32!u8 in
  let T_tempval_142:u32 := T_t_120:u32 in
  let T_tempmem_141_143:u32!u8 :=
                                   T_tempmem_141:u32!u8 with [0xbff0dcd0:u32,
                                   e_little]:u8 =
                                   extract:7:0:[T_tempval_142:u32] in
  let T_tempmem_141_144:u32!u8 :=
                                   T_tempmem_141_143:u32!u8 with
                                   [0xbff0dcd1:u32, e_little]:u8 =
                                   extract:15:8:[T_tempval_142:u32] in
  let T_tempmem_141_145:u32!u8 :=
                                   T_tempmem_141_144:u32!u8 with
                                   [0xbff0dcd2:u32, e_little]:u8 =
                                   extract:23:16:[T_tempval_142:u32] in
  let T_tempmem_141_146:u32!u8 :=
                                   T_tempmem_141_145:u32!u8 with
                                   [0xbff0dcd3:u32, e_little]:u8 =
                                   extract:31:24:[T_tempval_142:u32] in
  T_tempmem_141_146:u32!u8
label addr_2636353954 @asm "mov    0x30(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x65, -1, u32, wr
  @context "R_ESP_32" = 0xbff0dcb0, 0, u32, rd
  @context "mem32[0xbff0dce0]" = 0x59, 0, u8, rd
  @context "mem32[0xbff0dce1]" = 0x87, 0, u8, rd
  @context "mem32[0xbff0dce2]" = 0x4, 0, u8, rd
  @context "mem32[0xbff0dce3]" = 0x8, 0, u8, rd
assert true & 0xbff0dce0:u32 == 0xbff0dce0:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dce0:u32, e_little]:u8 = 0x59:u8
assert true & 0xbff0dce2:u32 == 0xbff0dce2:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dce2:u32, e_little]:u8 = 4:u8
assert true & 0xbff0dce3:u32 == 0xbff0dce3:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dce3:u32, e_little]:u8 = 8:u8
assert true & 0xbff0dce1:u32 == 0xbff0dce1:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dce1:u32, e_little]:u8 = 0x87:u8
R_ESP_32:u32 = 0xbff0dcb0:u32
label pc_0x9d2391a2
assert true & 0xbff0dce3:u32 == R_ESP_32:u32 + 0x30:u32 + 3:u32 &
       0xbff0dce2:u32 == R_ESP_32:u32 + 0x30:u32 + 2:u32 &
       0xbff0dce1:u32 == R_ESP_32:u32 + 0x30:u32 + 1:u32 &
       0xbff0dce0:u32 == R_ESP_32:u32 + 0x30:u32 + 0:u32
R_EAX_32:u32 =
  let T_loadnorm_144:u32!u8 := mem32_array:u32!u8 in
  concat:[
   concat:[
    concat:[T_loadnorm_144:u32!u8[0xbff0dce3:u32, e_little]:u8][
     T_loadnorm_144:u32!u8[0xbff0dce2:u32, e_little]:u8]][
    T_loadnorm_144:u32!u8[0xbff0dce1:u32, e_little]:u8]][
   T_loadnorm_144:u32!u8[0xbff0dce0:u32, e_little]:u8]
label addr_3078266896 @asm "mov    %eax,-0x3c(%ebp)" @tid "0"
  @context "R_EBP_32" = 0xbff0dd38, 0, u32, rd
  @context "R_EAX_32" = 0xbff0dd54, 0, u32, rd
  @context "mem32[0xbff0dcfc]" = 0x65, 4, u8, wr
  @context "mem32[0xbff0dcfd]" = 0x66, 5, u8, wr
  @context "mem32[0xbff0dcfe]" = 0x67, 0, u8, wr
  @context "mem32[0xbff0dcff]" = 0x68, 0, u8, wr
assert true & 0xbff0dcfd:u32 == 0xbff0dcfd:u32
assert true & 0xbff0dcfe:u32 == 0xbff0dcfe:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcfe:u32, e_little]:u8 = 0x67:u8
assert true & 0xbff0dcfc:u32 == 0xbff0dcfc:u32
assert true & 0xbff0dcff:u32 == 0xbff0dcff:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbff0dcff:u32, e_little]:u8 = 0x68:u8
R_EBP_32:u32 = 0xbff0dd38:u32
R_EAX_32:u32 = 0xbff0dd54:u32
label pc_0xb77aa010
assert true & 0xbff0dcfc:u32 == R_EBP_32:u32 + 0xffffffc4:u32 + 0:u32 &
       0xbff0dcfd:u32 == R_EBP_32:u32 + 0xffffffc4:u32 + 1:u32 &
       0xbff0dcfe:u32 == R_EBP_32:u32 + 0xffffffc4:u32 + 2:u32 &
       0xbff0dcff:u32 == R_EBP_32:u32 + 0xffffffc4:u32 + 3:u32
mem32_array:u32!u8 =
  let T_tempmem_145:u32!u8 := mem32_array:u32!u8 in
  let T_tempval_146:u32 := R_EAX_32:u32 in
  let T_tempmem_145_150:u32!u8 :=
                                   T_tempmem_145:u32!u8 with [0xbff0dcfc:u32,
                                   e_little]:u8 =
                                   extract:7:0:[T_tempval_146:u32] in
  let T_tempmem_145_151:u32!u8 :=
                                   T_tempmem_145_150:u32!u8 with
                                   [0xbff0dcfd:u32, e_little]:u8 =
                                   extract:15:8:[T_tempval_146:u32] in
  let T_tempmem_145_152:u32!u8 :=
                                   T_tempmem_145_151:u32!u8 with
                                   [0xbff0dcfe:u32, e_little]:u8 =
                                   extract:23:16:[T_tempval_146:u32] in
  let T_tempmem_145_153:u32!u8 :=
                                   T_tempmem_145_152:u32!u8 with
                                   [0xbff0dcff:u32, e_little]:u8 =
                                   extract:31:24:[T_tempval_146:u32] in
  T_tempmem_145_153:u32!u8


