***Inferential Statistics		
			
	**Training

		*Run the code below using each of these files:
		
			use "2nd POS - Main Data Training DEF.dta"
			use "2nd POS - Main Data Training EF.dta"
			use "2nd POS - Main Data Training GH.dta"
			use "2nd POS - Main Data Training MN.dta"
			use "2nd POS - Main Data Training Reminder 1.dta"
			use "2nd POS - Main Data Training Reminder 2.dta"
			use "2nd POS - Main Data Training UMN.dta"
	
		*stimulus x trial x trial (Quadratic)
			mixed DV i.stimulus##c.trial##c.trial || ID:
			contrast i.stimulus#c.trial#c.trial
			contrast i.stimulus#c.trial
			contrast i.stimulus
			*margins, dydx(trial) vsquish
				
				*Simple linear effects
				
					margins stimulus, dydx(trial) at(trial=0)
					margins stimulus, dydx(trial) at(trial=0) pwcompare(pveffects)
					
					estadd beta
					matrix list e(beta)
		
		*stimulus x trial (Linear)
			mixed DV i.stimulus##c.trial || ID:
			contrast i.stimulus#c.trial
			contrast i.stimulus
			margins, dydx(trial) vsquish

				*Simple linear effects
				
					margins stimulus, dydx(trial) at(trial=0)
					margins stimulus, dydx(trial) at(trial=0) pwcompare(pveffects)

		*stimulus (Main Effect)
			mixed DV i.stimulus || ID:
			contrast i.stimulus

				*Simple effects
				
					margins stimulus
					margins stimulus, pwcompare(pveffects)					
					
	**Transfer Test

		*Run the code below using each of these files:
		
		use "2nd POS - Main Data Transfer Test 1 EG.dta"
		use "2nd POS - Main Data Transfer Test 1 MG.dta"
		use "2nd POS - Main Data Transfer Test 1 DG,DH.dta"
		use "2nd POS - Main Data Transfer Test 1 DEH,DMN.dta"
		use "2nd POS - Main Data Transfer Test 2 DMN.dta"
			
			mixed DV i.stimulus || ID:
			contrast i.stimulus
			
			*Simple effects
			
				margins stimulus, pwcompare(pveffects)

		*Difference Scores
		
			*Run the code below using this file:
		
				use "2nd POS - Main Data All.dta"
		
			*DEH/DMN
		
				ttest DEFminusDEHtest1_mean == DEHminusHtest1_mean
				ttest DEFminusDMNtest1_mean == DMNminusMNtest1_mean
				
			*DG/DH
			
				ttest GminusDG_mean == DGminusH_mean
				ttest DHminusH_mean == GminusDH_mean
				
			*EG
				
				ttest GminusEGtest1_mean == EGminusEFtest1_mean
			
			*MG
			
				ttest GminusMGtest1_mean == MGminusMNtest1_mean

	**Alpha Parameters
	
		use "2nd POS - OS2 Stimulus-Specific Alpha Parameters.dta"
	
		*stimulus (Main Effect)
			mixed DV i.stimulus || ID:
			contrast i.stimulus

				*Simple effects
				
					margins stimulus
					margins stimulus, pwcompare(pveffects)					
