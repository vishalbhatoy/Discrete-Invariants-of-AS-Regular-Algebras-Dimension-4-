// Invariants X210

DiscreteInvariantsX210 := function(algebra)
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
    




// StandardtensorAlternating (3-dimensional)

eV210:= (1/24) * (3*e + (1)*(p12 + p13 + p14 + p23 + p24 + p34) + (0)*(p123 + p132 + p124 + p142 + p134 + p143 + p234 + p243)  + (-1)*(p1234 + p1243 + p1342 +  p1324 + p1423 + p1432)  + (-1)*(Z + T + Q));
eV210w := MC * eV210;
eV210walg:= &+[eV210w[i]*m4[i] : i in [1..256]];

comm:= function(x,y)
return x*y-y*x;
end function;
sk:= function(x,y)
return x*y+y*x;
end function;

//Start Basis V210
// Basis W2S2
W2S21:= [comm(sk(F.i,F.j), sk(F.k,F.l)): i in [1..4], j in [1..4], k in [1..4], l in [1..4] ];
#W2S21;
Z4:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in W2S21]);
Rank(Z4);
OP11:= [[j,i]: i in [j..4], j in [1..4]];
#OP11;
prop11:= [[OP11[j], OP11[i]]: i in [1..10], j in [1..10] | i lt j];
#prop11;

W2S22:= [comm(sk(F.i,F.j), sk(F.k,F.l)) : i in [p[1][1]], j in [p[1][2]], k in [p[2][1]], l in [p[2][2]], p in prop11 ];
#W2S22;
Z5:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in W2S22]);
Rank(Z5);
// End Basis W2S2

// Basis V tensor S3V & S3V tensor V
sym3 := function(a, b, c)
    return  a*b*c + b*a*c + a*c*b + c*b*a + c*a*b + b*c*a;
end function;

VtensorS3V := [F.i * sym3(F.j, F.k, F.l): i in [1..4], j in [1..4], k in [1..4], l in [1..4]];
#VtensorS3V;
Z12:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in VtensorS3V ]);
Rank(Z12);

ImVtensorS3V := [F.i * sym3(F.j, F.k, F.l) - F.j * sym3(F.i, F.k, F.l) : i in [1..4], j in [1..4], k in [1..4], l in [1..4] ];
#ImVtensorS3V;
Z17:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in ImVtensorS3V ]);
Rank(Z17);

ImS3VtensorV := [sym3(F.i, F.k, F.l)*F.j -  sym3(F.j, F.k, F.l) * F.i : i in [1..4], j in [1..4], k in [1..4], l in [1..4] ];
#ImS3VtensorV;
Z18:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in ImS3VtensorV ]);
Rank(Z18);
// End Basis V tensor S3V & S3V tensor V



// Combine all matrices to check Rank
J3:= VerticalJoin(Z5,Z17);
J4:= VerticalJoin(J3,Z18);
Rank(J4);
//End Basis V210

sym2 := function(a, b)
    return  a*b + b*a ;
end function;

wedge2 := function(a, b)
    return  a*b - b*a ;
end function;


// Basis sym2Vtensorwedge2V
sym2Vtensorwedge2V := [ sym2(F.i, F.j) * wedge2(F.k, F.l): i in [1..4], j in [1..4], k in [1..4], l in [1..4] ];
#sym2Vtensorwedge2V;
Z19:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in sym2Vtensorwedge2V ]);
Rank(Z19);

sym2Vtensorwedge2V1 := [sym2(F.i, F.j) * wedge2(F.k, F.l): i in [j..4], j in [1..4], k in [l+1..4], l in [1..4]];
#sym2Vtensorwedge2V1;
Z20:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in sym2Vtensorwedge2V1  ]);
Rank(Z20);


// Basis wedge2Vtensorsym2V 
wedge2Vtensorsym2V := [  wedge2(F.k, F.l) * sym2(F.i, F.j)  : i in [1..4], j in [1..4], k in [1..4], l in [1..4] ];
#wedge2Vtensorsym2V; 
Z21:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in wedge2Vtensorsym2V ]);
Rank(Z21);

wedge2Vtensorsym2V1 := [  wedge2(F.k, F.l) * sym2(F.i, F.j)  : i in [j..4], j in [1..4], k in [l+1..4], l in [1..4] ];
#wedge2Vtensorsym2V1; 
Z22:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in wedge2Vtensorsym2V1 ]);
Rank(Z22);

// Combine all matrices to check Rank
J6:= VerticalJoin(Z5,Z20);
J7:= VerticalJoin(J6,Z22);
Rank(J7);


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

I:= Interse meet Image(Z5);   // Z5 corresponds to W2S2
u1vec:= I.1;
// first highest weight vector
u1:= &+[u1vec[i]*m4[i]:  i in [1..256]];
u1;



N1:= [e12,e23,e34];
Interse:= &meet [NullSpace((coProduct4(x))) : x in N1] ;
I:= Interse meet Image(Z20);   // Z20 corresponds to sym2Vtensorwedge2V
u21vec:= I.1;
// first highest weight vector
u21:= &+[u21vec[i]*m4[i]:  i in [1..256]];
u21;


