(* ::Package:: *)

ToPolarDegrees::parameterError= "Error with paramters make sure to enter the complex number as one argument or the values of the complex number as a 2 element list.";

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



ToRectangularForm::parameterError= "Error with paramters make sure to enter the complex number as one argument or the values of the complex number as a 2 element list.";
ToRectangularForm[mag_ ,angle_] := ToRectangularForm[{mag,angle}]
ToRectangularForm[args_] := 
Module[{x}, 
If[Length[{args}] == 1,
		x = Simplify[args[[1]]Cos[args[[2]]*Degree]+args[[1]]*I*Sin[args[[2]]*Degree]];
		x = N[x,4];
		x
		,
		Message[ToPolarDegrees::parameterError]
		]];

