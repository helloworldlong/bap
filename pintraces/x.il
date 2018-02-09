
/*ReadSyscall*/ @taint_intro 1, "file /home/l/bap/mywps/1.txt", 1
  @context "mem32[0xbf8e6779]" = 0x62, 1, u8, wr
  @taint_intro 2, "file /home/l/bap/mywps/1.txt", 2
  @context "mem32[0xbf8e677a]" = 0x63, 2, u8, wr
  @taint_intro 3, "file /home/l/bap/mywps/1.txt", 3
  @context "mem32[0xbf8e677b]" = 0x64, 3, u8, wr
  @taint_intro 4, "file /home/l/bap/mywps/1.txt", 4
  @context "mem32[0xbf8e677c]" = 0x65, 4, u8, wr
  @taint_intro 5, "file /home/l/bap/mywps/1.txt", 5
  @context "mem32[0xbf8e677d]" = 0x66, 5, u8, wr
  @taint_intro 6, "file /home/l/bap/mywps/1.txt", 6
  @context "mem32[0xbf8e677e]" = 0x67, 6, u8, wr
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6779:u32, e_little]:u8 = symb_1:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e677a:u32, e_little]:u8 = symb_2:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e677b:u32, e_little]:u8 = symb_3:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e677c:u32, e_little]:u8 = symb_4:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e677d:u32, e_little]:u8 = symb_5:u8
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e677e:u32, e_little]:u8 = symb_6:u8
assert true & 0xbf8e677e:u32 == 0xbf8e677e:u32
assert true & 0xbf8e677d:u32 == 0xbf8e677d:u32
assert true & 0xbf8e677c:u32 == 0xbf8e677c:u32
assert true & 0xbf8e677b:u32 == 0xbf8e677b:u32
assert true & 0xbf8e677a:u32 == 0xbf8e677a:u32
assert true & 0xbf8e6779:u32 == 0xbf8e6779:u32
/*All blocks must have two statements*/

addr 0x80485ed @asm "movzbl 0x19(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x61, 0, u32, wr
  @context "R_ESP_32" = 0xbf8e6760, 0, u32, rd
  @context "mem32[0xbf8e6779]" = 0x62, 1, u8, rd
assert true & 0xbf8e6779:u32 == 0xbf8e6779:u32
R_EAX_32:u32 = 0x61:u32
R_ESP_32:u32 = 0xbf8e6760:u32
label pc_0x80485ed
assert true & 0xbf8e6779:u32 == R_ESP_32:u32 + 0x19:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbf8e6779:u32, e_little]:u8)

addr 0x80485f2 @asm "cmp    $0x62,%al" @tid "0"
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
            let T_acc:u8 := T_acc:u8 >> 2:u8 ^ T_acc:u8 in
            T_acc:u8 >> 1:u8 ^ T_acc:u8)
R_SF:bool = high:bool(T_t:u8)
R_ZF:bool = 0:u8 == T_t:u8

addr 0x80485f4 @asm "je     0x0000000008048609" @tid "0"
  @context "R_EIP" = 0x80485f4, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 1, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x80485f4:u32
label pc_0x80485f4
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x8048609:u32, "nocjmp0"*/

addr 0x8048609 @asm "movzbl 0x1a(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x62, 1, u32, wr
  @context "R_ESP_32" = 0xbf8e6760, 0, u32, rd
  @context "mem32[0xbf8e677a]" = 0x63, 2, u8, rd
assert true & 0xbf8e677a:u32 == 0xbf8e677a:u32
R_ESP_32:u32 = 0xbf8e6760:u32
label pc_0x8048609
assert true & 0xbf8e677a:u32 == R_ESP_32:u32 + 0x1a:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbf8e677a:u32, e_little]:u8)

addr 0x804860e @asm "cmp    $0x63,%al" @tid "0"
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
            let T_acc_112:u8 := T_acc_112:u8 >> 2:u8 ^ T_acc_112:u8 in
            T_acc_112:u8 >> 1:u8 ^ T_acc_112:u8)
R_SF:bool = high:bool(T_t_111:u8)
R_ZF:bool = 0:u8 == T_t_111:u8

addr 0x8048610 @asm "je     0x0000000008048625" @tid "0"
  @context "R_EIP" = 0x8048610, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 2, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x8048610:u32
label pc_0x8048610
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x8048625:u32, "nocjmp1"*/

