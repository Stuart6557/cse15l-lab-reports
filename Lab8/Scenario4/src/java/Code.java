import java.io.File;

public class Code {
   public static void main(String[] args) {
       File file = new File(args[0]);
       if (file.exists()) {
           System.out.println("File exists, yay!");
       }
       else {
           System.out.println("The file does not exist :(");
       }
   }
}