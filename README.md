Full Subtractor using Verilog HDL
📌 Project Description

A Full Subtractor is a combinational digital circuit used to subtract two 1-bit binary numbers along with a borrow input.

It has three inputs:

A – Minuend
B – Subtrahend
Bin – Borrow input

It has two outputs:

Difference
Borrow Out (Bout)
🧮 Boolean Expressions
Difference
Difference = A ⊕ B ⊕ Bin

Borrow Out
Bout = (~A & B) | (~A & Bin) | (B & Bin)

📊 Truth Table
A	B	Bin	Difference	Bout
0	0	0	0	0
0	0	1	1	1
0	1	0	1	1
0	1	1	0	1
1	0	0	1	0
1	0	1	0	0
1	1	0	0	0
1	1	1	1	1
📁 Project Structure
full-subtractor/
│
├── README.md
├── full_subtractor.v
├── full_subtractor_tb.v
└── simulation_output.html

💻 Verilog Implementation

The Full Subtractor is implemented using continuous assignment statements.

assign Difference = A ^ B ^ Bin;
assign Bout = (~A & B) | (~A & Bin) | (B & Bin);

🧪 Testbench

The testbench checks all 8 possible combinations of A, B, and Bin.

Expected simulation output:

Time   A B Bin | Difference Bout
--------------------------------
0      0 0  0  |     0        0
10     0 0  1  |     1        1
20     0 1  0  |     1        1
30     0 1  1  |     0        1
40     1 0  0  |     1        0
50     1 0  1  |     0        0
60     1 1  0  |     0        0
70     1 1  1  |     1        1

▶️ How to Run
Using Icarus Verilog

Compile the Verilog files:

iverilog -o full_subtractor_sim full_subtractor.v full_subtractor_tb.v


Run the simulation:

vvp full_subtractor_sim


Generate and view the waveform:

gtkwave full_subtractor.vcd

🎯 Applications

Full subtractors are used in:

Binary arithmetic circuits
Arithmetic Logic Units (ALUs)
Digital processors
Calculators
Multi-bit binary subtraction circuits
🛠️ Tools Used
Verilog HDL
Icarus Verilog
GTKWave
GitHub
📜 License

This project is created for educational purposes.
