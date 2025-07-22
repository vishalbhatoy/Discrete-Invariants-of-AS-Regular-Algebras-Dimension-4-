// Discrete Invariants V020

DiscreteInvariantsV020 := function(algebra)
   QQ:= RationalField();
   K:= QQ; 
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
    

// Trivial (1-dimensional)
    
eV400 := (1/24) * (e + p12 + p13 + p14 + p23 + p24 + p34 + p123 + p132 + p124 + p142 + p134 + p143 + p234 + p243 + p1234 + p1243 + p1342 +  p1324 + p1423 + p1432 + Z + T + Q);
eV400w := MC * eV400;
eV400walg:= &+[eV400w[i]*m4[i] : i in [1..256]];


// Alternating (1-dimensional)

eV000 := (1/24) * (e + (-1)*(p12 + p13 + p14 + p23 + p24 + p34) + (1)*(p123 + p132 + p124 + p142 + p134 + p143 + p234 + p243)  + (-1)*(p1234 + p1243 + p1342 +  p1324 + p1423 + p1432)  + (1)*(Z + T + Q));
eV000w := MC * eV000;
eV000walg:= &+[eV000w[i]*m4[i] : i in [1..256]];

// Standard (3-dimensional)

eV101:= (3/24) * (3*e + (1)*(p12 + p13 + p14 + p23 + p24 + p34) + (0)*(p123 + p132 + p124 + p142 + p134 + p143 + p234 + p243)  + (-1)*(p1234 + p1243 + p1342 +  p1324 + p1423 + p1432)  + (-1)*(Z + T + Q));
eV101w := MC * eV101; 
eV101walg:= &+[eV101w[i]*m4[i] : i in [1..256]];


// StandardtensorAlternating (3-dimensional)

eV210:= (3/24) * (3*e + (-1)*(p12 + p13 + p14 + p23 + p24 + p34) + (0)*(p123 + p132 + p124 + p142 + p134 + p143 + p234 + p243)  + (1)*(p1234 + p1243 + p1342 +  p1324 + p1423 + p1432)  + (-1)*(Z + T + Q));
eV210w:= MC*eV210;
eV210walg:= &+[eV210w[i]*m4[i] : i in [1..256]];


// Another (2-dimensional)

eV020:= (2/24) * (2*e + (0)*(p12 + p13 + p14 + p23 + p24 + p34) + (-1)*(p123 + p132 + p124 + p142 + p134 + p143 + p234 + p243)  + (0)*(p1234 + p1243 + p1342 +  p1324 + p1423 + p1432)  + (2)*(Z + T + Q));
eV020w:= MC*eV020;
eV020walg:= &+[eV020w[i]*m4[i] : i in [1..256]];


comm:= function(x,y)
return x*y-y*x;
end function;
sk:= function(x,y)
return x*y+y*x;
end function;

// Start building Basis V020

OP1:= [[j,i]: i in [j+1..4], j in [1..4]];
OP1;
#OP1;
prop1:= [[OP1[j], OP1[i]]: i in [1..6], j in [1..6] | i le j];
#prop1;
S2W2L0new:= [sk(comm(F.i,F.j), comm(F.k,F.l)) + sk(comm(F.l,F.i), comm(F.j,F.k)) + sk(comm(F.k,F.l), comm(F.i,F.j)) + sk(comm(F.j,F.k), comm(F.l,F.i)) : i in [p[1][1]], j in [p[1][2]], k in [p[2][1]], l in [p[2][2]], p in prop1];
#S2W2L0new;
OP2:= [[j,i]: i in [j..4], j in [1..4]  ];
OP2;
#OP2;
prop4:= [[OP2[j], OP2[i]]: i in [1..10], j in [1..10] | i lt j and not #(Set(OP2[i]) join Set(OP2[j])) eq 2 and not #(Set(OP2[i]) meet Set(OP2[j])) eq 1 ];
#prop4;
S2S25:= [sk(sk(F.i,F.j), sk(F.k,F.l)) - sk(sk(F.l,F.i), sk(F.j,F.k)): i in [p[1][1]], j in [p[1][2]], k in [p[2][1]], l in [p[2][2]], p in prop4 ];
#S2S25;
prop7:= [[OP2[j], OP2[i]]: i in [1..10], j in [1..10] | i lt j and #(Set(OP2[i]) join Set(OP2[j])) eq 2 and  #(Set(OP2[i]) meet Set(OP2[j])) eq 0 ];
#prop7;
S2S28:= [sk(sk(F.i,F.j), sk(F.k,F.l)) - sk(sk(F.l,F.i), sk(F.j,F.k)): i in [p[1][1]], j in [p[1][2]], k in [p[2][1]], l in [p[2][2]], p in prop7 ];
#S2S28;
S:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in S2W2L0new]);
Rank(S);
X:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in S2S25]);
Rank(X);
Y:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in S2S28]);
Rank(Y);
Y1:= VerticalJoin(X, Y);
Rank(Y1);
Y2:= VerticalJoin(Y1, S);
Rank(Y2);
// Therefore, Basis of V020 contains ( S2W2L0new, S2S25, S2S28 )
// End basis V020


