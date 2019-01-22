--  This spec has been automatically generated from stm32_svd.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with System;

package STM32_SVD.SAI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype SAI_GCR_SYNCIN_Field is STM32_SVD.UInt2;
   subtype SAI_GCR_SYNCOUT_Field is STM32_SVD.UInt2;

   --  Global configuration register
   type SAI_GCR_Register is record
      --  Synchronization inputs
      SYNCIN        : SAI_GCR_SYNCIN_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : STM32_SVD.UInt2 := 16#0#;
      --  Synchronization outputs These bits are set and cleared by software.
      SYNCOUT       : SAI_GCR_SYNCOUT_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : STM32_SVD.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_GCR_Register use record
      SYNCIN        at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      SYNCOUT       at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype SAI_ACR1_MODE_Field is STM32_SVD.UInt2;
   subtype SAI_ACR1_PRTCFG_Field is STM32_SVD.UInt2;
   subtype SAI_ACR1_DS_Field is STM32_SVD.UInt3;
   subtype SAI_ACR1_LSBFIRST_Field is STM32_SVD.Bit;
   subtype SAI_ACR1_CKSTR_Field is STM32_SVD.Bit;
   subtype SAI_ACR1_SYNCEN_Field is STM32_SVD.UInt2;
   subtype SAI_ACR1_MONO_Field is STM32_SVD.Bit;
   subtype SAI_ACR1_OUTDRIV_Field is STM32_SVD.Bit;
   subtype SAI_ACR1_SAIXEN_Field is STM32_SVD.Bit;
   subtype SAI_ACR1_DMAEN_Field is STM32_SVD.Bit;
   subtype SAI_ACR1_NOMCK_Field is STM32_SVD.Bit;
   subtype SAI_ACR1_MCKDIV_Field is STM32_SVD.UInt4;
   subtype SAI_ACR1_OSR_Field is STM32_SVD.Bit;

   --  Configuration register 1
   type SAI_ACR1_Register is record
      --  SAIx audio block mode immediately
      MODE           : SAI_ACR1_MODE_Field := 16#0#;
      --  Protocol configuration. These bits are set and cleared by software.
      --  These bits have to be configured when the audio block is disabled.
      PRTCFG         : SAI_ACR1_PRTCFG_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : STM32_SVD.Bit := 16#0#;
      --  Data size. These bits are set and cleared by software. These bits are
      --  ignored when the SPDIF protocols are selected (bit PRTCFG[1:0]),
      --  because the frame and the data size are fixed in such case. When the
      --  companding mode is selected through COMP[1:0] bits, DS[1:0] are
      --  ignored since the data size is fixed to 8 bits by the algorithm.
      --  These bits must be configured when the audio block is disabled.
      DS             : SAI_ACR1_DS_Field := 16#2#;
      --  Least significant bit first. This bit is set and cleared by software.
      --  It must be configured when the audio block is disabled. This bit has
      --  no meaning in AC97 audio protocol since AC97 data are always
      --  transferred with the MSB first. This bit has no meaning in SPDIF
      --  audio protocol since in SPDIF data are always transferred with LSB
      --  first.
      LSBFIRST       : SAI_ACR1_LSBFIRST_Field := 16#0#;
      --  Clock strobing edge. This bit is set and cleared by software. It must
      --  be configured when the audio block is disabled. This bit has no
      --  meaning in SPDIF audio protocol.
      CKSTR          : SAI_ACR1_CKSTR_Field := 16#0#;
      --  Synchronization enable. These bits are set and cleared by software.
      --  They must be configured when the audio sub-block is disabled. Note:
      --  The audio sub-block should be configured as asynchronous when SPDIF
      --  mode is enabled.
      SYNCEN         : SAI_ACR1_SYNCEN_Field := 16#0#;
      --  Mono mode. This bit is set and cleared by software. It is meaningful
      --  only when the number of slots is equal to 2. When the mono mode is
      --  selected, slot 0 data are duplicated on slot 1 when the audio block
      --  operates as a transmitter. In reception mode, the slot1 is discarded
      --  and only the data received from slot 0 are stored. Refer to Section:
      --  Mono/stereo mode for more details.
      MONO           : SAI_ACR1_MONO_Field := 16#0#;
      --  Output drive. This bit is set and cleared by software. Note: This bit
      --  has to be set before enabling the audio block and after the audio
      --  block configuration.
      OUTDRIV        : SAI_ACR1_OUTDRIV_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : STM32_SVD.UInt2 := 16#0#;
      --  Audio block enable where x is A or B. This bit is set by software. To
      --  switch off the audio block, the application software must program
      --  this bit to 0 and poll the bit till it reads back 0, meaning that the
      --  block is completely disabled. Before setting this bit to 1, check
      --  that it is set to 0, otherwise the enable command will not be taken
      --  into account. This bit allows to control the state of SAIx audio
      --  block. If it is disabled when an audio frame transfer is ongoing, the
      --  ongoing transfer completes and the cell is fully disabled at the end
      --  of this audio frame transfer. Note: When SAIx block is configured in
      --  master mode, the clock must be present on the input of SAIx before
      --  setting SAIXEN bit.
      SAIXEN         : SAI_ACR1_SAIXEN_Field := 16#0#;
      --  DMA enable. This bit is set and cleared by software. Note: Since the
      --  audio block defaults to operate as a transmitter after reset, the
      --  MODE[1:0] bits must be configured before setting DMAEN to avoid a DMA
      --  request in receiver mode.
      DMAEN          : SAI_ACR1_DMAEN_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : STM32_SVD.Bit := 16#0#;
      --  No divider
      NOMCK          : SAI_ACR1_NOMCK_Field := 16#0#;
      --  Master clock divider. These bits are set and cleared by software.
      --  These bits are meaningless when the audio block operates in slave
      --  mode. They have to be configured when the audio block is disabled.
      --  Others: the master clock frequency is calculated accordingly to the
      --  following formula:
      MCKDIV         : SAI_ACR1_MCKDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_25 : STM32_SVD.UInt2 := 16#0#;
      --  Oversampling ratio for master clock
      OSR            : SAI_ACR1_OSR_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : STM32_SVD.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ACR1_Register use record
      MODE           at 0 range 0 .. 1;
      PRTCFG         at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DS             at 0 range 5 .. 7;
      LSBFIRST       at 0 range 8 .. 8;
      CKSTR          at 0 range 9 .. 9;
      SYNCEN         at 0 range 10 .. 11;
      MONO           at 0 range 12 .. 12;
      OUTDRIV        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SAIXEN         at 0 range 16 .. 16;
      DMAEN          at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      NOMCK          at 0 range 19 .. 19;
      MCKDIV         at 0 range 20 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      OSR            at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype SAI_ACR2_FTH_Field is STM32_SVD.UInt3;
   subtype SAI_ACR2_FFLUSH_Field is STM32_SVD.Bit;
   subtype SAI_ACR2_TRIS_Field is STM32_SVD.Bit;
   subtype SAI_ACR2_MUTE_Field is STM32_SVD.Bit;
   subtype SAI_ACR2_MUTEVAL_Field is STM32_SVD.Bit;
   subtype SAI_ACR2_MUTECNT_Field is STM32_SVD.UInt6;
   subtype SAI_ACR2_CPL_Field is STM32_SVD.Bit;
   subtype SAI_ACR2_COMP_Field is STM32_SVD.UInt2;

   --  Configuration register 2
   type SAI_ACR2_Register is record
      --  FIFO threshold. This bit is set and cleared by software.
      FTH            : SAI_ACR2_FTH_Field := 16#0#;
      --  Write-only. FIFO flush. This bit is set by software. It is always
      --  read as 0. This bit should be configured when the SAI is disabled.
      FFLUSH         : SAI_ACR2_FFLUSH_Field := 16#0#;
      --  Tristate management on data line. This bit is set and cleared by
      --  software. It is meaningful only if the audio block is configured as a
      --  transmitter. This bit is not used when the audio block is configured
      --  in SPDIF mode. It should be configured when SAI is disabled. Refer to
      --  Section: Output data line management on an inactive slot for more
      --  details.
      TRIS           : SAI_ACR2_TRIS_Field := 16#0#;
      --  Mute. This bit is set and cleared by software. It is meaningful only
      --  when the audio block operates as a transmitter. The MUTE value is
      --  linked to value of MUTEVAL if the number of slots is lower or equal
      --  to 2, or equal to 0 if it is greater than 2. Refer to Section: Mute
      --  mode for more details. Note: This bit is meaningless and should not
      --  be used for SPDIF audio blocks.
      MUTE           : SAI_ACR2_MUTE_Field := 16#0#;
      --  Mute value. This bit is set and cleared by software.It must be
      --  written before enabling the audio block: SAIXEN. This bit is
      --  meaningful only when the audio block operates as a transmitter, the
      --  number of slots is lower or equal to 2 and the MUTE bit is set. If
      --  more slots are declared, the bit value sent during the transmission
      --  in mute mode is equal to 0, whatever the value of MUTEVAL. if the
      --  number of slot is lower or equal to 2 and MUTEVAL = 1, the MUTE value
      --  transmitted for each slot is the one sent during the previous frame.
      --  Refer to Section: Mute mode for more details. Note: This bit is
      --  meaningless and should not be used for SPDIF audio blocks.
      MUTEVAL        : SAI_ACR2_MUTEVAL_Field := 16#0#;
      --  Mute counter. These bits are set and cleared by software. They are
      --  used only in reception mode. The value set in these bits is compared
      --  to the number of consecutive mute frames detected in reception. When
      --  the number of mute frames is equal to this value, the flag MUTEDET
      --  will be set and an interrupt will be generated if bit MUTEDETIE is
      --  set. Refer to Section: Mute mode for more details.
      MUTECNT        : SAI_ACR2_MUTECNT_Field := 16#0#;
      --  Complement bit. This bit is set and cleared by software. It defines
      --  the type of complement to be used for companding mode Note: This bit
      --  has effect only when the companding mode is -Law algorithm or A-Law
      --  algorithm.
      CPL            : SAI_ACR2_CPL_Field := 16#0#;
      --  Companding mode. These bits are set and cleared by software. The -Law
      --  and the A-Law log are a part of the CCITT G.711 recommendation, the
      --  type of complement that will be used depends on CPL bit. The data
      --  expansion or data compression are determined by the state of bit
      --  MODE[0]. The data compression is applied if the audio block is
      --  configured as a transmitter. The data expansion is automatically
      --  applied when the audio block is configured as a receiver. Refer to
      --  Section: Companding mode for more details. Note: Companding mode is
      --  applicable only when TDM is selected.
      COMP           : SAI_ACR2_COMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ACR2_Register use record
      FTH            at 0 range 0 .. 2;
      FFLUSH         at 0 range 3 .. 3;
      TRIS           at 0 range 4 .. 4;
      MUTE           at 0 range 5 .. 5;
      MUTEVAL        at 0 range 6 .. 6;
      MUTECNT        at 0 range 7 .. 12;
      CPL            at 0 range 13 .. 13;
      COMP           at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SAI_AFRCR_FRL_Field is STM32_SVD.Byte;
   subtype SAI_AFRCR_FSALL_Field is STM32_SVD.UInt7;
   subtype SAI_AFRCR_FSDEF_Field is STM32_SVD.Bit;
   subtype SAI_AFRCR_FSPOL_Field is STM32_SVD.Bit;
   subtype SAI_AFRCR_FSOFF_Field is STM32_SVD.Bit;

   --  This register has no meaning in AC97 and SPDIF audio protocol
   type SAI_AFRCR_Register is record
      --  Frame length. These bits are set and cleared by software. They define
      --  the audio frame length expressed in number of SCK clock cycles: the
      --  number of bits in the frame is equal to FRL[7:0] + 1. The minimum
      --  number of bits to transfer in an audio frame must be equal to 8,
      --  otherwise the audio block will behaves in an unexpected way. This is
      --  the case when the data size is 8 bits and only one slot 0 is defined
      --  in NBSLOT[4:0] of SAI_xSLOTR register (NBSLOT[3:0] = 0000). In master
      --  mode, if the master clock (available on MCLK_x pin) is used, the
      --  frame length should be aligned with a number equal to a power of 2,
      --  ranging from 8 to 256. When the master clock is not used (NODIV = 1),
      --  it is recommended to program the frame length to an value ranging
      --  from 8 to 256. These bits are meaningless and are not used in AC97 or
      --  SPDIF audio block configuration.
      FRL            : SAI_AFRCR_FRL_Field := 16#7#;
      --  Frame synchronization active level length. These bits are set and
      --  cleared by software. They specify the length in number of bit clock
      --  (SCK) + 1 (FSALL[6:0] + 1) of the active level of the FS signal in
      --  the audio frame These bits are meaningless and are not used in AC97
      --  or SPDIF audio block configuration. They must be configured when the
      --  audio block is disabled.
      FSALL          : SAI_AFRCR_FSALL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  Read-only. Frame synchronization definition. This bit is set and
      --  cleared by software. When the bit is set, the number of slots defined
      --  in the SAI_xSLOTR register has to be even. It means that half of this
      --  number of slots will be dedicated to the left channel and the other
      --  slots for the right channel (e.g: this bit has to be set for I2S or
      --  MSB/LSB-justified protocols...). This bit is meaningless and is not
      --  used in AC97 or SPDIF audio block configuration. It must be
      --  configured when the audio block is disabled.
      FSDEF          : SAI_AFRCR_FSDEF_Field := 16#0#;
      --  Frame synchronization polarity. This bit is set and cleared by
      --  software. It is used to configure the level of the start of frame on
      --  the FS signal. It is meaningless and is not used in AC97 or SPDIF
      --  audio block configuration. This bit must be configured when the audio
      --  block is disabled.
      FSPOL          : SAI_AFRCR_FSPOL_Field := 16#0#;
      --  Frame synchronization offset. This bit is set and cleared by
      --  software. It is meaningless and is not used in AC97 or SPDIF audio
      --  block configuration. This bit must be configured when the audio block
      --  is disabled.
      FSOFF          : SAI_AFRCR_FSOFF_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : STM32_SVD.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_AFRCR_Register use record
      FRL            at 0 range 0 .. 7;
      FSALL          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FSDEF          at 0 range 16 .. 16;
      FSPOL          at 0 range 17 .. 17;
      FSOFF          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SAI_ASLOTR_FBOFF_Field is STM32_SVD.UInt5;
   subtype SAI_ASLOTR_SLOTSZ_Field is STM32_SVD.UInt2;
   subtype SAI_ASLOTR_NBSLOT_Field is STM32_SVD.UInt4;
   subtype SAI_ASLOTR_SLOTEN_Field is STM32_SVD.UInt16;

   --  This register has no meaning in AC97 and SPDIF audio protocol
   type SAI_ASLOTR_Register is record
      --  First bit offset These bits are set and cleared by software. The
      --  value set in this bitfield defines the position of the first data
      --  transfer bit in the slot. It represents an offset value. In
      --  transmission mode, the bits outside the data field are forced to 0.
      --  In reception mode, the extra received bits are discarded. These bits
      --  must be set when the audio block is disabled. They are ignored in
      --  AC97 or SPDIF mode.
      FBOFF          : SAI_ASLOTR_FBOFF_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  Slot size This bits is set and cleared by software. The slot size
      --  must be higher or equal to the data size. If this condition is not
      --  respected, the behavior of the SAI will be undetermined. Refer to
      --  Section: Output data line management on an inactive slot for
      --  information on how to drive SD line. These bits must be set when the
      --  audio block is disabled. They are ignored in AC97 or SPDIF mode.
      SLOTSZ         : SAI_ASLOTR_SLOTSZ_Field := 16#0#;
      --  Number of slots in an audio frame. These bits are set and cleared by
      --  software. The value set in this bitfield represents the number of
      --  slots + 1 in the audio frame (including the number of inactive
      --  slots). The maximum number of slots is 16. The number of slots should
      --  be even if FSDEF bit in the SAI_xFRCR register is set. The number of
      --  slots must be configured when the audio block is disabled. They are
      --  ignored in AC97 or SPDIF mode.
      NBSLOT         : SAI_ASLOTR_NBSLOT_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : STM32_SVD.UInt4 := 16#0#;
      --  Slot enable. These bits are set and cleared by software. Each SLOTEN
      --  bit corresponds to a slot position from 0 to 15 (maximum 16 slots).
      --  The slot must be enabled when the audio block is disabled. They are
      --  ignored in AC97 or SPDIF mode.
      SLOTEN         : SAI_ASLOTR_SLOTEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ASLOTR_Register use record
      FBOFF          at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SLOTSZ         at 0 range 6 .. 7;
      NBSLOT         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SLOTEN         at 0 range 16 .. 31;
   end record;

   subtype SAI_AIM_OVRUDRIE_Field is STM32_SVD.Bit;
   subtype SAI_AIM_MUTEDETIE_Field is STM32_SVD.Bit;
   subtype SAI_AIM_WCKCFGIE_Field is STM32_SVD.Bit;
   subtype SAI_AIM_FREQIE_Field is STM32_SVD.Bit;
   subtype SAI_AIM_CNRDYIE_Field is STM32_SVD.Bit;
   subtype SAI_AIM_AFSDETIE_Field is STM32_SVD.Bit;
   subtype SAI_AIM_LFSDETIE_Field is STM32_SVD.Bit;

   --  Interrupt mask register 2
   type SAI_AIM_Register is record
      --  Overrun/underrun interrupt enable. This bit is set and cleared by
      --  software. When this bit is set, an interrupt is generated if the
      --  OVRUDR bit in the SAI_xSR register is set.
      OVRUDRIE      : SAI_AIM_OVRUDRIE_Field := 16#0#;
      --  Mute detection interrupt enable. This bit is set and cleared by
      --  software. When this bit is set, an interrupt is generated if the
      --  MUTEDET bit in the SAI_xSR register is set. This bit has a meaning
      --  only if the audio block is configured in receiver mode.
      MUTEDETIE     : SAI_AIM_MUTEDETIE_Field := 16#0#;
      --  Wrong clock configuration interrupt enable. This bit is set and
      --  cleared by software. This bit is taken into account only if the audio
      --  block is configured as a master (MODE[1] = 0) and NODIV = 0. It
      --  generates an interrupt if the WCKCFG flag in the SAI_xSR register is
      --  set. Note: This bit is used only in TDM mode and is meaningless in
      --  other modes.
      WCKCFGIE      : SAI_AIM_WCKCFGIE_Field := 16#0#;
      --  FIFO request interrupt enable. This bit is set and cleared by
      --  software. When this bit is set, an interrupt is generated if the FREQ
      --  bit in the SAI_xSR register is set. Since the audio block defaults to
      --  operate as a transmitter after reset, the MODE bit must be configured
      --  before setting FREQIE to avoid a parasitic interruption in receiver
      --  mode,
      FREQIE        : SAI_AIM_FREQIE_Field := 16#0#;
      --  Codec not ready interrupt enable (AC97). This bit is set and cleared
      --  by software. When the interrupt is enabled, the audio block detects
      --  in the slot 0 (tag0) of the AC97 frame if the Codec connected to this
      --  line is ready or not. If it is not ready, the CNRDY flag in the
      --  SAI_xSR register is set and an interruption i generated. This bit has
      --  a meaning only if the AC97 mode is selected through PRTCFG[1:0] bits
      --  and the audio block is operates as a receiver.
      CNRDYIE       : SAI_AIM_CNRDYIE_Field := 16#0#;
      --  Anticipated frame synchronization detection interrupt enable. This
      --  bit is set and cleared by software. When this bit is set, an
      --  interrupt will be generated if the AFSDET bit in the SAI_xSR register
      --  is set. This bit is meaningless in AC97, SPDIF mode or when the audio
      --  block operates as a master.
      AFSDETIE      : SAI_AIM_AFSDETIE_Field := 16#0#;
      --  Late frame synchronization detection interrupt enable. This bit is
      --  set and cleared by software. When this bit is set, an interrupt will
      --  be generated if the LFSDET bit is set in the SAI_xSR register. This
      --  bit is meaningless in AC97, SPDIF mode or when the audio block
      --  operates as a master.
      LFSDETIE      : SAI_AIM_LFSDETIE_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : STM32_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_AIM_Register use record
      OVRUDRIE      at 0 range 0 .. 0;
      MUTEDETIE     at 0 range 1 .. 1;
      WCKCFGIE      at 0 range 2 .. 2;
      FREQIE        at 0 range 3 .. 3;
      CNRDYIE       at 0 range 4 .. 4;
      AFSDETIE      at 0 range 5 .. 5;
      LFSDETIE      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SAI_ASR_OVRUDR_Field is STM32_SVD.Bit;
   subtype SAI_ASR_MUTEDET_Field is STM32_SVD.Bit;
   subtype SAI_ASR_WCKCFG_Field is STM32_SVD.Bit;
   subtype SAI_ASR_FREQ_Field is STM32_SVD.Bit;
   subtype SAI_ASR_CNRDY_Field is STM32_SVD.Bit;
   subtype SAI_ASR_AFSDET_Field is STM32_SVD.Bit;
   subtype SAI_ASR_LFSDET_Field is STM32_SVD.Bit;
   subtype SAI_ASR_FLVL_Field is STM32_SVD.UInt3;

   --  Status register
   type SAI_ASR_Register is record
      --  Read-only. Overrun / underrun. This bit is read only. The overrun and
      --  underrun conditions can occur only when the audio block is configured
      --  as a receiver and a transmitter, respectively. It can generate an
      --  interrupt if OVRUDRIE bit is set in SAI_xIM register. This flag is
      --  cleared when the software sets COVRUDR bit in SAI_xCLRFR register.
      OVRUDR         : SAI_ASR_OVRUDR_Field;
      --  Read-only. Mute detection. This bit is read only. This flag is set if
      --  consecutive 0 values are received in each slot of a given audio frame
      --  and for a consecutive number of audio frames (set in the MUTECNT bit
      --  in the SAI_xCR2 register). It can generate an interrupt if MUTEDETIE
      --  bit is set in SAI_xIM register. This flag is cleared when the
      --  software sets bit CMUTEDET in the SAI_xCLRFR register.
      MUTEDET        : SAI_ASR_MUTEDET_Field;
      --  Read-only. Wrong clock configuration flag. This bit is read only.
      --  This bit is used only when the audio block operates in master mode
      --  (MODE[1] = 0) and NODIV = 0. It can generate an interrupt if WCKCFGIE
      --  bit is set in SAI_xIM register. This flag is cleared when the
      --  software sets CWCKCFG bit in SAI_xCLRFR register.
      WCKCFG         : SAI_ASR_WCKCFG_Field;
      --  Read-only. FIFO request. This bit is read only. The request depends
      --  on the audio block configuration: If the block is configured in
      --  transmission mode, the FIFO request is related to a write request
      --  operation in the SAI_xDR. If the block configured in reception, the
      --  FIFO request related to a read request operation from the SAI_xDR.
      --  This flag can generate an interrupt if FREQIE bit is set in SAI_xIM
      --  register.
      FREQ           : SAI_ASR_FREQ_Field;
      --  Read-only. Codec not ready. This bit is read only. This bit is used
      --  only when the AC97 audio protocol is selected in the SAI_xCR1
      --  register and configured in receiver mode. It can generate an
      --  interrupt if CNRDYIE bit is set in SAI_xIM register. This flag is
      --  cleared when the software sets CCNRDY bit in SAI_xCLRFR register.
      CNRDY          : SAI_ASR_CNRDY_Field;
      --  Read-only. Anticipated frame synchronization detection. This bit is
      --  read only. This flag can be set only if the audio block is configured
      --  in slave mode. It is not used in AC97or SPDIF mode. It can generate
      --  an interrupt if AFSDETIE bit is set in SAI_xIM register. This flag is
      --  cleared when the software sets CAFSDET bit in SAI_xCLRFR register.
      AFSDET         : SAI_ASR_AFSDET_Field;
      --  Read-only. Late frame synchronization detection. This bit is read
      --  only. This flag can be set only if the audio block is configured in
      --  slave mode. It is not used in AC97 or SPDIF mode. It can generate an
      --  interrupt if LFSDETIE bit is set in the SAI_xIM register. This flag
      --  is cleared when the software sets bit CLFSDET in SAI_xCLRFR register
      LFSDET         : SAI_ASR_LFSDET_Field;
      --  unspecified
      Reserved_7_15  : STM32_SVD.UInt9;
      --  Read-only. FIFO level threshold. This bit is read only. The FIFO
      --  level threshold flag is managed only by hardware and its setting
      --  depends on SAI block configuration (transmitter or receiver mode). If
      --  the SAI block is configured as transmitter: If SAI block is
      --  configured as receiver:
      FLVL           : SAI_ASR_FLVL_Field;
      --  unspecified
      Reserved_19_31 : STM32_SVD.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ASR_Register use record
      OVRUDR         at 0 range 0 .. 0;
      MUTEDET        at 0 range 1 .. 1;
      WCKCFG         at 0 range 2 .. 2;
      FREQ           at 0 range 3 .. 3;
      CNRDY          at 0 range 4 .. 4;
      AFSDET         at 0 range 5 .. 5;
      LFSDET         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      FLVL           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SAI_ACLRFR_COVRUDR_Field is STM32_SVD.Bit;
   subtype SAI_ACLRFR_CMUTEDET_Field is STM32_SVD.Bit;
   subtype SAI_ACLRFR_CWCKCFG_Field is STM32_SVD.Bit;
   subtype SAI_ACLRFR_CCNRDY_Field is STM32_SVD.Bit;
   subtype SAI_ACLRFR_CAFSDET_Field is STM32_SVD.Bit;
   subtype SAI_ACLRFR_CLFSDET_Field is STM32_SVD.Bit;

   --  Clear flag register
   type SAI_ACLRFR_Register is record
      --  Write-only. Clear overrun / underrun. This bit is write only.
      --  Programming this bit to 1 clears the OVRUDR flag in the SAI_xSR
      --  register. Reading this bit always returns the value 0.
      COVRUDR       : SAI_ACLRFR_COVRUDR_Field := 16#0#;
      --  Write-only. Mute detection flag. This bit is write only. Programming
      --  this bit to 1 clears the MUTEDET flag in the SAI_xSR register.
      --  Reading this bit always returns the value 0.
      CMUTEDET      : SAI_ACLRFR_CMUTEDET_Field := 16#0#;
      --  Write-only. Clear wrong clock configuration flag. This bit is write
      --  only. Programming this bit to 1 clears the WCKCFG flag in the SAI_xSR
      --  register. This bit is used only when the audio block is set as master
      --  (MODE[1] = 0) and NODIV = 0 in the SAI_xCR1 register. Reading this
      --  bit always returns the value 0.
      CWCKCFG       : SAI_ACLRFR_CWCKCFG_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : STM32_SVD.Bit := 16#0#;
      --  Write-only. Clear Codec not ready flag. This bit is write only.
      --  Programming this bit to 1 clears the CNRDY flag in the SAI_xSR
      --  register. This bit is used only when the AC97 audio protocol is
      --  selected in the SAI_xCR1 register. Reading this bit always returns
      --  the value 0.
      CCNRDY        : SAI_ACLRFR_CCNRDY_Field := 16#0#;
      --  Write-only. Clear anticipated frame synchronization detection flag.
      --  This bit is write only. Programming this bit to 1 clears the AFSDET
      --  flag in the SAI_xSR register. It is not used in AC97or SPDIF mode.
      --  Reading this bit always returns the value 0.
      CAFSDET       : SAI_ACLRFR_CAFSDET_Field := 16#0#;
      --  Write-only. Clear late frame synchronization detection flag. This bit
      --  is write only. Programming this bit to 1 clears the LFSDET flag in
      --  the SAI_xSR register. This bit is not used in AC97or SPDIF mode
      --  Reading this bit always returns the value 0.
      CLFSDET       : SAI_ACLRFR_CLFSDET_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : STM32_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_ACLRFR_Register use record
      COVRUDR       at 0 range 0 .. 0;
      CMUTEDET      at 0 range 1 .. 1;
      CWCKCFG       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CCNRDY        at 0 range 4 .. 4;
      CAFSDET       at 0 range 5 .. 5;
      CLFSDET       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SAI_BCR1_MODE_Field is STM32_SVD.UInt2;
   subtype SAI_BCR1_PRTCFG_Field is STM32_SVD.UInt2;
   subtype SAI_BCR1_DS_Field is STM32_SVD.UInt3;
   subtype SAI_BCR1_LSBFIRST_Field is STM32_SVD.Bit;
   subtype SAI_BCR1_CKSTR_Field is STM32_SVD.Bit;
   subtype SAI_BCR1_SYNCEN_Field is STM32_SVD.UInt2;
   subtype SAI_BCR1_MONO_Field is STM32_SVD.Bit;
   subtype SAI_BCR1_OUTDRIV_Field is STM32_SVD.Bit;
   subtype SAI_BCR1_SAIXEN_Field is STM32_SVD.Bit;
   subtype SAI_BCR1_DMAEN_Field is STM32_SVD.Bit;
   subtype SAI_BCR1_NOMCK_Field is STM32_SVD.Bit;
   subtype SAI_BCR1_MCKDIV_Field is STM32_SVD.UInt4;
   subtype SAI_BCR1_OSR_Field is STM32_SVD.Bit;

   --  Configuration register 1
   type SAI_BCR1_Register is record
      --  SAIx audio block mode immediately
      MODE           : SAI_BCR1_MODE_Field := 16#0#;
      --  Protocol configuration. These bits are set and cleared by software.
      --  These bits have to be configured when the audio block is disabled.
      PRTCFG         : SAI_BCR1_PRTCFG_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : STM32_SVD.Bit := 16#0#;
      --  Data size. These bits are set and cleared by software. These bits are
      --  ignored when the SPDIF protocols are selected (bit PRTCFG[1:0]),
      --  because the frame and the data size are fixed in such case. When the
      --  companding mode is selected through COMP[1:0] bits, DS[1:0] are
      --  ignored since the data size is fixed to 8 bits by the algorithm.
      --  These bits must be configured when the audio block is disabled.
      DS             : SAI_BCR1_DS_Field := 16#2#;
      --  Least significant bit first. This bit is set and cleared by software.
      --  It must be configured when the audio block is disabled. This bit has
      --  no meaning in AC97 audio protocol since AC97 data are always
      --  transferred with the MSB first. This bit has no meaning in SPDIF
      --  audio protocol since in SPDIF data are always transferred with LSB
      --  first.
      LSBFIRST       : SAI_BCR1_LSBFIRST_Field := 16#0#;
      --  Clock strobing edge. This bit is set and cleared by software. It must
      --  be configured when the audio block is disabled. This bit has no
      --  meaning in SPDIF audio protocol.
      CKSTR          : SAI_BCR1_CKSTR_Field := 16#0#;
      --  Synchronization enable. These bits are set and cleared by software.
      --  They must be configured when the audio sub-block is disabled. Note:
      --  The audio sub-block should be configured as asynchronous when SPDIF
      --  mode is enabled.
      SYNCEN         : SAI_BCR1_SYNCEN_Field := 16#0#;
      --  Mono mode. This bit is set and cleared by software. It is meaningful
      --  only when the number of slots is equal to 2. When the mono mode is
      --  selected, slot 0 data are duplicated on slot 1 when the audio block
      --  operates as a transmitter. In reception mode, the slot1 is discarded
      --  and only the data received from slot 0 are stored. Refer to Section:
      --  Mono/stereo mode for more details.
      MONO           : SAI_BCR1_MONO_Field := 16#0#;
      --  Output drive. This bit is set and cleared by software. Note: This bit
      --  has to be set before enabling the audio block and after the audio
      --  block configuration.
      OUTDRIV        : SAI_BCR1_OUTDRIV_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : STM32_SVD.UInt2 := 16#0#;
      --  Audio block enable where x is A or B. This bit is set by software. To
      --  switch off the audio block, the application software must program
      --  this bit to 0 and poll the bit till it reads back 0, meaning that the
      --  block is completely disabled. Before setting this bit to 1, check
      --  that it is set to 0, otherwise the enable command will not be taken
      --  into account. This bit allows to control the state of SAIx audio
      --  block. If it is disabled when an audio frame transfer is ongoing, the
      --  ongoing transfer completes and the cell is fully disabled at the end
      --  of this audio frame transfer. Note: When SAIx block is configured in
      --  master mode, the clock must be present on the input of SAIx before
      --  setting SAIXEN bit.
      SAIXEN         : SAI_BCR1_SAIXEN_Field := 16#0#;
      --  DMA enable. This bit is set and cleared by software. Note: Since the
      --  audio block defaults to operate as a transmitter after reset, the
      --  MODE[1:0] bits must be configured before setting DMAEN to avoid a DMA
      --  request in receiver mode.
      DMAEN          : SAI_BCR1_DMAEN_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : STM32_SVD.Bit := 16#0#;
      --  No divider
      NOMCK          : SAI_BCR1_NOMCK_Field := 16#0#;
      --  Master clock divider. These bits are set and cleared by software.
      --  These bits are meaningless when the audio block operates in slave
      --  mode. They have to be configured when the audio block is disabled.
      --  Others: the master clock frequency is calculated accordingly to the
      --  following formula:
      MCKDIV         : SAI_BCR1_MCKDIV_Field := 16#0#;
      --  unspecified
      Reserved_24_25 : STM32_SVD.UInt2 := 16#0#;
      --  Oversampling ratio for master clock
      OSR            : SAI_BCR1_OSR_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : STM32_SVD.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BCR1_Register use record
      MODE           at 0 range 0 .. 1;
      PRTCFG         at 0 range 2 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      DS             at 0 range 5 .. 7;
      LSBFIRST       at 0 range 8 .. 8;
      CKSTR          at 0 range 9 .. 9;
      SYNCEN         at 0 range 10 .. 11;
      MONO           at 0 range 12 .. 12;
      OUTDRIV        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      SAIXEN         at 0 range 16 .. 16;
      DMAEN          at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      NOMCK          at 0 range 19 .. 19;
      MCKDIV         at 0 range 20 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      OSR            at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype SAI_BCR2_FTH_Field is STM32_SVD.UInt3;
   subtype SAI_BCR2_FFLUSH_Field is STM32_SVD.Bit;
   subtype SAI_BCR2_TRIS_Field is STM32_SVD.Bit;
   subtype SAI_BCR2_MUTE_Field is STM32_SVD.Bit;
   subtype SAI_BCR2_MUTEVAL_Field is STM32_SVD.Bit;
   subtype SAI_BCR2_MUTECNT_Field is STM32_SVD.UInt6;
   subtype SAI_BCR2_CPL_Field is STM32_SVD.Bit;
   subtype SAI_BCR2_COMP_Field is STM32_SVD.UInt2;

   --  Configuration register 2
   type SAI_BCR2_Register is record
      --  FIFO threshold. This bit is set and cleared by software.
      FTH            : SAI_BCR2_FTH_Field := 16#0#;
      --  Write-only. FIFO flush. This bit is set by software. It is always
      --  read as 0. This bit should be configured when the SAI is disabled.
      FFLUSH         : SAI_BCR2_FFLUSH_Field := 16#0#;
      --  Tristate management on data line. This bit is set and cleared by
      --  software. It is meaningful only if the audio block is configured as a
      --  transmitter. This bit is not used when the audio block is configured
      --  in SPDIF mode. It should be configured when SAI is disabled. Refer to
      --  Section: Output data line management on an inactive slot for more
      --  details.
      TRIS           : SAI_BCR2_TRIS_Field := 16#0#;
      --  Mute. This bit is set and cleared by software. It is meaningful only
      --  when the audio block operates as a transmitter. The MUTE value is
      --  linked to value of MUTEVAL if the number of slots is lower or equal
      --  to 2, or equal to 0 if it is greater than 2. Refer to Section: Mute
      --  mode for more details. Note: This bit is meaningless and should not
      --  be used for SPDIF audio blocks.
      MUTE           : SAI_BCR2_MUTE_Field := 16#0#;
      --  Mute value. This bit is set and cleared by software.It must be
      --  written before enabling the audio block: SAIXEN. This bit is
      --  meaningful only when the audio block operates as a transmitter, the
      --  number of slots is lower or equal to 2 and the MUTE bit is set. If
      --  more slots are declared, the bit value sent during the transmission
      --  in mute mode is equal to 0, whatever the value of MUTEVAL. if the
      --  number of slot is lower or equal to 2 and MUTEVAL = 1, the MUTE value
      --  transmitted for each slot is the one sent during the previous frame.
      --  Refer to Section: Mute mode for more details. Note: This bit is
      --  meaningless and should not be used for SPDIF audio blocks.
      MUTEVAL        : SAI_BCR2_MUTEVAL_Field := 16#0#;
      --  Mute counter. These bits are set and cleared by software. They are
      --  used only in reception mode. The value set in these bits is compared
      --  to the number of consecutive mute frames detected in reception. When
      --  the number of mute frames is equal to this value, the flag MUTEDET
      --  will be set and an interrupt will be generated if bit MUTEDETIE is
      --  set. Refer to Section: Mute mode for more details.
      MUTECNT        : SAI_BCR2_MUTECNT_Field := 16#0#;
      --  Complement bit. This bit is set and cleared by software. It defines
      --  the type of complement to be used for companding mode Note: This bit
      --  has effect only when the companding mode is -Law algorithm or A-Law
      --  algorithm.
      CPL            : SAI_BCR2_CPL_Field := 16#0#;
      --  Companding mode. These bits are set and cleared by software. The -Law
      --  and the A-Law log are a part of the CCITT G.711 recommendation, the
      --  type of complement that will be used depends on CPL bit. The data
      --  expansion or data compression are determined by the state of bit
      --  MODE[0]. The data compression is applied if the audio block is
      --  configured as a transmitter. The data expansion is automatically
      --  applied when the audio block is configured as a receiver. Refer to
      --  Section: Companding mode for more details. Note: Companding mode is
      --  applicable only when TDM is selected.
      COMP           : SAI_BCR2_COMP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : STM32_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BCR2_Register use record
      FTH            at 0 range 0 .. 2;
      FFLUSH         at 0 range 3 .. 3;
      TRIS           at 0 range 4 .. 4;
      MUTE           at 0 range 5 .. 5;
      MUTEVAL        at 0 range 6 .. 6;
      MUTECNT        at 0 range 7 .. 12;
      CPL            at 0 range 13 .. 13;
      COMP           at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SAI_BFRCR_FRL_Field is STM32_SVD.Byte;
   subtype SAI_BFRCR_FSALL_Field is STM32_SVD.UInt7;
   subtype SAI_BFRCR_FSDEF_Field is STM32_SVD.Bit;
   subtype SAI_BFRCR_FSPOL_Field is STM32_SVD.Bit;
   subtype SAI_BFRCR_FSOFF_Field is STM32_SVD.Bit;

   --  This register has no meaning in AC97 and SPDIF audio protocol
   type SAI_BFRCR_Register is record
      --  Frame length. These bits are set and cleared by software. They define
      --  the audio frame length expressed in number of SCK clock cycles: the
      --  number of bits in the frame is equal to FRL[7:0] + 1. The minimum
      --  number of bits to transfer in an audio frame must be equal to 8,
      --  otherwise the audio block will behaves in an unexpected way. This is
      --  the case when the data size is 8 bits and only one slot 0 is defined
      --  in NBSLOT[4:0] of SAI_xSLOTR register (NBSLOT[3:0] = 0000). In master
      --  mode, if the master clock (available on MCLK_x pin) is used, the
      --  frame length should be aligned with a number equal to a power of 2,
      --  ranging from 8 to 256. When the master clock is not used (NODIV = 1),
      --  it is recommended to program the frame length to an value ranging
      --  from 8 to 256. These bits are meaningless and are not used in AC97 or
      --  SPDIF audio block configuration.
      FRL            : SAI_BFRCR_FRL_Field := 16#7#;
      --  Frame synchronization active level length. These bits are set and
      --  cleared by software. They specify the length in number of bit clock
      --  (SCK) + 1 (FSALL[6:0] + 1) of the active level of the FS signal in
      --  the audio frame These bits are meaningless and are not used in AC97
      --  or SPDIF audio block configuration. They must be configured when the
      --  audio block is disabled.
      FSALL          : SAI_BFRCR_FSALL_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  Read-only. Frame synchronization definition. This bit is set and
      --  cleared by software. When the bit is set, the number of slots defined
      --  in the SAI_xSLOTR register has to be even. It means that half of this
      --  number of slots will be dedicated to the left channel and the other
      --  slots for the right channel (e.g: this bit has to be set for I2S or
      --  MSB/LSB-justified protocols...). This bit is meaningless and is not
      --  used in AC97 or SPDIF audio block configuration. It must be
      --  configured when the audio block is disabled.
      FSDEF          : SAI_BFRCR_FSDEF_Field := 16#0#;
      --  Frame synchronization polarity. This bit is set and cleared by
      --  software. It is used to configure the level of the start of frame on
      --  the FS signal. It is meaningless and is not used in AC97 or SPDIF
      --  audio block configuration. This bit must be configured when the audio
      --  block is disabled.
      FSPOL          : SAI_BFRCR_FSPOL_Field := 16#0#;
      --  Frame synchronization offset. This bit is set and cleared by
      --  software. It is meaningless and is not used in AC97 or SPDIF audio
      --  block configuration. This bit must be configured when the audio block
      --  is disabled.
      FSOFF          : SAI_BFRCR_FSOFF_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : STM32_SVD.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BFRCR_Register use record
      FRL            at 0 range 0 .. 7;
      FSALL          at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      FSDEF          at 0 range 16 .. 16;
      FSPOL          at 0 range 17 .. 17;
      FSOFF          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SAI_BSLOTR_FBOFF_Field is STM32_SVD.UInt5;
   subtype SAI_BSLOTR_SLOTSZ_Field is STM32_SVD.UInt2;
   subtype SAI_BSLOTR_NBSLOT_Field is STM32_SVD.UInt4;
   subtype SAI_BSLOTR_SLOTEN_Field is STM32_SVD.UInt16;

   --  This register has no meaning in AC97 and SPDIF audio protocol
   type SAI_BSLOTR_Register is record
      --  First bit offset These bits are set and cleared by software. The
      --  value set in this bitfield defines the position of the first data
      --  transfer bit in the slot. It represents an offset value. In
      --  transmission mode, the bits outside the data field are forced to 0.
      --  In reception mode, the extra received bits are discarded. These bits
      --  must be set when the audio block is disabled. They are ignored in
      --  AC97 or SPDIF mode.
      FBOFF          : SAI_BSLOTR_FBOFF_Field := 16#0#;
      --  unspecified
      Reserved_5_5   : STM32_SVD.Bit := 16#0#;
      --  Slot size This bits is set and cleared by software. The slot size
      --  must be higher or equal to the data size. If this condition is not
      --  respected, the behavior of the SAI will be undetermined. Refer to
      --  Section: Output data line management on an inactive slot for
      --  information on how to drive SD line. These bits must be set when the
      --  audio block is disabled. They are ignored in AC97 or SPDIF mode.
      SLOTSZ         : SAI_BSLOTR_SLOTSZ_Field := 16#0#;
      --  Number of slots in an audio frame. These bits are set and cleared by
      --  software. The value set in this bitfield represents the number of
      --  slots + 1 in the audio frame (including the number of inactive
      --  slots). The maximum number of slots is 16. The number of slots should
      --  be even if FSDEF bit in the SAI_xFRCR register is set. The number of
      --  slots must be configured when the audio block is disabled. They are
      --  ignored in AC97 or SPDIF mode.
      NBSLOT         : SAI_BSLOTR_NBSLOT_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : STM32_SVD.UInt4 := 16#0#;
      --  Slot enable. These bits are set and cleared by software. Each SLOTEN
      --  bit corresponds to a slot position from 0 to 15 (maximum 16 slots).
      --  The slot must be enabled when the audio block is disabled. They are
      --  ignored in AC97 or SPDIF mode.
      SLOTEN         : SAI_BSLOTR_SLOTEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BSLOTR_Register use record
      FBOFF          at 0 range 0 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      SLOTSZ         at 0 range 6 .. 7;
      NBSLOT         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SLOTEN         at 0 range 16 .. 31;
   end record;

   subtype SAI_BIM_OVRUDRIE_Field is STM32_SVD.Bit;
   subtype SAI_BIM_MUTEDETIE_Field is STM32_SVD.Bit;
   subtype SAI_BIM_WCKCFGIE_Field is STM32_SVD.Bit;
   subtype SAI_BIM_FREQIE_Field is STM32_SVD.Bit;
   subtype SAI_BIM_CNRDYIE_Field is STM32_SVD.Bit;
   subtype SAI_BIM_AFSDETIE_Field is STM32_SVD.Bit;
   subtype SAI_BIM_LFSDETIE_Field is STM32_SVD.Bit;

   --  Interrupt mask register 2
   type SAI_BIM_Register is record
      --  Overrun/underrun interrupt enable. This bit is set and cleared by
      --  software. When this bit is set, an interrupt is generated if the
      --  OVRUDR bit in the SAI_xSR register is set.
      OVRUDRIE      : SAI_BIM_OVRUDRIE_Field := 16#0#;
      --  Mute detection interrupt enable. This bit is set and cleared by
      --  software. When this bit is set, an interrupt is generated if the
      --  MUTEDET bit in the SAI_xSR register is set. This bit has a meaning
      --  only if the audio block is configured in receiver mode.
      MUTEDETIE     : SAI_BIM_MUTEDETIE_Field := 16#0#;
      --  Wrong clock configuration interrupt enable. This bit is set and
      --  cleared by software. This bit is taken into account only if the audio
      --  block is configured as a master (MODE[1] = 0) and NODIV = 0. It
      --  generates an interrupt if the WCKCFG flag in the SAI_xSR register is
      --  set. Note: This bit is used only in TDM mode and is meaningless in
      --  other modes.
      WCKCFGIE      : SAI_BIM_WCKCFGIE_Field := 16#0#;
      --  FIFO request interrupt enable. This bit is set and cleared by
      --  software. When this bit is set, an interrupt is generated if the FREQ
      --  bit in the SAI_xSR register is set. Since the audio block defaults to
      --  operate as a transmitter after reset, the MODE bit must be configured
      --  before setting FREQIE to avoid a parasitic interruption in receiver
      --  mode,
      FREQIE        : SAI_BIM_FREQIE_Field := 16#0#;
      --  Codec not ready interrupt enable (AC97). This bit is set and cleared
      --  by software. When the interrupt is enabled, the audio block detects
      --  in the slot 0 (tag0) of the AC97 frame if the Codec connected to this
      --  line is ready or not. If it is not ready, the CNRDY flag in the
      --  SAI_xSR register is set and an interruption i generated. This bit has
      --  a meaning only if the AC97 mode is selected through PRTCFG[1:0] bits
      --  and the audio block is operates as a receiver.
      CNRDYIE       : SAI_BIM_CNRDYIE_Field := 16#0#;
      --  Anticipated frame synchronization detection interrupt enable. This
      --  bit is set and cleared by software. When this bit is set, an
      --  interrupt will be generated if the AFSDET bit in the SAI_xSR register
      --  is set. This bit is meaningless in AC97, SPDIF mode or when the audio
      --  block operates as a master.
      AFSDETIE      : SAI_BIM_AFSDETIE_Field := 16#0#;
      --  Late frame synchronization detection interrupt enable. This bit is
      --  set and cleared by software. When this bit is set, an interrupt will
      --  be generated if the LFSDET bit is set in the SAI_xSR register. This
      --  bit is meaningless in AC97, SPDIF mode or when the audio block
      --  operates as a master.
      LFSDETIE      : SAI_BIM_LFSDETIE_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : STM32_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BIM_Register use record
      OVRUDRIE      at 0 range 0 .. 0;
      MUTEDETIE     at 0 range 1 .. 1;
      WCKCFGIE      at 0 range 2 .. 2;
      FREQIE        at 0 range 3 .. 3;
      CNRDYIE       at 0 range 4 .. 4;
      AFSDETIE      at 0 range 5 .. 5;
      LFSDETIE      at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SAI_BSR_OVRUDR_Field is STM32_SVD.Bit;
   subtype SAI_BSR_MUTEDET_Field is STM32_SVD.Bit;
   subtype SAI_BSR_WCKCFG_Field is STM32_SVD.Bit;
   subtype SAI_BSR_FREQ_Field is STM32_SVD.Bit;
   subtype SAI_BSR_CNRDY_Field is STM32_SVD.Bit;
   subtype SAI_BSR_AFSDET_Field is STM32_SVD.Bit;
   subtype SAI_BSR_LFSDET_Field is STM32_SVD.Bit;
   subtype SAI_BSR_FLVL_Field is STM32_SVD.UInt3;

   --  Status register
   type SAI_BSR_Register is record
      --  Read-only. Overrun / underrun. This bit is read only. The overrun and
      --  underrun conditions can occur only when the audio block is configured
      --  as a receiver and a transmitter, respectively. It can generate an
      --  interrupt if OVRUDRIE bit is set in SAI_xIM register. This flag is
      --  cleared when the software sets COVRUDR bit in SAI_xCLRFR register.
      OVRUDR         : SAI_BSR_OVRUDR_Field;
      --  Read-only. Mute detection. This bit is read only. This flag is set if
      --  consecutive 0 values are received in each slot of a given audio frame
      --  and for a consecutive number of audio frames (set in the MUTECNT bit
      --  in the SAI_xCR2 register). It can generate an interrupt if MUTEDETIE
      --  bit is set in SAI_xIM register. This flag is cleared when the
      --  software sets bit CMUTEDET in the SAI_xCLRFR register.
      MUTEDET        : SAI_BSR_MUTEDET_Field;
      --  Read-only. Wrong clock configuration flag. This bit is read only.
      --  This bit is used only when the audio block operates in master mode
      --  (MODE[1] = 0) and NODIV = 0. It can generate an interrupt if WCKCFGIE
      --  bit is set in SAI_xIM register. This flag is cleared when the
      --  software sets CWCKCFG bit in SAI_xCLRFR register.
      WCKCFG         : SAI_BSR_WCKCFG_Field;
      --  Read-only. FIFO request. This bit is read only. The request depends
      --  on the audio block configuration: If the block is configured in
      --  transmission mode, the FIFO request is related to a write request
      --  operation in the SAI_xDR. If the block configured in reception, the
      --  FIFO request related to a read request operation from the SAI_xDR.
      --  This flag can generate an interrupt if FREQIE bit is set in SAI_xIM
      --  register.
      FREQ           : SAI_BSR_FREQ_Field;
      --  Read-only. Codec not ready. This bit is read only. This bit is used
      --  only when the AC97 audio protocol is selected in the SAI_xCR1
      --  register and configured in receiver mode. It can generate an
      --  interrupt if CNRDYIE bit is set in SAI_xIM register. This flag is
      --  cleared when the software sets CCNRDY bit in SAI_xCLRFR register.
      CNRDY          : SAI_BSR_CNRDY_Field;
      --  Read-only. Anticipated frame synchronization detection. This bit is
      --  read only. This flag can be set only if the audio block is configured
      --  in slave mode. It is not used in AC97or SPDIF mode. It can generate
      --  an interrupt if AFSDETIE bit is set in SAI_xIM register. This flag is
      --  cleared when the software sets CAFSDET bit in SAI_xCLRFR register.
      AFSDET         : SAI_BSR_AFSDET_Field;
      --  Read-only. Late frame synchronization detection. This bit is read
      --  only. This flag can be set only if the audio block is configured in
      --  slave mode. It is not used in AC97 or SPDIF mode. It can generate an
      --  interrupt if LFSDETIE bit is set in the SAI_xIM register. This flag
      --  is cleared when the software sets bit CLFSDET in SAI_xCLRFR register
      LFSDET         : SAI_BSR_LFSDET_Field;
      --  unspecified
      Reserved_7_15  : STM32_SVD.UInt9;
      --  Read-only. FIFO level threshold. This bit is read only. The FIFO
      --  level threshold flag is managed only by hardware and its setting
      --  depends on SAI block configuration (transmitter or receiver mode). If
      --  the SAI block is configured as transmitter: If SAI block is
      --  configured as receiver:
      FLVL           : SAI_BSR_FLVL_Field;
      --  unspecified
      Reserved_19_31 : STM32_SVD.UInt13;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BSR_Register use record
      OVRUDR         at 0 range 0 .. 0;
      MUTEDET        at 0 range 1 .. 1;
      WCKCFG         at 0 range 2 .. 2;
      FREQ           at 0 range 3 .. 3;
      CNRDY          at 0 range 4 .. 4;
      AFSDET         at 0 range 5 .. 5;
      LFSDET         at 0 range 6 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      FLVL           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype SAI_BCLRFR_COVRUDR_Field is STM32_SVD.Bit;
   subtype SAI_BCLRFR_CMUTEDET_Field is STM32_SVD.Bit;
   subtype SAI_BCLRFR_CWCKCFG_Field is STM32_SVD.Bit;
   subtype SAI_BCLRFR_CCNRDY_Field is STM32_SVD.Bit;
   subtype SAI_BCLRFR_CAFSDET_Field is STM32_SVD.Bit;
   subtype SAI_BCLRFR_CLFSDET_Field is STM32_SVD.Bit;

   --  Clear flag register
   type SAI_BCLRFR_Register is record
      --  Write-only. Clear overrun / underrun. This bit is write only.
      --  Programming this bit to 1 clears the OVRUDR flag in the SAI_xSR
      --  register. Reading this bit always returns the value 0.
      COVRUDR       : SAI_BCLRFR_COVRUDR_Field := 16#0#;
      --  Write-only. Mute detection flag. This bit is write only. Programming
      --  this bit to 1 clears the MUTEDET flag in the SAI_xSR register.
      --  Reading this bit always returns the value 0.
      CMUTEDET      : SAI_BCLRFR_CMUTEDET_Field := 16#0#;
      --  Write-only. Clear wrong clock configuration flag. This bit is write
      --  only. Programming this bit to 1 clears the WCKCFG flag in the SAI_xSR
      --  register. This bit is used only when the audio block is set as master
      --  (MODE[1] = 0) and NODIV = 0 in the SAI_xCR1 register. Reading this
      --  bit always returns the value 0.
      CWCKCFG       : SAI_BCLRFR_CWCKCFG_Field := 16#0#;
      --  unspecified
      Reserved_3_3  : STM32_SVD.Bit := 16#0#;
      --  Write-only. Clear Codec not ready flag. This bit is write only.
      --  Programming this bit to 1 clears the CNRDY flag in the SAI_xSR
      --  register. This bit is used only when the AC97 audio protocol is
      --  selected in the SAI_xCR1 register. Reading this bit always returns
      --  the value 0.
      CCNRDY        : SAI_BCLRFR_CCNRDY_Field := 16#0#;
      --  Write-only. Clear anticipated frame synchronization detection flag.
      --  This bit is write only. Programming this bit to 1 clears the AFSDET
      --  flag in the SAI_xSR register. It is not used in AC97or SPDIF mode.
      --  Reading this bit always returns the value 0.
      CAFSDET       : SAI_BCLRFR_CAFSDET_Field := 16#0#;
      --  Write-only. Clear late frame synchronization detection flag. This bit
      --  is write only. Programming this bit to 1 clears the LFSDET flag in
      --  the SAI_xSR register. This bit is not used in AC97or SPDIF mode
      --  Reading this bit always returns the value 0.
      CLFSDET       : SAI_BCLRFR_CLFSDET_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : STM32_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_BCLRFR_Register use record
      COVRUDR       at 0 range 0 .. 0;
      CMUTEDET      at 0 range 1 .. 1;
      CWCKCFG       at 0 range 2 .. 2;
      Reserved_3_3  at 0 range 3 .. 3;
      CCNRDY        at 0 range 4 .. 4;
      CAFSDET       at 0 range 5 .. 5;
      CLFSDET       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype SAI_PDMCR_PDMEN_Field is STM32_SVD.Bit;
   subtype SAI_PDMCR_MICNBR_Field is STM32_SVD.UInt2;
   --  SAI_PDMCR_CKEN array element
   subtype SAI_PDMCR_CKEN_Element is STM32_SVD.Bit;

   --  SAI_PDMCR_CKEN array
   type SAI_PDMCR_CKEN_Field_Array is array (1 .. 4)
     of SAI_PDMCR_CKEN_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for SAI_PDMCR_CKEN
   type SAI_PDMCR_CKEN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CKEN as a value
            Val : STM32_SVD.UInt4;
         when True =>
            --  CKEN as an array
            Arr : SAI_PDMCR_CKEN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for SAI_PDMCR_CKEN_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  PDM control register
   type SAI_PDMCR_Register is record
      --  PDM enable
      PDMEN          : SAI_PDMCR_PDMEN_Field := 16#0#;
      --  unspecified
      Reserved_1_3   : STM32_SVD.UInt3 := 16#0#;
      --  Number of microphones
      MICNBR         : SAI_PDMCR_MICNBR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : STM32_SVD.UInt2 := 16#0#;
      --  Clock enable of bitstream clock number 1
      CKEN           : SAI_PDMCR_CKEN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : STM32_SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_PDMCR_Register use record
      PDMEN          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      MICNBR         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CKEN           at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SAI_PDMDLY_DLYM1L_Field is STM32_SVD.UInt3;
   subtype SAI_PDMDLY_DLYM1R_Field is STM32_SVD.UInt3;
   subtype SAI_PDMDLY_DLYM2L_Field is STM32_SVD.UInt3;
   subtype SAI_PDMDLY_DLYM2R_Field is STM32_SVD.UInt3;
   subtype SAI_PDMDLY_DLYM3L_Field is STM32_SVD.UInt3;
   subtype SAI_PDMDLY_DLYM3R_Field is STM32_SVD.UInt3;
   subtype SAI_PDMDLY_DLYM4L_Field is STM32_SVD.UInt3;
   subtype SAI_PDMDLY_DLYM4R_Field is STM32_SVD.UInt3;

   --  PDM delay register
   type SAI_PDMDLY_Register is record
      --  Delay line adjust for first microphone of pair 1
      DLYM1L         : SAI_PDMDLY_DLYM1L_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : STM32_SVD.Bit := 16#0#;
      --  Delay line adjust for second microphone of pair 1
      DLYM1R         : SAI_PDMDLY_DLYM1R_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : STM32_SVD.Bit := 16#0#;
      --  Delay line for first microphone of pair 2
      DLYM2L         : SAI_PDMDLY_DLYM2L_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : STM32_SVD.Bit := 16#0#;
      --  Delay line for second microphone of pair 2
      DLYM2R         : SAI_PDMDLY_DLYM2R_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : STM32_SVD.Bit := 16#0#;
      --  Delay line for first microphone of pair 3
      DLYM3L         : SAI_PDMDLY_DLYM3L_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : STM32_SVD.Bit := 16#0#;
      --  Delay line for second microphone of pair 3
      DLYM3R         : SAI_PDMDLY_DLYM3R_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : STM32_SVD.Bit := 16#0#;
      --  Delay line for first microphone of pair 4
      DLYM4L         : SAI_PDMDLY_DLYM4L_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : STM32_SVD.Bit := 16#0#;
      --  Delay line for second microphone of pair 4
      DLYM4R         : SAI_PDMDLY_DLYM4R_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : STM32_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAI_PDMDLY_Register use record
      DLYM1L         at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DLYM1R         at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DLYM2L         at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      DLYM2R         at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      DLYM3L         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      DLYM3R         at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      DLYM4L         at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      DLYM4R         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SAI
   type SAI_Peripheral is record
      --  Global configuration register
      SAI_GCR    : aliased SAI_GCR_Register;
      --  Configuration register 1
      SAI_ACR1   : aliased SAI_ACR1_Register;
      --  Configuration register 2
      SAI_ACR2   : aliased SAI_ACR2_Register;
      --  This register has no meaning in AC97 and SPDIF audio protocol
      SAI_AFRCR  : aliased SAI_AFRCR_Register;
      --  This register has no meaning in AC97 and SPDIF audio protocol
      SAI_ASLOTR : aliased SAI_ASLOTR_Register;
      --  Interrupt mask register 2
      SAI_AIM    : aliased SAI_AIM_Register;
      --  Status register
      SAI_ASR    : aliased SAI_ASR_Register;
      --  Clear flag register
      SAI_ACLRFR : aliased SAI_ACLRFR_Register;
      --  Data register
      SAI_ADR    : aliased STM32_SVD.UInt32;
      --  Configuration register 1
      SAI_BCR1   : aliased SAI_BCR1_Register;
      --  Configuration register 2
      SAI_BCR2   : aliased SAI_BCR2_Register;
      --  This register has no meaning in AC97 and SPDIF audio protocol
      SAI_BFRCR  : aliased SAI_BFRCR_Register;
      --  This register has no meaning in AC97 and SPDIF audio protocol
      SAI_BSLOTR : aliased SAI_BSLOTR_Register;
      --  Interrupt mask register 2
      SAI_BIM    : aliased SAI_BIM_Register;
      --  Status register
      SAI_BSR    : aliased SAI_BSR_Register;
      --  Clear flag register
      SAI_BCLRFR : aliased SAI_BCLRFR_Register;
      --  Data register
      SAI_BDR    : aliased STM32_SVD.UInt32;
      --  PDM control register
      SAI_PDMCR  : aliased SAI_PDMCR_Register;
      --  PDM delay register
      SAI_PDMDLY : aliased SAI_PDMDLY_Register;
   end record
     with Volatile;

   for SAI_Peripheral use record
      SAI_GCR    at 16#0# range 0 .. 31;
      SAI_ACR1   at 16#4# range 0 .. 31;
      SAI_ACR2   at 16#8# range 0 .. 31;
      SAI_AFRCR  at 16#C# range 0 .. 31;
      SAI_ASLOTR at 16#10# range 0 .. 31;
      SAI_AIM    at 16#14# range 0 .. 31;
      SAI_ASR    at 16#18# range 0 .. 31;
      SAI_ACLRFR at 16#1C# range 0 .. 31;
      SAI_ADR    at 16#20# range 0 .. 31;
      SAI_BCR1   at 16#24# range 0 .. 31;
      SAI_BCR2   at 16#28# range 0 .. 31;
      SAI_BFRCR  at 16#2C# range 0 .. 31;
      SAI_BSLOTR at 16#30# range 0 .. 31;
      SAI_BIM    at 16#34# range 0 .. 31;
      SAI_BSR    at 16#38# range 0 .. 31;
      SAI_BCLRFR at 16#3C# range 0 .. 31;
      SAI_BDR    at 16#40# range 0 .. 31;
      SAI_PDMCR  at 16#44# range 0 .. 31;
      SAI_PDMDLY at 16#48# range 0 .. 31;
   end record;

   --  SAI
   SAI1_Periph : aliased SAI_Peripheral
     with Import, Address => System'To_Address (16#40015800#);

   --  SAI
   SAI2_Periph : aliased SAI_Peripheral
     with Import, Address => System'To_Address (16#40015C00#);

   --  SAI
   SAI3_Periph : aliased SAI_Peripheral
     with Import, Address => System'To_Address (16#40016000#);

   --  SAI
   SAI4_Periph : aliased SAI_Peripheral
     with Import, Address => System'To_Address (16#58005400#);

end STM32_SVD.SAI;
