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
    
    return w;
end function;


S4projOfPotentialeV400:=function(algebra)
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
    A12 := Matrix(K, 16,16, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,  
0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,  0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0, 
0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,  0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]);
I16 := Matrix(K, 16,16, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]);

p34:= KroneckerProduct(A12,I16);
p12:= KroneckerProduct(I16,A12);
I4 := Matrix(K, 4,4, [1,0,0,0, 0,1,0,0,  0,0,1,0, 0,0,0,1]);
KP:= KroneckerProduct(I4,A12);
p13:= KroneckerProduct(KP,I4);
p123:= p13*p12;
p1234:= p123*p34;
Z:= p34*p12;
p23:= p123*p13;
p234:= p12*p1234;
p243:= p34*p23;
p24:= p23*p243;
p1243:= p243*p13;
p124:= p34*p1234;
p132:= p12*p13;
p1342:= p123*p1234;
p134:= p23*p1234;
T:= p24*p13;
p1324:= p124*p13;
p1432:= Z*p13;
p142:= p134*T;
p143:= p12*p1432;
p14:= p123*p1432;
p1423:= p34*T;
Q:= p14*p23;
e := KroneckerProduct(I16, I16);    
    
    
eV400 := (1/24) * (e + p12 + p13 + p14 + p23 + p24 + p34 + p123 + p132 + p124 + p142 + p134 + p143 + p234 + p243 + p1234 + p1243 + p1342 +  p1324 + p1423 + p1432 + Z + T + Q);
eV400w := MC * eV400;
eV400walg:= &+[eV400w[i]*m4[i] : i in [1..256]];
    
    return eV400walg;
    end function;

S4projOfPotentialeV000:=function(algebra)
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
    A12 := Matrix(K, 16,16, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,  
0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,  0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0, 
0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,  0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]);
I16 := Matrix(K, 16,16, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]);

p34:= KroneckerProduct(A12,I16);
p12:= KroneckerProduct(I16,A12);
I4 := Matrix(K, 4,4, [1,0,0,0, 0,1,0,0,  0,0,1,0, 0,0,0,1]);
KP:= KroneckerProduct(I4,A12);
p13:= KroneckerProduct(KP,I4);
p123:= p13*p12;
p1234:= p123*p34;
Z:= p34*p12;
p23:= p123*p13;
p234:= p12*p1234;
p243:= p34*p23;
p24:= p23*p243;
p1243:= p243*p13;
p124:= p34*p1234;
p132:= p12*p13;
p1342:= p123*p1234;
p134:= p23*p1234;
T:= p24*p13;
p1324:= p124*p13;
p1432:= Z*p13;
p142:= p134*T;
p143:= p12*p1432;
p14:= p123*p1432;
p1423:= p34*T;
Q:= p14*p23;
e := KroneckerProduct(I16, I16);  


eV000 := (1/24) * (e + (-1)*(p12 + p13 + p14 + p23 + p24 + p34) + (1)*(p123 + p132 + p124 + p142 + p134 + p143 + p234 + p243)  + (-1)*(p1234 + p1243 + p1342 +  p1324 + p1423 + p1432)  + (1)*(Z + T + Q));
eV000w := MC * eV000;
eV000walg:= &+[eV000w[i]*m4[i] : i in [1..256]];
    
    
    return eV000walg;
    end function;

S4projOfPotentialeV210:=function(algebra)
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
    A12 := Matrix(K, 16,16, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,  
0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,  0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0, 
0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,  0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]);
I16 := Matrix(K, 16,16, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]);

