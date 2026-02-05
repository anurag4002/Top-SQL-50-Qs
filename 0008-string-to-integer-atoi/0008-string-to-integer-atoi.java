class Solution {
    public int myAtoi(String s) {

        int i = 0;
        int sign = 1;
        int result = 0;

        while (i < s.length() && s.charAt(i) == ' ') {
            i++;
        }

        
        if (i < s.length() && (s.charAt(i) == '-' || s.charAt(i) == '+')) {
            if (s.charAt(i) == '-') sign = -1;
            i++;
        }


        while (i < s.length() && s.charAt(i) >= '0' && s.charAt(i) <= '9') {

            int digit = s.charAt(i) - '0';

            
            if (result > (Integer.MAX_VALUE - digit) / 10) {
                return sign == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }

            result = result * 10 + digit;
            i++;
        }

        return result * sign;
    }
}
