# _**RISCV-32 Processor**_
> ## _Project Description_
   * Design of a 32-bit single cycle micro architecture MIPS processor based on harvered architecture fully implemented RTL verilog files for all sub-modules of the MIPS processor then implementation of the top module of the MIPS processor.
> ## _Contents_
   * _RTL files_
   * _Machine Code For Fibanocci and Factorial Programs_


> ## _Block Diagram_
![4](https://user-images.githubusercontent.com/67025780/222915750-254d5014-11f3-4366-93f0-0273003a659c.PNG)

> ## _Result Figures_
The processor was tested on Modelsim by two programs a **Factorial program** (of the number `8`) and a program to display **Fibonacci sequence**.
1. Fibanocci Program
![1](https://user-images.githubusercontent.com/67025780/222915818-4170992a-b2f8-4a87-a7be-cd404d411eaa.PNG)

2. Factorial Program
![3](https://user-images.githubusercontent.com/67025780/222915822-6406c0e8-1c56-43d8-926e-2d874d24ec3c.PNG)

> ## __To store your program in instruction memory__
```verilog
    reg [width-1:0] memory [entries-1:0];
    initial begin
        $readmemh("your program.hex", memory);
    end
```


