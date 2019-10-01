# Hardest Game on FPGA

[![Video Image](http://img.youtube.com/vi/xOzMxzHZh6M/0.jpg)](https://www.youtube.com/watch?v=xOzMxzHZh6M)

## Table of content
[Overview](#overview) <br>
[Cloning project](#cloning-project) <br>
[Resources](#resources)

## Overview

Projects consists of 2 major parts: <br> 
* Microblaze CPU generates from Xilinx IP Core, thanks to Xilinx Vivado, and peripherals
* Game inspired by The World's Hardest Game written in C

Diving into the details of design, there are also custom IP cores: [vga_basic_control](#vga-basic-control) and [ps2_keyboard](#ps2-keyboard). 

## VGA Basic Control

Module consists of timing module and module containing display memory which content can be changed via AXI bus.

## PS2 Keyboard

Module is hardly based on [Digilent PS2 Keyboard interfacing with Basys3](https://github.com/Digilent/Basys-3-Keyboard). Key difference is that, in my design instead of uart communication, AXI bus is used.

## Cloning Project

Game sources are held in external repository, thus it must be cloned recursively. The reason is that the game core is used in [another project](https://github.com/FilipZajdel/HardestGameQt) as well.

```shell

    git clone --recursive https://github.com/FilipZajdel/Basys3_HardestGame

```

## Resources

This projects would have never be done if underneath resources hadn't existed:

* https://github.com/Digilent/Basys-3-Keyboard
* https://www.youtube.com/watch?v=MbteffkRi8Y&fbclid=IwAR03G0EctXRzbtc1Y8NO2881rGKVZsoLVQEPSQIoChl4ID7_XFZ03pi9OyM
* https://www.youtube.com/watch?v=VjYdNIOyRcE