// Join matrices into a single matrix

S:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in S2W2L0new]);
Rank(S);
Ncols(S);
#Rows(S);
reducedS:= Matrix(Basis(Image(S)));
Ncols(reducedS);
#Rows(reducedS);

X:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in S2S25]);
reducedX:= Matrix(Basis(Image(X)));
Y:= Matrix([[MonomialCoefficient(l,k): k in m4] : l in S2S28]);

// Combining S2S25 and S2S28 into one matrix S2S2
S2S2:= VerticalJoin(reducedX,Y);
Rank(S2S2);

S2W2 := reducedS;
Rank(S2W2);

Image(S2S2) meet Image(S2W2);
// The intersection of their images has dimension 0 and the span of their images each has dimension 20. 

// LoadV020Components 
// Start by finding highest weight vectors of V020
// To find highest weight vectors, we first need to define the functions 'Kron4' and 'coProduct4' as shown below: 

Kron4:= function(a,b,c,d);
return KroneckerProduct(KroneckerProduct(KroneckerProduct(a,b), c),d);
end function;
coProduct4:= function(e);
iden:= ScalarMatrix(4,K!1);
return Kron4( e, iden, iden, iden) + Kron4( iden, e, iden, iden) + Kron4( iden, iden, e, iden) + Kron4( iden, iden, iden, e);
end function;


// Define Cartan Subalgebra and Root vectors

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


// Start with first basis i.e. S2W2

N1:= [e12,e23,e34];
Interse:= &meet [NullSpace((coProduct4(x))) : x in N1] ;
I:= Interse meet Image(S2W2);
h0vec:= I.1;

// first highest weight vector

h0:= &+[h0vec[i]*m4[i]:  i in [1..256]];
h0;

//This h0 is in S2W2, that's good. 


// Finding second highest weight vector 
// Second basis i.e. S2S2

N1:= [e12,e23,e34];
Interse:= &meet [NullSpace((coProduct4(x))) : x in N1] ;
Inew:= Interse meet Image(S2S2);
h1vec:= Inew.1;
h1:= &+[h1vec[i]*m4[i]:  i in [1..256]];
h1;

// The above h1 is neither in L0 nor in L2. 
// We need to find linear combinations that are in L0 and L2. 

// Note that Here, L0 and L2 denote the isotypic components corresponding to the trivial and sign representations of the cyclic group C4, respectively. 
// In the trivial representation L0, all elements of C4 act identically (i.e., as the identity), leaving the vector unchanged. 
// In the sign representation L2, the elements of C4 act by flipping the sign of the vector.


u1:= Z*p13;
u2:= Z*p13*Z*p13;
u3:= Z*p13*Z*p13*Z*p13;
eL0 := (1/4)*(e + u1 + u2 + u3);
eL2 := (1/4)*(e - u1 + u2 - u3);


h1L0:= Matrix(h1vec)*eL0;
h1L0;
h1L2:= Matrix(h1vec)*eL2;
h1L2;
h11:= &+[Vector(h1L0)[i]*m4[i]:  i in [1..256]];
h11;
h12:= &+[Vector(h1L2)[i]*m4[i]:  i in [1..256]];
h12;

// Therefore, the highest weight vectors in this case are h0, h11, and h12.


// Finding all vectors in each representation by applying vectors in the lie algebra. 


