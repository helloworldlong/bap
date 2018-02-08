/*ReadSyscall*/ @context "mem32[0xbfc20d48]" = 0x61, 1, u8, wr
  @context "mem32[0xbfc20d49]" = 0x62, 2, u8, wr
  @context "mem32[0xbfc20d4a]" = 0x63, 3, u8, wr
  @context "mem32[0xbfc20d4b]" = 0x64, 4, u8, wr
  @context "mem32[0xbfc20d4c]" = 0x65, 5, u8, wr
  @context "mem32[0xbfc20d4d]" = 0x66, 6, u8, wr
  @context "mem32[0xbfc20d4e]" = 0x67, 7, u8, wr
  @context "mem32[0xbfc20d4f]" = 0x68, 8, u8, wr
  @context "mem32[0xbfc20d50]" = 0x69, 9, u8, wr
  @context "mem32[0xbfc20d51]" = 0x6a, 10, u8, wr
  @context "mem32[0xbfc20d52]" = 0x6b, 11, u8, wr
  @context "mem32[0xbfc20d53]" = 0x6c, 12, u8, wr
  @context "mem32[0xbfc20d54]" = 0x6d, 13, u8, wr
  @context "mem32[0xbfc20d55]" = 0x6e, 14, u8, wr
  @context "mem32[0xbfc20d56]" = 0xa, 15, u8, wr
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d48:u32, e_little]:u8 = symb_1:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d49:u32, e_little]:u8 = symb_2:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d4a:u32, e_little]:u8 = symb_3:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d4b:u32, e_little]:u8 = symb_4:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d4c:u32, e_little]:u8 = symb_5:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d4d:u32, e_little]:u8 = symb_6:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d4e:u32, e_little]:u8 = symb_7:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d4f:u32, e_little]:u8 = symb_8:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d50:u32, e_little]:u8 = symb_9:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d51:u32, e_little]:u8 = symb_10:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d52:u32, e_little]:u8 = symb_11:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d53:u32, e_little]:u8 = symb_12:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d54:u32, e_little]:u8 = symb_13:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d55:u32, e_little]:u8 = symb_14:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d56:u32, e_little]:u8 = symb_15:u8
assert true & 0xbfc20d56:u32 == 0xbfc20d56:u32
assert true & 0xbfc20d55:u32 == 0xbfc20d55:u32
assert true & 0xbfc20d54:u32 == 0xbfc20d54:u32
assert true & 0xbfc20d53:u32 == 0xbfc20d53:u32
assert true & 0xbfc20d52:u32 == 0xbfc20d52:u32
assert true & 0xbfc20d51:u32 == 0xbfc20d51:u32
assert true & 0xbfc20d50:u32 == 0xbfc20d50:u32
assert true & 0xbfc20d4f:u32 == 0xbfc20d4f:u32
assert true & 0xbfc20d4e:u32 == 0xbfc20d4e:u32
assert true & 0xbfc20d4d:u32 == 0xbfc20d4d:u32
assert true & 0xbfc20d4c:u32 == 0xbfc20d4c:u32
assert true & 0xbfc20d4b:u32 == 0xbfc20d4b:u32
assert true & 0xbfc20d4a:u32 == 0xbfc20d4a:u32
assert true & 0xbfc20d49:u32 == 0xbfc20d49:u32
assert true & 0xbfc20d48:u32 == 0xbfc20d48:u32
/*All blocks must have two statements*/
label addr_134514126 @asm "movzbl 0x18(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x0, 0, u32, wr
  @context "R_ESP_32" = 0xbfc20d30, 0, u32, rd
  @context "mem32[0xbfc20d48]" = 0x61, 1, u8, rd
assert true & 0xbfc20d48:u32 == 0xbfc20d48:u32
R_EAX_32:u32 = 0:u32
R_ESP_32:u32 = 0xbfc20d30:u32
label pc_0x80485ce
assert true & 0xbfc20d48:u32 == R_ESP_32:u32 + 0x18:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbfc20d48:u32, e_little]:u8)
label addr_134514131 @asm "cmp    $0x61,%al" @tid "0"
  @context "R_EAX_32" = 0x61, 1, u32, rd
  @context "R_EFLAGS" = 0x217, 0, u32, wr
