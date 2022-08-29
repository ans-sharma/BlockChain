import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.math.BigInteger;
import java.util.Scanner;
import java.lang.Math;
public class SolveWithoutId {
    static Scanner sc = new Scanner(System.in); // problem of NoSuchElementException solved by making scanner global

    public static byte[] getSHA(String input) throws NoSuchAlgorithmException {
        // Static getInstance method is called with hashing SHA
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        // digest() method called
        // to calculate message digest of an input
        // and return array of byte
        return md.digest(input.getBytes(StandardCharsets.UTF_8));
    }

    public static String toHexString(byte[] hash) {
        // Convert byte array into signum representation
        BigInteger number = new BigInteger(1, hash);
        // Convert message digest into hex value
        StringBuilder hexString = new StringBuilder(number.toString(16));
        // Pad with leading zeros
        while (hexString.length() < 64) {
            hexString.insert(0, '0');
        }
        return hexString.toString();
    }

    public static long takeInput(String message){
        int arrLength = 0;
        String str;
        System.out.print(message);
        str = sc.nextLine();
        String[] str1 = str.split("\\^");
        // for(String a: str1){
        //     System.out.println(a);
        // }
        arrLength = str1.length;
        if(arrLength<2){
            return Long.parseLong(str1[0]);
        }
        else{
            return (long)Math.pow(Integer.parseInt(str1[0]), Integer.parseInt(str1[1]));
        }
    }


    public static void main(String[] args){
        // h(x) belongs to a range y
        // range 0 - 2^256
        // take a number pool for simplicity

        long lowerRange, upperRange;
        // long start = System.nanoTime();
        String puzzle;
        System.out.print("Enter the puzzle: ");
        puzzle = sc.nextLine();
        lowerRange = takeInput("Enter lower Range: ");
        upperRange = takeInput("Enter upper Range: ");
        // System.out.println(takeInput("Enter a number: "));

        long start = System.nanoTime();
        while(lowerRange<=upperRange){
            String temp = Long.toString(lowerRange);
            try { // for handling NoSuchAlgorithmException
                temp = toHexString(getSHA(temp));
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            if(temp.equals(puzzle)){
                System.out.println(lowerRange + " " + temp + " " + "pass" );
                long end = System.nanoTime();
                long execution = (end - start);
                System.out.println("Execution Time: " + execution + " nanoseconds");
                break;
            }
            else{
                System.out.println(lowerRange + " " + temp + " " + "fail" );
            }
            lowerRange++;
        }
        long end = System.nanoTime();
        long execution = (end - start)/1000000000;
        System.out.println("Execution Time: " + execution + " sec");
    }
}
