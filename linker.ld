MEMORY
{
    FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 128K
    RAM (rwx) : ORIGIN = 0X20000000, LENGTH = 20K
}

SECTIONS
{
  .text :
    {
      *(.isr_vector)
      *(.text*)
    } > FLASH

  .data :
    {
      *(.data*)
    } > RAM AT > FLASH

  .bss :
  {
      *(.bss*)
  }  > RAM
}