R_ZF:bool = false
R_AF:bool = true
R_OF:bool = false
R_SF:bool = false
R_DF:bool = false
R_CF:bool = true
R_EFLAGS:u32 = 0x217:u32
R_PF:bool = true
label pc_0x80485d3
T_t:u8 = low:u8(R_EAX_32:u32) - 0x61:u8
R_CF:bool = low:u8(R_EAX_32:u32) < 0x61:u8
R_OF:bool =
  high:bool((low:u8(R_EAX_32:u32) ^ 0x61:u8) &
            (low:u8(R_EAX_32:u32) ^ T_t:u8))
R_AF:bool = 0x10:u8 == (0x10:u8 & (T_t:u8 ^ low:u8(R_EAX_32:u32) ^ 0x61:u8))
R_PF:bool =
  ~low:bool(let T_acc:u8 := T_t:u8 >> 4:u8 ^ T_t:u8 in
            let T_acc_128:u8 := T_acc:u8 >> 2:u8 ^ T_acc:u8 in
            T_acc_128:u8 >> 1:u8 ^ T_acc_128:u8)
R_SF:bool = high:bool(T_t:u8)
R_ZF:bool = 0:u8 == T_t:u8
label addr_134514133 @asm "je     0x00000000080485ed" @tid "0"
  @context "R_EIP" = 0x80485d5, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 1, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x80485d5:u32
label pc_0x80485d5
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x80485ed:u32, "nocjmp0"*/
label addr_134514157 @asm "movzbl 0x19(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x61, 1, u32, wr
  @context "R_ESP_32" = 0xbfc20d30, 0, u32, rd
  @context "mem32[0xbfc20d49]" = 0x62, 2, u8, rd
assert true & 0xbfc20d49:u32 == 0xbfc20d49:u32
R_ESP_32:u32 = 0xbfc20d30:u32
label pc_0x80485ed
assert true & 0xbfc20d49:u32 == R_ESP_32:u32 + 0x19:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbfc20d49:u32, e_little]:u8)
label addr_134514162 @asm "cmp    $0x62,%al" @tid "0"
  @context "R_EAX_32" = 0x62, 2, u32, rd
  @context "R_EFLAGS" = 0x246, 1, u32, wr
R_DF:bool = false
label pc_0x80485f2
T_t_111:u8 = low:u8(R_EAX_32:u32) - 0x62:u8
R_CF:bool = low:u8(R_EAX_32:u32) < 0x62:u8
R_OF:bool =
  high:bool((low:u8(R_EAX_32:u32) ^ 0x62:u8) &
            (low:u8(R_EAX_32:u32) ^ T_t_111:u8))
R_AF:bool =
  0x10:u8 == (0x10:u8 & (T_t_111:u8 ^ low:u8(R_EAX_32:u32) ^ 0x62:u8))
R_PF:bool =
  ~low:bool(let T_acc_112:u8 := T_t_111:u8 >> 4:u8 ^ T_t_111:u8 in
            let T_acc_112_131:u8 := T_acc_112:u8 >> 2:u8 ^ T_acc_112:u8 in
            T_acc_112_131:u8 >> 1:u8 ^ T_acc_112_131:u8)
R_SF:bool = high:bool(T_t_111:u8)
R_ZF:bool = 0:u8 == T_t_111:u8
label addr_134514164 @asm "je     0x0000000008048609" @tid "0"
  @context "R_EIP" = 0x80485f4, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 2, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x80485f4:u32
label pc_0x80485f4
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x8048609:u32, "nocjmp1"*/
label addr_134514185 @asm "movzbl 0x1a(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x62, 2, u32, wr
  @context "R_ESP_32" = 0xbfc20d30, 0, u32, rd
  @context "mem32[0xbfc20d4a]" = 0x63, 3, u8, rd
assert true & 0xbfc20d4a:u32 == 0xbfc20d4a:u32
R_ESP_32:u32 = 0xbfc20d30:u32
label pc_0x8048609
assert true & 0xbfc20d4a:u32 == R_ESP_32:u32 + 0x1a:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbfc20d4a:u32, e_little]:u8)
label addr_134514190 @asm "cmp    $0x63,%al" @tid "0"
  @context "R_EAX_32" = 0x63, 3, u32, rd
  @context "R_EFLAGS" = 0x246, 2, u32, wr
