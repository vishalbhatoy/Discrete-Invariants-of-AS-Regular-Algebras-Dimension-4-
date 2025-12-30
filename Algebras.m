// Algebra A
QQ := RationalField();
P<t> := PolynomialRing(QQ);
K<h> := FieldOfFractions(P);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [w*x - x*w,  z*y - y*z - y^2, y*w - h*w*y, y*x - h*(w*z + x*y), z*w - h*w*z, z*x + h*((2)*x*y + w*z - x*z)];
AlgebraA:= <K, F, Rels, Gens >;
AlgebraA;


//Algebra B
QQ:=RationalField();
P<p>:=PolynomialRing(QQ);
N<ii>:=NumberField(p^2+1);
RR<s>:=PolynomialRing(N);
K<h>:=FieldOfFractions(RR);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w - ii*w*x, z*y - ii*y*z, y*w + h*(-x*z), y*x + h*(-w*z),  z*w + h*(x*y), z*x + h*(-w*y)];
AlgebraB:= <K, F, Rels, Gens>;
AlgebraB;



//Algebra C
QQ:=RationalField();
P<p>:=PolynomialRing(QQ);
N<ii>:=NumberField(p^2+p+1);
RR<s>:=PolynomialRing(N);
K<h>:=FieldOfFractions(RR);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := 
[z*y - ii*y*z, 
x*w - ii*w*x, 
y*w + h*(w*y - (ii^2)*x*y - w*z + ii*x*z), 
y*x + h*(ii*w*y - x*y - w*z + ii*x*z),  
z*w + h*(ii*w*y + 2*(ii^2)*x*y - ii*w*z + ii*x*z),  
z*x + h*(ii*w*y - (ii^2)*x*y - w*z + x*z)];
AlgebraC:= <K, F, Rels, Gens>;
AlgebraC;


//Algebra D
QQ := RationalField();
K<p,h> := FunctionField(QQ, 2);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [ w*x + x*w,
 z*y - p*y*z,
 y*w + h*(p*w*y),
  y*x + h*((p*p)*x*y - w*z),
  z*w - h*(p*w*z),
  z*x + h*(-w*y - x*z)];
AlgebraD:= <K, F, Rels, Gens >;
AlgebraD;


//Algebra E
QQ:=RationalField();
P<p>:=PolynomialRing(QQ);
N<ii>:=NumberField(p^2+1);
RR<s>:=PolynomialRing(N);
K<h>:=FieldOfFractions(RR);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := 
[x*w + w*x, 
z*y - ii*y*z, 
y*w + h*(-w*z - x*z ), 
y*x + h*(-w*z + x*z ), 
z*w + h*(w*y - x*y ),  
z*x + h*(-w*y - x*y )];
AlgebraE:= <K, F, Rels, Gens >;
AlgebraE;



//Algebra F
QQ:=RationalField();
P<p>:=PolynomialRing(QQ);
N<ii>:=NumberField(p^2+1);
RR<s>:=PolynomialRing(N);
K<h>:=FieldOfFractions(RR);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := 
[ x*w + w*x, 
z*y - ii*y*z, 
y*w + h*(w*y + ii*x*y - w*z + x*z),  
y*x + h*(ii*w*y - x*y - w*z - x*z ), 
z*w + h*(ii*w*y - ii*x*y - ii*w*z - x*z),
z*x + h*(ii*w*y + ii*x*y - w*z + ii*x*z)];
AlgebraF:= <K, F, Rels, Gens >;
AlgebraF;



//Algebra G
QQ := RationalField();
K<p,h,f> := FunctionField(QQ, 3);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w - w*x, 
z*y - p*y*z, 
y*w + h*(-p*w*y), 
y*x + h*(-p*w*y - (p*p)*x*y - w*z),
z*w + h*(-p*w*z),
z*x + h*(-f*w*y + w*z - x*z )];
AlgebraG:= <K, F, Rels, Gens >;
AlgebraG;



//Algebra H
QQ := RationalField();
K<h,f> := FunctionField(QQ, 2);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w - w*x - w*w, 
z*y + y*z, 
y*w - h*w*z, 
y*x - h*f*w*z - h*x*z, 
z*w - h*w*y, 
z*x - h*f*w*y-h*x*y];
AlgebraH:= <K, F, Rels, Gens >;
AlgebraH;



//Algebra I
QQ:=RationalField();
P<q>:=PolynomialRing(QQ);
N<ii>:=NumberField(q^2+1);
RR<s>:=PolynomialRing(N);
K<h>:=FieldOfFractions(RR);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w - ii*w*x,
z*y + y*z,
y*w + h*(ii*w*y + ii*x*y - w*z + ii*x*z ),
y*x + h*(-w*y - x*y - w*z + ii*x*z ),
z*w + h*( -w*y - ii*x*y - ii*w*z + ii*x*z ),
z*x + h*(w*y + ii*x*y - w*z + x*z )];
AlgebraI:= <K, F, Rels, Gens >;
AlgebraI;



//Algebra J
QQ:=RationalField();
P<q>:=PolynomialRing(QQ);
N<ii>:=NumberField(q^2+1);
RR<s>:=PolynomialRing(N);
K<h>:=FieldOfFractions(RR);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w - ii*w*x, 
z*y + y*z,
 y*w + h*(-x*y - x*z ),
 y*x + h*(w*y - w*z ),
 z*w + h*(-x*y + x*z ),
  z*x + h*(-w*y - w*z )];
AlgebraJ:= <K, F, Rels, Gens >;
AlgebraJ;



//Algebra K
QQ := RationalField();
K<h,f,q> := FunctionField(QQ, 3);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w - q*w*x,
z*y + y*z,
y*w + h*(-w*y),
y*x + h*(-x*z),
z*w + h*(-w*z),
 z*x + h*(-f*x*y)];
AlgebraK:= <K, F, Rels, Gens >;
AlgebraK;



//Algebra L
QQ := RationalField();
K<h,f,q> := FunctionField(QQ, 3);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w - q*w*x,
z*y + y*z,
y*w + h*(-f*w*z),
y*x + h*(-x*z),
z*w + h*(-f*w*y),
z*x + h*(-x*y)];
AlgebraL:= <K, F, Rels, Gens >;
AlgebraL;



//Algebra M
QQ := RationalField();
K<h,f> := FunctionField(QQ, 2);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w + w*x,
z*y + y*z,
y*w + h*(-x*y - w*z ),
y*x + h*(-f*w*y + x*z ),
z*w + h*(-w*y + x*z ),
z*x + h*(x*y + f*w*z )];
AlgebraM:= <K, F, Rels, Gens >;
AlgebraM;



//Algebra N
QQ := RationalField();
K<h,f,g> := FunctionField(QQ, 3);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w + w*x,
z*y + y*z,
y*w + h*(g*x*y - f*x*z ),
y*x + h*(-g*w*y - f*w*z ),
z*w + h*(-f*x*y + g*x*z ),
z*x + h*(-f*w*y - g*w*z )];
AlgebraN:= <K, F, Rels, Gens >;
AlgebraN;



//Algebra O
QQ := RationalField();
K<h,f> := FunctionField(QQ, 2);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w + w*x,
 z*y + y*z,
 y*w + h*(-w*y - f*x*z ),
 y*x + h*(x*y - w*z ),
  z*w + h*(-f*x*y + w*z ),
  z*x + h*(-w*y - x*z ) ];
