--  This file provides a driver for the BMI088 gyroscope from Bosch


with Interfaces; use Interfaces;
with HAL;        use HAL;
with HAL.SPI;    use HAL.SPI;
with HAL.GPIO;   use HAL.GPIO;
with Ada.Unchecked_Conversion;
with System;


package BMI088 is
   pragma Elaborate_Body;

   type Six_Axis_Imu is tagged limited private;

   type IMU_Rate is new Integer_16;
   type IMU_Rates_Pointer is access all IMU_Rate with Storage_Size => 0;
   function As_IMU_Rates_Pointer is new Ada.Unchecked_Conversion
     (Source => System.Address, Target => IMU_Rates_Pointer);

   type IMU_Rates is record
      X : IMU_Rate;  -- pitch, per Figure 2, pg 7 of the Datasheet
      Y : IMU_Rate;  -- roll
      Z : IMU_Rate;  -- yaw
   end record with Size => 3 * 16;

   for IMU_Rates use record
      X at 0 range 0 .. 15;
      Y at 2 range 0 .. 15;
      Z at 4 range 0 .. 15;
   end record;

   type Axis is (X, Y, Z);
   type Sensor_Accel_Data is array (Axis) of Float;
   type Sensor_Gyro_Data is array (Axis) of Float;

   procedure ReadAccelRates (This : in out Six_Axis_Imu;
                             Result   : out Sensor_Accel_Data);
   procedure ReadGyroRates (This : in out Six_Axis_Imu;
                             Result   : out Sensor_Gyro_Data);


   procedure test (This        : in out Six_Axis_Imu);

   procedure Initialize_Spi
     (This        : in out Six_Axis_Imu;
      Port        : Any_SPI_Port;
      Accel_Chip_Select : Any_GPIO_Point;
      Gyro_Chip_Select : Any_GPIO_Point);

   procedure   Initialize_Accel
     (This        : in out Six_Axis_Imu);

   procedure   Initialize_Gyro
     (This        : in out Six_Axis_Imu);

   type Register is new UInt8;

   procedure AccelWrite
     (This : Six_Axis_Imu;
      Addr : Register;
      Data : UInt8)
     with Inline;
   --  Writes Data to the specified register within the accelerometer chip

   procedure AccelRead
     (This : Six_Axis_Imu;
      Addr : Register;
      Data : out UInt8)
     with Inline;
   --  Reads Data from the specified register within the accelerometer chip

   procedure AccelRead_UInt8s
     (This   : Six_Axis_Imu;
      Addr   : Register;
      Buffer : out SPI_Data_8b;
      Count  : Natural);
   --  Reads multiple Data from the specified register within the accelerometer chip

   procedure GyroWrite
     (This : Six_Axis_Imu;
      Addr : Register;
      Data : UInt8)
     with Inline;
   --  Writes Data to the specified register within the gyro chip

   procedure GyroRead
     (This : Six_Axis_Imu;
      Addr : Register;
      Data : out UInt8)
     with Inline;
   --  Reads Data from the specified register within the gyro chip

   procedure GyroRead_UInt8s
     (This   : Six_Axis_Imu;
      Addr   : Register;
      Buffer : out SPI_Data_8b;
      Count  : Natural);
   --  Reads multiple Data from the specified register within the gyro chip

   -- Constants
   G         : constant Float := 9.807;
   Pi        : constant Float := 3.14159_26535_89793_23846;
   DegToRad  : constant Float := (Pi / 180.0);
   RadToDeg  : constant Float := (180.0 / Pi);

   --  BMI088 Registers
   ACC_CHIP_ID_ADDR            : constant Register := 16#00#; -- Todo: move to bmi ads
   ACC_CHIP_ID                 : constant UInt8 := 16#1E#;

   ACC_SOFT_RESET_ADDR         : constant Register := 16#7E#;
   ACC_RESET_CMD               : constant UInt8 := 16#B6#;

   ACC_PWR_CNTRL_ADDR          : constant Register := 16#7D#;
   ACC_ENABLE_CMD              : constant UInt8 := 16#04#;
   ACC_DISABLE_CMD             : constant UInt8 := 16#00#;

   ACC_PWR_CONF_ADDR           : constant Register := 16#7C#;
   ACC_ACTIVE_MODE_CMD         : constant UInt8 := 16#00#;
   ACC_SUSPEND_MODE_CMD        : constant UInt8 := 16#03#;

   ACC_RANGE_ADDR              : constant Register := 16#41#;
   RANGE_3G                    : constant UInt8 := 16#00#;
   RANGE_6G                    : constant UInt8 := 16#01#;
   RANGE_12G                   : constant UInt8 := 16#02#;
   RANGE_24G                   : constant UInt8 := 16#03#;

   ACC_ODR_ADDR                : constant Register := 16#40#;
   ODR_1600HZ_BW_280HZ         : constant UInt8 := 16#AC#; -- to check

   ACC_ERR_CODE_ADDR           : constant Register := 16#02#;

   ACC_ACCEL_DATA_ADDR         : constant Register := 16#12#;

   ACC_CONF_ADD                : constant Register := 16#40#;
   ACC_ERR_REG_ADD             : constant Register := 16#02#;

   GYRO_CHIP_ID                : constant UInt8 := 16#0F#;
   GYRO_RESET_CMD              : constant UInt8 := 16#B6#;

   RANGE_2000DPS               : constant UInt8 := 16#00#;
   RANGE_1000DPS               : constant UInt8 := 16#01#;
   RANGE_500DPS                : constant UInt8 := 16#02#;
   RANGE_250DPS                : constant UInt8 := 16#03#;
   RANGE_125DPS                : constant UInt8 := 16#04#;

   ODR_2000HZ_BW_532HZ         : constant UInt8 := 16#80#;

   GYRO_CHIP_ID_ADD            : constant Register := 16#00#;
   GYRO_DATA_ADDR              : constant Register := 16#02#;
   GYRO_RANGE_ADDR             : constant Register := 16#0F#;
   GYRO_ODR_ADDR               : constant Register := 16#10#;
   GYRO_SOFT_RESET_ADDR        : constant Register := 16#14#;


   Accel_Range_MSS : Float;
   Gyro_Range_Rads : Float;

private
   type Six_Axis_Imu is tagged limited record
      Port : Any_SPI_Port;
      CS   : Any_GPIO_Point;
      GS   : Any_GPIO_Point;
   end record;



end BMI088;
