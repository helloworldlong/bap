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
assert ~(R_ZF:bool)
