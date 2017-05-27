# Mathematica-Functions
Extension functions on top of Mathematica's derivative and integral function.

Update: Added some conversion functions to go between rectangular and polar form of a number (Everything is done in degrees rather than radians)

# Why?
    Even though Mathematica can take almost any derivative or integral that
    is possible sometimes it does not have the steps to show how it was done.
    In this case you can use the two functions here to get mathematica to show you every step.

    The ElectricalEngineering is useful for calculation AC circuits by facilitating the long a tedious math and conversions with few useful functions

# Derivatives
    To get mathematica to show you how the derivative is done, use walkD[function,var].
    To do derivatives with up to three variables use walkD[function,var1,var2]
    or  walkD[function,var1,var2,var3]

# Integrals
    To get mathematica to show you how the integral is done, use walkInt[function,var].
    To do integral with up to three variables use walkD[function,var1,var2]
    or  walkD[function,var1,var2,var3]

# ToPolarDegrees
    Get the Polar form of a rectangular value by entering either ToPolarDegrees[Real+Imaginary*i] or ToPolarDegrees[{Real,Imaginary}]

# ToRectangularForm
    Get the rectangular form of a polar value by entering
    ToRectangularForm[{magnitude,angle}] where the angle is in degrees

# CapacitanceToRectangular
    Takes a  capacitance and the omega of the voltage/current source from the time domain and converts it to rectangular form
    Enter it either as
         CapacitanceToRectangular[capacitance,omega]
         or
         CapacitanceToRectangular[capacitance,omega,unit]

# CapacitanceToPolar
     Takes a  capacitance and the omega of the voltage/current source from the time domain and converts it to polar form in degrees
     Enter it either as
          CapacitanceToPolar[capacitance,omega]
          or
          CapacitanceToPolar[capacitance,omega,unit]

# InductanceToRectangular
      Takes an inductance (in Henry's) and the omega of the voltage/current source from the time domain and converts it to rectangular form
      Enter it either as
          InductanceToRectangular[inductance,omega]
          or
          InductanceToRectangular[inductance,omega,unit]

# InductanceToPolar
      Takes an inductance and the omega of the voltage/current source from the time domain and converts it to polar form in degrees
      Enter it either as
          InductanceToPolar[inductance,omega]
          or  
          InductanceToPolar[inductance,omega,unit]

# Add Packages To Mathematica
    To be able to use these extension functions as if they were built into Mathematica
    you must copy the notebook file in the same directory as your initialization file
    (this is a file that's ran every time you start Mathematica).
     On Windows: C:\Users\[username]\AppData\Roaming\Mathematica\Kernel\
     On Mac: MacHD\Users\[username]\Library\Mathematica\Kernel

# Edit init.m
    In the same path you just placed the WalkFuncs & ElectricalEngineering package files either copy the init.m file found here or just add the lines  
```<< WalkFuncs.wl ```

```<< ElectricalEngineering.wl ```

##### WalkFuncs Package is not original the basis of that package came from code found online that I slightly tweaked to handle multiple variables and error checking.