addr 0x8048625 @asm "movzbl 0x1b(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x63, 2, u32, wr
  @context "R_ESP_32" = 0xbf8e6760, 0, u32, rd
  @context "mem32[0xbf8e677b]" = 0x64, 3, u8, rd
assert true & 0xbf8e677b:u32 == 0xbf8e677b:u32
R_ESP_32:u32 = 0xbf8e6760:u32
label pc_0x8048625
assert true & 0xbf8e677b:u32 == R_ESP_32:u32 + 0x1b:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbf8e677b:u32, e_little]:u8)

addr 0x804862a @asm "cmp    $0x64,%al" @tid "0"
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
            let T_acc_114:u8 := T_acc_114:u8 >> 2:u8 ^ T_acc_114:u8 in
            T_acc_114:u8 >> 1:u8 ^ T_acc_114:u8)
R_SF:bool = high:bool(T_t_113:u8)
R_ZF:bool = 0:u8 == T_t_113:u8

addr 0x804862c @asm "je     0x0000000008048641" @tid "0"
  @context "R_EIP" = 0x804862c, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 3, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x804862c:u32
label pc_0x804862c
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x8048641:u32, "nocjmp2"*/

addr 0x8048641 @asm "movzbl 0x1c(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x64, 3, u32, wr
  @context "R_ESP_32" = 0xbf8e6760, 0, u32, rd
  @context "mem32[0xbf8e677c]" = 0x65, 4, u8, rd
assert true & 0xbf8e677c:u32 == 0xbf8e677c:u32
R_ESP_32:u32 = 0xbf8e6760:u32
label pc_0x8048641
assert true & 0xbf8e677c:u32 == R_ESP_32:u32 + 0x1c:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbf8e677c:u32, e_little]:u8)

addr 0x8048646 @asm "cmp    $0x65,%al" @tid "0"
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
            let T_acc_116:u8 := T_acc_116:u8 >> 2:u8 ^ T_acc_116:u8 in
            T_acc_116:u8 >> 1:u8 ^ T_acc_116:u8)
R_SF:bool = high:bool(T_t_115:u8)
R_ZF:bool = 0:u8 == T_t_115:u8

addr 0x8048648 @asm "je     0x000000000804865d" @tid "0"
  @context "R_EIP" = 0x8048648, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 4, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x8048648:u32
label pc_0x8048648
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x804865d:u32, "nocjmp3"*/

addr 0xb77214f0 @asm "push   %eax" @tid "0"
  @context "R_EAX_32" = 0x65, 4, u32, rd
  @context "R_ESP_32" = 0xbf8e6754, 0, u32, rd
  @context "mem32[0xbf8e6750]" = 0x78, 0, u8, wr
  @context "mem32[0xbf8e6751]" = 0x67, 0, u8, wr
  @context "mem32[0xbf8e6752]" = 0x8e, 0, u8, wr
  @context "mem32[0xbf8e6753]" = 0xbf, 0, u8, wr
assert true & 0xbf8e6752:u32 == 0xbf8e6752:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6752:u32, e_little]:u8 = 0x8e:u8
assert true & 0xbf8e6753:u32 == 0xbf8e6753:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6753:u32, e_little]:u8 = 0xbf:u8
assert true & 0xbf8e6751:u32 == 0xbf8e6751:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6751:u32, e_little]:u8 = 0x67:u8
assert true & 0xbf8e6750:u32 == 0xbf8e6750:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6750:u32, e_little]:u8 = 0x78:u8
R_ESP_32:u32 = 0xbf8e6754:u32
label pc_0xb77214f0
T_t_117:u32 = R_EAX_32:u32
R_ESP_32:u32 = R_ESP_32:u32 - 4:u32
assert true & 0xbf8e6750:u32 == R_ESP_32:u32 + 0:u32 &
       0xbf8e6751:u32 == R_ESP_32:u32 + 1:u32 &
       0xbf8e6752:u32 == R_ESP_32:u32 + 2:u32 &
       0xbf8e6753:u32 == R_ESP_32:u32 + 3:u32
