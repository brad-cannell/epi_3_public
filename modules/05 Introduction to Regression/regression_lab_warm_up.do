version 16

/************************************************************************
Regression lecture
2020-12-08
************************************************************************/

* Load data
use "/Users/bradcannell/Dropbox/02 Teaching/Courses/Epi 3/modules/12 Cross-sectional II/lowbwt.dta"

* Linear regression

** Regress mother's weight on mother's age (continuous predictor)
regress lwt age

** Regress mother's race on mother's race (categorical predictor)
regress lwt i.race

** Regress mother's weight on mother's age and mother's race (multiple predictors)
regress lwt age i.race


* Logistic regression

** Regress low birth weight on mother's age (continuous predictor)
logit low age
logit low age, or

** Regress low birth weight on mother's race (categorical predictor)
logit low i.race
logit low i.race, or

** Regress low birth weight on mother's age and mother's race (multiple predictors)
logit low age i.race
logit low age i.race, or


exit
-------------------------------------------------------------------------
/*log using "/Users/Brad/Desktop/Template", replace
  log close*/ 
