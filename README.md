# UFCache

***
Verilog Code for the UFCache project. Presentation video is available [here](https://youtu.be/po5ZNAFIA_E)

***

## Intro
UFCache is a new cache memory system which uses capacities as timers to check the data from the memory blocks. Instead of using software, we adapted the LRU algorithm and implemented it using hardware modules. Check the datasheet for more details.

## Features
In the app there are implemented the following features:

1. Time
  <ul>
    <li>Faster reads</li>
    <li>Simple algoritm</li>
  </ul>
2. Energy
  <ul>
    <li>Uses residual capacities of MOS transistors (which usually consists an issue in electronic circuits)</li>
    <li>Uses energy from the pins where signals were received</li>
  </ul>

## Run
Install Vivado and open the .xpr file. Then press run from the tab menu.

## Next
For the moment, the application is quite simple and it needs improvement. Some of the features proposed are:
  <ul>
    <li>Multicore processor scenario</li>
    <li>Wiring design</li>
  </ul>

