

public class helloworld{
    public static void main(String args[]){
        System.out.println("hello world");
        permutation("","hello");
    }

    public static void permutation(String prefix,String val){
        if(val.length() == 0){
            System.out.println(prefix);
        }else{
            for(int i = 0; i < val.length(); i++){
                
                permutation(prefix + val.charAt(i), val.substring(0,i) + val.substring(i+1, val.length()));
            }
        }
    }

}
