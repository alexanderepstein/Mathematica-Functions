# Mathematica-Functions
Extension functions on top of Mathematica's derivative and integral function.

# Why?
    Even though Mathematica can take almost any derivative or integral that 
    is possible sometimes it does not have the steps to show how it was done. 
    In this case you can use the two functions here to get mathematica to show you every step.
    
# Derivatives
    To get mathematica to show you how the derivative is done, use walkD[function,var].
    To do derivatives with up to three variables use walkD[function,var1,var2]
    or  walkD[function,var1,var2,var3]

# Integrals
    To get mathematica to show you how the integral is done, use walkInt[function,var].
    To do integral with up to three variables use walkD[function,var1,var2]
    or  walkD[function,var1,var2,var3]
# Add WalkFuncs.nb
    To be able to use these extension functions as if they were bulit into Mathematica 
    you must copy the notebook file in the same directory as your initilization file 
    (this is a file thats ran everytime you start Mathematica).
     On Windows: C:\Users\[username]\AppData\Roaming\Mathematica\Kernal\

# Edit init.m
    In the same path you just placed the WalkFuncs notebook either 
    copy the init.m file found here or just add the line  
```<< WalkFuncs.nb```

# Not original!
Code found online and slightly tweaked to handle multiple variables and error checking.
