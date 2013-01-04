*clear all
* http://myweb.uiowa.edu/fboehmke/methods.html
* but Boehmke does not provide proper marginal effects for probit models,
* He simply provides dy/dx assuming a linear relationship


*Define the program name
capture program drop binary_graph
set more off
if ("`graph'" == "interaction"){       
}

if ("`graph'" == "square"){       
scalar min = min_vec[1,2]
}

}










* For Probit Model
* For Logit Model
* The ME for the logit model is lamba(1-lambda)B. See Greene p. 775 (6th ed.)	

if("`cmd'"=="logit") {
	*gen exp_xb = exp(x_betahat)
	*gen lambda = exp_xb/(1+exp_xb)
	gen prob = (exp(x_betahat)/(1+exp(x_betahat)))*(1-(exp(x_betahat)/(1+exp(x_betahat))))
}






***********************************


* For models with interaction terms
if ("`graph'" == "interaction") gen stuff = prob*(b_1 + b_3*`a')

    
    
    
    
quietly drop if _n > 501



if ("`ci'" == "ci_90"){       
label variable diff_lo "95% Confidence Interval"
            xlabel(minmax)
            
}

if ("`graph'" == "square"){       
			xlabel(minmax)
}			
			            









/*
* An example of how to use the program


*Load data


gen age_2 = age^2
gen grade_2 = grade^2
probit union age age_2 grade not_smsa 



*binary_graph square ci_95
*binary_graph interaction ci_95
*binary_graph interaction ci_90


*/