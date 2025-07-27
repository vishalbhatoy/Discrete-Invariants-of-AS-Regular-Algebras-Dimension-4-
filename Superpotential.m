superpotential := function(algebra)
   K:=algebra[1];
   F:=algebra[2];
   Rels:=algebra[3];
   Gens:=algebra[4];
   
   m2 := [B*A: A in Gens,B in Gens];
   m3 := [B*A: B in m2,A in Gens];
   m4 := [B*A: B in m3,A in Gens];
   
   RA1A1 := [i*j*k: i in Rels, j in Gens, k in Gens];
   RtensorA1tensorA1 := Matrix([[MonomialCoefficient(l,k): k in m4] : l in RA1A1]);
   
   
   A1A1R := [i*j*k: i in Gens, j in Gens, k in Rels];
   A1tensorA1tensorR := Matrix([[MonomialCoefficient(l,k): k in m4] : l in A1A1R]);
   
   
   A1RA1:=[i*j*k: i in Gens, j in Rels, k in Gens];
   A1tensorRtensorA1 := Matrix([[MonomialCoefficient(l,k): k in m4] : l in A1RA1]);
   
   
   spb:=Basis(Image(RtensorA1tensorA1) meet Image(A1tensorA1tensorR) meet Image(A1tensorRtensorA1));
   sp:=Eltseq(spb[1]);
   
   // Calculate superpotential
   wsup := &+[sp[i]*m4[i]:  i in [1..256]];
   MC := Vector([MonomialCoefficient(wsup,k): k in m4]);
    
    return wsup;
end function;





