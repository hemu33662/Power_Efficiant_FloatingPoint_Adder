# Power_Efficiant_FloatingPoint_Adder
 Floating-point addition is a fundamental and basic operation in various applications of computer architecture, but it often consumes significant power, area, and delay. Optimizing the mantissa addition, a key component of floating-point addition, can lead to significant improvements.
 we propose a hybrid RCA-CLA mantissa adder that adds the mantissa in the single precision floating point format using both ripple carry adder (RCA) and carry look-ahead adder (CLA).


Pre-requisites
--------------

- Verilog
## Demo

![Results](Floating_Point_Addder_Result.png)
![Results](FPA.jpg)

## Features

- Hybrid 24Bit AAdder.
- Carry look ahead 4Bit adder.
- Ripple carry adder 4Bit.
- Ripple carry adder 20Bit.
- Floating point adder.
- test bench



## Results

The Verilog code in simulated in Xilinx Vivado 2022.2. The synthesis operation is performed in Cadence RTL compiler and different circuit parameters like area, power, and delay are estimated using TSMC 180nm technology. The estimated results are given in the following 
- Power(nW)           : 1.361
- Area(micrometer.s)  : 9433
- Delay(ps)           : 13596.79
- PDP                 : 9990.3  
- PDA                 : 12825.85

## Authors

- [@hemu33662](https://github.com/hemu33662)
