
import java.io.InputStreamReader;
import java.io.BufferedReader;

public class testproc{

    public static void main(String args[]){
        String cmd[] = new String[2];
        cmd[0] = "python";
        cmd[1] = "test.py";
        String arg[] = new String[2];

        try{
            Process p = Runtime.getRuntime().exec(cmd,arg);
            p.waitFor();           
            br = new BufferedReader( new InputStreamReader( p.getInputStream( )));
            if(br != null){
                status = false;
            }

            while((line = br.readline()) != null){
                      LOG.info( "callLogMigration: "+line);
                                    
            }
        }catch(Exception e){
        
        }


    }

}


