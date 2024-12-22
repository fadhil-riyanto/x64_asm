int randomabc(int a) {
        int h = 9;
        int c = 7;
        return h + c + a;
}

int abb()
{
        int c = 9;
        int d = randomabc(c);

}


/* 

Disassembly of section .text:

0000000000000000 <randomabc>:
   0:   55                      push   %rbp
   1:   48 89 e5                mov    %rsp,%rbp
   4:   89 7d ec                mov    %edi,-0x14(%rbp)
   7:   c7 45 f8 09 00 00 00    movl   $0x9,-0x8(%rbp)
   e:   c7 45 fc 07 00 00 00    movl   $0x7,-0x4(%rbp)
  15:   8b 55 f8                mov    -0x8(%rbp),%edx
  18:   8b 45 fc                mov    -0x4(%rbp),%eax
  1b:   01 c2                   add    %eax,%edx
  1d:   8b 45 ec                mov    -0x14(%rbp),%eax
  20:   01 d0                   add    %edx,%eax
  22:   5d                      pop    %rbp
  23:   c3                      ret

0000000000000024 <abb>:
  24:   55                      push   %rbp             ; push ke stack
  25:   48 89 e5                mov    %rsp,%rbp        ; rbp = rsp
  28:   48 83 ec 10             sub    $0x10,%rsp       ; alokasi 10 bytes
  2c:   c7 45 f8 09 00 00 00    movl   $0x9,-0x8(%rbp)  ; 
  33:   8b 45 f8                mov    -0x8(%rbp),%eax
  36:   89 c7                   mov    %eax,%edi
  38:   e8 00 00 00 00          call   3d <abb+0x19>
  3d:   89 45 fc                mov    %eax,-0x4(%rbp)
  40:   90                      nop
  41:   c9                      leave
  42:   c3                      ret

*/