AlgebraO:= <K, F, Rels, Gens >;
AlgebraO;



//Algebra P
QQ := RationalField();
K<h,f> := FunctionField(QQ, 2);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [ x*w + w*x,
z*y + y*z,
y*w + h*(-w*z - f*x*z ),
y*x + h*(-w*z - x*z ),
 z*w + h*(-w*y + f*x*y ),
 z*x + h*(w*y - x*y )];
AlgebraP:= <K, F, Rels, Gens >;
AlgebraP;



//Algebra Q
QQ := RationalField();
K<h> := FunctionField(QQ);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [ x*w + w*x,
z*y + y*z,
y*w + h*(-w*z),
y*x + h*(-w*y - x*y - w*z ),
z*w + h*(w*y ),
z*x + h*(-w*y + w*z - x*z )];
AlgebraQ:= <K, F, Rels, Gens >;
AlgebraQ;



//Algebra R
QQ := RationalField();
K<h> := FunctionField(QQ);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w + w*x, 
z*y + y*z,
y*w + h*(-w*y - x*y - w*z ),
y*x + h*(-w*z ),
z*w + h*(-x*y ),
z*x + h*(x*y + w*z - x*z )];
AlgebraR:= <K, F, Rels, Gens >;
AlgebraR;



//Algebra S
QQ := RationalField();
K<h> := FunctionField(QQ);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w + w*x,
z*y + y*z,
y*w + h*(w*y - x*y - w*z - x*z ),
y*x + h*(-w*y + x*y - w*z - x*z ),
z*w + h*(-w*y - x*y + w*z - x*z ),
z*x + h*(-w*y - x*y - w*z + x*z )];
AlgebraS:= <K, F, Rels, Gens >;
AlgebraS;



//Algebra T 
QQ := RationalField();
K<h> := FunctionField(QQ);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w + w*x,
z*y + y*z,
y*w + h*(w*y - x*y - w*z - x*z),
y*x + h*(-w*y + x*y - w*z - x*z),
 z*w + h*(-w*y - x*y - w*z + x*z ),
  z*x + h*(-w*y - x*y + w*z - x*z )];
AlgebraT:= <K, F, Rels, Gens >;
AlgebraT;



//Algebra U
QQ := RationalField();
K<h> := FunctionField(QQ);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w + w*x,
z*y + y*z,
y*w + h*(w*y - x*y - w*z - x*z ),
y*x + h*(-w*y - x*y - w*z + x*z ),
z*w + h*(-w*y - x*y + w*z - x*z ),
z*x + h*(-w*y + x*y - w*z - x*z )];
AlgebraU:= <K, F, Rels, Gens >;
AlgebraU;



//Algebra V
QQ := RationalField();
K<h> := FunctionField(QQ);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w - w*x,
z*y + y*z,
y*w + h*(-x*y - w*z ),
y*x - h*x*y,
z*w + h*(w*y - x*y ),
z*x - h*x*z];
AlgebraV:= <K, F, Rels, Gens >;
AlgebraV;



//Algebra W
QQ := RationalField();
K<h,f> := FunctionField(QQ, 2);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w - w*x,
z*y + y*z,
y*w + h*(-f*x*y - w*z ),
y*x + h*(-w*y + x*z ),
z*w + h*(-w*y - f*x*z ),
z*x + h*(x*y - w*z )
];
AlgebraW:= <K, F, Rels, Gens >;
AlgebraW;



//Algebra X
QQ := RationalField();
K<h> := FunctionField(QQ);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w - w*x,
z*y + y*z,
y*w + h*(-w*z),
y*x + h*(-w*z - x*z ),
z*w + h*(-w*y ),
z*x + h*(-w*y - x*y )];
AlgebraX:= <K, F, Rels, Gens >;
AlgebraX;



//Algebra Y
QQ := RationalField();
K<h,f> := FunctionField(QQ, 2);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w - w*x,
z*y + y*z,
y*w + h*(-w*y),
y*x + h*(-f*w*y + x*y - w*z ),
z*w + h*(-w*z ),
z*x + h*(-w*y - f*w*z + x*z )];
AlgebraY:= <K, F, Rels, Gens >;
AlgebraY;



//Algebra Z
QQ := RationalField();
K<h,f> := FunctionField(QQ, 2);
F<x,y,z,w> := FreeAlgebra(K,4);
Gens := [x,y,z,w];
Rels := [x*w + w*x,
z*y - y*z,
y*w + h*(-w*y - x*z ),
y*x + h*(-x*y - w*z ),
z*w + h*(-f*x*y + w*z ),
z*x + h*(-f*w*y + x*z )
];
AlgebraZ:= <K, F, Rels, Gens >;
AlgebraZ;



// Central Extensions 
QQ := RationalField();
K<a,b,c,alpha1,alpha2,alpha3,l11,l12,l13,l22,l23,l33> := FunctionField(QQ, 12);
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [x1*x4-x4*x1,
x2*x4-x4*x2,
x3*x4-x4*x3, 
c*x1^2 + a*x2*x3 + b*x3*x2 + l11*x1*x4 + l12*x2*x4 + l13*x3*x4 + alpha1*x4^2,
c*x2^2 + a*x3*x1 + b*x1*x3 + l12*x1*x4 + l22*x2*x4 + l23*x3*x4 + alpha2*x4^2,
c*x3^2 + a*x1*x2 + b*x2*x1 + l13*x1*x4 + l23*x2*x4 + l33*x3*x4 + alpha3*x4^2];
CentralExtensions := <K, F, Rels, Gens >;
CentralExtensions;



// Algebra Colin-Brent/ Central Extensions Twist
QQ := RationalField();
K<q,b,c0,c1,c2> := FunctionField(QQ, 5);
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [x2*x1 + q*x1*x2 + b*x4^2 + c0*x3^2,
x4*x2 + q*x2*x4 + b*x1^2 + c1*x3^2,
x1*x4 + q*x4*x1 + b*x2^2 + c2*x3^2,
x4*x3 + x3*x4,
x1*x3 + x3*x1,
x2*x3 + x3*x2];
AlgebraColinBrent:= <K, F, Rels, Gens>;
AlgebraColinBrent;


// L(1,1,2)
QQ := RationalField();
K<p0,p1,lambda> := FunctionField(QQ, 3); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[x1*x0 - x0*x1,
x2*x0 - p0^(-1)*x0*x2,
x2*x1 - p1*x1*x2,
x3*x2 - p0^(-1)*p1*x2*x3 - ((p1 - p0)*(x0^(2) + lambda*x0*x1 + x1^(2)) + (1- p0^(2))*x0^(2) + (p1^(2)-1)*x1^(2)),
x3*x0 - p0*x0*x3,
x3*x1 - p1^(-1)*x1*x3];
AlgebraL112:= <K, F, Rels, Gens >;
AlgebraL112;



