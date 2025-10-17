G:=SymmetricGroup(4);
H:=sub< G | (1,2,3,4)>;
bG:=Basis(CharacterRing(G));
bG;
trv:=bG[1];
det:=bG[2];
ano:=bG[3];
stntensordet:=bG[4];
stn:=bG[5];

trv;

det;

ano;

stntensordet;

stn;

Restriction(trv,H);
Restriction(det,H);
Restriction(ano,H);
Restriction(stntensordet,H);
Restriction(stn,H);

[Restriction(v,H): v in bG];

bH:=Basis(CharacterRing(H));
bH;

[[InnerProduct(Restriction(v,H),x):x in bH] : v in bG];


