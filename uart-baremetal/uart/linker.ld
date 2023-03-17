MEMORY
{
    ram : ORIGIN = 0x40300000, LENGTH = 0x10000
}

SECTIONS
{
    .text : 
  {
  *(.text)
  } > ram
}