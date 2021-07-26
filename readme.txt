
 ******************************************************************
 * Copyright (c) 2019-present, VIP Lab, Fudan University
 * Contact: fanyibo@fudan.eud.cn
 ******************************************************************

*** File List ***
|-- h264 openasic ------------------------------------------------------------------------- main folder 
    |-- lib ------------------------------------------------------------------------------- behavioral memory model 

    |-- rtl ------------------------------------------------------------------------------- full RTL of the h264 encoder 
        |-- cavlc ------------------------------------------------------------------------- RTL for the cavlc
        |-- db ---------------------------------------------------------------------------- RTL for the deblocking
        |-- fetch ------------------------------------------------------------------------- RTL for the fetch, data exchange with the external memory 
        |-- fme --------------------------------------------------------------------------- RTL for the fractional motion estimation, interpolation 
        |-- ime --------------------------------------------------------------------------- RTL for the integer motion estimation  
        |-- intra -------------------------------------------------------------------------- RTL for the intra prediction
        |-- mc --------------------------------------------------------------------------- RTL for the motion  compensation
        |-- mem --------------------------------------------------------------------------- all the memory model in the h264 encoder 
        |-- top --------------------------------------------------------------------------- RTL for the h264 encoder top architecture, interface, memory arbiter
        |-- tq--------------------------------------------------------------------------- RTL for the reconstruction loop, including DCT/Quan/IQuan/IDCT
        |-- enc_defines.v ----------------------------------------------------------------- defines in the h264 encoder 

    |-- sim ------------------------------------------------------------------------------- simulation files for the h264 encoder 
        |-- top_testbench ----------------------------------------------------------------- TV and TB for the h264 encoder top 

    |-- sw -------------------------------------------------------------------------------- F264 for the test vector generation to test the h264 encoder RTL 
        |-- f264.exe ---------------------------------------------------------------------- windows version under debug/win32


*** Instructions *** 
   a. put the input YUV sequence into the sw file
   b. use command line to configure the parameters of f264.exe and run it to generate TV files. 
       Usage: 
		 -help       : Printf usage
		 -i             : input YUV file name
		 -o            : output BS file name
		 -r             : output REC file name
		 -w            : Width of YUV sequence
		 -h            : Height of YUV sequence
		 -g            : GOP Length
		 -f             : Encode frames
		 -q            : Encode qp
       For example:
       f264.exe -i BlowingBubbles_416x240_50.yuv -o BlowingBubbles_416x240_50.264 -r BlowingBubbles_416x240_50_rec.yuv -w 416 -h 240 -g 5 -f 10 -q 27
       If it runs successfully, it will generate a BS file, a REC file and two TV files -- bs_check.dat, cur_mb_p4.dat
   c. put the TV files into  sim/top_testbench/tv 
   d. make sure the parameters in the TB are the same as the parameters of f264
   e. use command line to start the simulation. If something goes wrong, the simulation will be teriminated and you should check the parameters or the waveform further.

*** Please feel free to contact us with any question *** 

### DO NOT ADD ANYTHING BELOW THIS LINE ###