R_DF:bool = false
label pc_0x804860e
T_t_113:u8 = low:u8(R_EAX_32:u32) - 0x63:u8
R_CF:bool = low:u8(R_EAX_32:u32) < 0x63:u8
R_OF:bool =
  high:bool((low:u8(R_EAX_32:u32) ^ 0x63:u8) &
            (low:u8(R_EAX_32:u32) ^ T_t_113:u8))
R_AF:bool =
  0x10:u8 == (0x10:u8 & (T_t_113:u8 ^ low:u8(R_EAX_32:u32) ^ 0x63:u8))
R_PF:bool =
  ~low:bool(let T_acc_114:u8 := T_t_113:u8 >> 4:u8 ^ T_t_113:u8 in
            let T_acc_114_134:u8 := T_acc_114:u8 >> 2:u8 ^ T_acc_114:u8 in
            T_acc_114_134:u8 >> 1:u8 ^ T_acc_114_134:u8)
R_SF:bool = high:bool(T_t_113:u8)
R_ZF:bool = 0:u8 == T_t_113:u8
label addr_134514192 @asm "je     0x0000000008048625" @tid "0"
  @context "R_EIP" = 0x8048610, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 3, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x8048610:u32
label pc_0x8048610
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x8048625:u32, "nocjmp2"*/
label addr_134514213 @asm "movzbl 0x1b(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x63, 3, u32, wr
  @context "R_ESP_32" = 0xbfc20d30, 0, u32, rd
  @context "mem32[0xbfc20d4b]" = 0x64, 4, u8, rd
assert true & 0xbfc20d4b:u32 == 0xbfc20d4b:u32
R_ESP_32:u32 = 0xbfc20d30:u32
label pc_0x8048625
assert true & 0xbfc20d4b:u32 == R_ESP_32:u32 + 0x1b:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbfc20d4b:u32, e_little]:u8)
label addr_134514218 @asm "cmp    $0x64,%al" @tid "0"
  @context "R_EAX_32" = 0x64, 4, u32, rd
  @context "R_EFLAGS" = 0x246, 3, u32, wr
R_DF:bool = false
label pc_0x804862a
T_t_115:u8 = low:u8(R_EAX_32:u32) - 0x64:u8
R_CF:bool = low:u8(R_EAX_32:u32) < 0x64:u8
R_OF:bool =
  high:bool((low:u8(R_EAX_32:u32) ^ 0x64:u8) &
            (low:u8(R_EAX_32:u32) ^ T_t_115:u8))
R_AF:bool =
  0x10:u8 == (0x10:u8 & (T_t_115:u8 ^ low:u8(R_EAX_32:u32) ^ 0x64:u8))
R_PF:bool =
  ~low:bool(let T_acc_116:u8 := T_t_115:u8 >> 4:u8 ^ T_t_115:u8 in
            let T_acc_116_137:u8 := T_acc_116:u8 >> 2:u8 ^ T_acc_116:u8 in
            T_acc_116_137:u8 >> 1:u8 ^ T_acc_116_137:u8)
R_SF:bool = high:bool(T_t_115:u8)
R_ZF:bool = 0:u8 == T_t_115:u8
label addr_134514220 @asm "je     0x0000000008048641" @tid "0"
  @context "R_EIP" = 0x804862c, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 4, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x804862c:u32
label pc_0x804862c
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x8048641:u32, "nocjmp3"*/
label addr_134514241 @asm "movzbl 0x1c(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x64, 4, u32, wr
  @context "R_ESP_32" = 0xbfc20d30, 0, u32, rd
  @context "mem32[0xbfc20d4c]" = 0x65, 5, u8, rd
assert true & 0xbfc20d4c:u32 == 0xbfc20d4c:u32
R_ESP_32:u32 = 0xbfc20d30:u32
label pc_0x8048641
assert true & 0xbfc20d4c:u32 == R_ESP_32:u32 + 0x1c:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbfc20d4c:u32, e_little]:u8)
label addr_134514246 @asm "cmp    $0x65,%al" @tid "0"
  @context "R_EAX_32" = 0x65, 5, u32, rd
  @context "R_EFLAGS" = 0x246, 4, u32, wr