// Algebra E(3)
QQ := RationalField();
K<h> := FunctionField(QQ);
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[x0*x1 - x1*x0 - 5*(x0^2),
x1*x2 - x2*x1 - 3*x0*x2 - (x1^2) + (3/2)*x0*x1,
x0*x2 - x2*x0 - 5*x0*x1 + (45/2)*(x0^2),
x1*x3 - x3*x1 - 7*x0*x3 - x1*x2 + 3*x0*x2 + (5/2)*(x1^2) - 5*x0*x1,
x0*x3 - x3*x0 - 5*x0*x2 + (45/2)*x0*x1 - (195/2)* (x0^2),
x2*x3 - x3*x2 - 7*x1*x3 + (77/2)*x0*x3 + 3*(x2^2) - (21/2)*x1*x2 + (77/2)*x0*x2];
AlgebraE3 := <K, F, Rels, Gens >;
AlgebraE3;



//Algebra Sklyanin
QQ := RationalField();
K<alpha,beta> := FunctionField(QQ, 2); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[x0*x1 - x1*x0 - alpha* (x2*x3 + x3*x2),
x0*x2 - x2*x0 - beta* (x3*x1 + x1*x3),
x0*x3 - x3*x0 - ((-alpha-beta)/ (1 + alpha*beta)) * (x1*x2 + x2*x1),
x0*x1 + x1*x0 - (x2*x3 - x3*x2),
x0*x2 + x2*x0 - (x3*x1 - x1*x3),
x0*x3 + x3*x0 - (x1*x2 - x2*x1)];
AlgebraSklyanin:= <K, F, Rels, Gens>;
AlgebraSklyanin;


//Algebra Sklyanin Twist
QQ := RationalField();
K<alpha,beta> := FunctionField(QQ, 2); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4]; 
Rels := 
[x1*x2 - x2*x1 - alpha* (x3*x4 - x4*x3),
x1*x2 + x2*x1 - (x3*x4 + x4*x3),
x1*x3 - x3*x1 - beta* (x4*x2 - x2*x4),
x1*x3 + x3*x1 - (x4*x2 + x2*x4),
x1*x4 - x4*x1 + ((-alpha-beta)/ (1 + alpha*beta)) * (x2*x3 - x3*x2),
x1*x4 + x4*x1 + x2*x3 + x3*x2
];
AlgebraSklyaninTwist:= <K, F, Rels, Gens>;
AlgebraSklyaninTwist;



// Algebra Vancliff 
QQ := RationalField();
K<alpha,beta,lambda> := FunctionField(QQ, 3);
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [x2*x1 - alpha*x1*x2,
x3*x1 - lambda*x1*x3,
x4*x1 - alpha*lambda*x1*x4,
x4*x3 - alpha*x3*x4,
x4*x2 - lambda*x2*x4,
x3*x2 - beta*x2*x3 - (alpha*beta - lambda)*x1*x4];
AlgebraVancliff:= <K, F, Rels, Gens>; 
AlgebraVancliff; 



// Algebra Vancliff Twist
QQ := RationalField();
K<alpha,beta,lambda> := FunctionField(QQ, 3);
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [x2*x1 - alpha*x1*x2,
x3*x1 - lambda*x1*x3,
x4*x1 - alpha*lambda*x1*x4,
x4*x3 + alpha*x3*x4,
x4*x2 + lambda*x2*x4,
x3*x2  + beta*x2*x3 - (alpha*beta - lambda)*x1*x4];
AlgebraVancliffTwist:= <K, F, Rels, Gens>;
AlgebraVancliffTwist;



// Algebra Shelton Tingey 
QQ:=RationalField();
P<i>:=PolynomialRing(QQ);
N<ii>:=NumberField(i^2+1);
RR<s>:=PolynomialRing(N);
K<h>:=FieldOfFractions(RR);
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4]; 
Rels := [x3 *x1 - x1*x3 + x2*x2,
ii*x4*x1  + x1*x4,
x4*x2 - x2*x4 + x3*x3,
ii*x3*x2  + x2*x3,
x1*x1  - x3*x3,
x2*x2  - x4*x4
];
AlgebraSheltonTingey:= <K, F, Rels, Gens>;
AlgebraSheltonTingey;




// Algebra SInfinity
QQ := RationalField();
K<alpha,beta> := FunctionField(QQ, 2); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4]; 
Rels := 
[x1*x2 - x2*x1 - alpha* (x3*x4 + x4*x3),
x1*x2 + x2*x1 - (x3*x4 - x4*x3),
x1*x3 - x3*x1 - beta*(x4*x2 + x2*x4),
x1*x3 + x3*x1 - (x4*x2 - x2*x4),
(-1)*x1^(2) + x2^(2) + x3^(2) + x4^(2),
x2^(2) + ((1 + alpha)/(1 - beta))*x3^(2) + ((1 - alpha)/(1 + ((-alpha-beta)/ (1 + alpha*beta)) ))*x4^(2)];
AlgebraSInfinity:= <K, F, Rels, Gens>;
AlgebraSInfinity;



// Algebra SInfinity Twist
QQ := RationalField();
K<alpha,beta> := FunctionField(QQ, 2); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := 
[x1*x2 - x2*x1 - alpha* (x3*x4 - x4*x3),
x1*x2 + x2*x1 - (x3*x4 + x4*x3),
x1*x3 - x3*x1 - beta*(x4*x2 - x2*x4),
x1*x3 + x3*x1 - (x4*x2 + x2*x4),
(-1)*x1^(2) + x2^(2) + x3^(2) + (-1)* x4^(2),
x2^(2) + ((1 + alpha)/(1 - beta))*x3^(2) - ((1 - alpha)/(1 + ((-alpha-beta)/ (1 + alpha*beta)) ))*x4^(2)];
AlgebraSInfinityTwist:= <K, F, Rels, Gens>;
AlgebraSInfinityTwist;



// Algebra S_{d,i=1}
QQ := RationalField();
K<alpha,beta,d1,d2> := FunctionField(QQ, 4); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[d1*(-x0^(2) + x1^(2) + x2^(2) + x3^(2)) + d2* (x1^(2) + 
((1 + alpha)/ (1 - beta))*x2^(2) + ((1 - alpha)/ (1 + (-alpha-beta)/ (1 + alpha*beta)))*x3^(2) ),
x0*x1 + x1*x0 - (x2*x3 - x3*x2),
x0*x2 - x2*x0 - beta* (x3*x1 + x1*x3),
x0*x3 - x3*x0 - ((-alpha-beta)/ (1 + alpha*beta)) * (x1*x2 + x2*x1),
x0*x2 + x2*x0 - (x3*x1 - x1*x3),
x0*x3 + x3*x0 - (x1*x2 - x2*x1)];
AlgebraSd1 := <K, F, Rels, Gens>;     
AlgebraSd1;



// Algebra S_{d,i=2}
QQ := RationalField();
K<alpha,beta,d1,d2> := FunctionField(QQ, 4); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[d1*(-x0^(2) + x1^(2) + x2^(2) + x3^(2)) + d2* (x1^(2) + 
((1 + alpha)/ (1 - beta))*x2^(2) + ((1 - alpha)/ (1 + (-alpha-beta)/ (1 + alpha*beta)))*x3^(2) ),
x0*x1 - x1*x0 - alpha* (x2*x3 + x3*x2),
x0*x2 - x2*x0 - beta* (x3*x1 + x1*x3),
x0*x3 - x3*x0 - ((-alpha-beta)/ (1 + alpha*beta)) * (x1*x2 + x2*x1),
x0*x2 + x2*x0 - (x3*x1 - x1*x3),
x0*x3 + x3*x0 - (x1*x2 - x2*x1)];
AlgebraSd2:= <K, F, Rels, Gens>;        
AlgebraSd2;



