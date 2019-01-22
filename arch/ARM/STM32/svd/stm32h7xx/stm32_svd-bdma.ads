--  This spec has been automatically generated from stm32_svd.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package STM32_SVD.BDMA is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype BDMA_ISR_GIF1_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TCIF1_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_HTIF1_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TEIF1_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_GIF2_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TCIF2_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_HTIF2_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TEIF2_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_GIF3_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TCIF3_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_HTIF3_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TEIF3_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_GIF4_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TCIF4_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_HTIF4_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TEIF4_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_GIF5_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TCIF5_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_HTIF5_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TEIF5_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_GIF6_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TCIF6_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_HTIF6_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TEIF6_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_GIF7_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TCIF7_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_HTIF7_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TEIF7_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_GIF8_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TCIF8_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_HTIF8_Field is STM32_SVD.Bit;
   subtype BDMA_ISR_TEIF8_Field is STM32_SVD.Bit;

   --  DMA interrupt status register
   type BDMA_ISR_Register is record
      --  Read-only. Channel x global interrupt flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      GIF1  : BDMA_ISR_GIF1_Field;
      --  Read-only. Channel x transfer complete flag (x = 1..8) This bit is
      --  set by hardware. It is cleared by software writing 1 to the
      --  corresponding bit in the DMA_IFCR register.
      TCIF1 : BDMA_ISR_TCIF1_Field;
      --  Read-only. Channel x half transfer flag (x = 1..8) This bit is set by
      --  hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      HTIF1 : BDMA_ISR_HTIF1_Field;
      --  Read-only. Channel x transfer error flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      TEIF1 : BDMA_ISR_TEIF1_Field;
      --  Read-only. Channel x global interrupt flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      GIF2  : BDMA_ISR_GIF2_Field;
      --  Read-only. Channel x transfer complete flag (x = 1..8) This bit is
      --  set by hardware. It is cleared by software writing 1 to the
      --  corresponding bit in the DMA_IFCR register.
      TCIF2 : BDMA_ISR_TCIF2_Field;
      --  Read-only. Channel x half transfer flag (x = 1..8) This bit is set by
      --  hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      HTIF2 : BDMA_ISR_HTIF2_Field;
      --  Read-only. Channel x transfer error flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      TEIF2 : BDMA_ISR_TEIF2_Field;
      --  Read-only. Channel x global interrupt flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      GIF3  : BDMA_ISR_GIF3_Field;
      --  Read-only. Channel x transfer complete flag (x = 1..8) This bit is
      --  set by hardware. It is cleared by software writing 1 to the
      --  corresponding bit in the DMA_IFCR register.
      TCIF3 : BDMA_ISR_TCIF3_Field;
      --  Read-only. Channel x half transfer flag (x = 1..8) This bit is set by
      --  hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      HTIF3 : BDMA_ISR_HTIF3_Field;
      --  Read-only. Channel x transfer error flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      TEIF3 : BDMA_ISR_TEIF3_Field;
      --  Read-only. Channel x global interrupt flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      GIF4  : BDMA_ISR_GIF4_Field;
      --  Read-only. Channel x transfer complete flag (x = 1..8) This bit is
      --  set by hardware. It is cleared by software writing 1 to the
      --  corresponding bit in the DMA_IFCR register.
      TCIF4 : BDMA_ISR_TCIF4_Field;
      --  Read-only. Channel x half transfer flag (x = 1..8) This bit is set by
      --  hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      HTIF4 : BDMA_ISR_HTIF4_Field;
      --  Read-only. Channel x transfer error flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      TEIF4 : BDMA_ISR_TEIF4_Field;
      --  Read-only. Channel x global interrupt flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      GIF5  : BDMA_ISR_GIF5_Field;
      --  Read-only. Channel x transfer complete flag (x = 1..8) This bit is
      --  set by hardware. It is cleared by software writing 1 to the
      --  corresponding bit in the DMA_IFCR register.
      TCIF5 : BDMA_ISR_TCIF5_Field;
      --  Read-only. Channel x half transfer flag (x = 1..8) This bit is set by
      --  hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      HTIF5 : BDMA_ISR_HTIF5_Field;
      --  Read-only. Channel x transfer error flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      TEIF5 : BDMA_ISR_TEIF5_Field;
      --  Read-only. Channel x global interrupt flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      GIF6  : BDMA_ISR_GIF6_Field;
      --  Read-only. Channel x transfer complete flag (x = 1..8) This bit is
      --  set by hardware. It is cleared by software writing 1 to the
      --  corresponding bit in the DMA_IFCR register.
      TCIF6 : BDMA_ISR_TCIF6_Field;
      --  Read-only. Channel x half transfer flag (x = 1..8) This bit is set by
      --  hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      HTIF6 : BDMA_ISR_HTIF6_Field;
      --  Read-only. Channel x transfer error flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      TEIF6 : BDMA_ISR_TEIF6_Field;
      --  Read-only. Channel x global interrupt flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      GIF7  : BDMA_ISR_GIF7_Field;
      --  Read-only. Channel x transfer complete flag (x = 1..8) This bit is
      --  set by hardware. It is cleared by software writing 1 to the
      --  corresponding bit in the DMA_IFCR register.
      TCIF7 : BDMA_ISR_TCIF7_Field;
      --  Read-only. Channel x half transfer flag (x = 1..8) This bit is set by
      --  hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      HTIF7 : BDMA_ISR_HTIF7_Field;
      --  Read-only. Channel x transfer error flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      TEIF7 : BDMA_ISR_TEIF7_Field;
      --  Read-only. Channel x global interrupt flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      GIF8  : BDMA_ISR_GIF8_Field;
      --  Read-only. Channel x transfer complete flag (x = 1..8) This bit is
      --  set by hardware. It is cleared by software writing 1 to the
      --  corresponding bit in the DMA_IFCR register.
      TCIF8 : BDMA_ISR_TCIF8_Field;
      --  Read-only. Channel x half transfer flag (x = 1..8) This bit is set by
      --  hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      HTIF8 : BDMA_ISR_HTIF8_Field;
      --  Read-only. Channel x transfer error flag (x = 1..8) This bit is set
      --  by hardware. It is cleared by software writing 1 to the corresponding
      --  bit in the DMA_IFCR register.
      TEIF8 : BDMA_ISR_TEIF8_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDMA_ISR_Register use record
      GIF1  at 0 range 0 .. 0;
      TCIF1 at 0 range 1 .. 1;
      HTIF1 at 0 range 2 .. 2;
      TEIF1 at 0 range 3 .. 3;
      GIF2  at 0 range 4 .. 4;
      TCIF2 at 0 range 5 .. 5;
      HTIF2 at 0 range 6 .. 6;
      TEIF2 at 0 range 7 .. 7;
      GIF3  at 0 range 8 .. 8;
      TCIF3 at 0 range 9 .. 9;
      HTIF3 at 0 range 10 .. 10;
      TEIF3 at 0 range 11 .. 11;
      GIF4  at 0 range 12 .. 12;
      TCIF4 at 0 range 13 .. 13;
      HTIF4 at 0 range 14 .. 14;
      TEIF4 at 0 range 15 .. 15;
      GIF5  at 0 range 16 .. 16;
      TCIF5 at 0 range 17 .. 17;
      HTIF5 at 0 range 18 .. 18;
      TEIF5 at 0 range 19 .. 19;
      GIF6  at 0 range 20 .. 20;
      TCIF6 at 0 range 21 .. 21;
      HTIF6 at 0 range 22 .. 22;
      TEIF6 at 0 range 23 .. 23;
      GIF7  at 0 range 24 .. 24;
      TCIF7 at 0 range 25 .. 25;
      HTIF7 at 0 range 26 .. 26;
      TEIF7 at 0 range 27 .. 27;
      GIF8  at 0 range 28 .. 28;
      TCIF8 at 0 range 29 .. 29;
      HTIF8 at 0 range 30 .. 30;
      TEIF8 at 0 range 31 .. 31;
   end record;

   subtype BDMA_IFCR_CGIF1_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTCIF1_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CHTIF1_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTEIF1_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CGIF2_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTCIF2_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CHTIF2_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTEIF2_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CGIF3_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTCIF3_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CHTIF3_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTEIF3_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CGIF4_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTCIF4_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CHTIF4_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTEIF4_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CGIF5_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTCIF5_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CHTIF5_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTEIF5_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CGIF6_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTCIF6_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CHTIF6_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTEIF6_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CGIF7_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTCIF7_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CHTIF7_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTEIF7_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CGIF8_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTCIF8_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CHTIF8_Field is STM32_SVD.Bit;
   subtype BDMA_IFCR_CTEIF8_Field is STM32_SVD.Bit;

   --  DMA interrupt flag clear register
   type BDMA_IFCR_Register is record
      --  Write-only. Channel x global interrupt clear This bit is set and
      --  cleared by software.
      CGIF1  : BDMA_IFCR_CGIF1_Field := 16#0#;
      --  Write-only. Channel x transfer complete clear This bit is set and
      --  cleared by software.
      CTCIF1 : BDMA_IFCR_CTCIF1_Field := 16#0#;
      --  Write-only. Channel x half transfer clear This bit is set and cleared
      --  by software.
      CHTIF1 : BDMA_IFCR_CHTIF1_Field := 16#0#;
      --  Write-only. Channel x transfer error clear This bit is set and
      --  cleared by software.
      CTEIF1 : BDMA_IFCR_CTEIF1_Field := 16#0#;
      --  Write-only. Channel x global interrupt clear This bit is set and
      --  cleared by software.
      CGIF2  : BDMA_IFCR_CGIF2_Field := 16#0#;
      --  Write-only. Channel x transfer complete clear This bit is set and
      --  cleared by software.
      CTCIF2 : BDMA_IFCR_CTCIF2_Field := 16#0#;
      --  Write-only. Channel x half transfer clear This bit is set and cleared
      --  by software.
      CHTIF2 : BDMA_IFCR_CHTIF2_Field := 16#0#;
      --  Write-only. Channel x transfer error clear This bit is set and
      --  cleared by software.
      CTEIF2 : BDMA_IFCR_CTEIF2_Field := 16#0#;
      --  Write-only. Channel x global interrupt clear This bit is set and
      --  cleared by software.
      CGIF3  : BDMA_IFCR_CGIF3_Field := 16#0#;
      --  Write-only. Channel x transfer complete clear This bit is set and
      --  cleared by software.
      CTCIF3 : BDMA_IFCR_CTCIF3_Field := 16#0#;
      --  Write-only. Channel x half transfer clear This bit is set and cleared
      --  by software.
      CHTIF3 : BDMA_IFCR_CHTIF3_Field := 16#0#;
      --  Write-only. Channel x transfer error clear This bit is set and
      --  cleared by software.
      CTEIF3 : BDMA_IFCR_CTEIF3_Field := 16#0#;
      --  Write-only. Channel x global interrupt clear This bit is set and
      --  cleared by software.
      CGIF4  : BDMA_IFCR_CGIF4_Field := 16#0#;
      --  Write-only. Channel x transfer complete clear This bit is set and
      --  cleared by software.
      CTCIF4 : BDMA_IFCR_CTCIF4_Field := 16#0#;
      --  Write-only. Channel x half transfer clear This bit is set and cleared
      --  by software.
      CHTIF4 : BDMA_IFCR_CHTIF4_Field := 16#0#;
      --  Write-only. Channel x transfer error clear This bit is set and
      --  cleared by software.
      CTEIF4 : BDMA_IFCR_CTEIF4_Field := 16#0#;
      --  Write-only. Channel x global interrupt clear This bit is set and
      --  cleared by software.
      CGIF5  : BDMA_IFCR_CGIF5_Field := 16#0#;
      --  Write-only. Channel x transfer complete clear This bit is set and
      --  cleared by software.
      CTCIF5 : BDMA_IFCR_CTCIF5_Field := 16#0#;
      --  Write-only. Channel x half transfer clear This bit is set and cleared
      --  by software.
      CHTIF5 : BDMA_IFCR_CHTIF5_Field := 16#0#;
      --  Write-only. Channel x transfer error clear This bit is set and
      --  cleared by software.
      CTEIF5 : BDMA_IFCR_CTEIF5_Field := 16#0#;
      --  Write-only. Channel x global interrupt clear This bit is set and
      --  cleared by software.
      CGIF6  : BDMA_IFCR_CGIF6_Field := 16#0#;
      --  Write-only. Channel x transfer complete clear This bit is set and
      --  cleared by software.
      CTCIF6 : BDMA_IFCR_CTCIF6_Field := 16#0#;
      --  Write-only. Channel x half transfer clear This bit is set and cleared
      --  by software.
      CHTIF6 : BDMA_IFCR_CHTIF6_Field := 16#0#;
      --  Write-only. Channel x transfer error clear This bit is set and
      --  cleared by software.
      CTEIF6 : BDMA_IFCR_CTEIF6_Field := 16#0#;
      --  Write-only. Channel x global interrupt clear This bit is set and
      --  cleared by software.
      CGIF7  : BDMA_IFCR_CGIF7_Field := 16#0#;
      --  Write-only. Channel x transfer complete clear This bit is set and
      --  cleared by software.
      CTCIF7 : BDMA_IFCR_CTCIF7_Field := 16#0#;
      --  Write-only. Channel x half transfer clear This bit is set and cleared
      --  by software.
      CHTIF7 : BDMA_IFCR_CHTIF7_Field := 16#0#;
      --  Write-only. Channel x transfer error clear This bit is set and
      --  cleared by software.
      CTEIF7 : BDMA_IFCR_CTEIF7_Field := 16#0#;
      --  Write-only. Channel x global interrupt clear This bit is set and
      --  cleared by software.
      CGIF8  : BDMA_IFCR_CGIF8_Field := 16#0#;
      --  Write-only. Channel x transfer complete clear This bit is set and
      --  cleared by software.
      CTCIF8 : BDMA_IFCR_CTCIF8_Field := 16#0#;
      --  Write-only. Channel x half transfer clear This bit is set and cleared
      --  by software.
      CHTIF8 : BDMA_IFCR_CHTIF8_Field := 16#0#;
      --  Write-only. Channel x transfer error clear This bit is set and
      --  cleared by software.
      CTEIF8 : BDMA_IFCR_CTEIF8_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDMA_IFCR_Register use record
      CGIF1  at 0 range 0 .. 0;
      CTCIF1 at 0 range 1 .. 1;
      CHTIF1 at 0 range 2 .. 2;
      CTEIF1 at 0 range 3 .. 3;
      CGIF2  at 0 range 4 .. 4;
      CTCIF2 at 0 range 5 .. 5;
      CHTIF2 at 0 range 6 .. 6;
      CTEIF2 at 0 range 7 .. 7;
      CGIF3  at 0 range 8 .. 8;
      CTCIF3 at 0 range 9 .. 9;
      CHTIF3 at 0 range 10 .. 10;
      CTEIF3 at 0 range 11 .. 11;
      CGIF4  at 0 range 12 .. 12;
      CTCIF4 at 0 range 13 .. 13;
      CHTIF4 at 0 range 14 .. 14;
      CTEIF4 at 0 range 15 .. 15;
      CGIF5  at 0 range 16 .. 16;
      CTCIF5 at 0 range 17 .. 17;
      CHTIF5 at 0 range 18 .. 18;
      CTEIF5 at 0 range 19 .. 19;
      CGIF6  at 0 range 20 .. 20;
      CTCIF6 at 0 range 21 .. 21;
      CHTIF6 at 0 range 22 .. 22;
      CTEIF6 at 0 range 23 .. 23;
      CGIF7  at 0 range 24 .. 24;
      CTCIF7 at 0 range 25 .. 25;
      CHTIF7 at 0 range 26 .. 26;
      CTEIF7 at 0 range 27 .. 27;
      CGIF8  at 0 range 28 .. 28;
      CTCIF8 at 0 range 29 .. 29;
      CHTIF8 at 0 range 30 .. 30;
      CTEIF8 at 0 range 31 .. 31;
   end record;

   subtype BDMA_CCR_EN_Field is STM32_SVD.Bit;
   subtype BDMA_CCR_TCIE_Field is STM32_SVD.Bit;
   subtype BDMA_CCR_HTIE_Field is STM32_SVD.Bit;
   subtype BDMA_CCR_TEIE_Field is STM32_SVD.Bit;
   subtype BDMA_CCR_DIR_Field is STM32_SVD.Bit;
   subtype BDMA_CCR_CIRC_Field is STM32_SVD.Bit;
   subtype BDMA_CCR_PINC_Field is STM32_SVD.Bit;
   subtype BDMA_CCR_MINC_Field is STM32_SVD.Bit;
   subtype BDMA_CCR_PSIZE_Field is STM32_SVD.UInt2;
   subtype BDMA_CCR_MSIZE_Field is STM32_SVD.UInt2;
   subtype BDMA_CCR_PL_Field is STM32_SVD.UInt2;
   subtype BDMA_CCR_MEM2MEM_Field is STM32_SVD.Bit;

   --  DMA channel x configuration register
   type BDMA_CCR_Register is record
      --  Channel enable This bit is set and cleared by software.
      EN             : BDMA_CCR_EN_Field := 16#0#;
      --  Transfer complete interrupt enable This bit is set and cleared by
      --  software.
      TCIE           : BDMA_CCR_TCIE_Field := 16#0#;
      --  Half transfer interrupt enable This bit is set and cleared by
      --  software.
      HTIE           : BDMA_CCR_HTIE_Field := 16#0#;
      --  Transfer error interrupt enable This bit is set and cleared by
      --  software.
      TEIE           : BDMA_CCR_TEIE_Field := 16#0#;
      --  Data transfer direction This bit is set and cleared by software.
      DIR            : BDMA_CCR_DIR_Field := 16#0#;
      --  Circular mode This bit is set and cleared by software.
      CIRC           : BDMA_CCR_CIRC_Field := 16#0#;
      --  Peripheral increment mode This bit is set and cleared by software.
      PINC           : BDMA_CCR_PINC_Field := 16#0#;
      --  Memory increment mode This bit is set and cleared by software.
      MINC           : BDMA_CCR_MINC_Field := 16#0#;
      --  Peripheral size These bits are set and cleared by software.
      PSIZE          : BDMA_CCR_PSIZE_Field := 16#0#;
      --  Memory size These bits are set and cleared by software.
      MSIZE          : BDMA_CCR_MSIZE_Field := 16#0#;
      --  Channel priority level These bits are set and cleared by software.
      PL             : BDMA_CCR_PL_Field := 16#0#;
      --  Memory to memory mode This bit is set and cleared by software.
      MEM2MEM        : BDMA_CCR_MEM2MEM_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : STM32_SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDMA_CCR_Register use record
      EN             at 0 range 0 .. 0;
      TCIE           at 0 range 1 .. 1;
      HTIE           at 0 range 2 .. 2;
      TEIE           at 0 range 3 .. 3;
      DIR            at 0 range 4 .. 4;
      CIRC           at 0 range 5 .. 5;
      PINC           at 0 range 6 .. 6;
      MINC           at 0 range 7 .. 7;
      PSIZE          at 0 range 8 .. 9;
      MSIZE          at 0 range 10 .. 11;
      PL             at 0 range 12 .. 13;
      MEM2MEM        at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype BDMA_CNDTR_NDT_Field is STM32_SVD.UInt16;

   --  DMA channel x number of data register
   type BDMA_CNDTR_Register is record
      --  Number of data to transfer Number of data to be transferred (0 up to
      --  65535). This register can only be written when the channel is
      --  disabled. Once the channel is enabled, this register is read-only,
      --  indicating the remaining bytes to be transmitted. This register
      --  decrements after each DMA transfer. Once the transfer is completed,
      --  this register can either stay at zero or be reloaded automatically by
      --  the value previously programmed if the channel is configured in
      --  auto-reload mode. If this register is zero, no transaction can be
      --  served whether the channel is enabled or not.
      NDT            : BDMA_CNDTR_NDT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for BDMA_CNDTR_Register use record
      NDT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  BDMA
   type BDMA_Peripheral is record
      --  DMA interrupt status register
      BDMA_ISR    : aliased BDMA_ISR_Register;
      --  DMA interrupt flag clear register
      BDMA_IFCR   : aliased BDMA_IFCR_Register;
      --  DMA channel x configuration register
      BDMA_CCR1   : aliased BDMA_CCR_Register;
      --  DMA channel x number of data register
      BDMA_CNDTR1 : aliased BDMA_CNDTR_Register;
      --  This register must not be written when the channel is enabled.
      BDMA_CPAR1  : aliased STM32_SVD.UInt32;
      --  This register must not be written when the channel is enabled.
      BDMA_CMAR1  : aliased STM32_SVD.UInt32;
      --  DMA channel x configuration register
      BDMA_CCR2   : aliased BDMA_CCR_Register;
      --  DMA channel x number of data register
      BDMA_CNDTR2 : aliased BDMA_CNDTR_Register;
      --  This register must not be written when the channel is enabled.
      BDMA_CPAR2  : aliased STM32_SVD.UInt32;
      --  This register must not be written when the channel is enabled.
      BDMA_CMAR2  : aliased STM32_SVD.UInt32;
      --  DMA channel x configuration register
      BDMA_CCR3   : aliased BDMA_CCR_Register;
      --  DMA channel x number of data register
      BDMA_CNDTR3 : aliased BDMA_CNDTR_Register;
      --  This register must not be written when the channel is enabled.
      BDMA_CPAR3  : aliased STM32_SVD.UInt32;
      --  This register must not be written when the channel is enabled.
      BDMA_CMAR3  : aliased STM32_SVD.UInt32;
      --  DMA channel x configuration register
      BDMA_CCR4   : aliased BDMA_CCR_Register;
      --  DMA channel x number of data register
      BDMA_CNDTR4 : aliased BDMA_CNDTR_Register;
      --  This register must not be written when the channel is enabled.
      BDMA_CPAR4  : aliased STM32_SVD.UInt32;
      --  This register must not be written when the channel is enabled.
      BDMA_CMAR4  : aliased STM32_SVD.UInt32;
      --  DMA channel x configuration register
      BDMA_CCR5   : aliased BDMA_CCR_Register;
      --  DMA channel x number of data register
      BDMA_CNDTR5 : aliased BDMA_CNDTR_Register;
      --  This register must not be written when the channel is enabled.
      BDMA_CPAR5  : aliased STM32_SVD.UInt32;
      --  This register must not be written when the channel is enabled.
      BDMA_CMAR5  : aliased STM32_SVD.UInt32;
      --  DMA channel x configuration register
      BDMA_CCR6   : aliased BDMA_CCR_Register;
      --  DMA channel x number of data register
      BDMA_CNDTR6 : aliased BDMA_CNDTR_Register;
      --  This register must not be written when the channel is enabled.
      BDMA_CPAR6  : aliased STM32_SVD.UInt32;
      --  This register must not be written when the channel is enabled.
      BDMA_CMAR6  : aliased STM32_SVD.UInt32;
      --  DMA channel x configuration register
      BDMA_CCR7   : aliased BDMA_CCR_Register;
      --  DMA channel x number of data register
      BDMA_CNDTR7 : aliased BDMA_CNDTR_Register;
      --  This register must not be written when the channel is enabled.
      BDMA_CPAR7  : aliased STM32_SVD.UInt32;
      --  This register must not be written when the channel is enabled.
      BDMA_CMAR7  : aliased STM32_SVD.UInt32;
      --  DMA channel x configuration register
      BDMA_CCR8   : aliased BDMA_CCR_Register;
      --  DMA channel x number of data register
      BDMA_CNDTR8 : aliased BDMA_CNDTR_Register;
      --  This register must not be written when the channel is enabled.
      BDMA_CPAR8  : aliased STM32_SVD.UInt32;
      --  This register must not be written when the channel is enabled.
      BDMA_CMAR8  : aliased STM32_SVD.UInt32;
   end record
     with Volatile;

   for BDMA_Peripheral use record
      BDMA_ISR    at 16#0# range 0 .. 31;
      BDMA_IFCR   at 16#4# range 0 .. 31;
      BDMA_CCR1   at 16#8# range 0 .. 31;
      BDMA_CNDTR1 at 16#C# range 0 .. 31;
      BDMA_CPAR1  at 16#10# range 0 .. 31;
      BDMA_CMAR1  at 16#14# range 0 .. 31;
      BDMA_CCR2   at 16#1C# range 0 .. 31;
      BDMA_CNDTR2 at 16#20# range 0 .. 31;
      BDMA_CPAR2  at 16#24# range 0 .. 31;
      BDMA_CMAR2  at 16#28# range 0 .. 31;
      BDMA_CCR3   at 16#30# range 0 .. 31;
      BDMA_CNDTR3 at 16#34# range 0 .. 31;
      BDMA_CPAR3  at 16#38# range 0 .. 31;
      BDMA_CMAR3  at 16#3C# range 0 .. 31;
      BDMA_CCR4   at 16#44# range 0 .. 31;
      BDMA_CNDTR4 at 16#48# range 0 .. 31;
      BDMA_CPAR4  at 16#4C# range 0 .. 31;
      BDMA_CMAR4  at 16#50# range 0 .. 31;
      BDMA_CCR5   at 16#58# range 0 .. 31;
      BDMA_CNDTR5 at 16#5C# range 0 .. 31;
      BDMA_CPAR5  at 16#60# range 0 .. 31;
      BDMA_CMAR5  at 16#64# range 0 .. 31;
      BDMA_CCR6   at 16#6C# range 0 .. 31;
      BDMA_CNDTR6 at 16#70# range 0 .. 31;
      BDMA_CPAR6  at 16#74# range 0 .. 31;
      BDMA_CMAR6  at 16#78# range 0 .. 31;
      BDMA_CCR7   at 16#80# range 0 .. 31;
      BDMA_CNDTR7 at 16#84# range 0 .. 31;
      BDMA_CPAR7  at 16#88# range 0 .. 31;
      BDMA_CMAR7  at 16#8C# range 0 .. 31;
      BDMA_CCR8   at 16#94# range 0 .. 31;
      BDMA_CNDTR8 at 16#98# range 0 .. 31;
      BDMA_CPAR8  at 16#9C# range 0 .. 31;
      BDMA_CMAR8  at 16#A0# range 0 .. 31;
   end record;

   --  BDMA
   BDMA_Periph : aliased BDMA_Peripheral
     with Import, Address => System'To_Address (16#58025400#);

end STM32_SVD.BDMA;
