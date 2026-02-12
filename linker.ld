OUTPUT_FORMAT("elf64-x86-64")   /* 64-bit ELF */
ENTRY(_start)                   /* entry point */

SECTIONS
{
    . = 0x100000; /* load address = 1 MB */

    .text :
    {
        *(.text._start)        /* your _start function */
        *(.text*)              /* any other text/code */
    }

    .rodata : { *(.rodata*) } /* read-only data */
    .data : { *(.data*) }     /* initialized data */
    .bss : { *(.bss*) }       /* uninitialized data */
}

