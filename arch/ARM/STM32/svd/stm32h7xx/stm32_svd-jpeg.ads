--  This spec has been automatically generated from stm32_svd.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package STM32_SVD.JPEG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype JPEG_CONFR0_START_Field is STM32_SVD.Bit;

   --  JPEG codec control register
   type JPEG_CONFR0_Register is record
      --  Write-only. Start This bit start or stop the encoding or decoding
      --  process. Read this register always return 0.
      START         : JPEG_CONFR0_START_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : STM32_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CONFR0_Register use record
      START         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype JPEG_CONFR1_NF_Field is STM32_SVD.UInt2;
   subtype JPEG_CONFR1_DE_Field is STM32_SVD.Bit;
   subtype JPEG_CONFR1_COLORSPACE_Field is STM32_SVD.UInt2;
   subtype JPEG_CONFR1_NS_Field is STM32_SVD.UInt2;
   subtype JPEG_CONFR1_HDR_Field is STM32_SVD.Bit;
   subtype JPEG_CONFR1_YSIZE_Field is STM32_SVD.UInt16;

   --  JPEG codec configuration register 1
   type JPEG_CONFR1_Register is record
      --  Number of color components This field defines the number of color
      --  components minus 1.
      NF            : JPEG_CONFR1_NF_Field := 16#0#;
      --  unspecified
      Reserved_2_2  : STM32_SVD.Bit := 16#0#;
      --  Decoding Enable This bit selects the coding or decoding process
      DE            : JPEG_CONFR1_DE_Field := 16#0#;
      --  Color Space This filed defines the number of quantization tables
      --  minus 1 to insert in the output stream.
      COLORSPACE    : JPEG_CONFR1_COLORSPACE_Field := 16#0#;
      --  Number of components for Scan This field defines the number of
      --  components minus 1 for scan header marker segment.
      NS            : JPEG_CONFR1_NS_Field := 16#0#;
      --  Header Processing This bit enable the header processing
      --  (generation/parsing).
      HDR           : JPEG_CONFR1_HDR_Field := 16#0#;
      --  unspecified
      Reserved_9_15 : STM32_SVD.UInt7 := 16#0#;
      --  Y Size This field defines the number of lines in source image.
      YSIZE         : JPEG_CONFR1_YSIZE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CONFR1_Register use record
      NF            at 0 range 0 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      DE            at 0 range 3 .. 3;
      COLORSPACE    at 0 range 4 .. 5;
      NS            at 0 range 6 .. 7;
      HDR           at 0 range 8 .. 8;
      Reserved_9_15 at 0 range 9 .. 15;
      YSIZE         at 0 range 16 .. 31;
   end record;

   subtype JPEG_CONFR2_NMCU_Field is STM32_SVD.UInt26;

   --  JPEG codec configuration register 2
   type JPEG_CONFR2_Register is record
      --  Number of MCU For encoding: this field defines the number of MCU
      --  units minus 1 to encode. For decoding: this field indicates the
      --  number of complete MCU units minus 1 to be decoded (this field is
      --  updated after the JPEG header parsing). If the decoded image size has
      --  not a X or Y size multiple of 8 or 16 (depending on the sub-sampling
      --  process), the resulting incomplete or empty MCU must be added to this
      --  value to get the total number of MCU generated.
      NMCU           : JPEG_CONFR2_NMCU_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : STM32_SVD.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CONFR2_Register use record
      NMCU           at 0 range 0 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype JPEG_CONFR3_XSIZE_Field is STM32_SVD.UInt16;

   --  JPEG codec configuration register 3
   type JPEG_CONFR3_Register is record
      --  unspecified
      Reserved_0_15 : STM32_SVD.UInt16 := 16#0#;
      --  X size This field defines the number of pixels per line.
      XSIZE         : JPEG_CONFR3_XSIZE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CONFR3_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      XSIZE         at 0 range 16 .. 31;
   end record;

   subtype JPEG_CONFRN_HD_Field is STM32_SVD.Bit;
   subtype JPEG_CONFRN_HA_Field is STM32_SVD.Bit;
   subtype JPEG_CONFRN_QT_Field is STM32_SVD.UInt2;
   subtype JPEG_CONFRN_NB_Field is STM32_SVD.UInt4;
   subtype JPEG_CONFRN_VSF_Field is STM32_SVD.UInt4;
   subtype JPEG_CONFRN_HSF_Field is STM32_SVD.UInt4;

   --  JPEG codec configuration register 4-7
   type JPEG_CONFRN_Register is record
      --  Huffman DC Selects the Huffman table for encoding the DC
      --  coefficients.
      HD             : JPEG_CONFRN_HD_Field := 16#0#;
      --  Huffman AC Selects the Huffman table for encoding the AC
      --  coefficients.
      HA             : JPEG_CONFRN_HA_Field := 16#0#;
      --  Quantization Table Selects quantization table associated with a color
      --  component.
      QT             : JPEG_CONFRN_QT_Field := 16#0#;
      --  Number of Block Number of data units minus 1 that belong to a
      --  particular color in the MCU.
      NB             : JPEG_CONFRN_NB_Field := 16#0#;
      --  Vertical Sampling Factor Vertical sampling factor for component i.
      VSF            : JPEG_CONFRN_VSF_Field := 16#0#;
      --  Horizontal Sampling Factor Horizontal sampling factor for component
      --  i.
      HSF            : JPEG_CONFRN_HSF_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CONFRN_Register use record
      HD             at 0 range 0 .. 0;
      HA             at 0 range 1 .. 1;
      QT             at 0 range 2 .. 3;
      NB             at 0 range 4 .. 7;
      VSF            at 0 range 8 .. 11;
      HSF            at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype JPEG_CR_JCEN_Field is STM32_SVD.Bit;
   subtype JPEG_CR_IFTIE_Field is STM32_SVD.Bit;
   subtype JPEG_CR_IFNFIE_Field is STM32_SVD.Bit;
   subtype JPEG_CR_OFTIE_Field is STM32_SVD.Bit;
   subtype JPEG_CR_OFNEIE_Field is STM32_SVD.Bit;
   subtype JPEG_CR_EOCIE_Field is STM32_SVD.Bit;
   subtype JPEG_CR_HPDIE_Field is STM32_SVD.Bit;
   subtype JPEG_CR_IDMAEN_Field is STM32_SVD.Bit;
   subtype JPEG_CR_ODMAEN_Field is STM32_SVD.Bit;
   subtype JPEG_CR_IFF_Field is STM32_SVD.Bit;
   subtype JPEG_CR_OFF_Field is STM32_SVD.Bit;

   --  JPEG control register
   type JPEG_CR_Register is record
      --  JPEG Core Enable Enable the JPEG codec Core.
      JCEN           : JPEG_CR_JCEN_Field := 16#0#;
      --  Input FIFO Threshold Interrupt Enable This bit enables the interrupt
      --  generation when input FIFO reach the threshold.
      IFTIE          : JPEG_CR_IFTIE_Field := 16#0#;
      --  Input FIFO Not Full Interrupt Enable This bit enables the interrupt
      --  generation when input FIFO is not empty.
      IFNFIE         : JPEG_CR_IFNFIE_Field := 16#0#;
      --  Output FIFO Threshold Interrupt Enable This bit enables the interrupt
      --  generation when output FIFO reach the threshold.
      OFTIE          : JPEG_CR_OFTIE_Field := 16#0#;
      --  Output FIFO Not Empty Interrupt Enable This bit enables the interrupt
      --  generation when output FIFO is not empty.
      OFNEIE         : JPEG_CR_OFNEIE_Field := 16#0#;
      --  End of Conversion Interrupt Enable This bit enables the interrupt
      --  generation on the end of conversion.
      EOCIE          : JPEG_CR_EOCIE_Field := 16#0#;
      --  Header Parsing Done Interrupt Enable This bit enables the interrupt
      --  generation on the Header Parsing Operation.
      HPDIE          : JPEG_CR_HPDIE_Field := 16#0#;
      --  unspecified
      Reserved_7_10  : STM32_SVD.UInt4 := 16#0#;
      --  Input DMA Enable Enable the DMA request generation for the input
      --  FIFO.
      IDMAEN         : JPEG_CR_IDMAEN_Field := 16#0#;
      --  Output DMA Enable Enable the DMA request generation for the output
      --  FIFO.
      ODMAEN         : JPEG_CR_ODMAEN_Field := 16#0#;
      --  Input FIFO Flush This bit flush the input FIFO. This bit is always
      --  read as 0.
      IFF            : JPEG_CR_IFF_Field := 16#0#;
      --  Output FIFO Flush This bit flush the output FIFO. This bit is always
      --  read as 0.
      OFF            : JPEG_CR_OFF_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : STM32_SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CR_Register use record
      JCEN           at 0 range 0 .. 0;
      IFTIE          at 0 range 1 .. 1;
      IFNFIE         at 0 range 2 .. 2;
      OFTIE          at 0 range 3 .. 3;
      OFNEIE         at 0 range 4 .. 4;
      EOCIE          at 0 range 5 .. 5;
      HPDIE          at 0 range 6 .. 6;
      Reserved_7_10  at 0 range 7 .. 10;
      IDMAEN         at 0 range 11 .. 11;
      ODMAEN         at 0 range 12 .. 12;
      IFF            at 0 range 13 .. 13;
      OFF            at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype JPEG_SR_IFTF_Field is STM32_SVD.Bit;
   subtype JPEG_SR_IFNFF_Field is STM32_SVD.Bit;
   subtype JPEG_SR_OFTF_Field is STM32_SVD.Bit;
   subtype JPEG_SR_OFNEF_Field is STM32_SVD.Bit;
   subtype JPEG_SR_EOCF_Field is STM32_SVD.Bit;
   subtype JPEG_SR_HPDF_Field is STM32_SVD.Bit;
   subtype JPEG_SR_COF_Field is STM32_SVD.Bit;

   --  JPEG status register
   type JPEG_SR_Register is record
      --  unspecified
      Reserved_0_0  : STM32_SVD.Bit;
      --  Read-only. Input FIFO Threshold Flag This bit is set when the input
      --  FIFO is not full and is bellow its threshold.
      IFTF          : JPEG_SR_IFTF_Field;
      --  Read-only. Input FIFO Not Full Flag This bit is set when the input
      --  FIFO is not full (a data can be written).
      IFNFF         : JPEG_SR_IFNFF_Field;
      --  Read-only. Output FIFO Threshold Flag This bit is set when the output
      --  FIFO is not empty and has reach its threshold.
      OFTF          : JPEG_SR_OFTF_Field;
      --  Read-only. Output FIFO Not Empty Flag This bit is set when the output
      --  FIFO is not empty (a data is available).
      OFNEF         : JPEG_SR_OFNEF_Field;
      --  Read-only. End of Conversion Flag This bit is set when the JPEG codec
      --  core has finished the encoding or the decoding process and than last
      --  data has been sent to the output FIFO.
      EOCF          : JPEG_SR_EOCF_Field;
      --  Read-only. Header Parsing Done Flag This bit is set in decode mode
      --  when the JPEG codec has finished the parsing of the headers and the
      --  internal registers have been updated.
      HPDF          : JPEG_SR_HPDF_Field;
      --  Read-only. Codec Operation Flag This bit is set when when a JPEG
      --  codec operation is on going (encoding or decoding).
      COF           : JPEG_SR_COF_Field;
      --  unspecified
      Reserved_8_31 : STM32_SVD.UInt24;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_SR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      IFTF          at 0 range 1 .. 1;
      IFNFF         at 0 range 2 .. 2;
      OFTF          at 0 range 3 .. 3;
      OFNEF         at 0 range 4 .. 4;
      EOCF          at 0 range 5 .. 5;
      HPDF          at 0 range 6 .. 6;
      COF           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype JPEG_CFR_CEOCF_Field is STM32_SVD.Bit;
   subtype JPEG_CFR_CHPDF_Field is STM32_SVD.Bit;

   --  JPEG clear flag register
   type JPEG_CFR_Register is record
      --  unspecified
      Reserved_0_4  : STM32_SVD.UInt5 := 16#0#;
      --  Clear End of Conversion Flag Writing 1 clears the End of Conversion
      --  Flag of the JPEG Status Register.
      CEOCF         : JPEG_CFR_CEOCF_Field := 16#0#;
      --  Clear Header Parsing Done Flag Writing 1 clears the Header Parsing
      --  Done Flag of the JPEG Status Register.
      CHPDF         : JPEG_CFR_CHPDF_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : STM32_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for JPEG_CFR_Register use record
      Reserved_0_4  at 0 range 0 .. 4;
      CEOCF         at 0 range 5 .. 5;
      CHPDF         at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  JPEG
   type JPEG_Peripheral is record
      --  JPEG codec control register
      JPEG_CONFR0  : aliased JPEG_CONFR0_Register;
      --  JPEG codec configuration register 1
      JPEG_CONFR1  : aliased JPEG_CONFR1_Register;
      --  JPEG codec configuration register 2
      JPEG_CONFR2  : aliased JPEG_CONFR2_Register;
      --  JPEG codec configuration register 3
      JPEG_CONFR3  : aliased JPEG_CONFR3_Register;
      --  JPEG codec configuration register 4-7
      JPEG_CONFRN1 : aliased JPEG_CONFRN_Register;
      --  JPEG codec configuration register 4-7
      JPEG_CONFRN2 : aliased JPEG_CONFRN_Register;
      --  JPEG codec configuration register 4-7
      JPEG_CONFRN3 : aliased JPEG_CONFRN_Register;
      --  JPEG codec configuration register 4-7
      JPEG_CONFRN4 : aliased JPEG_CONFRN_Register;
      --  JPEG control register
      JPEG_CR      : aliased JPEG_CR_Register;
      --  JPEG status register
      JPEG_SR      : aliased JPEG_SR_Register;
      --  JPEG clear flag register
      JPEG_CFR     : aliased JPEG_CFR_Register;
      --  JPEG data input register
      JPEG_DIR     : aliased STM32_SVD.UInt32;
      --  JPEG data output register
      JPEG_DOR     : aliased STM32_SVD.UInt32;
   end record
     with Volatile;

   for JPEG_Peripheral use record
      JPEG_CONFR0  at 16#0# range 0 .. 31;
      JPEG_CONFR1  at 16#4# range 0 .. 31;
      JPEG_CONFR2  at 16#8# range 0 .. 31;
      JPEG_CONFR3  at 16#C# range 0 .. 31;
      JPEG_CONFRN1 at 16#10# range 0 .. 31;
      JPEG_CONFRN2 at 16#14# range 0 .. 31;
      JPEG_CONFRN3 at 16#18# range 0 .. 31;
      JPEG_CONFRN4 at 16#1C# range 0 .. 31;
      JPEG_CR      at 16#30# range 0 .. 31;
      JPEG_SR      at 16#34# range 0 .. 31;
      JPEG_CFR     at 16#38# range 0 .. 31;
      JPEG_DIR     at 16#40# range 0 .. 31;
      JPEG_DOR     at 16#44# range 0 .. 31;
   end record;

   --  JPEG
   JPEG_Periph : aliased JPEG_Peripheral
     with Import, Address => System'To_Address (16#52003000#);

end STM32_SVD.JPEG;
