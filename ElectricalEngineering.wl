(* ::Package:: *)
BeginPackage["ElectricalEngineering`"];
ToPolarDegrees::parameterError= "Error with paramters make sure to enter the complex number as one argument or the values of the complex number as a 2 element list.";
ToPolarDegrees::usage = "Converts a complex number in rectangular form into polar form \n Enter it either as ToPolarDegrees[complex value] \n or \n ToPolarDegrees[{real part,imaginary part}].";
ToRectangularForm::parameterError= "Error with paramters make sure to enter the magnitede and angle as two seperate arguments or the values of the complex number as a 2 element list.";
ToRectangularForm::usage = "Converts a complex number in polar form into rectangular form \n Enter it either as \ ToRectangularForm[magnitude,angle] \n or \n ToRectangularFormDegrees[{magnitude,angle}].";
CapacitanceToRectangular::usage ="Takes a  capacitance and the omega of the voltage/current source from the time domain and converts it to rectangular form \n Enter it either as \n CapacitanceToRectangular[capacitance,omega] \n or \n CapacitanceToRectangular[capacitance,omega,unit].";
CapacitanceToPolar::usage ="Takes a capacitance and the omega of the voltage/current source from the time domain and converts it to polar form in degrees \n Enter it either as \n CapacitanceToPolar[capacitance,omega] \n or \n CapacitanceToPolarcapacitance,omega,unit].";
InductanceToRectangular::usage ="Takes an inductance (in Henry's) and the omega of the voltage/current source from the time domain and converts it to rectangular form \n Enter it either as \n InductanceToRectangular[inductance,omega] \n or \n InductanceToRectangular[inductance,omega,unit].";
InductanceToPolar::usage ="Takes an inductance and the omega of the voltage/current source from the time domain and converts it to polar form in degrees \n Enter it either as \n InductanceToPolar[inductance,omega] \n or \n InductanceToPolar[inductance,omega,unit].";

Begin["Private`"];

ToPolarDegrees[args_] :=
Module[{x},
If[Length[{args}] == 1,
		x=ToPolarCoordinates[{Re[args],Im[args]}];
		x[[2]]= N[x[[2]]/Degree,4];
		x[[1]]= Simplify[N[x[[1]],4]];
		x
		,
		If[Length[{args}] == 2,
				x=ToPolarCoordinates[{args[[1]],Im[args[[2]]]}];
				x[[2]]= N[x[[2]]/Degree,4];
				x[[1]]= Simplify[N[x[[1]],4]];
				x
			]
		,
		Message[ToPolarDegrees::parameterError]
		]];




ToRectangularForm[mag_ ,angle_] := ToRectangularForm[{mag,angle}];
ToRectangularForm[args_] :=
Module[{x},
If[Length[{args}] == 1,
		x = Simplify[args[[1]]Cos[args[[2]]*Degree]+args[[1]]*I*Sin[args[[2]]*Degree]];
		x = N[x,4];
		x
		,
		Message[ToPolarDegrees::parameterError]
		]];


CapacitanceToRectangular[capacitance_,omega_,unit_] :=  N[1/(I*omega*capacitance*unit)];
CapacitanceToRectangular[capacitance_,omega_] :=  N[1/(I*omega*capacitance)];
CapacitanceToPolar[capacitance_,omega_,unit_] :=  ToPolarDegrees[1/(I*omega*capacitance*unit)];
CapacitanceToPolar[capacitance_,omega_] :=  ToPolarDegrees[1/(I*omega*capacitance)];

InductanceToRectangular[inductance_,omega_,unit_] :=  N[(I*omega*inductance*unit)];
InductanceToRectangular[inductance_,omega_] :=  N[(I*omega*inductance)];
InductanceToPolar[inductance_,omega_,unit_] :=  ToPolarDegrees[(I*omega*inductance*unit)];
InductanceToPolar[inductance_,omega_] :=  ToPolarDegrees[(I*omega*inductance)];




End[];

EndPackage[];
