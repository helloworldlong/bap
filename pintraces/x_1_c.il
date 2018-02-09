/*ReadSyscall*/ @context "mem32[0xbf8e6779]" = 0x62, 1, u8, wr
  @context "mem32[0xbf8e677a]" = 0x63, 2, u8, wr
  @context "mem32[0xbf8e677b]" = 0x64, 3, u8, wr
  @context "mem32[0xbf8e677c]" = 0x65, 4, u8, wr
  @context "mem32[0xbf8e677d]" = 0x66, 5, u8, wr
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
label addr_134514157 @asm "movzbl 0x19(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x61, 0, u32, wr
  @context "R_ESP_32" = 0xbf8e6760, 0, u32, rd
  @context "mem32[0xbf8e6779]" = 0x62, 1, u8, rd
assert true & 0xbf8e6779:u32 == 0xbf8e6779:u32
R_EAX_32:u32 = 0x61:u32
R_ESP_32:u32 = 0xbf8e6760:u32
label pc_0x80485ed
assert true & 0xbf8e6779:u32 == R_ESP_32:u32 + 0x19:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbf8e6779:u32, e_little]:u8)
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
            let T_acc_119:u8 := T_acc:u8 >> 2:u8 ^ T_acc:u8 in
            T_acc_119:u8 >> 1:u8 ^ T_acc_119:u8)
R_SF:bool = high:bool(T_t:u8)
R_ZF:bool = 0:u8 == T_t:u8
label addr_134514164 @asm "je     0x0000000008048609" @tid "0"
  @context "R_EIP" = 0x80485f4, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 1, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x80485f4:u32
label pc_0x80485f4
assert R_ZF:bool
/*Removed: cjmp R_ZF:bool, 0x8048609:u32, "nocjmp0"*/
label addr_134514185 @asm "movzbl 0x1a(%esp),%eax" @tid "0"
  @context "R_EAX_32" = 0x62, 1, u32, wr
  @context "R_ESP_32" = 0xbf8e6760, 0, u32, rd
  @context "mem32[0xbf8e677a]" = 0x63, 2, u8, rd
assert true & 0xbf8e677a:u32 == 0xbf8e677a:u32
R_ESP_32:u32 = 0xbf8e6760:u32
label pc_0x8048609
assert true & 0xbf8e677a:u32 == R_ESP_32:u32 + 0x1a:u32
R_EAX_32:u32 = pad:u32(mem32_array:u32!u8[0xbf8e677a:u32, e_little]:u8)
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
            let T_acc_112_122:u8 := T_acc_112:u8 >> 2:u8 ^ T_acc_112:u8 in
            T_acc_112_122:u8 >> 1:u8 ^ T_acc_112_122:u8)
R_SF:bool = high:bool(T_t_111:u8)
R_ZF:bool = 0:u8 == T_t_111:u8
label addr_134514192 @asm "je     0x0000000008048625" @tid "0"
  @context "R_EIP" = 0x8048610, 0, u32, rw
  @context "R_EFLAGS" = 0x246, 2, u32, rd
R_DF:bool = false
R_EIP:u32 = 0x8048610:u32
label pc_0x8048610
assert ~(R_ZF:bool)