// Algebra S_{d,i=3}
QQ := RationalField();
K<alpha,beta,d1,d2> := FunctionField(QQ, 4); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[d1*(-x0^(2) + x1^(2) + x2^(2) + x3^(2)) + d2* (x1^(2) + 
((1 + alpha)/ (1 - beta))*x2^(2) + ((1 - alpha)/ (1 + (-alpha-beta)/ (1 + alpha*beta)))*x3^(2) ),
x0*x1 - x1*x0 - alpha* (x2*x3 + x3*x2),
x0*x1 + x1*x0 - (x2*x3 - x3*x2),
x0*x3 - x3*x0 - ((-alpha-beta)/ (1 + alpha*beta)) * (x1*x2 + x2*x1),
x0*x2 + x2*x0 - (x3*x1 - x1*x3),
x0*x3 + x3*x0 - (x1*x2 - x2*x1)];
AlgebraSd3:= <K, F, Rels, Gens>;      
AlgebraSd3;



// Algebra S_{d,i=4}
QQ := RationalField();
K<alpha,beta,d1,d2> := FunctionField(QQ, 4); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[d1*(-x0^(2) + x1^(2) + x2^(2) + x3^(2)) + d2* (x1^(2) + 
((1 + alpha)/ (1 - beta))*x2^(2) + ((1 - alpha)/ (1 + (-alpha-beta)/ (1 + alpha*beta)))*x3^(2) ),
x0*x1 - x1*x0 - alpha* (x2*x3 + x3*x2),
x0*x2 - x2*x0 - beta* (x3*x1 + x1*x3),
x0*x3 - x3*x0 - ((-alpha-beta)/ (1 + alpha*beta)) * (x1*x2 + x2*x1),
x0*x1 + x1*x0 - (x2*x3 - x3*x2),
x0*x3 + x3*x0 - (x1*x2 - x2*x1)];
AlgebraSd4:= <K, F, Rels, Gens>;
AlgebraSd4;



// Algebra S_{d,i=5}
QQ := RationalField();
K<alpha,beta,d1,d2> := FunctionField(QQ, 4); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[d1*(-x0^(2) + x1^(2) + x2^(2) + x3^(2)) + d2* (x1^(2) + 
((1 + alpha)/ (1 - beta))*x2^(2) + ((1 - alpha)/ (1 + (-alpha-beta)/ (1 + alpha*beta)))*x3^(2) ),
x0*x1 - x1*x0 - alpha* (x2*x3 + x3*x2),
x0*x2 - x2*x0 - beta* (x3*x1 + x1*x3),
x0*x2 + x2*x0 - (x3*x1 - x1*x3),
x0*x1 + x1*x0 - (x2*x3 - x3*x2),
x0*x3 + x3*x0 - (x1*x2 - x2*x1)];
AlgebraSd5:= <K, F, Rels, Gens>;
AlgebraSd5;



// Algebra S_{d,i=6}
QQ := RationalField();
K<alpha,beta,d1,d2> := FunctionField(QQ, 4);
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[d1*(-x0^(2) + x1^(2) + x2^(2) + x3^(2)) + d2* (x1^(2) + 
((1 + alpha)/ (1 - beta))*x2^(2) + ((1 - alpha)/ (1 + (-alpha-beta)/ (1 + alpha*beta)))*x3^(2) ),
x0*x1 - x1*x0 - alpha* (x2*x3 + x3*x2),
x0*x2 - x2*x0 - beta* (x3*x1 + x1*x3),
x0*x3 - x3*x0 - ((-alpha-beta)/ (1 + alpha*beta)) * (x1*x2 + x2*x1),
x0*x1 + x1*x0 - (x2*x3 - x3*x2),
x0*x2 + x2*x0 - (x3*x1 - x1*x3)];
AlgebraSd6:= <K, F, Rels, Gens>;
AlgebraSd6;



// Algebra S_{d,i=1} Twist
QQ := RationalField();
K<alpha,beta,d1,d2> := FunctionField(QQ, 4); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3];
Rels := 
[d1*(-x0^(2) + x1^(2) + x2^(2) + (-1)* x3^(2)) + d2* (x1^(2) + 
((1 + alpha)/ (1 - beta))*x2^(2) - ((1 - alpha)/ (1 + (-alpha-beta)/ (1 + alpha*beta)))*x3^(2) ),
x0*x1 + x1*x0 - (x2*x3 + x3*x2),
x0*x2 - x2*x0 - beta* (x3*x1 - x1*x3),
x0*x3 - x3*x0 + ((-alpha-beta)/ (1 + alpha*beta)) * (x1*x2 - x2*x1),
x0*x2 + x2*x0 - (x3*x1 + x1*x3),
x0*x3 + x3*x0 + (x1*x2 + x2*x1)];
AlgebraSd1Twist:= <K, F, Rels, Gens>;
AlgebraSd1Twist;



// Algebra S_{d,i=2} Twist
QQ := RationalField();
K<alpha,beta,d1,d2> := FunctionField(QQ, 4); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[d1*(-x0^(2) + x1^(2) + x2^(2) + (-1)* x3^(2)) + d2* (x1^(2) + 
((1 + alpha)/ (1 - beta))*x2^(2) - ((1 - alpha)/ (1 + (-alpha-beta)/ (1 + alpha*beta)))*x3^(2) ),
x0*x1 - x1*x0 - alpha* (x2*x3 - x3*x2),
x0*x2 - x2*x0 - beta* (x3*x1 - x1*x3),
x0*x3 - x3*x0 + ((-alpha-beta)/ (1 + alpha*beta)) * (x1*x2 - x2*x1),
x0*x2 + x2*x0 - (x3*x1 + x1*x3),
x0*x3 + x3*x0 + (x1*x2 + x2*x1)];
AlgebraSd2Twist:= <K, F, Rels, Gens>;
AlgebraSd2Twist;



// Algebra S_{d,i=3} Twist
QQ := RationalField();
K<alpha,beta,d1,d2> := FunctionField(QQ, 4); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[d1*(-x0^(2) + x1^(2) + x2^(2) + (-1)* x3^(2)) + d2* (x1^(2) + 
((1 + alpha)/ (1 - beta))*x2^(2) - ((1 - alpha)/ (1 + (-alpha-beta)/ (1 + alpha*beta)))*x3^(2) ),
x0*x1 - x1*x0 - alpha* (x2*x3 - x3*x2),
x0*x1 + x1*x0 - (x2*x3 + x3*x2),
x0*x3 - x3*x0 + ((-alpha-beta)/ (1 + alpha*beta)) * (x1*x2 - x2*x1),
x0*x2 + x2*x0 - (x3*x1 + x1*x3),
x0*x3 + x3*x0 + (x1*x2 + x2*x1)];
AlgebraSd3Twist:= <K, F, Rels, Gens>;
AlgebraSd3Twist;



