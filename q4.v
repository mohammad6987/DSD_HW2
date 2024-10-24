module tester;

reg a , b , d , g ;wire c , e ;reg [ 3 : 0 ] f ;
and #(3) a1 ( c , a , b) ;or #(4) a2 ( e , c , d) ;assign f = {a , c, c , e } ;

endmodule