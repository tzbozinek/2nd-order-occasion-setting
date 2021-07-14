***Inferential Statistics
			
	**Training
	
		*Run the code below using each of these files:
		
			use "2nd NOS - Main Data Training ABC.dta"
			use "2nd NOS - Main Data Training BC.dta"
			use "2nd NOS - Main Data Training GH.dta"
			use "2nd NOS - Main Data Training JK.dta"
			use "2nd NOS - Main Data Training Reminder 1.dta"
			use "2nd NOS - Main Data Training Reminder 2.dta"
			use "2nd NOS - Main Data Training TJK.dta"

		*stimulus x trial x trial (Quadratic)
			mixed DV i.stimulus##c.trial##c.trial || ID:
			contrast i.stimulus#c.trial#c.trial
			contrast i.stimulus#c.trial
			contrast i.stimulus
			*margins, dydx(trial) vsquish
				
				*Simple linear effects
				
					margins stimulus, dydx(trial) at(trial=0)
					margins stimulus, dydx(trial) at(trial=0) pwcompare(pveffects)
					
		
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
		
		use "2nd NOS - Main Data Transfer Test 1 BH.dta"
		use "2nd NOS - Main Data Transfer Test 1 JH.dta"
		use "2nd NOS - Main Data Transfer Test 1 AG,AH.dta"
		use "2nd NOS - Main Data Transfer Test 1 ABG,AJK.dta"
		use "2nd NOS - Main Data Transfer Test 2 AJK.dta"
		
		*stimulus (Main Effect)	
			mixed DV i.stimulus || ID:
			contrast i.stimulus
			
			*Simple effects
			
				margins stimulus, pwcompare(pveffects)

		*Difference Scores
		
			*Run the code below using this file:
		
			use "2nd NOS - Main Data All.dta"
		
			*ABG/AJK
		
				ttest GminusABGtest1_mean == ABGminusABCtest1_mean
				ttest JKminusAJKtest1_mean == AJKminusABCtest1_mean
				
			*AG/AH
			
				ttest GminusAG_mean == AGminusH_mean
				ttest AHminusH_mean == GminusAH_mean
				
			*BH
				
				ttest BHminusHtest1_mean == BCminusBHtest1_mean
			
			*JH
			
				ttest JHminusHtest1_mean == JKminusJHtest1_mean
				
		*For Transfer Test 2 Effect Size
			
			ttest AJK2_fromTJK_test2_mean == AJKtest1_mean
			ttest AJK2_fromTJK_test2_mean == JK2_fromTJK_test2_mean
			ttest AJK2_fromTJK_test2_mean == ABC_fromTJK_test2_mean
			ttest AJK2_fromTJK_test2_mean == TJK_fromTJK_test2_mean
			
