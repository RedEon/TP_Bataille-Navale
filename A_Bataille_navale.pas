(*
ALGORITHME: bataille_navale

CONSTANTE
		MAX<-10:ENTIER
	
Type mes_cases= enregistrement
	i,j:ENTIER

Type bateau= enregistrement
	TabPorteAvion: Tableau[1..5] de mes_cases;
	TabCroiseur: Tableau[1..4] de mes_cases;
	TabSous-Marin: Tableau[1..3] de mes_cases;
	TabTorpilleur: Tableau[1..2] de mes_cases;
FinType

Type flotte= enregistrement
	TabFlotte: Tableau[1..MAX] de bateau
FinType

Procedure creation_case(i,j:ENTIER)

DEBUT
	POUR I DE 1 A MAX
        POUR J DE 1 A MAX
					ECRIRE "X "
		FINPOUR
    FINPOUR
FINPROCEDURE

VAR
	i,j:ENTIER;
	
DEBUT
	i<-0
	j<-0
	creation_case(i,j)
FIN
*)

program bataille_navale;

uses crt;

const
	MAX=11;
	
Type mes_cases=record
	i,j:integer;
end;

Type bateau=record
	TabPorteAvion: array[1..5] of mes_cases;
	TabCroiseur: array[1..4] of mes_cases;
	TabSousMarin: array[1..3] of mes_cases;
	TabTorpilleur: array[1..2] of mes_cases;
end;

Type flotte=record
	TabFlotte: array[1..MAX] of bateau;
end;

Procedure creation_case(i,j:integer);

begin
	FOR i:=1 TO MAX DO //Pour I de 1 a Nombre
		begin //cree un bloc de commande
         FOR j:=1 TO MAX DO  // Pour J de 1 a Nombre
			begin //cree un bloc de commande
					write('X ')
			end;
			writeln;
        end;
end;

var
	i,j,chiffre,ship:integer;
	lettre,sens:char;
	
BEGIN
	clrscr;
	i:=0;
	j:=0;
	creation_case(i,j);
	writeln('Veuillez placer votre porte avion');
	writeln('Entrez un chiffre de 1 à 10');
	readln(i);
	writeln('Dans quel sens ? Horizontale(H) ou Verticale(V) ?');
	readln(sens);
	if (sens='H') then
	begin
		clrscr;
		creation_case(i,j);
		FOR i:=i to 5 DO
			begin
				write('P ');
			end;
	end
	else
		clrscr;
		creation_case(i,j);
		FOR j:=i to 5 DO
			begin
				write('P ');
			end;
	readln;
END.