// Algebra S_{d,i=4} Twist
QQ := RationalField();
K<alpha,beta,d1,d2> := FunctionField(QQ, 4); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[d1*(-x0^(2) + x1^(2) + x2^(2) + (-1)* x3^(2)) + d2* (x1^(2) + 
((1 + alpha)/ (1 - beta))*x2^(2) - ((1 - alpha)/ (1 + (-alpha-beta)/ (1 + alpha*beta)))*x3^(2) ),
x0*x1 - x1*x0 - alpha* (x2*x3 - x3*x2),
x0*x2 - x2*x0 - beta* (x3*x1 - x1*x3),
x0*x3 - x3*x0 + ((-alpha-beta)/ (1 + alpha*beta)) * (x1*x2 - x2*x1),
x0*x1 + x1*x0 - (x2*x3 + x3*x2),
x0*x3 + x3*x0 + (x1*x2 + x2*x1)];
AlgebraSd4Twist:= <K, F, Rels, Gens>;
AlgebraSd4Twist;



// Algebra S_{d,i=5} Twist
QQ := RationalField();
K<alpha,beta,d1,d2> := FunctionField(QQ, 4); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[d1*(-x0^(2) + x1^(2) + x2^(2) + (-1)* x3^(2)) + d2* (x1^(2) + 
((1 + alpha)/ (1 - beta))*x2^(2) - ((1 - alpha)/ (1 + (-alpha-beta)/ (1 + alpha*beta)))*x3^(2) ),
x0*x1 - x1*x0 - alpha* (x2*x3 - x3*x2),
x0*x2 - x2*x0 - beta* (x3*x1 - x1*x3),
x0*x1 + x1*x0 -  (x2*x3 + x3*x2),
x0*x2 + x2*x0 - (x3*x1 + x1*x3),
x0*x3 + x3*x0 + (x1*x2 + x2*x1)];
AlgebraSd5Twist:= <K, F, Rels, Gens>;
AlgebraSd5Twist;



// Algebra S_{d,i=6} Twist
QQ := RationalField();
K<alpha,beta,d1,d2> := FunctionField(QQ, 4); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[d1*(-x0^(2) + x1^(2) + x2^(2) + (-1)* x3^(2)) + d2* (x1^(2) + 
((1 + alpha)/ (1 - beta))*x2^(2) - ((1 - alpha)/ (1 + (-alpha-beta)/ (1 + alpha*beta)))*x3^(2) ),
x0*x1 - x1*x0 - alpha* (x2*x3 - x3*x2),
x0*x2 - x2*x0 - beta* (x3*x1 - x1*x3),
x0*x3 - x3*x0 + ((-alpha-beta)/ (1 + alpha*beta)) * (x1*x2 - x2*x1),
x0*x2 + x2*x0 - (x3*x1 + x1*x3),
x0*x1 + x1*x0 - (x2*x3 + x3*x2)];
AlgebraSd6Twist:= <K, F, Rels, Gens>;
AlgebraSd6Twist;



// Algebra Polynomial Ring 
QQ := RationalField();
K := FunctionField(QQ); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [x1*x2 - x2*x1,
x1*x3 - x3*x1,
x1*x4 - x4*x1,
x2*x3 - x3*x2,
x2*x4 - x4*x2,
x3*x4 - x4*x3];
AlgebraPolynomialRingDim4:= <K, F, Rels, Gens>;
AlgebraPolynomialRingDim4;



// Algebra Skew Polynomial Ring  or Algebra Tetrahedron
QQ := RationalField();
K<q12,q13,q14,q23,q24,q34> := FunctionField(QQ, 6); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [x1*x2 - q12*x2*x1,
x1*x3 - q13*x3*x1,
x1*x4 - q14*x4*x1,
x2*x3 - q23*x3*x2,
x2*x4 - q24*x4*x2,
x3*x4 - q34*x4*x3];
AlgebraTetrahedron:= <K, F, Rels, Gens>;
AlgebraTetrahedron;



// Algebra Clifford
QQ := RationalField();
K<h> := FunctionField(QQ);
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Gens := [x1,x2,x3,x4];
Rels := [x1*x2 + x2*x1 + 2*x1^2 + 3*x2^2 + 4*x3^2 + 5*x4^2,
x1*x3 + x3*x1 + (7)*x1^2 + (-10)*x2^2 + (7)*x3^2 + (8)*x4^2,
x1*x4 + x4*x1 + (9)*x1^2 + (7)*x2^2 + (-3)*x3^2 + (-2)*x4^2,
x2*x3 + x3*x2 + (-1)*x1^2 + (6)*x2^2 + (8)*x3^2 + (2)*x4^2,
x2*x4 + x4*x2 + (1)*x1^2 + (1)*x2^2 + (6)*x3^2 + (3)*x4^2,
x3*x4 + x4*x3 + (7)*x1^2 + (-1)*x2^2 + (4)*x3^2 + (5)*x4^2];
AlgebraClifford:= <K, F, Rels, Gens>;
AlgebraClifford;



// Algebra S(2,3)
QQ := RationalField();
K<b1,b2,b3,d1,d2,d3> := FunctionField(QQ, 6); 
F<x0,x1,x2,x3> := FreeAlgebra(K,4);
Gens := [x0,x1,x2,x3]; 
Rels := 
[x0*x1 - x1*x0 - x1^(2) - x1*(b1*x2+(-2-b2)*x3) - d1*x2*x3,
x0*x2 - x2*x0 - x2^(2) - x2*(b2*x3+(-2-b3)*x1) - d2*x3*x1,
x0*x3 - x3*x0 - x3^(2) - x3*(b3*x1+(-2-b1)*x2) - d3*x1*x2,
x2*x3 - x3*x2,
x3*x1 -x1*x3,
x1*x2 - x2*x1];
AlgebraStwothree:= <K, F, Rels, Gens>;  
AlgebraStwothree;



// Algebra Kirkman R
QQ := RationalField();
K := FunctionField(QQ); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [x1*x2 + x2*x1,
x1*x3 + x4*x2,
x1*x4 - x3*x2,
x2*x3 - x4*x1,
x2*x4 + x3*x1,
x3*x4 + x4*x3];
AlgebraKirkmanR:= <K, F, Rels, Gens>;
AlgebraKirkmanR;



// Algebra Kirkman S
QQ := RationalField();
K := FunctionField(QQ); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [x1*x2 - x3*x3,
x1*x3 - x2*x4,
x1*x4 - x4*x2,
x2*x3 - x3*x1,
x3*x2 - x4*x1,
x2*x1 - x4*x4];
AlgebraKirkmanS:= <K, F, Rels, Gens>;
AlgebraKirkmanS;



// Algebra Kirkman T
QQ := RationalField();
K := FunctionField(QQ); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [x1*x2 - x3*x3,
x1*x3 - x2*x4,
x1*x4 + x4*x2,
x2*x3 - x3*x1,
x3*x2 - x4*x1,
x2*x1 + x4*x4];
AlgebraKirkmanT:= <K, F, Rels, Gens>;
AlgebraKirkmanT;



// Algebra CassidyVancliff5.1
QQ := RationalField();  
P<x> := PolynomialRing(QQ);  
N<ii> := NumberField(x^2 + 1);  
RR<s> := PolynomialRing(N);  
K<h> := FieldOfFractions(RR);
i := ii;  
j := -ii;  
gamma := i + 2*j; 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [x4*x1 - i*x1*x4,
x3*x2 - j*x2*x3,
x3*x3 - x1*x1,
x4*x4 - x2*x2,
x3*x1 - x1*x3 + x2*x2,
x4*x2 - x2*x4 + gamma^2*x1^2];
AlgebraCassidyVancliff5point1 := <K, F, Rels, Gens>;
AlgebraCassidyVancliff5point1;