R_DF:bool = false
label pc_0x8048646
T_t_117:u8 = low:u8(R_EAX_32:u32) - 0x65:u8
R_CF:bool = low:u8(R_EAX_32:u32) < 0x65:u8
R_OF:bool =
  high:bool((low:u8(R_EAX_32:u32) ^ 0x65:u8) &
            (low:u8(R_EAX_32:u32) ^ T_t_117:u8))
R_AF:bool =
  0x10:u8 == (0x10:u8 & (T_t_117:u8 ^ low:u8(R_EAX_32:u32) ^ 0x65:u8))
R_PF:bool =
  ~low:bool(let T_acc_118:u8 := T_t_117:u8 >> 4:u8 ^ T_t_117:u8 in
            let T_acc_118_140:u8 := T_acc_118:u8 >> 2:u8 ^ T_acc_118:u8 in
            T_acc_118_140:u8 >> 1:u8 ^ T_acc_118_140:u8)
R_SF:bool = high:bool(T_t_117:u8)
R_ZF:bool = 0:u8 == T_t_117:u8
label addr_134514248 @asm "je     0x000000000804865d" @tid "0"
  @context "R_EIP" = 0x8048648, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 5, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x8048648:u32
label pc_0x8048648
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x804865d:u32, "nocjmp4"*/
label addr_3078137072 @asm "push   %eax" @tid "0"
  @context "R_EAX_32" = 0x65, 5, u32, rd
  @context "R_ESP_32" = 0xbfc20d24, 0, u32, rd
  @context "mem32[0xbfc20d20]" = 0x48, 0, u8, wr
  @context "mem32[0xbfc20d21]" = 0xd, 0, u8, wr
  @context "mem32[0xbfc20d22]" = 0xc2, 0, u8, wr
  @context "mem32[0xbfc20d23]" = 0xbf, 0, u8, wr
assert true & 0xbfc20d23:u32 == 0xbfc20d23:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d23:u32, e_little]:u8 = 0xbf:u8
assert true & 0xbfc20d22:u32 == 0xbfc20d22:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d22:u32, e_little]:u8 = 0xc2:u8
assert true & 0xbfc20d21:u32 == 0xbfc20d21:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d21:u32, e_little]:u8 = 0xd:u8
assert true & 0xbfc20d20:u32 == 0xbfc20d20:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d20:u32, e_little]:u8 = 0x48:u8
R_ESP_32:u32 = 0xbfc20d24:u32
label pc_0xb778a4f0
T_t_119:u32 = R_EAX_32:u32
R_ESP_32:u32 = R_ESP_32:u32 - 4:u32
assert true & 0xbfc20d20:u32 == R_ESP_32:u32 + 0:u32 &
       0xbfc20d21:u32 == R_ESP_32:u32 + 1:u32 &
       0xbfc20d22:u32 == R_ESP_32:u32 + 2:u32 &
       0xbfc20d23:u32 == R_ESP_32:u32 + 3:u32
mem32_array:u32!u8 =
  let T_tempmem:u32!u8 := mem32_array:u32!u8 in
  let T_tempval:u32 := T_t_119:u32 in
  let T_tempmem_144:u32!u8 :=
                               T_tempmem:u32!u8 with [0xbfc20d20:u32,
                               e_little]:u8 = extract:7:0:[T_tempval:u32] in
  let T_tempmem_145:u32!u8 :=
                               T_tempmem_144:u32!u8 with [0xbfc20d21:u32,
                               e_little]:u8 = extract:15:8:[T_tempval:u32] in
  let T_tempmem_146:u32!u8 :=
                               T_tempmem_145:u32!u8 with [0xbfc20d22:u32,
                               e_little]:u8 = extract:23:16:[T_tempval:u32] in
  let T_tempmem_147:u32!u8 :=
                               T_tempmem_146:u32!u8 with [0xbfc20d23:u32,
                               e_little]:u8 = extract:31:24:[T_tempval:u32] in
  T_tempmem_147:u32!u8
label addr_3078137079 @asm "mov    0xc(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x65, 5, u32, wr
  @context "R_ESP_32" = 0xbfc20d18, 0, u32, rd
  @context "mem32[0xbfc20d24]" = 0x38, 0, u8, rd
  @context "mem32[0xbfc20d25]" = 0x79, 0, u8, rd
  @context "mem32[0xbfc20d26]" = 0x79, 0, u8, rd
  @context "mem32[0xbfc20d27]" = 0xb7, 0, u8, rd
