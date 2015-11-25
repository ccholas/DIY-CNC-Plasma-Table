# DIY-CNC-Plasma-Table
This is a project for building you own CNC Plasma Cutting table using Arduino UNO and Raspberry Pi platforms. I started out looking to build a Plasma Cutter Table using an old Ez3D printer platform that I had sitting int he basement. I have started this project completely ignorant of how to build a plaatform like this and even to make it function. I have read many different websites claiming instructions on how to build a CNC. But I found them to be confusing and incomplete with the information that you need to build the system. I initially set out to convert the Rambo v1.2 board I had in my old printer. But quickly ran into porting issues on getting GRBL to work on the board. I am not giving up on this challenge, but I wanted to see this thing cut metal, so I went down the GRBL Arduino Uno and gShield path to start. If anyone has a GRBL conversion for the Rambo board I would sure love to see that link.

This is a work in progress and I hope that it helps someone else achieve their goals of building a plasma cutting platform.

/****************************************************************************************************************************/
Chapter One: Bill of Materials
/****************************************************************************************************************************/
There are lots of options for you to choose from. I am going to include my approach to the table and the parts I used. If you follow my plans you will have everything you need to build the platform. I have a Lulzbot Mini 3D printer and printed out all of the motor mounts, bearings, Z-Axis, etc. I have included all of those STL files in this project. Please refer to the BOM.xls file for specific ordering information.

/****************************************************************************************************************************/
Chapter Two: Mechnical Design
/****************************************************************************************************************************/
Special thanks to these Thingiverse projects. They saved me hours of time measuring and modeling. Thank you very much. http://www.thingiverse.com/thing:19758, http://www.thingiverse.com/thing:12508, http://www.thingiverse.com/thing:189585, http://www.thingiverse.com/thing:922740, http://www.thingiverse.com/thing:668048, http://www.thingiverse.com/thing:627397, http://www.thingiverse.com/thing:825868, http://www.thingiverse.com/thing:11572, 

/****************************************************************************************************************************/
Chapter Three: Software
/****************************************************************************************************************************/
I used these software projects for building the Plasma. You will need to download them later in the assembly and installation process.
Arduino Uno code for controlling the Axis - https://github.com/grbl/grbl
Grbl Controller for Raspberry Pi https://github.com/zapmaker/GrblHoming
Inkscape Drawing UI - https://inkscape.org/en/download/




