public class Nov8CodingChallenge {
    public static Map<String, Double> getOppRevByAccount() {
       	
	AggregateResult[] theResults = [SELECT Account.Name name, Sum(ExpectedRevenue) sum FROM Opportunity GROUP BY Account.Name];
		Map<String, Double> resultMap = new Map<String, Double>();
        for(AggregateResult r: theResults){
            resultMap.put(String.valueOf(r.get('name')) , Double.valueOf(r.get('sum')));
        }
        System.debug(resultMap);
        return resultMap;
    }
}