N1:= [e12,e23,e34];
Interse:= &meet [NullSpace((coProduct4(x))) : x in N1] ;
I:= Interse meet Image(Z20);   // Z20 corresponds to sym2Vtensorwedge2V
u22vec:= I.2;
// first highest weight vector
u22:= &+[u22vec[i]*m4[i]:  i in [1..256]];
u22;



N1:= [e12,e23,e34];
Interse:= &meet [NullSpace((coProduct4(x))) : x in N1] ;
I:= Interse meet Image(Z22);   // Z22 corresponds to wedge2Vtensorsym2V
u31vec:= I.1;
// first highest weight vector
u31:= &+[u31vec[i]*m4[i]:  i in [1..256]];
u31;


N1:= [e12,e23,e34];
Interse:= &meet [NullSpace((coProduct4(x))) : x in N1] ;
I:= Interse meet Image(Z22);   // Z22 corresponds to wedge2Vtensorsym2V
u32vec:= I.2;
// first highest weight vector
u32:= &+[u32vec[i]*m4[i]:  i in [1..256]];
u32;


u1:= Z*p13;
u2:= Z*p13*Z*p13;
u3:= Z*p13*Z*p13*Z*p13;
eL0 := (1/4)*(e + u1 + u2 + u3);
eL1 := (1/4)*(e + i*u1 - u2 - i*u3);
eL3 := (1/4)*(e - i*u1 - u2 + i*u3);
eL2 := (1/4)*(e - u1 + u2 - u3);

// where i = RootOfUnity(4)

u1L1:= Matrix(u1vec)*eL1;
u1L1;
u1L2:= Matrix(u1vec)*eL2;
u1L2;
u1L3:= Matrix(u1vec)*eL3;
u1L3;


u21L1:= Matrix(u21vec)*eL1;
u21L1;
u21L2:= Matrix(u21vec)*eL2;
u21L2;
u21L3:= Matrix(u21vec)*eL3;
u21L3;


u22L1:= Matrix(u22vec)*eL1;
u22L1;
u22L2:= Matrix(u22vec)*eL2;
u22L2;
u22L3:= Matrix(u22vec)*eL3;
u22L3;



u31L1:= Matrix(u31vec)*eL1;
u31L1;
u31L2:= Matrix(u31vec)*eL2;
u31L2;
u31L3:= Matrix(u31vec)*eL3;
u31L3;


u32L1:= Matrix(u32vec)*eL1;
u32L1;
u32L2:= Matrix(u32vec)*eL2;
u32L2;
u32L3:= Matrix(u32vec)*eL3;
u32L3;




u11:= &+[Vector(u1L1)[i]*m4[i]:  i in [1..256]];
u11;
u12:= &+[Vector(u1L2)[i]*m4[i]:  i in [1..256]];
u12;
u13:= &+[Vector(u1L3)[i]*m4[i]:  i in [1..256]];
u13; 


u211:= &+[Vector(u21L1)[i]*m4[i]:  i in [1..256]];
u211;
u212:= &+[Vector(u21L2)[i]*m4[i]:  i in [1..256]];
u212;
u213:= &+[Vector(u21L3)[i]*m4[i]:  i in [1..256]];
u213; 


u221:= &+[Vector(u22L1)[i]*m4[i]:  i in [1..256]];
u221;
u222:= &+[Vector(u22L2)[i]*m4[i]:  i in [1..256]];
u222;
u223:= &+[Vector(u22L3)[i]*m4[i]:  i in [1..256]];
u223; 


u311:= &+[Vector(u31L1)[i]*m4[i]:  i in [1..256]];
u311;
u312:= &+[Vector(u31L2)[i]*m4[i]:  i in [1..256]];
u312;
u313:= &+[Vector(u31L3)[i]*m4[i]:  i in [1..256]];
u313; 

u321:= &+[Vector(u32L1)[i]*m4[i]:  i in [1..256]];
u321;
u322:= &+[Vector(u32L2)[i]*m4[i]:  i in [1..256]];
u322;
u323:= &+[Vector(u32L3)[i]*m4[i]:  i in [1..256]];
u323; 


lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(K,4,1)];
S11:= Matrix([u1L1*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(S11);
#Rows(S11);
Ncols(S11);
mapW2S2L1toVtensor4:= Matrix(Basis(Image(S11)));
#Rows(mapW2S2L1toVtensor4);
Ncols(mapW2S2L1toVtensor4);


lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(K,4,1)];
S21:= Matrix([u21vec*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(S21);
#Rows(S21);
Ncols(S21);
map1:= Matrix(Basis(Image(S21)));
#Rows(map1);
Ncols(map1);


lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(K,4,1)];
S22:= Matrix([u22vec*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(S22);
#Rows(S22);
Ncols(S22);
map2:= Matrix(Basis(Image(S22)));
#Rows(map2);
Ncols(map2);


lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(K,4,1)];
S31:= Matrix([u31vec*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(S31);
#Rows(S31);
Ncols(S31);
map3:= Matrix(Basis(Image(S31)));
#Rows(map3);
Ncols(map3);

lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(K,4,1)];
S32:= Matrix([u32vec*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(S32);
#Rows(S32);
Ncols(S32);
map4:= Matrix(Basis(Image(S32)));
#Rows(map4);
Ncols(map4);


lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(K,4,1)];
S222:= Matrix([u22L2*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(S222);
#Rows(S222);
Ncols(S222);
map5:= Matrix(Basis(Image(S222)));
#Rows(map5);
Ncols(map5);


lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(K,4,1)];
S323:= Matrix([u32L3*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(S323);
#Rows(S323);
Ncols(S323);
map6:= Matrix(Basis(Image(S323)));
#Rows(map6);
Ncols(map6);


Join8 := VerticalJoin(S11, S222);
Join9 := VerticalJoin(Join8, S323);
Rank(Join9);

lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(K,4,1)];
SV210:= Matrix([u22vec*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(SV210);
#Rows(SV210);
Ncols(SV210);
map7:= Matrix(Basis(Image(SV210)));
#Rows(map7);
Ncols(map7);


w2101:= eV210w*eL1;
w2102:= eV210w*eL2;
w2103:= eV210w*eL3;


S11210:= Transpose( Solution(  Transpose(S11),  Transpose(SV210) ) );
S222210:= Transpose( Solution(  Transpose(S222),  Transpose(SV210) ) );
S323210:= Transpose( Solution(  Transpose(S323),  Transpose(SV210) ) );


g1 := w2101* S11210;
g2 := w2102* S222210;
g3 := w2103* S323210;


delta1:= Solution(Z20, g1);
delta2:= Solution(Z20, g2);
delta3:= Solution(Z20, g3);
delta1;
delta2;
delta3;


// Without Segre Embedding 
// Defining Variety P^3 x Gr(2,4)

P3<p1,p2,p3,p4> := ProjectiveSpace(K,3); 
PR6V210<c12, c13, c14, c23, c24, c34> := PolynomialRing(K, 6); 
P5:= Proj(PR6V210 );

P3P5:= DirectProduct(P3,P5);
P10V210<p1,p2,p3,p4,c12,c13,c14,c23,c24,c34> := CoordinateRing(P3P5);
P5;
P3P5;
P10V210;

E210:= Matrix(P10V210, [[0,c12,c13,c14], [-c12,0,c23,c24], [-c13, -c23,0, c34], [-c14, -c24, -c34, 0 ]] );
Eq24 := E210[1,2]*E210[3,4] - E210[1,3]*E210[2,4] + E210[1,4]*E210[2,3]; 

Eq24;

Eqflag:= [p1*c23 - p2*c13 + p3*c12, p1*c24 - p2*c14 + p4*c12, p1*c34 - p3*c14 + p4*c13, p2*c34 - p3*c24 + p4*c23 ];

bas210new:= [p1*p1*c12, p2*p1*c12, p3*p1*c12, p4*p1*c12, p2*p2*c12, p3*p2*c12, p4*p2*c12, p3*p3*c12, p4*p3*c12, p4*p4*c12,
p1*p1*c13, p2*p1*c13, p3*p1*c13, p4*p1*c13, p2*p2*c13, p3*p2*c13, p4*p2*c13, p3*p3*c13, p4*p3*c13, p4*p4*c13,
p1*p1*c14, p2*p1*c14, p3*p1*c14, p4*p1*c14, p2*p2*c14, p3*p2*c14, p4*p2*c14, p3*p3*c14, p4*p3*c14, p4*p4*c14,
p1*p1*c23, p2*p1*c23, p3*p1*c23, p4*p1*c23, p2*p2*c23, p3*p2*c23, p4*p2*c23, p3*p3*c23, p4*p3*c23, p4*p4*c23,
p1*p1*c24, p2*p1*c24, p3*p1*c24, p4*p1*c24, p2*p2*c24, p3*p2*c24, p4*p2*c24, p3*p3*c24, p4*p3*c24, p4*p4*c24,
p1*p1*c34, p2*p1*c34, p3*p1*c34, p4*p1*c34, p2*p2*c34, p3*p2*c34, p4*p2*c34, p3*p3*c34, p4*p3*c34, p4*p4*c34 ]; 

#bas210new;

delta11:= &+[delta1[i]*bas210new[i] : i in [1..60]];
delta12:= &+[delta2[i]*bas210new[i] : i in [1..60]];
delta13:= &+[delta3[i]*bas210new[i] : i in [1..60]];
delta11;
delta12;
delta13;

X210withoutsegre:= Scheme( P3P5, Eqflag cat [Eq24, delta11, delta12, delta13] );
X210withoutsegre;



//DimDegPCX210:= [[Dimension(p), Degree(SegreEmbedding(p))] : p in PrimaryComponents(X210withoutsegre)];
DimDegPCRX210:= [[Dimension(p), Degree(SegreEmbedding(p))] : p in PrimaryComponents(ReducedSubscheme(X210withoutsegre))];
DimDegPCRSX210:= [[Dimension(p), Degree(SegreEmbedding(p))] : p in PrimaryComponents(ReducedSubscheme(SingularSubscheme(X210withoutsegre)))];

return DimDegPCRX210, DimDegPCRSX210;
end function;



