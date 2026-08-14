public  class generateFibonacciSeries {
    public static List<Integer> generateFibonacciNumber(Integer endNumber){
        
        List<Integer> finalResult = new List<Integer>();
        Integer m=0,n=1;
        finalResult.add(m);
        finalResult.add(n);

        for(Integer i=0;i<=endNumber;i++){
            Integer nextNumber = m+n;
            if(nextNumber >= endNumber) break;
            m=n;
            n=nextNumber;
            finalResult.add(nextNumber);
        }
        return finalResult;
    }
}