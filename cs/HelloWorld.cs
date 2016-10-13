using System;
public class HelloWorld
{
    public static void Main(){
        System.Console.WriteLine( "Hello, World!");
        dynamic val = 8 * ( (  7 + 8) % 5 + 6 / 2);
        System.Console.WriteLine(val);
       
        String input = Console.ReadLine( );
        try{
                                
            int num = int.Parse( input);
                                                
            for( int i = 0; i < num;i++){
                                                              
                      Console.WriteLine( "Enter the number of times to print \"Yay!\": ");
                                                                
            }
          }catch( FormatException e){
            Console.WriteLine( "You must enter a whole number.");
            }                                                                          
    }
}
