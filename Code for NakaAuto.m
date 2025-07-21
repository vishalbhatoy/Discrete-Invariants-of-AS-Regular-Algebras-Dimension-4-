// Nakayama Automorphism Code


nakayamaAut:=function(algebra)
K:=algebra[1];
F:=algebra[2];
Rels:=algebra[3];
Gens:=algebra[4];
    
m2 := [B*A: A in Gens,B in Gens];
m3 := [A*B: B in m2,A in Gens];
m4 := [A*B: B in m3,A in Gens];

   
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
wsup;

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


splitElement := Matrix([[MonomialCoefficient(wsup,q*p): q in m3]: p in Gens]);
#Rows(splitElement);
Ncols(splitElement);


cyclew:= MC*p1243;
cyclewalg := &+[cyclew[i]*m4[i]:  i in [1..256]];
cyclewalg;

cyclesplitElement := Matrix([[MonomialCoefficient(cyclewalg,q*p): q in m3] : p in Gens]);
#Rows(cyclesplitElement);
Ncols(cyclesplitElement);
cyclesplitElement;

X:= splitElement; 
Y:= cyclesplitElement; 
P := Solution(X, Y);
#Rows(P);
Ncols(P);

Y eq P*X;

nakayamaAut:= -P^(-1);
nakayamaAut;


CharacteristicPolynomial(nakayamaAut);
Factorization(CharacteristicPolynomial(nakayamaAut));

        
return Determinant(nakayamaAut);
end function;



