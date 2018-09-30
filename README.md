# flowsom operator

#### Description
`flowsom` operator performs the SOM (self organizing maps) in the `flowSOM` R package.

##### Usage
Input projection|.
---|---
`row`   | represents the variables (e.g. channels, markers)
`col`   | represents the observations (e.g. cells) 
`y-axis`| is the value of measurement signal of the channel/marker


Output relations|.
---|---
`mapping`| numeric, per column (e.g. per cell)

##### Details
The operator is the `SOM` function of the `flowSOM` R package.


#### References
see the `flowSOM::SOM` function of the R package for the documentation, 


##### See Also


#### Examples
