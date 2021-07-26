//-------------------------------------------------------------------
//                                                                 
//  COPYRIGHT (C) 2011, VIPcore Group, Fudan University
//                                                                  
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE      
//  EXPRESSED WRITTEN CONSENT OF VIPcore Group
//                                                                  
//  VIPcore       : http://soc.fudan.edu.cn/vip    
//  IP Owner 	  : Yibo FAN
//  Contact       : fanyibo@fudan.edu.cn             
//-------------------------------------------------------------------
// Filename       : bs.v
// Author         : shen weiwei
// Created        : 2011-01-07
// Description    : Where does this file get inputs and send outputs?
// What does the guts of this file accomplish, and how does it do it?
// What module(s) does this file instantiate?
//               
// $Id$ 
//------------------------------------------------------------------- 
`include "enc_defines.v"

module rom_beta (  address_i, q_o );

input [5:0] address_i;

output [4:0] q_o;
reg [4:0] q_o;

always@(address_i)
begin
	case(address_i)
	6'd16:q_o = 5'd2;
	6'd17:q_o = 5'd2;
	6'd18:q_o = 5'd2;
	6'd19:q_o = 5'd3;
	6'd20:q_o = 5'd3;
	6'd21:q_o = 5'd3;
	6'd22:q_o = 5'd3;
	6'd23:q_o = 5'd4;
	6'd24:q_o = 5'd4;
	6'd25:q_o = 5'd4;
	6'd26:q_o = 5'd6;
	6'd27:q_o = 5'd6;
	6'd28:q_o = 5'd7;
	6'd29:q_o = 5'd7;
	6'd30:q_o = 5'd8;
	6'd31:q_o = 5'd8;
	6'd32:q_o = 5'd9;
	6'd33:q_o = 5'd9;
	6'd34:q_o = 5'd10;
	6'd35:q_o = 5'd10;
	6'd36:q_o = 5'd11;
	6'd37:q_o = 5'd11;
	6'd38:q_o = 5'd12;
	6'd39:q_o = 5'd12;
	6'd40:q_o = 5'd13;
	6'd41:q_o = 5'd13;
	6'd42:q_o = 5'd14;
	6'd43:q_o = 5'd14;
	6'd44:q_o = 5'd15;
	6'd45:q_o = 5'd15;
	6'd46:q_o = 5'd16;
	6'd47:q_o = 5'd16;
	6'd48:q_o = 5'd17;
	6'd49:q_o = 5'd17;
	6'd50:q_o = 5'd18;
	6'd51:q_o = 5'd18;
	default: q_o = 0;
endcase
end

endmodule