assert true & 0xbfc20d24:u32 == 0xbfc20d24:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d24:u32, e_little]:u8 = 0x38:u8
assert true & 0xbfc20d25:u32 == 0xbfc20d25:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d25:u32, e_little]:u8 = 0x79:u8
assert true & 0xbfc20d27:u32 == 0xbfc20d27:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d27:u32, e_little]:u8 = 0xb7:u8
assert true & 0xbfc20d26:u32 == 0xbfc20d26:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d26:u32, e_little]:u8 = 0x79:u8
R_ESP_32:u32 = 0xbfc20d18:u32
label pc_0xb778a4f7
assert true & 0xbfc20d27:u32 == R_ESP_32:u32 + 0xc:u32 + 3:u32 &
       0xbfc20d26:u32 == R_ESP_32:u32 + 0xc:u32 + 2:u32 &
       0xbfc20d25:u32 == R_ESP_32:u32 + 0xc:u32 + 1:u32 &
       0xbfc20d24:u32 == R_ESP_32:u32 + 0xc:u32 + 0:u32
R_EAX_32:u32 =
  let T_loadnorm:u32!u8 := mem32_array:u32!u8 in
  concat:[
   concat:[
    concat:[T_loadnorm:u32!u8[0xbfc20d27:u32, e_little]:u8][
     T_loadnorm:u32!u8[0xbfc20d26:u32, e_little]:u8]][
    T_loadnorm:u32!u8[0xbfc20d25:u32, e_little]:u8]][
   T_loadnorm:u32!u8[0xbfc20d24:u32, e_little]:u8]
label addr_3078111400 @asm "sub    $0x4c,%esp" @tid "0"
  @context "R_ESP_32" = 0xbfc20d04, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 5, u32, wr
R_DF:bool = false
R_ESP_32:u32 = 0xbfc20d04:u32
label pc_0xb77840a8
T_t_120:u32 = R_ESP_32:u32
R_ESP_32:u32 = R_ESP_32:u32 - 0x4c:u32
R_CF:bool = T_t_120:u32 < 0x4c:u32
R_OF:bool =
  high:bool((T_t_120:u32 ^ 0x4c:u32) & (T_t_120:u32 ^ R_ESP_32:u32))
R_AF:bool = 0x10:u32 == (0x10:u32 & (R_ESP_32:u32 ^ T_t_120:u32 ^ 0x4c:u32))
R_PF:bool =
  ~low:bool(let T_acc_121:u32 := R_ESP_32:u32 >> 4:u32 ^ R_ESP_32:u32 in
            let T_acc_121_151:u32 := T_acc_121:u32 >> 2:u32 ^ T_acc_121:u32 in
            T_acc_121_151:u32 >> 1:u32 ^ T_acc_121_151:u32)
R_SF:bool = high:bool(R_ESP_32:u32)
R_ZF:bool = 0:u32 == R_ESP_32:u32
label addr_3078137095 @asm "mov    0x4(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x9d21e190, 0, u32, wr
  @context "R_ESP_32" = 0xbfc20d1c, 0, u32, rd
  @context "mem32[0xbfc20d20]" = 0x65, 5, u8, rd
  @context "mem32[0xbfc20d21]" = 0x0, 5, u8, rd
  @context "mem32[0xbfc20d22]" = 0x0, 5, u8, rd
  @context "mem32[0xbfc20d23]" = 0x0, 5, u8, rd
assert true & 0xbfc20d23:u32 == 0xbfc20d23:u32
assert true & 0xbfc20d22:u32 == 0xbfc20d22:u32
assert true & 0xbfc20d21:u32 == 0xbfc20d21:u32
assert true & 0xbfc20d20:u32 == 0xbfc20d20:u32
R_EAX_32:u32 = 0x9d21e190:u32
R_ESP_32:u32 = 0xbfc20d1c:u32
label pc_0xb778a507
assert true & 0xbfc20d23:u32 == R_ESP_32:u32 + 4:u32 + 3:u32 &
       0xbfc20d22:u32 == R_ESP_32:u32 + 4:u32 + 2:u32 &
       0xbfc20d21:u32 == R_ESP_32:u32 + 4:u32 + 1:u32 &
       0xbfc20d20:u32 == R_ESP_32:u32 + 4:u32 + 0:u32
