# Assembly-Programming-Guide
Notes regarding Assembly Programming 

<em>original tutorial source [tutorials point](http://www.tutorialspoint.com/assembly_programming/)</em>

#What is Assembly Language?
Each personal computer has a microprocessor that manages the computer's arithmetical, logical, and control activities.

Each family of processors has its own set of instructions for handling various operations such as getting input from keyboard, displaying information on screen and performing various other jobs. These set of instructions are called 'machine language instructions'.

A processor understands only machine language instructions, which are strings of 1's and 0's. However, machine language is too obscure and complex for using in software development. So, the low-level assembly language is designed for a specific family of processors that represents various instructions in symbolic code and a more understandable form.

#Advantages of Assembly Language
Having an understanding of assembly language makes one aware of −

- How programs interface with OS, processor, and BIOS;
- How data is represented in memory and other external devices;
- How the processor accesses and executes instruction;
- How instructions access and process data;
- How a program accesses external devices.

Other advantages of using assembly language are −

*It requires less memory and execution time;
*It allows hardware-specific complex jobs in an easier way;
*It is suitable for time-critical jobs;
*It is most suitable for writing interrupt service routines and other memory resident programs.

#### Interrupt Service Routine
An interrupt service routine (ISR) is a software routine that hardware invokes in response to an interrupt. ISRs examine an interrupt and determine how to handle it. ISRs handle the interrupt, and then return a logical interrupt value.

#### Memory Resident Programs
In computers, a terminate and stay resident program (commonly referred to by the initialism TSR) is a computer program that uses a system call in DOS operating systems to return control of the computer to the operating system, as though the program has quit, but stays resident in computer memory so it can be reactivated by a hardware or software interrupt.[1] This technique partially overcame DOS operating systems' limitation of executing only one program, or task, at a time. TSR is unique to DOS and not used in Windows.

#Basic Features of PC Hardware
The main internal hardware of a PC consists of processor, memory, and registers. Registers are processor components that hold data and address. To execute a program, the system copies it from the external device into the internal memory. The processor executes the program instructions.

The fundamental unit of computer storage is a bit; it could be ON (1) or OFF (0). A group of nine related bits makes a byte, out of which eight bits are used for data and the last one is used for parity. According to the rule of parity, the number of bits that are ON (1) in each byte should always be odd.

So, the parity bit is used to make the number of bits in a byte odd. If the parity is even, the system assumes that there had been a parity error (though rare), which might have been caused due to hardware fault or electrical disturbance.

The processor supports the following data sizes −

1. Word: a 2-byte data item
2. Doubleword: a 4-byte (32 bit) data item
3. Quadword: an 8-byte (64 bit) data item
4. Paragraph: a 16-byte (128 bit) area
5. Kilobyte: 1024 bytes
6. Megabyte: 1,048,576 bytes

#### Parity Bit
A parity bit is a single bit added to a binary data transmission used to indicate if whether the 0's and 1's within that data transmission is an even or odd number. The parity bit is used in parity error checking to find errors that may occur during data transmission.

Binary Number System
Every number system uses positional notation, i.e., each position in which a digit is written has a different positional value. Each position is power of the base, which is 2 for binary number system, and these powers begin at 0 and increase by 1.

The following table shows the positional values for an 8-bit binary number, where all bits are set ON.
<table>
<tr>
<th>Bit value	
<td>1	
<td>1
<td>1	
<td>1
<td>1
<td>1
<td>1
<td>1
</tr>
<tr>
<th>Position value as a power of base 2	
<td>128	<td>64	<td>32	<td>16	<td>8	<td>4	<td>2	<td>1
</tr>
<tr>
<th>Bit number	<td>7	<td>6	<td>5<td>4	<td>3	<td>2	<td>1	<td>0
</tr>
</table>
The value of a binary number is based on the presence of 1 bits and their positional value. So, the value of a given binary number is −

1 + 2 + 4 + 8 +16 + 32 + 64 + 128 = 255

which is same as 2<sup>8</sup> - 1.

#Hexadecimal Number System
Hexadecimal number system uses base 16. The digits in this system range from 0 to 15. By convention, the letters A through F is used to represent the hexadecimal digits corresponding to decimal values 10 through 15.

Hexadecimal numbers in computing is used for abbreviating lengthy binary representations. Basically, hexadecimal number system represents a binary data by dividing each byte in half and expressing the value of each half-byte. The following table provides the decimal, binary, and hexadecimal equivalents −

<table class="table table-bordered">
<tbody><tr>
<th>Decimal number</th>
<th>Binary representation</th>
<th>Hexadecimal representation</th>
</tr>
<tr>
<td>0</td>
<td>0</td>
<td>0</td>
</tr>
<tr>
<td>1</td>
<td>1</td>
<td>1</td>
</tr>
<tr>
<td>2</td>
<td>10</td>
<td>2</td>
</tr>
<tr>
<td>3</td>
<td>11</td>
<td>3</td>
</tr>
<tr>
<td>4</td>
<td>100</td>
<td>4</td>
</tr>
<tr>
<td>5</td>
<td>101</td>
<td>5</td>
</tr>
<tr>
<td>6</td>
<td>110</td>
<td>6</td>
</tr>
<tr>
<td>7</td>
<td>111</td>
<td>7</td>
</tr>
<tr>
<td>8</td>
<td>1000</td>
<td>8</td>
</tr>
<tr>
<td>9</td>
<td>1001</td>
<td>9</td>
</tr>
<tr>
<td>10</td>
<td>1010</td>
<td>A</td>
</tr>
<tr>
<td>11</td>
<td>1011</td>
<td>B</td>
</tr>
<tr>
<td>12</td>
<td>1100</td>
<td>C</td>
</tr>
<tr>
<td>13</td>
<td>1101</td>
<td>D</td>
</tr>
<tr>
<td>14</td>
<td>1110</td>
<td>E</td>
</tr>
<tr>
<td>15</td>
<td>1111</td>
<td>F</td>
</tr>
</tbody></table>

To convert a binary number to its hexadecimal equivalent, break it into groups of 4 consecutive groups each, starting from the right, and write those groups over the corresponding digits of the hexadecimal number.

**Example** − Binary number 1000 1100 1101 0001 is equivalent to hexadecimal - 8CD1

To convert a hexadecimal number to binary, just write each hexadecimal digit into its 4-digit binary equivalent.

**Example** − Hexadecimal number FAD8 is equivalent to binary - 1111 1010 1101 1000

<h2>Binary Arithmetic</h2>
<p>The following table illustrates four simple rules for binary addition &minus;</p>
<table class="table table-bordered">
<tr>
<th>(i)</th>
<th>(ii)</th>
<th>(iii)</th>
<th>(iv)</th>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td>1</td>
</tr>
<tr>
<td>0</td>
<td>1</td>
<td>1</td>
<td>1</td>
</tr>
<tr>
<td>+0</td>
<td>+0</td>
<td>+1</td>
<td>+1</td>
</tr>
<tr>
<td>=0</td>
<td>=1</td>
<td>=10</td>
<td>=11</td>
</tr>
</table>
<p>Rules (iii) and (iv) show a carry of a 1-bit into the next left position.</p>
<p><b>Example</b></p>
<table class="table table-bordered">
<tr>
<th width="50%">Decimal</th>
<th>Binary</th>
</tr>
<tr>
<td>60</td>
<td>00111100</td>
</tr>
<tr>
<td>+42</td>
<td>00101010</td>
</tr>
<tr>
<td>102</td>
<td>01100110</td>
</tr>
</table>
<p>A negative binary value is expressed in <b>two's complement notation</b>. According to this rule, to convert a binary number to its negative value is to <i>reverse its bit values and add 1</i>.</p>
<p><b>Example</b></p>
<table class="table table-bordered">
<tr>
<td width="50%">Number 53</td>
<td>00110101</td>
</tr>
<tr>
<td>Reverse the bits</td>
<td>11001010</td>
</tr>
<tr>
<td>Add 1</td>
<td><span style="color:#eee">0000000</span>1</td>
</tr>
<tr>
<td>Number -53</td>
<td>11001011</td>
</tr>
</table>
<p>To subtract one value from another, <i>convert the number being subtracted to two's complement format and add the numbers</i>.</p>
<p><b>Example</b></p>
<p>Subtract 42 from 53</p>
<table class="table table-bordered">
<tr>
<td width="50%">Number 53</td>
<td>00110101</td>
</tr>
<tr>
<td>Number 42</td>
<td>00101010</td>
</tr>
<tr>
<td>Reverse the bits of 42</td>
<td>11010101</td>
</tr>
<tr>
<td>Add 1</td>
<td><span style="color:#eee">0000000</span>1</td>
</tr>
<tr>
<td>Number -42</td>
<td>11010110</td>
</tr>
<tr>
<td>53 - 42 = 11</td>
<td>00001011</td>
</tr>
</table>
<p>Overflow of the last 1 bit is lost.</p>
<h1>Addressing Data in Memory</h1>

The process through which the processor controls the execution of instructions is referred as the fetch-decode-execute cycle or the execution cycle. It consists of three continuous steps −

* Fetching the instruction from memory
* Decoding or identifying the instruction
* Executing the instruction

The processor may access one or more bytes of memory at a time. Let us consider a hexadecimal number 0725H. This number will require two bytes of memory. The high-order byte or most significant byte is 07 and the low-order byte is 25.

The processor stores data in reverse-byte sequence, i.e., a low-order byte is stored in a low memory address and a high-order byte in high memory address. So, if the processor brings the value 0725H from register to memory, it will transfer 25 first to the lower memory address and 07 to the next memory address.

![data saved from register into memory](http://www.tutorialspoint.com/assembly_programming/images/introduction1.jpg)

When the processor gets the numeric data from memory to register, it again reverses the bytes. There are two kinds of memory addresses −

1. Absolute address - a direct reference of specific location.
2. Segment address (or offset) - starting address of a memory segment with the offset value.

**Segment Address** : Absolute Memory Location = [Segment Value * 16] + Offset Value

#Assembly Program Basic Syntax

An assembly program can be divided into three sections −

- The data section,
- The bss section, and
- The text section.

##The data Section
The data section is used for declaring initialized data or constants. This data does not change at runtime. You can declare various constant values, file names, or buffer size, etc., in this section.

The syntax for declaring data section is −

`section.data`

##The bss Section
The bss section is used for declaring variables. The syntax for declaring bss section is −

`section.bss`

##The text section
The text section is used for keeping the actual code. This section must begin with the declaration global _start, which tells the kernel where the program execution begins.

The syntax for declaring text section is −

<pre>
section.text
   global _start
_start:
</pre>

##Comments
Assembly language comment begins with a semicolon (;). It may contain any printable character including blank. It can appear on a line by itself, like −

`; This program displays a message on screen`

or, on the same line along with an instruction, like −

`add eax, ebx     ; adds ebx to eax`

#Assembly Language Statements
Assembly language programs consist of three types of statements −

*Executable instructions or instructions,
*Assembler directives or pseudo-ops, and
*Macros.

The executable instructions or simply instructions tell the processor what to do. Each instruction consists of an operation code (opcode). Each executable instruction generates one machine language instruction.

The assembler directives or pseudo-ops tell the assembler about the various aspects of the assembly process. These are non-executable and do not generate machine language instructions.

Macros are basically a text substitution mechanism.

#Syntax of Assembly Language Statements
Assembly language statements are entered one statement per line. Each statement follows the following format −
<pre>
[label]   mnemonic   [operands]   [;comment]
</pre>
The fields in the square brackets are optional. A basic instruction has two parts, the first one is the name of the instruction (or the mnemonic), which is to be executed, and the second are the operands or the parameters of the command.

Following are some examples of typical assembly language statements −
<pre>
INC COUNT        ; Increment the memory variable COUNT

MOV TOTAL, 48    ; Transfer the value 48 in the 
                 ; memory variable TOTAL
					  
ADD AH, BH       ; Add the content of the 
                 ; BH register into the AH register
					  
AND MASK1, 128   ; Perform AND operation on the 
                 ; variable MASK1 and 128
					  
ADD MARKS, 10    ; Add 10 to the variable MARKS
MOV AL, 10       ; Transfer the value 10 to the AL register
</pre>

#Assembly memory Segments
the three sections of an assembly program represents various memory segments as well.<br/>
Interestingly, if you replace the section keyword with segment, you will get the same result.

## Memory Segments
A segmented memory model divides the system memory into groups of independent segments referenced by pointers located in the segment registers. Each segment is used to contain a specific type of data. One segment is used to contain instruction codes, another segment stores the data elements, and a third segment keeps the program stack.

In the light of the above discussion, we can specify various memory segments as −

- **Data segment** − It is represented by .data section and the .bss. The .data section is used to declare the memory region, where data elements are stored for the program. This section cannot be expanded after the data elements are declared, and it remains static throughout the program.<br/>
*The .bss section is also a static memory section that contains buffers for data to be declared later in the program. This buffer memory is zero-filled.

- **Code segment** − It is represented by .text section. This defines an area in memory that stores the instruction codes. This is also a fixed area.

- **Stack** − This segment contains data values passed to functions and procedures within the program.

#Assembly Registers
Processor operations mostly involve processing data. This data can be stored in memory and accessed from thereon. However, reading data from and storing data into memory slows down the processor, as it involves complicated processes of sending the data request across the control bus and into the memory storage unit and getting the data through the same channel.

To speed up the processor operations, the processor includes some internal memory storage locations, called registers.

The registers store data elements for processing without having to access the memory. A limited number of registers are built into the processor chip.

##Processor Registers
There are ten 32-bit and six 16-bit processor registers in IA-32 architecture. The registers are grouped into three categories −

- General registers,
- Control registers, and
- Segment registers.

The general registers are further divided into the following groups −
- Data registers,
- Pointer registers, and
- Index registers.

###Data Registers
Four 32-bit data registers are used for arithmetic, logical, and other operations. These 32-bit registers can be used in three ways −

*As complete 32-bit data registers: `EAX, EBX, ECX, EDX`.
*Lower halves of the 32-bit registers can be used as four 16-bit data registers: AX, BX, CX and DX.
*Lower and higher halves of the above-mentioned four 16-bit registers can be used as eight 8-bit data registers: `AH, AL, BH, BL, CH, CL, DH, and DL`.

![Data Register image](http://www.tutorialspoint.com/assembly_programming/images/register1.jpg)

Some of these data registers have specific use in arithmetical operations.
- **AX is the primary accumulator;** it is used in input/output and most arithmetic instructions. For example, in multiplication operation, one operand is stored in EAX or AX or AL register according to the size of the operand.
- **BX is known as the base register** as it could be used in indexed addressing.
- **CX is known as the count register** as the ECX, CX registers store the loop count in iterative operations.
- **DX is known as the data register** It is also used in input/output operations. It is also used with AX register along with DX for multiply and divide operations involving large values.

## Pointer Register
The pointer registers are 32-bit EIP, ESP, and EBP registers and corresponding 16-bit right portions IP, SP, and BP. There are three categories of pointer registers −

- **Instruction Pointer (IP)** − The 16-bit IP register stores the offset address of the next instruction to be executed. IP in association with the CS register (as CS:IP) gives the complete address of the current instruction in the code segment.

- **Stack Pointer (SP)** − The 16-bit SP register provides the offset value within the program stack. SP in association with the SS register (SS:SP) refers to be current position of data or address within the program stack.

- **Base Pointer (BP)** − The 16-bit BP register mainly helps in referencing the parameter variables passed to a subroutine. The address in SS register is combined with the offset in BP to get the location of the parameter. BP can also be combined with DI and SI as base register for special addressing.
![Pointer Register Image](http://www.tutorialspoint.com/assembly_programming/images/register3.jpg)

##Index Register
The 32-bit index registers, ESI and EDI, and their 16-bit rightmost portions. SI and DI, are used for indexed addressing and sometimes used in addition and subtraction. There are two sets of index pointers −

- **Source Index (SI)** − It is used as source index for string operations.

- **Destination Index (DI)** − It is used as destination index for string operations.

![Index Register Image](http://www.tutorialspoint.com/assembly_programming/images/register2.jpg)

## Control Register
The 32-bit instruction pointer register and the 32-bit flags register combined are considered as the control registers.

Many instructions involve comparisons and mathematical calculations and change the status of the flags and some other conditional instructions test the value of these status flags to take the control flow to other location.

The common flag bits are:

- **Overflow Flag (OF)** − It indicates the overflow of a high-order bit (leftmost bit) of data after a signed arithmetic operation.

- **Direction Flag (DF)** − It determines left or right direction for moving or comparing string data. When the DF value is 0, the string operation takes left-to-right direction and when the value is set to 1, the string operation takes right-to-left direction.

- **Interrupt Flag (IF)** − It determines whether the external interrupts like keyboard entry, etc., are to be ignored or processed. It disables the external interrupt when the value is 0 and enables interrupts when set to 1.

- **Trap Flag (TF)** − It allows setting the operation of the processor in single-step mode. The DEBUG program we used sets the trap flag, so we could step through the execution one instruction at a time.

- **Sign Flag (SF)** − It shows the sign of the result of an arithmetic operation. This flag is set according to the sign of a data item following the arithmetic operation. The sign is indicated by the high-order of leftmost bit. A positive result clears the value of SF to 0 and negative result sets it to 1.

- **Zero Flag (ZF)** − It indicates the result of an arithmetic or comparison operation. A nonzero result clears the zero flag to 0, and a zero result sets it to 1.

- **Auxiliary Carry Flag (AF)** − It contains the carry from bit 3 to bit 4 following an arithmetic operation; used for specialized arithmetic. The AF is set when a 1-byte arithmetic operation causes a carry from bit 3 into bit 4.

- **Parity Flag (PF)** − It indicates the total number of 1-bits in the result obtained from an arithmetic operation. An even number of 1-bits clears the parity flag to 0 and an odd number of 1-bits sets the parity flag to 1.

- **Carry Flag (CF)** − It contains the carry of 0 or 1 from a high-order bit (leftmost) after an arithmetic operation. It also stores the contents of last bit of a shift or rotate operation.

The following table indicates the position of flag bits in the 16-bit Flags register:
<table class="table table-bordered">
<tbody><tr>
<th>Flag:</th>
<td></td>
<td></td>
<td></td>
<td></td>
<td>O</td>
<td>D</td>
<td>I</td>
<td>T</td>
<td>S</td>
<td>Z</td>
<td></td>
<td>A</td>
<td></td>
<td>P</td>
<td></td>
<td>C</td>
</tr>
<tr>
<th>Bit no:</th>
<td>15</td>
<td>14</td>
<td>13</td>
<td>12</td>
<td>11</td>
<td>10</td>
<td>9</td>
<td>8</td>
<td>7</td>
<td>6</td>
<td>5</td>
<td>4</td>
<td>3</td>
<td>2</td>
<td>1</td>
<td>0</td>
</tr>
</tbody></table>

##Segment Register
Segments are specific areas defined in a program for containing data, code and stack. There are three main segments −

Code Segment − It contains all the instructions to be executed. A 16-bit Code Segment register or CS register stores the starting address of the code segment.

Data Segment − It contains data, constants and work areas. A 16-bit Data Segment register or DS register stores the starting address of the data segment.

Stack Segment − It contains data and return addresses of procedures or subroutines. It is implemented as a 'stack' data structure. The Stack Segment register or SS register stores the starting address of the stack.

Apart from the DS, CS and SS registers, there are other extra segment registers - ES (extra segment), FS and GS, which provide additional segments for storing data.

In assembly programming, a program needs to access the memory locations. All memory locations within a segment are relative to the starting address of the segment. A segment begins in an address evenly divisible by 16 or hexadecimal 10. So, the rightmost hex digit in all such memory addresses is 0, which is not generally stored in the segment registers.

The segment registers stores the starting addresses of a segment. To get the exact location of data or instruction within a segment, an offset value (or displacement) is required. To reference any memory location in a segment, the processor combines the segment address in the segment register with the offset value of the location.



####**Control Bus**  
A control bus is a computer bus that is used by the CPU to communicate with devices that are contained within the computer. This occurs through physical connections such as cables or printed circuits.

####Difference Between Cache memory and Registers
![cache memory - register](http://s.hswstatic.com/gif/computer-memory-pyramid.gif)
