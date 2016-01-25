# Drug Crimes in Seattle and San Francisco

An interesting comparison of drug crime patterns between two major cities, Seattle  and San Francisco.

## Method and Assumptions
Data were drawn from crime data of the two cities covering the summer months of June, July and August of 2014. 
We selected crimes classified as 'narcotics'. We then further selected crimes related to the 'sale' of narcotics.
We then performed a summary analysis of the select data by month (time) and type of drug.

Analysis is repeatable with the R code available in the repository.

### Assumptions
We assume the sale of a drug is proportional to its demand.
Subsequently, we also assume that detection and enforcement are uniform across the time period - reasonable considering the time period is over the summer - and across the different type of drugs. 
The latter assumption might not be realistic as enforcement of cocaine may be stronger than marijuna, for example. 


## Results & Discussion

### Seattle
![Seattle Drug Crime](seattle_crime_vs_month_drug.png)

Cocaine is apparently the drug of choice in Seattle. Criminal sale of cocaine decreases from June to August.
This trend id also apparent in meth-amphetamine cases.   
However, the trend for heroin related sales seems to be the opposite. 
Further study is needed to establish any substitutions between the drugs.

Of note is the low incidence of marijuana criminal sales in Seattle. 
Given that the state had decriminalised cannabis in 2012 and the drug is readily available in licensed suppliers, 
any occurence of crime may be minor e.g. street sellers. 
This is supported by the data showing no marijuana related incidents past June 2014.

![San Francisco Drug Crime](sf_drugcrimes_by_drug_month.png)

Cocaine is again very popular in San Francisco (SF). However, in contrast to Seattle, criminal sale activity is higher in July followed by August with June being the lowest.   
The heroin trend is also the opposite of Seattle's case with activity decreasing from June. 
This lends weight to possible substitution between the two drugs.

The starkest contrast to Seattle is the high incidence of marijuana cases. Unlike Washington, the sale of recreational marijuana was a crime in 2014 (and still is at time of writing). We expect the incidence to fall once marijuana is decriminalised. Interestingly, the crime rate is higher in the earlier months of summer. 

We also note the high incidence of meth-amphetamine cases in SF; it was nearly absent in Seattle.

### Conclusion & Future Work

We note the incidents of drug crimes between Seattle and San Francisco. Both cities share a fondsness for cocaine. 
Also, the difference in marijuana legality between the two states is quite apparent in the data.
The higher incidence of meth-amphetamine in SF is cause for concern suggesting perhaps looking at strategies Seattle has adopted for this problem.

The analysis did not normalise for the population of the two cities and their suburbs. This should provide more insight into drug crime patterns. 
The analysis should also be extended through the whole year to detect any seasonal patterns.