// Algebra CassidyVancliff5.2
QQ := RationalField();
K<alpha1,alpha2,beta1,beta2> := FunctionField(QQ, 4);
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [x3*x1 + x1*x3 - beta2*x2^2,
x4*x1 + x1*x4 - alpha2*x3^2,
x2*x3 - x3*x2,
x4*x4 - x2*x2,
x4*x2 + x2*x4 - x3^2,
alpha1*x3^2 + beta1*x2^2 - x1^2];
AlgebraCassidyVancliff5point2 := <K, F, Rels, Gens>;
AlgebraCassidyVancliff5point2;



// Algebra CassidyVancliff5.3, (Considering u13=-1, u14=-1, u34 =1, u24=1 for simplification)
QQ := RationalField();
K<u13,u14,u34,u24> := FunctionField(QQ, 4);
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [x1*x3 + u13*x3*x1,
x1*x4 + u14*x4*x1,
x3*x4 + u34*x4*x3,
x4*x4 - x2*x2,
x2*x3 + x3*x2 + x4^2,
x2*x4 + u24*x4*x2 + x1^2];
AlgebraCassidyVancliff5point3 := <K, F, Rels, Gens>;
AlgebraCassidyVancliff5point3;



// Algebra A5
QQ := RationalField();
P<t> := PolynomialRing(QQ);
Qi<i> := ext< QQ | t^2 + 1 >;
K<a1,a4,a7,d> := FunctionField(Qi, 4);
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [ d*x1*x4 + x4*x1,
    d*x2*x4 - x4*x2,
    a1*x1^2 + a4*d^2*x2^2,
    d*x3*x4 - i*x4*x3,
    a4*x1*x2 + a4*x2*x1 - a7*x3^2,
    x2*x3 + x3*x2 ];
AlgebraA5:= <K, F, Rels, Gens>;
AlgebraA5;



// Caines Algebra 
QQ := RationalField();
K<a,b,c,d> := FunctionField(QQ, 4); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x4*x3 - x3*x4 - a*x1*x2,
    x4*x2 - b*x3^2 + x2*x4,
    x4*x1 - c*x3^2 + x1*x4,
    x3*x2 - x2*x3 + (b*d/c)*x2*x4 - (b^2*d/c^2)*x1*x4,
    x3*x1 - x1*x3 + (b*d/c)*x1*x4 - d*x2*x4,
    x2*x1 + x1*x2
];
CainesAlgebra:= <K, F, Rels, Gens>;
CainesAlgebra;



// Algebra F(0,-1,-1,2)(0,0,0,0)
QQ := RationalField();
K<q14, q13, q23, q24, t> := FunctionField(QQ, 5); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x2*x1 - (q14^2 / q13)*x1*x2,
    x3*x1 - q13*x1*x3,
    x4*x1 - q14*x1*x4,
    x3*x2 - q23*x2*x3 - t*x4*x4,
    x4*x2 - q24*x2*x4,
    x4*x3 - (1/q24)*x3*x4
];
AlgebraF1:= <K, F, Rels, Gens>;
AlgebraF1;



// Algebra F(-1,-1,1,1)(0,0,0,0)
QQ := RationalField();
K<q12, t, q13, q14, q23> := FunctionField(QQ, 5); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x2*x1 - q12*x1*x2 - t*x3*x4,
    x3*x1 - q13*x1*x3,
    x4*x1 - q14*x1*x4,
    x3*x2 - q23*x2*x3,
    x4*x2 - (1/(q13*q23*q14))*x2*x4,
    x4*x3 - (1/(q13*q23))*x3*x4
];
AlgebraF2:= <K, F, Rels, Gens>;
AlgebraF2;



// Algebra F(0,-1,-1,2)(0,0,0,0)(2,-1,-1,0)
QQ := RationalField();
K<q13, q23, t, s, q34> := FunctionField(QQ, 5); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [ x2*x1 - (1/q13)*x1*x2,
    x3*x1 - q13*x1*x3,
    x4*x1 - x1*x4,
    x3*x2 - q23*x2*x3 - t*x4*x4 - s*x1*x1,
    x4*x2 - (1/q34)*x2*x4,
    x4*x3 - q34*x3*x4 ];
AlgebraF3:= <K, F, Rels, Gens>;
AlgebraF3;



// Algebra F(0,-1,-1,2)(-1,0,-1,2)(0,0,0,0)
QQ := RationalField();
K<q12, q14, t, s> := FunctionField(QQ, 4); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x2*x1 - q12*x1*x2,
    x3*x1 - (q14^2 / q12)*x1*x3 - t*x4*x4,
    x4*x1 - q14*x1*x4,
    x3*x2 - (q14^2 * q12)*x2*x3 - s*x4*x4,
    x4*x2 - q14*x2*x4,
    x4*x3 - (1/q14)*x3*x4
];
AlgebraF4:= <K, F, Rels, Gens>;
AlgebraF4;



// Algebra F(0,-1,-1,2)(0,0,0,0)(-1,-1,2,0)
QQ := RationalField();
K<q12, t, q24, s> := FunctionField(QQ, 4); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x2*x1 - q12*x1*x2 - t*x3*x3,
    x3*x1 - (1 / (q24^6 * q12))*x1*x3,
    x4*x1 - (1 / q24^3)*x1*x4,
    x3*x2 - (q24^6 * q12)*x2*x3 - s*x4*x4,
    x4*x2 - q24*x2*x4,
    x4*x3 - (1 / q24)*x3*x4
];
AlgebraF5:= <K, F, Rels, Gens>;
AlgebraF5;



// Algebra R(3,a)

QQ := RationalField();
K<a> := FunctionField(QQ); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := 
[ x4*x1 - x1*x4 + 4*a*x4^2,
x1*x2 - x2*x1 + 4*(a+1)*x1^2 - 8*(a+1)*(a+2)*x4*x1 - 4*(a+2)*x4*x2,
x4*x2 - x2*x4  + 4*a*x4*x1  + 8*a^2*x4^2  - 8*a*x4^2,
x1*x3 - x3*x1 + 4*(a+1)*x1*x2 + 8*a*(a+1)*x1^2 - (64/3)*a*(a+1)*(a+2)*x4*x1 - 16*(a+1)*(a+2)*x4*x2 - 4*(a+3)*x4*x3,
x4*x3 - x3*x4 + 4*a*x4*x2 - 8*(a - a^2)*x4*x1 - (64/6)*(-a^3 + 3*a^2 - 2*a)*x4^2,
x2*x3 - x3*x2 + 4*(a+2)*x2^2 - 8*(a+2)*(a+3)*x1*x2  + (64/6)*(a+2)*(a+3)*(a+4)*x4*x2  - 4*(a+3)*x1*x3 + 8*(a+3)*(a+4)*x4*x3 ];
AlgebraR3a:= <K, F, Rels, Gens>;
AlgebraR3a;