R_EAX_32:u32 =
  let T_loadnorm_152:u32!u8 := mem32_array:u32!u8 in
  concat:[
   concat:[
    concat:[T_loadnorm_152:u32!u8[0xbfc20d23:u32, e_little]:u8][
     T_loadnorm_152:u32!u8[0xbfc20d22:u32, e_little]:u8]][
    T_loadnorm_152:u32!u8[0xbfc20d21:u32, e_little]:u8]][
   T_loadnorm_152:u32!u8[0xbfc20d20:u32, e_little]:u8]
label addr_2636243346 @asm "push   %esi" @tid "0"
  @context "R_ESI_32" = 0x0, 0, u32, rd
  @context "R_ESP_32" = 0xbfc20d24, 0, u32, rd
  @context "mem32[0xbfc20d20]" = 0x65, 5, u8, wr
  @context "mem32[0xbfc20d21]" = 0x0, 5, u8, wr
  @context "mem32[0xbfc20d22]" = 0x0, 5, u8, wr
  @context "mem32[0xbfc20d23]" = 0x0, 5, u8, wr
assert true & 0xbfc20d23:u32 == 0xbfc20d23:u32
assert true & 0xbfc20d22:u32 == 0xbfc20d22:u32
assert true & 0xbfc20d21:u32 == 0xbfc20d21:u32
assert true & 0xbfc20d20:u32 == 0xbfc20d20:u32
R_ESI_32:u32 = 0:u32
R_ESP_32:u32 = 0xbfc20d24:u32
label pc_0x9d21e192
T_t_122:u32 = R_ESI_32:u32
R_ESP_32:u32 = R_ESP_32:u32 - 4:u32
assert true & 0xbfc20d20:u32 == R_ESP_32:u32 + 0:u32 &
       0xbfc20d21:u32 == R_ESP_32:u32 + 1:u32 &
       0xbfc20d22:u32 == R_ESP_32:u32 + 2:u32 &
       0xbfc20d23:u32 == R_ESP_32:u32 + 3:u32
mem32_array:u32!u8 =
  let T_tempmem_153:u32!u8 := mem32_array:u32!u8 in
  let T_tempval_154:u32 := T_t_122:u32 in
  let T_tempmem_153_156:u32!u8 :=
                                   T_tempmem_153:u32!u8 with [0xbfc20d20:u32,
                                   e_little]:u8 =
                                   extract:7:0:[T_tempval_154:u32] in
  let T_tempmem_153_157:u32!u8 :=
                                   T_tempmem_153_156:u32!u8 with
                                   [0xbfc20d21:u32, e_little]:u8 =
                                   extract:15:8:[T_tempval_154:u32] in
  let T_tempmem_153_158:u32!u8 :=
                                   T_tempmem_153_157:u32!u8 with
                                   [0xbfc20d22:u32, e_little]:u8 =
                                   extract:23:16:[T_tempval_154:u32] in
  let T_tempmem_153_159:u32!u8 :=
                                   T_tempmem_153_158:u32!u8 with
                                   [0xbfc20d23:u32, e_little]:u8 =
                                   extract:31:24:[T_tempval_154:u32] in
  T_tempmem_153_159:u32!u8
label addr_2636243362 @asm "mov    0x30(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x65, -1, u32, wr
  @context "R_ESP_32" = 0xbfc20d00, 0, u32, rd
  @context "mem32[0xbfc20d30]" = 0x59, 0, u8, rd
  @context "mem32[0xbfc20d31]" = 0x87, 0, u8, rd
  @context "mem32[0xbfc20d32]" = 0x4, 0, u8, rd
  @context "mem32[0xbfc20d33]" = 0x8, 0, u8, rd
