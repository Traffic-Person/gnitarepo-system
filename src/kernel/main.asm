org 0x0
bits 16

%define ENDL 0x0D, 0x0A

start:

  ; print msg
  mov si, msg_hello
  call puts

.halt:
  cli
  hlt

puts:
  ;save regs that will be modified
  push si
  push ax

.loop:
  lodsb ; loads next character in al
  or al, al ;verify if next character is null
  jz .done

  mov ah, 0x0e ; call bios interup NOW
  mov bh, 0
  int 0x10

  jmp .loop

.done:
  pop ax
  pop si
  ret

msg_hello: db 'Hello world from kernel!', ENDL, 0