mem32_array:u32!u8 =
  let T_tempmem:u32!u8 := mem32_array:u32!u8 in
  let T_tempval:u32 := T_t_117:u32 in
  let T_tempmem:u32!u8 :=
                           T_tempmem:u32!u8 with [0xbf8e6750:u32,
                           e_little]:u8 = extract:7:0:[T_tempval:u32] in
  let T_tempmem:u32!u8 :=
                           T_tempmem:u32!u8 with [0xbf8e6751:u32,
                           e_little]:u8 = extract:15:8:[T_tempval:u32] in
  let T_tempmem:u32!u8 :=
                           T_tempmem:u32!u8 with [0xbf8e6752:u32,
                           e_little]:u8 = extract:23:16:[T_tempval:u32] in
  let T_tempmem:u32!u8 :=
                           T_tempmem:u32!u8 with [0xbf8e6753:u32,
                           e_little]:u8 = extract:31:24:[T_tempval:u32] in
  T_tempmem:u32!u8

addr 0xb77214f7 @asm "mov    0xc(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x65, 4, u32, wr
  @context "R_ESP_32" = 0xbf8e6748, 0, u32, rd
  @context "mem32[0xbf8e6754]" = 0x38, 0, u8, rd
  @context "mem32[0xbf8e6755]" = 0xe9, 0, u8, rd
  @context "mem32[0xbf8e6756]" = 0x72, 0, u8, rd
  @context "mem32[0xbf8e6757]" = 0xb7, 0, u8, rd
assert true & 0xbf8e6756:u32 == 0xbf8e6756:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6756:u32, e_little]:u8 = 0x72:u8
assert true & 0xbf8e6757:u32 == 0xbf8e6757:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6757:u32, e_little]:u8 = 0xb7:u8
assert true & 0xbf8e6755:u32 == 0xbf8e6755:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6755:u32, e_little]:u8 = 0xe9:u8
assert true & 0xbf8e6754:u32 == 0xbf8e6754:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6754:u32, e_little]:u8 = 0x38:u8
R_ESP_32:u32 = 0xbf8e6748:u32
label pc_0xb77214f7
assert true & 0xbf8e6757:u32 == R_ESP_32:u32 + 0xc:u32 + 3:u32 &
       0xbf8e6756:u32 == R_ESP_32:u32 + 0xc:u32 + 2:u32 &
       0xbf8e6755:u32 == R_ESP_32:u32 + 0xc:u32 + 1:u32 &
       0xbf8e6754:u32 == R_ESP_32:u32 + 0xc:u32 + 0:u32
R_EAX_32:u32 =
  let T_loadnorm:u32!u8 := mem32_array:u32!u8 in
  concat:[
   concat:[
    concat:[T_loadnorm:u32!u8[0xbf8e6757:u32, e_little]:u8][
     T_loadnorm:u32!u8[0xbf8e6756:u32, e_little]:u8]][
    T_loadnorm:u32!u8[0xbf8e6755:u32, e_little]:u8]][
   T_loadnorm:u32!u8[0xbf8e6754:u32, e_little]:u8]

addr 0xb771b0a8 @asm "sub    $0x4c,%esp" @tid "0"
  @context "R_ESP_32" = 0xbf8e6734, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 4, u32, wr
R_DF:bool = false
R_ESP_32:u32 = 0xbf8e6734:u32
label pc_0xb771b0a8
T_t_118:u32 = R_ESP_32:u32
R_ESP_32:u32 = R_ESP_32:u32 - 0x4c:u32
R_CF:bool = T_t_118:u32 < 0x4c:u32
R_OF:bool =
  high:bool((T_t_118:u32 ^ 0x4c:u32) & (T_t_118:u32 ^ R_ESP_32:u32))
R_AF:bool = 0x10:u32 == (0x10:u32 & (R_ESP_32:u32 ^ T_t_118:u32 ^ 0x4c:u32))
R_PF:bool =
  ~low:bool(let T_acc_119:u32 := R_ESP_32:u32 >> 4:u32 ^ R_ESP_32:u32 in
            let T_acc_119:u32 := T_acc_119:u32 >> 2:u32 ^ T_acc_119:u32 in
            T_acc_119:u32 >> 1:u32 ^ T_acc_119:u32)
R_SF:bool = high:bool(R_ESP_32:u32)
R_ZF:bool = 0:u32 == R_ESP_32:u32

addr 0xb7721507 @asm "mov    0x4(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x9d1ab190, 0, u32, wr
  @context "R_ESP_32" = 0xbf8e674c, 0, u32, rd
  @context "mem32[0xbf8e6750]" = 0x65, 4, u8, rd
  @context "mem32[0xbf8e6751]" = 0x0, 4, u8, rd
  @context "mem32[0xbf8e6752]" = 0x0, 4, u8, rd
  @context "mem32[0xbf8e6753]" = 0x0, 4, u8, rd