assert true & 0xbfc20d32:u32 == 0xbfc20d32:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d32:u32, e_little]:u8 = 4:u8
assert true & 0xbfc20d33:u32 == 0xbfc20d33:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d33:u32, e_little]:u8 = 8:u8
assert true & 0xbfc20d31:u32 == 0xbfc20d31:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d31:u32, e_little]:u8 = 0x87:u8
assert true & 0xbfc20d30:u32 == 0xbfc20d30:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d30:u32, e_little]:u8 = 0x59:u8
R_ESP_32:u32 = 0xbfc20d00:u32
label pc_0x9d21e1a2
assert true & 0xbfc20d33:u32 == R_ESP_32:u32 + 0x30:u32 + 3:u32 &
       0xbfc20d32:u32 == R_ESP_32:u32 + 0x30:u32 + 2:u32 &
       0xbfc20d31:u32 == R_ESP_32:u32 + 0x30:u32 + 1:u32 &
       0xbfc20d30:u32 == R_ESP_32:u32 + 0x30:u32 + 0:u32
R_EAX_32:u32 =
  let T_loadnorm_156:u32!u8 := mem32_array:u32!u8 in
  concat:[
   concat:[
    concat:[T_loadnorm_156:u32!u8[0xbfc20d33:u32, e_little]:u8][
     T_loadnorm_156:u32!u8[0xbfc20d32:u32, e_little]:u8]][
    T_loadnorm_156:u32!u8[0xbfc20d31:u32, e_little]:u8]][
   T_loadnorm_156:u32!u8[0xbfc20d30:u32, e_little]:u8]
label addr_3078115332 @asm "mov    %eax,-0x38(%ebp)" @tid "0"
  @context "R_EBP_32" = 0xbfc20d88, 0, u32, rd
  @context "R_EAX_32" = 0x4, 0, u32, rd
  @context "mem32[0xbfc20d50]" = 0x69, 9, u8, wr
  @context "mem32[0xbfc20d51]" = 0x6a, 10, u8, wr
  @context "mem32[0xbfc20d52]" = 0x6b, 11, u8, wr
  @context "mem32[0xbfc20d53]" = 0x6c, 12, u8, wr
assert true & 0xbfc20d53:u32 == 0xbfc20d53:u32
assert true & 0xbfc20d50:u32 == 0xbfc20d50:u32
assert true & 0xbfc20d52:u32 == 0xbfc20d52:u32
assert true & 0xbfc20d51:u32 == 0xbfc20d51:u32
R_EBP_32:u32 = 0xbfc20d88:u32
R_EAX_32:u32 = 4:u32
label pc_0xb7785004
assert true & 0xbfc20d50:u32 == R_EBP_32:u32 + 0xffffffc8:u32 + 0:u32 &
       0xbfc20d51:u32 == R_EBP_32:u32 + 0xffffffc8:u32 + 1:u32 &
       0xbfc20d52:u32 == R_EBP_32:u32 + 0xffffffc8:u32 + 2:u32 &
       0xbfc20d53:u32 == R_EBP_32:u32 + 0xffffffc8:u32 + 3:u32
mem32_array:u32!u8 =
  let T_tempmem_157:u32!u8 := mem32_array:u32!u8 in
  let T_tempval_158:u32 := R_EAX_32:u32 in
  let T_tempmem_157_163:u32!u8 :=
                                   T_tempmem_157:u32!u8 with [0xbfc20d50:u32,
                                   e_little]:u8 =
                                   extract:7:0:[T_tempval_158:u32] in
  let T_tempmem_157_164:u32!u8 :=
                                   T_tempmem_157_163:u32!u8 with
                                   [0xbfc20d51:u32, e_little]:u8 =
                                   extract:15:8:[T_tempval_158:u32] in
  let T_tempmem_157_165:u32!u8 :=
                                   T_tempmem_157_164:u32!u8 with
                                   [0xbfc20d52:u32, e_little]:u8 =
                                   extract:23:16:[T_tempval_158:u32] in
  let T_tempmem_157_166:u32!u8 :=
                                   T_tempmem_157_165:u32!u8 with
                                   [0xbfc20d53:u32, e_little]:u8 =
                                   extract:31:24:[T_tempval_158:u32] in
  T_tempmem_157_166:u32!u8
label addr_3078115338 @asm "mov    %di,-0x32(%ebp)" @tid "0"
  @context "R_EBP_32" = 0xbfc20d88, 0, u32, rd
  @context "R_EDI_32" = 0x1, 0, u32, rd
  @context "mem32[0xbfc20d56]" = 0xa, 15, u8, wr
  @context "mem32[0xbfc20d57]" = 0x0, 0, u8, wr
