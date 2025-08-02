// Invariants X101 

DiscreteInvariantsX101 := function(algebra) 

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
    


// Standard (3-dimensional)

eV101:= (3/24) * (3*e + (-1)*(p12 + p13 + p14 + p23 + p24 + p34) + (0)*(p123 + p132 + p124 + p142 + p134 + p143 + p234 + p243)  + (1)*(p1234 + p1243 + p1342 +  p1324 + p1423 + p1432)  + (-1)*(Z + T + Q));
eV101w:= MC*eV101;
eV101walg:= &+[eV101w[i]*m4[i] : i in [1..256]];
eV101walg;



comm:= function(x,y)
return x*y-y*x;
end function;
sk:= function(x,y)
return x*y+y*x;
end function;


// Start Basis V101 (W2W2, V tensor Wedge^3(V), Wedge^3(V) tensor V )

// Basis W2W2

W2W2def:= [comm(comm(F.i,F.j), comm(F.k,F.l)): i in [1..4], j in [1..4], k in [1..4], l in [1..4] ];
#W2W2def;
Z7:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in W2W2def]);
Rank(Z7);

OP9:= [[j,i]: i in [j+1..4], j in [1..4]];
#OP9;
prop9:= [[OP9[j], OP9[i]]: i in [1..6], j in [1..6] | i lt j];
#prop9;
W2W21:= [comm(comm(F.i,F.j), comm(F.k,F.l)): i in [p[1][1]], j in [p[1][2]], k in [p[2][1]], l in [p[2][2]], p in prop9];
#W2W21;
Z1:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in W2W21]);
Rank(Z1);

// End Basis W2W2



// Basis V tensor Wedge^3(V) 

wedge3 := function(a, b, c)
    return a*b*c - b*a*c - a*c*b - c*b*a + c*a*b + b*c*a;
end function;
VtensorW3V := [F.i * wedge3(F.j, F.k, F.l): i in [1..4], j in [1..4], k in [1..4], l in [1..4]];
#VtensorW3V;
Z8:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in VtensorW3V]);
Rank(Z8);

prop10 := [[i,j,k,l]: i in [1..4], j in [1..k-1], k in [1..l-1], l in [1..4]];
#prop10;
VtensorW3V1 := [ F.p[1] * wedge3(F.p[2], F.p[3], F.p[4]): p in prop10 ];
#VtensorW3V1;
Z2:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in VtensorW3V1]);
Rank(Z2);

// End Basis V tensor Wedge^3(V) 




// Basis Wedge^3(V) tensor V

W3VtensorV1 := [ wedge3(F.p[2], F.p[3], F.p[4]) * F.p[1]: p in prop10 ];
#W3VtensorV1;
Z3:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in W3VtensorV1]);
Rank(Z3);

// End Basis Wedge^3(V) tensor V


// Combine all matrices to check Rank
J1:= VerticalJoin(Z1,Z2);
J2:= VerticalJoin(J1,Z3);
Rank(J2);

//End Basis V101

Kron4:= function(a,b,c,d);
return KroneckerProduct(KroneckerProduct(KroneckerProduct(a,b), c),d);
end function;
coProduct4:= function(e);
iden:= ScalarMatrix(4,K!1);
return Kron4( e, iden, iden, iden) + Kron4( iden, e, iden, iden) + Kron4( iden, iden, e, iden) + Kron4( iden, iden, iden, e);
end function;

e1 := Matrix(K, 4,4, [1,0,0,0, 0,0,0,0,  0,0,0,0, 0,0,0,-1]);
e2:= DiagonalMatrix(K, 4, [1,-1,0,0]);
e3:= DiagonalMatrix(K, 4, [0,1,-1,0]);
e4:= DiagonalMatrix(K, 4, [0,0,1,-1]);

e12 := Matrix(SparseMatrix(K,4,4, [<1,2,1>]));
e23 := Matrix(SparseMatrix(K,4,4, [<2,3,1>]));
e34 := Matrix(SparseMatrix(K,4,4, [<3,4,1>]));
e21 := Matrix(SparseMatrix(K,4,4, [<2,1,1>]));
e32:=Matrix(SparseMatrix(K,4,4,[<3,2,1>]));
e43:=Matrix(SparseMatrix(K,4,4,[<4,3,1>]));
e13:=Matrix(SparseMatrix(K,4,4,[<1,3,1>]));
e31:=Matrix(SparseMatrix(K,4,4,[<3,1,1>]));



