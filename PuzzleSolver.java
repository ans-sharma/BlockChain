import java.security.MessageDigest;
import java.util.Scanner;;

class PuzzleSolver{
    public static void main(String[] args) {
        long start = System.nanoTime();
        String puzzle;
        int i = 0;
        // User puzzle input
        // Scanner sc = new Scanner(System.in);
        // System.out.print("Enter the Puzzle: ");
        // puzzle = sc.nextLine();

        // Static input for testing 
        // puzzle = "6c1ca4002509bc24e93aa4211830738fce7e205e41364e11301ac5a0635cb4b5"; //4294967296
        // puzzle = "01afa43b94cb16cb0013dfda440bf756b0fa3e3a60c9261bf07fce205b26a422"; //262441 
        // puzzle = "cf0eb12f371a790871ed93abd79781ab182f16f5a36d38895a19458fb7a71c8e";
        puzzle = "daa93243a2a97b15f0983bf4d6234f40ca3121e25d1d5ae8da97611194118010"; //2^20
        // puzzle = "15";

        while(true){
            String temp = sha256(Integer.toString(i));
            if(temp.equals(puzzle)){
                System.out.println(i + " " + temp + " " + "pass" );
                long end = System.nanoTime();
                long execution = (end - start);
                System.out.println("Execution Time: " + execution + " nanoseconds");
                break;
            }
            else{
                System.out.println(i + " " + temp + " " + "fail" );
            }
            i++;
        }

        // System.out.println(sha256(puzzle));
    }


    // https://stackoverflow.com/a/11009612
    public static String sha256(final String base) {
        try{
            final MessageDigest digest = MessageDigest.getInstance("SHA-256");
            final byte[] hash = digest.digest(base.getBytes("UTF-8"));
            // System.out.println(hash);
            final StringBuilder hexString = new StringBuilder();
            for (int i = 0; i < hash.length; i++) {
                final String hex = Integer.toHexString(0xff & hash[i]);
                if(hex.length() == 1) 
                  hexString.append('0');
                hexString.append(hex);
            }
            return hexString.toString();
        } catch(Exception ex){
           throw new RuntimeException(ex);
        }
    }
}