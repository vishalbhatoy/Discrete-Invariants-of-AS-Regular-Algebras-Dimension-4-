R:=RootDatum("A3":Isogeny:="SC");
R;

V:=LieRepresentationDecomposition(R,[1,0,0]);
V;

TensorPower(V,4);

SymmetricPower(V,4);

AlternatingPower(V,4);

TensorProduct(V,AlternatingPower(V,3));

TensorProduct(AlternatingPower(V,3),V);

AlternatingPower(AlternatingPower(V,2),2);

SymmetricPower(AlternatingPower(V,2),2);

SymmetricPower(SymmetricPower(V,2),2);

AlternatingPower(SymmetricPower(V,2),2);

TensorProduct(AlternatingPower(V,2),SymmetricPower(V,2));

TensorProduct(SymmetricPower(V,2), AlternatingPower(V,2));

TensorProduct(AlternatingPower(V,2),AlternatingPower(V,2));

TensorProduct(SymmetricPower(V,2),SymmetricPower(V,2));

TensorProduct(V,SymmetricPower(V,3));

TensorProduct(AlternatingPower(V,3),V);

TensorProduct(SymmetricPower(V,3),V);












