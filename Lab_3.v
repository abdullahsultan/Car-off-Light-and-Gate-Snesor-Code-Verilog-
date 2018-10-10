`timescale 1ns/1ps

module lab3(
      input  i,
      input  l,
      input  g1,
      input  g2,
      output o);

   reg       i_inv;
   reg       landi_inv;
   reg       g1org2;
   reg       landi_inv_or_g1org2;
  

   always @(i , l , g1 , g2) begin
   i_inv = ~(i);
   landi_inv = i_inv & l;
   g1org2 = g1 | g2;
   landi_inv_or_g1org2 = g1org2 | landi_inv;
  
   end

   assign o = landi_inv_or_g1org2;
endmodule 
