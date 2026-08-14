public class reverseTheString {
    // write a method that reverse everything you write. 
    public static String reverseTheSentenceMethod(String sentence) {
        if (sentence == null || sentence == '') {
            return sentence;
        }
        String reversedSentence = '';
        for (Integer i = sentence.length() - 1; i >= 0; i--) {
            reversedSentence += sentence.substring(i, i + 1);
        }
        return reversedSentence;
    }
}