// Algebra L(1,1,2)^sigma
QQ := RationalField();
K<p0, p1, lambda, alpha, beta> := FunctionField(QQ, 5); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels :=  [ alpha*(x2*x1 - x1*x2),
beta*x3*x1 - (1/p0)*alpha*x1*x3,
(alpha^2/beta)*x4*x1 - p0*alpha*x1*x4,
beta*x3*x2 - p1*alpha*x2*x3,
(alpha^2/beta)*x4*x2 - (1/p1)*alpha*x2*x4,
(alpha^2/beta)*x4*x3 - p1*(1/p0)*beta*x3*x4 - alpha*(p1 - p0)*(x1^2 + lambda*x1*x2 + x2^2) - alpha*(1 - p0^2)*x1^2 - alpha*(p1^2 - 1)*x2^2 ];
AlgebraL112sigma:= <K, F, Rels, Gens>;
AlgebraL112sigma;



// Algebra S(2,3)^sigma
QQ := RationalField();
K<c1, c2, c3, d1, d2, d3, alpha, beta1, beta2, beta3> := FunctionField(QQ, 10); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels :=
[
    alpha*(x4*x1 - x1*x4) 
        + beta1*x1^2 
        + beta2*x2*x1 
        + beta3*x3*x1 
        - alpha*x1^2 
        - alpha*x1*((-c3 - 2)*x2 + c1*x3) 
        - d1*alpha*x2*x3,

    alpha*(x4*x2 - x2*x4) 
        + beta1*x1*x2 
        + beta2*x2^2 
        + beta3*x3*x2 
        - alpha*x2^2 
        - alpha*x2*((-c1 - 2)*x3 + c2*x1) 
        - d2*alpha*x3*x1,

    alpha*(x4*x3 - x3*x4) 
        + beta1*x1*x3 
        + beta2*x2*x3 
        + beta3*x3^2 
        - alpha*x3^2 
        - alpha*x3*((-c2 - 2)*x1 + c3*x2) 
        - d3*alpha*x1*x2,

    x2*x3 - x3*x2,

    x3*x1 - x1*x3,

    x1*x2 - x2*x1
];
AlgebraS23sigma:= <K, F, Rels, Gens>;
AlgebraS23sigma;




// Lie Algebra 1
QQ := RationalField();
K<t> := FunctionField(QQ); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x2*x3 - x3*x2 - x1*x4,
    x1*x2 - x2*x1,
    x1*x3 - x3*x1,
    x1*x4 - x4*x1,
    x2*x4 - x4*x2,
    x3*x4 - x4*x3
];
LieAlgebra1:= <K, F, Rels, Gens>;
LieAlgebra1;



// Lie Algebra 2
QQ := RationalField();
K<t> := FunctionField(QQ); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x1*x2 - x2*x1 - x1*x4,
    x1*x3 - x3*x1,
    x2*x3 - x3*x2,
    x1*x4 - x4*x1,
    x2*x4 - x4*x2,
    x3*x4 - x4*x3
];
LieAlgebra2:= <K, F, Rels, Gens>;
LieAlgebra2;



// Lie Algebra 3
QQ := RationalField();
K<alpha> := FunctionField(QQ); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x1*x2 - x2*x1,
    x1*x3 - x3*x1 - x1*x4,
    x2*x3 - x3*x2 - alpha*x2*x4,
    x1*x4 - x4*x1,
    x2*x4 - x4*x2,
    x3*x4 - x4*x3
];
LieAlgebra3:= <K, F, Rels, Gens>;
LieAlgebra3;



// Lie Algebra 4
QQ := RationalField();
K<beta> := FunctionField(QQ); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x1*x2 - x2*x1,
    x1*x3 - x3*x1 - x1*x4 - beta*x2*x4,
    x2*x3 - x3*x2 - x2*x4,
    x1*x4 - x4*x1,
    x2*x4 - x4*x2,
    x3*x4 - x4*x3
];
LieAlgebra4:= <K, F, Rels, Gens>;
LieAlgebra4;



// Lie Algebra sl2
QQ := RationalField();
K<t> := FunctionField(QQ); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x1*x3 - x3*x1 - 2*x1*x4,
    x2*x3 - x3*x2 + 2*x2*x4,
    x1*x2 - x2*x1 - x3*x4,
    x1*x4 - x4*x1,
    x2*x4 - x4*x2,
    x3*x4 - x4*x3
];
LieAlgebrasl2:= <K, F, Rels, Gens>;
LieAlgebrasl2;



// Algebra OreExt. TypeA1
QQ := RationalField();
P<t> := PolynomialRing(QQ);
Qp<p> := ext< QQ | t^2 + t + 1 >;
K<a,b,c,d> := FunctionField(Qp, 4);
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4]; 
Rels := [
    c*x1^2 + a*x2*x3 + b*x3*x2,
    c*x2^2 + a*x3*x1 + b*x1*x3,
    c*x3^2 + a*x1*x2 + b*x2*x1,
    x4*x1 - d*x1*x4,
    x4*x2 - d*p*x2*x4,
    x4*x3 - d*p^2*x3*x4
];
OreExtTypeA1:= <K, F, Rels, Gens>;
OreExtTypeA1;



// Algebra OreExt. TypeA2
QQ := RationalField();
P<t> := PolynomialRing(QQ);
Qp<p> := ext< QQ | t^2 + t + 1 >;
K<a,b,c,d> := FunctionField(Qp, 4);
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4]; 
Rels := [
    c*x1^2 + a*x2*x3 + b*x3*x2,
    c*x2^2 + a*x3*x1 + b*x1*x3,
    c*x3^2 + a*x1*x2 + b*x2*x1,
    x4*x1 - d*x2*x4,
    x4*x2 - d*p*x3*x4,
    x4*x3 - d*p^2*x1*x4
];
OreExtTypeA2:= <K, F, Rels, Gens>;
OreExtTypeA2;



// Algebra OreExt. TypeA3
QQ := RationalField();
P<t> := PolynomialRing(QQ);
Qp<p> := ext< QQ | t^2 + t + 1 >;
K<a,b,c,d> := FunctionField(Qp, 4);
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4]; 
Rels := [
    c*x1^2 + a*x2*x3 + b*x3*x2,
    c*x2^2 + a*x3*x1 + b*x1*x3,
    c*x3^2 + a*x1*x2 + b*x2*x1,
    x4*x1 - d*x3*x4,
    x4*x2 - d*p*x1*x4,
    x4*x3 - d*p^2*x2*x4
];
OreExtTypeA3:= <K, F, Rels, Gens>;
OreExtTypeA3;



// Algebra OreExt. TypeB1
QQ := RationalField();
K<a,d,alpha> := FunctionField(QQ, 3); 
p:= -1; // p^2 = 1, primitive 2nd root
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4]; 
Rels := [
    x1*x2 + x2*x1 + x2^2 - x3^2,
    x1^2 + x2*x1 + x1*x2 - a*x3^2,
    x3*x1 - x1*x3 + a*x3*x2 - a*x2*x3,
    x4*x1 - d*x1*x4,
    x4*x2 - d*x2*x4,
    x4*x3 - p*d*x3*x4
];
OreExtTypeB1:= <K, F, Rels, Gens>;
OreExtTypeB1;



