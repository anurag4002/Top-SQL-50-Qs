class Solution {
    public ArrayList<Integer> getMinMax(int[] arr) {
        // code Here
        ArrayList<Integer> list = new ArrayList<>();
        
        int max = Integer.MIN_VALUE;
        int min = Integer.MAX_VALUE;
        
        for(int i=0; i < arr.length; i++)
        {
            if(max < arr[i] )
            {
                max = arr[i];
            }
            
            if(min > arr[i])
            {
                min = arr[i];
            }
        }
        list.add(min);
        list.add(max);
        
        return list;
        
    }
}