assert true & 0xbfc20d56:u32 == 0xbfc20d56:u32
assert true & 0xbfc20d57:u32 == 0xbfc20d57:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbfc20d57:u32, e_little]:u8 = 0:u8
R_EBP_32:u32 = 0xbfc20d88:u32
R_EDI_32:u32 = 1:u32
label pc_0xb778500a
assert true & 0xbfc20d56:u32 == R_EBP_32:u32 + 0xffffffce:u32 + 0:u32 &
       0xbfc20d57:u32 == R_EBP_32:u32 + 0xffffffce:u32 + 1:u32
mem32_array:u32!u8 =
  let T_tempmem_160:u32!u8 := mem32_array:u32!u8 in
  let T_tempval_161:u16 := low:u16(R_EDI_32:u32) in
  let T_tempmem_160_169:u32!u8 :=
                                   T_tempmem_160:u32!u8 with [0xbfc20d56:u32,
                                   e_little]:u8 =
                                   extract:7:0:[T_tempval_161:u16] in
  let T_tempmem_160_170:u32!u8 :=
                                   T_tempmem_160_169:u32!u8 with
                                   [0xbfc20d57:u32, e_little]:u8 =
                                   extract:15:8:[T_tempval_161:u16] in
  T_tempmem_160_170:u32!u8
label addr_3078115344 @asm "mov    %eax,-0x3c(%ebp)" @tid "0"
  @context "R_EBP_32" = 0xbfc20d88, 0, u32, rd
  @context "R_EAX_32" = 0xbfc20da4, 0, u32, rd
  @context "mem32[0xbfc20d4c]" = 0x65, 5, u8, wr
  @context "mem32[0xbfc20d4d]" = 0x66, 6, u8, wr
  @context "mem32[0xbfc20d4e]" = 0x67, 7, u8, wr
  @context "mem32[0xbfc20d4f]" = 0x68, 8, u8, wr
assert true & 0xbfc20d4f:u32 == 0xbfc20d4f:u32
assert true & 0xbfc20d4d:u32 == 0xbfc20d4d:u32
assert true & 0xbfc20d4e:u32 == 0xbfc20d4e:u32
assert true & 0xbfc20d4c:u32 == 0xbfc20d4c:u32
R_EBP_32:u32 = 0xbfc20d88:u32
R_EAX_32:u32 = 0xbfc20da4:u32
label pc_0xb7785010
assert true & 0xbfc20d4c:u32 == R_EBP_32:u32 + 0xffffffc4:u32 + 0:u32 &
       0xbfc20d4d:u32 == R_EBP_32:u32 + 0xffffffc4:u32 + 1:u32 &
       0xbfc20d4e:u32 == R_EBP_32:u32 + 0xffffffc4:u32 + 2:u32 &
       0xbfc20d4f:u32 == R_EBP_32:u32 + 0xffffffc4:u32 + 3:u32
mem32_array:u32!u8 =
  let T_tempmem_163:u32!u8 := mem32_array:u32!u8 in
  let T_tempval_164:u32 := R_EAX_32:u32 in
  let T_tempmem_163_173:u32!u8 :=
                                   T_tempmem_163:u32!u8 with [0xbfc20d4c:u32,
                                   e_little]:u8 =
                                   extract:7:0:[T_tempval_164:u32] in
  let T_tempmem_163_174:u32!u8 :=
                                   T_tempmem_163_173:u32!u8 with
                                   [0xbfc20d4d:u32, e_little]:u8 =
                                   extract:15:8:[T_tempval_164:u32] in
  let T_tempmem_163_175:u32!u8 :=
                                   T_tempmem_163_174:u32!u8 with
                                   [0xbfc20d4e:u32, e_little]:u8 =
                                   extract:23:16:[T_tempval_164:u32] in
  let T_tempmem_163_176:u32!u8 :=
                                   T_tempmem_163_175:u32!u8 with
                                   [0xbfc20d4f:u32, e_little]:u8 =
                                   extract:31:24:[T_tempval_164:u32] in
  T_tempmem_163_176:u32!u8