assert true & 0xbf8e6752:u32 == 0xbf8e6752:u32
assert true & 0xbf8e6753:u32 == 0xbf8e6753:u32
assert true & 0xbf8e6751:u32 == 0xbf8e6751:u32
assert true & 0xbf8e6750:u32 == 0xbf8e6750:u32
R_EAX_32:u32 = 0x9d1ab190:u32
R_ESP_32:u32 = 0xbf8e674c:u32
label pc_0xb7721507
assert true & 0xbf8e6753:u32 == R_ESP_32:u32 + 4:u32 + 3:u32 &
       0xbf8e6752:u32 == R_ESP_32:u32 + 4:u32 + 2:u32 &
       0xbf8e6751:u32 == R_ESP_32:u32 + 4:u32 + 1:u32 &
       0xbf8e6750:u32 == R_ESP_32:u32 + 4:u32 + 0:u32
R_EAX_32:u32 =
  let T_loadnorm_141:u32!u8 := mem32_array:u32!u8 in
  concat:[
   concat:[
    concat:[T_loadnorm_141:u32!u8[0xbf8e6753:u32, e_little]:u8][
     T_loadnorm_141:u32!u8[0xbf8e6752:u32, e_little]:u8]][
    T_loadnorm_141:u32!u8[0xbf8e6751:u32, e_little]:u8]][
   T_loadnorm_141:u32!u8[0xbf8e6750:u32, e_little]:u8]

addr 0x9d1ab192 @asm "push   %esi" @tid "0"
  @context "R_ESI_32" = 0x0, 0, u32, rd
  @context "R_ESP_32" = 0xbf8e6754, 0, u32, rd
  @context "mem32[0xbf8e6750]" = 0x65, 4, u8, wr
  @context "mem32[0xbf8e6751]" = 0x0, 4, u8, wr
  @context "mem32[0xbf8e6752]" = 0x0, 4, u8, wr
  @context "mem32[0xbf8e6753]" = 0x0, 4, u8, wr
assert true & 0xbf8e6752:u32 == 0xbf8e6752:u32
assert true & 0xbf8e6753:u32 == 0xbf8e6753:u32
assert true & 0xbf8e6751:u32 == 0xbf8e6751:u32
assert true & 0xbf8e6750:u32 == 0xbf8e6750:u32
R_ESI_32:u32 = 0:u32
R_ESP_32:u32 = 0xbf8e6754:u32
label pc_0x9d1ab192
T_t_120:u32 = R_ESI_32:u32
R_ESP_32:u32 = R_ESP_32:u32 - 4:u32
assert true & 0xbf8e6750:u32 == R_ESP_32:u32 + 0:u32 &
       0xbf8e6751:u32 == R_ESP_32:u32 + 1:u32 &
       0xbf8e6752:u32 == R_ESP_32:u32 + 2:u32 &
       0xbf8e6753:u32 == R_ESP_32:u32 + 3:u32
mem32_array:u32!u8 =
  let T_tempmem_142:u32!u8 := mem32_array:u32!u8 in
  let T_tempval_143:u32 := T_t_120:u32 in
  let T_tempmem_142:u32!u8 :=
                               T_tempmem_142:u32!u8 with [0xbf8e6750:u32,
                               e_little]:u8 = extract:7:0:[T_tempval_143:u32] in
  let T_tempmem_142:u32!u8 :=
                               T_tempmem_142:u32!u8 with [0xbf8e6751:u32,
                               e_little]:u8 =
                               extract:15:8:[T_tempval_143:u32] in
  let T_tempmem_142:u32!u8 :=
                               T_tempmem_142:u32!u8 with [0xbf8e6752:u32,
                               e_little]:u8 =
                               extract:23:16:[T_tempval_143:u32] in
  let T_tempmem_142:u32!u8 :=
                               T_tempmem_142:u32!u8 with [0xbf8e6753:u32,
                               e_little]:u8 =
                               extract:31:24:[T_tempval_143:u32] in
  T_tempmem_142:u32!u8

addr 0x9d1ab1a2 @asm "mov    0x30(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x65, -1, u32, wr
  @context "R_ESP_32" = 0xbf8e6730, 0, u32, rd
  @context "mem32[0xbf8e6760]" = 0x59, 0, u8, rd
  @context "mem32[0xbf8e6761]" = 0x87, 0, u8, rd
  @context "mem32[0xbf8e6762]" = 0x4, 0, u8, rd
  @context "mem32[0xbf8e6763]" = 0x8, 0, u8, rd