// Algebra OreExt. TypeE1
K := CyclotomicField(9);
p := K.1;
L<a,d> := FunctionField(K, 2);
F<x1,x2,x3,x4> := FreeAlgebra(L,4);
Gens := [x1,x2,x3,x4]; 
Rels := [
    x3*x1 + p^8*x1*x3 + p^4*x2^2,
    x1*x2 + p^5*x2*x1 + p^7*x3^2,
    p*x1^2 + x2*x3 + p^2*x3*x2,
    x4*x1 - d*x1*x4,
    x4*x2 - d*x2*x4,
    x4*x3 - d*x3*x4
];
OreExtTypeE1:= <K, F, Rels, Gens>;
OreExtTypeE1;



// Algebra OreExt. TypeE2
K := CyclotomicField(9);
p := K.1;
L<a,d> := FunctionField(K, 2);
F<x1,x2,x3,x4> := FreeAlgebra(L,4);
Gens := [x1,x2,x3,x4]; 
Rels := [
    x3*x1 + p^8*x1*x3 + p^4*x2^2,
    x1*x2 + p^5*x2*x1 + p^7*x3^2,
    p*x1^2 + x2*x3 + p^2*x3*x2,
    x4*x1 - d*x1*x4,
    x4*x2 - d*p^3*x2*x4,
    x4*x3 - d*p^6*x3*x4
];
OreExtTypeE2:= <K, F, Rels, Gens>;
OreExtTypeE2;



// Algebra OreExt. TypeH.I
K := CyclotomicField(4);
i := K.1;
p:= i^3; 
L<d> := FunctionField(K);
F<x1,x2,x3,x4> := FreeAlgebra(L,4);
Gens := [x1,x2,x3,x4]; 
Rels := [
    x1^2 - x2^2,
    x1*x2 - x2*x1 + p*x3^2,
    x2*x3 - p*x3*x2,
    x4*x1 - d*x1*x4,
    x4*x2 + d*x2*x4,
    x4*x3 - i*d*x3*x4
];
OreExtTypeHI:= <K, F, Rels, Gens>;
OreExtTypeHI;



// Algebra OreExt. TypeH.II
K := CyclotomicField(4);
i := K.1;
p:= i^3; 
L<d> := FunctionField(K);
F<x1,x2,x3,x4> := FreeAlgebra(L,4);
Gens := [x1,x2,x3,x4]; 
Rels := [
    x1^2 - x2^2,
    x1*x2 - x2*x1 + p*x3^2,
    x2*x3 - p*x3*x2,
    x4*x1 - d*x1*x4,
    x4*x2 - d*x2*x4,
    x4*x3 + d*x3*x4
];
OreExtTypeHII:= <K, F, Rels, Gens>;
OreExtTypeHII;



// Algebra OreExt. TypeS1^{'}
QQ := RationalField();
K<a,b,c,d,alpha> := FunctionField(QQ, 5); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x2*x3 + a*alpha^-1*x3*x2,
    alpha*x3*x1 + a*x1*x3,
    x3^2 + x1*x2 + a*x2*x1,
    x4*x1 - b^2*d*x1*x4,
    x4*x2 - c^2*d*x2*x4,
    x4*x3 - b*c*d*x3*x4
];
OreExtTypeS1dash:= <K, F, Rels, Gens>;
OreExtTypeS1dash; 



// Algebra OreExt. TypeS2
QQ := RationalField();
K<a,d,alpha> := FunctionField(QQ, 3); 
p:= -1; // p^2 = 1, primitive 2nd root
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x3*x1 + alpha^-1*x1*x3,
    x3*x2 - alpha^-1*x2*x3,
    x1^2 - x2^2,
    x4*x1 - a*d*x1*x4,
    x4*x2 - p*a*d*x2*x4,
    x4*x3 - d*x3*x4
];
OreExtTypeS2:= <K, F, Rels, Gens>;
OreExtTypeS2; 



// Algebra CentExt. TypeB
QQ := RationalField();
K<a, l11, l12, l22> := FunctionField(QQ, 4); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x1*x2 + x2*x1 + x2^2 - x3^2 + (l11*x1 + l12*x2)*x4,
    x1^2 + x2*x1 + x1*x2 - a*x3^2 + (l12*x1 + l22*x2)*x4,
    x3*x1 - x1*x3 + a*x3*x2 - a*x2*x3,
    x4*x1 - x1*x4,
    x4*x2 - x2*x4,
    x4*x3 - x3*x4
];
CentExtTypeB:= <K, F, Rels, Gens>;
CentExtTypeB; 



// Algebra CentExt. TypeE
K := CyclotomicField(9);
p := K.1;
L<d> := FunctionField(K);
F<x1,x2,x3,x4> := FreeAlgebra(L,4);
Gens := [x1,x2,x3,x4]; 
Rels := [
    x3*x1 + p^8*x1*x3 + p^4*x2^2,
    x1*x2 + p^5*x2*x1 + p^7*x3^2,
    p*x1^2 + x2*x3 + p^2*x3*x2,
    x4*x1 - x1*x4,
    x4*x2 - x2*x4,
    x4*x3 - x3*x4
];
CentExtTypeE:= <K, F, Rels, Gens>;
CentExtTypeE; 



// Algebra CentExt. TypeH
K := CyclotomicField(4);
p := K.1;
L<d> := FunctionField(K);
F<x1,x2,x3,x4> := FreeAlgebra(L,4);
Gens := [x1,x2,x3,x4]; 
Rels := [
    x1^2 - x2^2 + x1*x4,
    x1*x2 - x2*x1 + p*x3^2,
    x2*x3 - p*x3*x2,
    x4*x1 - x1*x4,
    x4*x2 - x2*x4,
    x4*x3 - x3*x4
];
CentExtTypeH:= <K, F, Rels, Gens>;
CentExtTypeH; 


// Algebra CentExt. TypeS1
QQ := RationalField();
K<a, alpha, beta> := FunctionField(QQ, 3); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x2*x3 + a*beta*x3*x2,
    alpha*x3*x1 + a*x1*x3,
    x1*x2 + a*x2*x1,
    x4*x1 - x1*x4,
    x4*x2 - x2*x4,
    x4*x3 - x3*x4
];
CentExtTypeS1:= <K, F, Rels, Gens>;
CentExtTypeS1; 



// Algebra CentExt. TypeS1^{'}
QQ := RationalField();
K<a, alpha> := FunctionField(QQ, 2); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x2*x3 + a*alpha^-1*x3*x2,
    alpha*x3*x1 + a*x1*x3,
    x3^2 + x1*x2 + a*x2*x1,
    x4*x1 - x1*x4,
    x4*x2 - x2*x4,
    x4*x3 - x3*x4
];
CentExtTypeS1dash:= <K, F, Rels, Gens>;
CentExtTypeS1dash;



// Algebra CentExt. TypeS2
QQ := RationalField();
K<alpha> := FunctionField(QQ); 
F<x1,x2,x3,x4> := FreeAlgebra(K,4);
Gens := [x1,x2,x3,x4];
Rels := [
    x3*x1 + alpha^-1*x1*x3,
    x3*x2 - alpha^-1*x2*x3,
    x1^2 - x2^2,
    x4*x1 - x1*x4,
    x4*x2 - x2*x4,
    x4*x3 - x3*x4
];
CentExtTypeS2:= <K, F, Rels, Gens>;
CentExtTypeS2;






