N1:= [e12,e23,e34];
Interse:= &meet [NullSpace((coProduct4(x))) : x in N1] ;
I:= Interse meet Image(Z1);   // where Z1 corresponds to W2W2
s1vec:= I.1;

// first highest weight vector
s1:= &+[s1vec[i]*m4[i]:  i in [1..256]];
s1;


// s1:= (y*w - w*y)*(z*w - w*z) - (z*w - w*z)*(y*w - w*y)

// s1 is in W2W2.  




N1:= [e12,e23,e34];
Interse:= &meet [NullSpace((coProduct4(x))) : x in N1] ;
I:= Interse meet Image(Z2);      //  where Z2 corresponds to V tensor Wedge^3(V)
s2vec1:= I.1;
s2vec2:= I.2;

s2vec := I.1 + I.2;
s2 := &+[s2vec[i]*m4[i]:  i in [1..256]];
s2;

// Two highest weight vectors from V tensor Wedge^3(V)
s21:= &+[s2vec1[i]*m4[i]:  i in [1..256]];


s22:= &+[s2vec2[i]*m4[i]:  i in [1..256]];



N1:= [e12,e23,e34];
Interse:= &meet [NullSpace((coProduct4(x))) : x in N1] ;
I:= Interse meet Image(Z3);       //  where Z3 corresponds to Wedge^3(V) tensor V
s3vec1:= I.1;
s3vec2:= I.2;

// Two highest weight vectors from Wedge^3(V) tensor V
s31:= &+[s3vec1[i]*m4[i]:  i in [1..256]];
s31;

s32:= &+[s3vec2[i]*m4[i]:  i in [1..256]];
s32;


// We have 4 highest weight vectors now in total, s1(from W2W2), s21 & s22 (from V tensor Wedge^3(V)), 
// and s31(= s21) & s32 (from Wedge^3(V) tensor V)



u1:= Z*p13;
u2:= Z*p13*Z*p13;
u3:= Z*p13*Z*p13*Z*p13;
eL0 := (1/4)*(e + u1 + u2 + u3);
eL1 := (1/4)*(e + i*u1 - u2 - i*u3);
eL3 := (1/4)*(e - i*u1 - u2 + i*u3);
eL2 := (1/4)*(e - u1 + u2 - u3);

// where i = RootOfUnity(4)


// There are 9 possible combinations between s1,s22,s32  and L0,L1 & L3.

s1L0:= Matrix(s1vec)*eL0;
s1L0;
s1L1:= Matrix(s1vec)*eL1;
s1L1;
s1L3:= Matrix(s1vec)*eL3;
s1L3;



s22L0:= Matrix(s2vec2)*eL0;
s22L0;
s22L1:= Matrix(s2vec2)*eL1;
s22L1;
s22L3:= Matrix(s2vec2)*eL3;
s22L3;


s32L0:= Matrix(s3vec2)*eL0;
s32L0;
s32L1:= Matrix(s3vec2)*eL1;
s32L1;
s32L3:= Matrix(s3vec2)*eL3;
s32L3;



s10:= &+[Vector(s1L0)[i]*m4[i]:  i in [1..256]];
s10;
s11:= &+[Vector(s1L1)[i]*m4[i]:  i in [1..256]];
s11;
s13:= &+[Vector(s1L3)[i]*m4[i]:  i in [1..256]];
s13;

s220:= &+[Vector(s22L0)[i]*m4[i]:  i in [1..256]];
s220;

s221:= &+[Vector(s22L1)[i]*m4[i]:  i in [1..256]];
s221;
s223:= &+[Vector(s22L3)[i]*m4[i]:  i in [1..256]];
s223;


s320:= &+[Vector(s32L0)[i]*m4[i]:  i in [1..256]];
s320;
s321:= &+[Vector(s32L1)[i]*m4[i]:  i in [1..256]];
s321;
s323:= &+[Vector(s32L3)[i]*m4[i]:  i in [1..256]];
s323;


// Finding all vectors in each representation by applying vectors in the lie algebra. 


lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(K,4,1)];
P2:= Matrix([s2vec2*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(P2);
#Rows(P2);
Ncols(P2);
mapVtensorWedge3VtoVtensor4:= Matrix(Basis(Image(P2)));
#Rows(mapVtensorWedge3VtoVtensor4);
Ncols(mapVtensorWedge3VtoVtensor4);





lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(K,4,1)];
P11:= Matrix([s1L1*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(P11);
#Rows(P11);
Ncols(P11);
mapW2W2L1toVtensor4:= Matrix(Basis(Image(P11)));
#Rows(mapW2W2L1toVtensor4);
Ncols(mapW2W2L1toVtensor4);


lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(K,4,1)];
P220:= Matrix([s22L0*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(P220);
#Rows(P220);
Ncols(P220);

mapVtensorWedge3VL0toVtensor4:= Matrix(Basis(Image(P220)));
#Rows(mapVtensorWedge3VL0toVtensor4);
Ncols(mapVtensorWedge3VL0toVtensor4);


lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(K,4,1)];
P323:= Matrix([s32L3*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(P323);
#Rows(P323);
Ncols(P323);
mapWedge3VtensorVL3toVtensor4:= Matrix(Basis(Image(P323)));
#Rows(mapWedge3VtensorVL3toVtensor4);
Ncols(mapWedge3VtensorVL3toVtensor4);


Join1 := VerticalJoin(P11, P220);
Join2 := VerticalJoin(Join1, P323);
Rank(Join2);


T11:= Solution(P11, mapW2W2L1toVtensor4);
#Rows(T11);
Ncols(T11);

(T11) * (P11) eq mapW2W2L1toVtensor4;

T220:= Solution( mapVtensorWedge3VL0toVtensor4, P220);
#Rows(T220);
Ncols(T220);

(T220) *  mapVtensorWedge3VL0toVtensor4  eq (P220);

T323:= Solution(P323, mapWedge3VtensorVL3toVtensor4);
#Rows(T323);
Ncols(T323);

(T323) * (P323) eq mapWedge3VtensorVL3toVtensor4;

isomW2W2L1toVtensorWedge3VL0 := (T11) * (T220); 
isomWedge3VtensorVL3toVtensorWedge3VL0 := (T323) * (T220); 

isomW2W2L1toWedge3VtensorVL3 := Solution(isomWedge3VtensorVL3toVtensorWedge3VL0, isomW2W2L1toVtensorWedge3VL0);

isomW2W2L1toWedge3VtensorVL3 *((T323) * (T220)) eq ((T11) * (T220)); 


w1010:= eV101w*eL0;
w1011:= eV101w*eL1;
w1013:= eV101w*eL3;


S112:= Transpose( Solution(  Transpose(P11),  Transpose(P2) ) );
S2202:= Transpose( Solution(  Transpose(P220),  Transpose(P2) ) );
S3232:= Transpose( Solution(  Transpose(P323),  Transpose(P2) ) );


f0 := w1010*S2202;
f1 := w1011*S112;
f3 := w1013*S3232;

gamma1:= Solution(Z2, f0);
gamma2:= Solution(Z2, f1);
gamma3:= Solution(Z2, f3);
gamma1;
gamma2;
gamma3;



// Defining variety P^3 x P^3*

P3new:= ProjectiveSpace(K,3); 
P3P3new<x1,x2,x3,x4,x5,x6,x7,x8>:= DirectProduct(P3new,P3new); 
P3P3new;

flag101:= &+[P3P3new.i*P3P3new.(i+4): i in [1..4]];
flag101;

base101 := [x1*x5, x2*x5, x3*x5, x4*x5, x1*x6, x2*x6, x3*x6, x4*x6, x1*x7, x2*x7, x3*x7, x4*x7, x1*x8, x2*x8, x3*x8, x4*x8];
#base101;
base101;

z1:= &+[gamma1[i]*base101[i] : i in [1..16]];
z2:= &+[gamma2[i]*base101[i] : i in [1..16]];
z3:= &+[gamma3[i]*base101[i] : i in [1..16]];

z1;
z2;
z3;

X101withoutsegrenew:= Scheme(P3P3new, [flag101, z1, z2, z3] );
X101withoutsegrenew;



DimDegPCX101:= [[Dimension(p), Degree(SegreEmbedding(p))] : p in PrimaryComponents(X101withoutsegrenew)];
DimDegPCRX101:= [[Dimension(p), Degree(SegreEmbedding(p))] : p in PrimaryComponents(ReducedSubscheme(X101withoutsegrenew))];
DimDegPCSX101:= [[Dimension(p), Degree(SegreEmbedding(p))] : p in PrimaryComponents(SingularSubscheme(X101withoutsegrenew))];
DimDegPCRSX101:= [[Dimension(p), Degree(SegreEmbedding(p))] : p in PrimaryComponents(ReducedSubscheme(SingularSubscheme(X101withoutsegrenew)))];

return DimDegPCX101, DimDegPCRX101, DimDegPCSX101, DimDegPCRSX101   ;
end function; 