assert true & 0xbf8e6763:u32 == 0xbf8e6763:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6763:u32, e_little]:u8 = 8:u8
assert true & 0xbf8e6762:u32 == 0xbf8e6762:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6762:u32, e_little]:u8 = 4:u8
assert true & 0xbf8e6761:u32 == 0xbf8e6761:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6761:u32, e_little]:u8 = 0x87:u8
assert true & 0xbf8e6760:u32 == 0xbf8e6760:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e6760:u32, e_little]:u8 = 0x59:u8
R_ESP_32:u32 = 0xbf8e6730:u32
label pc_0x9d1ab1a2
assert true & 0xbf8e6763:u32 == R_ESP_32:u32 + 0x30:u32 + 3:u32 &
       0xbf8e6762:u32 == R_ESP_32:u32 + 0x30:u32 + 2:u32 &
       0xbf8e6761:u32 == R_ESP_32:u32 + 0x30:u32 + 1:u32 &
       0xbf8e6760:u32 == R_ESP_32:u32 + 0x30:u32 + 0:u32
R_EAX_32:u32 =
  let T_loadnorm_145:u32!u8 := mem32_array:u32!u8 in
  concat:[
   concat:[
    concat:[T_loadnorm_145:u32!u8[0xbf8e6763:u32, e_little]:u8][
     T_loadnorm_145:u32!u8[0xbf8e6762:u32, e_little]:u8]][
    T_loadnorm_145:u32!u8[0xbf8e6761:u32, e_little]:u8]][
   T_loadnorm_145:u32!u8[0xbf8e6760:u32, e_little]:u8]

addr 0xb771c010 @asm "mov    %eax,-0x3c(%ebp)" @tid "0"
  @context "R_EBP_32" = 0xbf8e67b8, 0, u32, rd
  @context "R_EAX_32" = 0xbf8e67d4, 0, u32, rd
  @context "mem32[0xbf8e677c]" = 0x65, 4, u8, wr
  @context "mem32[0xbf8e677d]" = 0x66, 5, u8, wr
  @context "mem32[0xbf8e677e]" = 0x67, 6, u8, wr
  @context "mem32[0xbf8e677f]" = 0x68, 0, u8, wr
assert true & 0xbf8e677c:u32 == 0xbf8e677c:u32
assert true & 0xbf8e677f:u32 == 0xbf8e677f:u32
mem32_array:u32!u8 =
  mem32_array:u32!u8 with [0xbf8e677f:u32, e_little]:u8 = 0x68:u8
assert true & 0xbf8e677d:u32 == 0xbf8e677d:u32
assert true & 0xbf8e677e:u32 == 0xbf8e677e:u32
R_EBP_32:u32 = 0xbf8e67b8:u32
R_EAX_32:u32 = 0xbf8e67d4:u32
label pc_0xb771c010
assert true & 0xbf8e677c:u32 == R_EBP_32:u32 + 0xffffffc4:u32 + 0:u32 &
       0xbf8e677d:u32 == R_EBP_32:u32 + 0xffffffc4:u32 + 1:u32 &
       0xbf8e677e:u32 == R_EBP_32:u32 + 0xffffffc4:u32 + 2:u32 &
       0xbf8e677f:u32 == R_EBP_32:u32 + 0xffffffc4:u32 + 3:u32
mem32_array:u32!u8 =
  let T_tempmem_146:u32!u8 := mem32_array:u32!u8 in
  let T_tempval_147:u32 := R_EAX_32:u32 in
  let T_tempmem_146:u32!u8 :=
                               T_tempmem_146:u32!u8 with [0xbf8e677c:u32,
                               e_little]:u8 = extract:7:0:[T_tempval_147:u32] in
  let T_tempmem_146:u32!u8 :=
                               T_tempmem_146:u32!u8 with [0xbf8e677d:u32,
                               e_little]:u8 =
                               extract:15:8:[T_tempval_147:u32] in
  let T_tempmem_146:u32!u8 :=
                               T_tempmem_146:u32!u8 with [0xbf8e677e:u32,
                               e_little]:u8 =
                               extract:23:16:[T_tempval_147:u32] in
  let T_tempmem_146:u32!u8 :=
                               T_tempmem_146:u32!u8 with [0xbf8e677f:u32,
                               e_little]:u8 =
                               extract:31:24:[T_tempval_147:u32] in
  T_tempmem_146:u32!u8