p34:= KroneckerProduct(A12,I16);
p12:= KroneckerProduct(I16,A12);
I4 := Matrix(K, 4,4, [1,0,0,0, 0,1,0,0,  0,0,1,0, 0,0,0,1]);
KP:= KroneckerProduct(I4,A12);
p13:= KroneckerProduct(KP,I4);
p123:= p13*p12;
p1234:= p123*p34;
Z:= p34*p12;
p23:= p123*p13;
p234:= p12*p1234;
p243:= p34*p23;
p24:= p23*p243;
p1243:= p243*p13;
p124:= p34*p1234;
p132:= p12*p13;
p1342:= p123*p1234;
p134:= p23*p1234;
T:= p24*p13;
p1324:= p124*p13;
p1432:= Z*p13;
p142:= p134*T;
p143:= p12*p1432;
p14:= p123*p1432;
p1423:= p34*T;
Q:= p14*p23;
e := KroneckerProduct(I16, I16);   
    
    
eV210:= (3/24) * (3*e + (1)*(p12 + p13 + p14 + p23 + p24 + p34) + (0)*(p123 + p132 + p124 + p142 + p134 + p143 + p234 + p243)  + (-1)*(p1234 + p1243 + p1342 +  p1324 + p1423 + p1432)  + (-1)*(Z + T + Q));
eV210w := MC * eV210; 
eV210walg:= &+[eV210w[i]*m4[i] : i in [1..256]];
    
    return eV210walg;
    end function;

S4projOfPotentialeV101:=function(algebra)
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
    A12 := Matrix(K, 16,16, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,  
0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,  0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0, 
0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,  0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]);
I16 := Matrix(K, 16,16, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]);

p34:= KroneckerProduct(A12,I16);
p12:= KroneckerProduct(I16,A12);
I4 := Matrix(K, 4,4, [1,0,0,0, 0,1,0,0,  0,0,1,0, 0,0,0,1]);
KP:= KroneckerProduct(I4,A12);
p13:= KroneckerProduct(KP,I4);
p123:= p13*p12;
p1234:= p123*p34;
Z:= p34*p12;
p23:= p123*p13;
p234:= p12*p1234;
p243:= p34*p23;
p24:= p23*p243;
p1243:= p243*p13;
p124:= p34*p1234;
p132:= p12*p13;
p1342:= p123*p1234;
p134:= p23*p1234;
T:= p24*p13;
p1324:= p124*p13;
p1432:= Z*p13;
p142:= p134*T;
p143:= p12*p1432;
p14:= p123*p1432;
p1423:= p34*T;
Q:= p14*p23;
e := KroneckerProduct(I16, I16);   
    


eV101:= (3/24) * (3*e + (-1)*(p12 + p13 + p14 + p23 + p24 + p34) + (0)*(p123 + p132 + p124 + p142 + p134 + p143 + p234 + p243)  + (1)*(p1234 + p1243 + p1342 +  p1324 + p1423 + p1432)  + (-1)*(Z + T + Q));
eV101w:= MC*eV101;
eV101walg:= &+[eV101w[i]*m4[i] : i in [1..256]];
    
    return eV101walg;
    end function;

S4projOfPotentialeV020:=function(algebra)
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
    A12 := Matrix(K, 16,16, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,  
0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,  0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0, 
0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,  0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]);
I16 := Matrix(K, 16,16, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]);

p34:= KroneckerProduct(A12,I16);
p12:= KroneckerProduct(I16,A12);
I4 := Matrix(K, 4,4, [1,0,0,0, 0,1,0,0,  0,0,1,0, 0,0,0,1]);
KP:= KroneckerProduct(I4,A12);
p13:= KroneckerProduct(KP,I4);
p123:= p13*p12;
p1234:= p123*p34;
Z:= p34*p12;
p23:= p123*p13;
p234:= p12*p1234;
p243:= p34*p23;
p24:= p23*p243;
p1243:= p243*p13;
p124:= p34*p1234;
p132:= p12*p13;
p1342:= p123*p1234;
p134:= p23*p1234;
T:= p24*p13;
p1324:= p124*p13;
p1432:= Z*p13;
p142:= p134*T;
p143:= p12*p1432;
p14:= p123*p1432;
p1423:= p34*T;
Q:= p14*p23;
e := KroneckerProduct(I16, I16);   

eV020:= (2/24) * (2*e + (0)*(p12 + p13 + p14 + p23 + p24 + p34) + (-1)*(p123 + p132 + p124 + p142 + p134 + p143 + p234 + p243)  + (0)*(p1234 + p1243 + p1342 +  p1324 + p1423 + p1432)  + (2)*(Z + T + Q));
eV020w:= MC*eV020;
eV020walg:= &+[eV020w[i]*m4[i] : i in [1..256]];

    return eV020walg;
    end function;