lieAlg:=[e21,e32,e43,e1,e2,e3,e43*e32,e32*e21,e43*e32*e21,e23*e32,ScalarMatrix(QQ,4,1)];
M0:= Matrix([h1L0*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(M0);
#Rows(M0);
Ncols(M0);
mapV020L0toVtensor4:= Matrix(Basis(Image(M0)));
#Rows(mapV020L0toVtensor4);
Ncols(mapV020L0toVtensor4);


M2:= Matrix([h1L2*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(M2);
#Rows(M2);
Ncols(M2);
mapV020L2toVtensor4:= Matrix(Basis(Image(M2)));
#Rows(mapV020L2toVtensor4);
Ncols(mapV020L2toVtensor4);


M1:= Matrix([h0vec*coProduct4(X)*coProduct4(Y)*coProduct4(Z)*coProduct4(W) : X in lieAlg, Y in lieAlg, Z in lieAlg, W in lieAlg]);
Rank(M1);
#Rows(M1);
Ncols(M1);
mapS2W2toVtensor4:= Matrix(Basis(Image(M1)));
#Rows(mapS2W2toVtensor4);
Ncols(mapS2W2toVtensor4); 

// We apply the projection operators eL0 and eL2 to the vector eV020w:= MC*eV020, yielding w0 and w2 in their respective components.

w0:= eV020w*eL0;
w2:= eV020w*eL2; 

// We solve for the transformation matrices:

S10:= Transpose(Solution(Transpose(M1), Transpose(M0)));
S12:= Transpose(Solution(Transpose(M1), Transpose(M2)));
S20:= Transpose(Solution(Transpose(M2), Transpose(M0)));
S21:= Transpose(Solution(Transpose(M2), Transpose(M1)));
S01:= Transpose(Solution(Transpose(M0), Transpose(M1)));
S02:= Transpose(Solution(Transpose(M0), Transpose(M2)));

// The final vectors f0 and f2 in each representation are constructed by applying the transformations to the projected generic vector.

f0:= w0*S01;
f2:= w2*S21;

// We now define a polynomial ring in six variables and a 4x4 skew-symmetric matrix E whose entries are linear forms in the variables.
// The Grassmannian Gr(2,4) parametrizes 2-dimensional subspaces of a 4-dimensional vector space V. 
// It can be embedded as a projective algebraic variety in P^5 via the Plücker embedding, since the space wedge^2(V) has dimension 6. 
// The Plücker embedding uses symmetric combinations of matrix entries E[i,j] to represent 2-planes in P(wedge^2(V)).


PR6<[b]>:= PolynomialRing(K,6);
E:= Matrix(PR6, [[0,b[1],b[2],b[3]], [-b[1],0,b[4],b[5]], [-b[2], -b[4],0, b[6]], [-b[3], -b[5], -b[6], 0 ]] );
bas:= [E[i,j]*E[k,l] + E[l,i]*E[j,k] + E[k,l]*E[i,j] + E[j,k]*E[l,i]  : i in [p[1][1]], j in [p[1][2]], k in [p[2][1]], l in [p[2][2]], p in prop1];
beta1:= Solution(S, f0);
beta2:= Solution(S, f2);

quadraticbeta1:= &+[beta1[i]*bas[i] : i in [1..21]];
quadraticbeta2:= &+[beta2[i]*bas[i] : i in [1..21]];

// The ideal is generated by the Gr(2,4) equation along with two quadratic relations.

I := ideal<PR6|[E[1,2]*E[3,4]-E[1,3]*E[2,4]+E[1,4]*E[2,3],quadraticbeta1,quadraticbeta2]>;
X020:=Proj(PR6/I);
HilbertSeries(PR6/I);

SX:=SingularSubscheme(X020);
RSX:=ReducedSubscheme(SingularSubscheme(X020));

DimDegPCX020:=  [[Dimension(p), Degree(SegreEmbedding(p))] : p in PrimaryComponents(X020)];
DimDegPCRX020:= [[Dimension(p), Degree(SegreEmbedding(p))] : p in PrimaryComponents(ReducedSubscheme(X020))];
DimDegPCSX020:= [[Dimension(p), Degree(SegreEmbedding(p))] : p in PrimaryComponents(SingularSubscheme(X020))];
DimDegPCRSX020:= [[Dimension(p), Degree(SegreEmbedding(p))] : p in PrimaryComponents(ReducedSubscheme(SingularSubscheme(X020)))];


    
    return DimDegPCX020, DimDegPCRX020, DimDegPCSX020, DimDegPCRSX020;
end function;









