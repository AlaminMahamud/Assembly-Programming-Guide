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
