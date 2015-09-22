import java.util.Random;
import java.util.Arrays;
import java.util.Scanner;

public class Main {


    public static void main(String[] args) {
	// write your code here
        System.out.println("hello world");
//        System.out.println(randomArray(10)[0]);
//        System.out.println(randomArray(10)[1]);
//        int[] arr = randomArray(10);
//        System.out.println(arr.length);
//        printArray(randomArray(9));
//        System.out.println(Arrays.toString(randomArray(9))); // 使用Arrays.toString , 不用再遍历每一个元素再打印。

        int[] arr = randomArray(20);
        System.out.println(Arrays.toString(arr)); // 使用Arrays.toString , 不用再遍历每一个元素再打印。
        System.out.println("input something:");
//        Scanner scanner = new Scanner(System.in);
//        int i = scanner.nextInt();
//        findNumInArray(arr,i);
//        System.out.println(i);
        numRiddle();
    }

    static int[] randomArray(int Cnt){
        int randomArr[] = new int[Cnt];
        Random r = new Random();
        for(int i = 0 ; i < Cnt ; i++){
            randomArr[i] = r.nextInt(100);
        }
        return randomArr;
    }

    static void printArray(int[] a ){
       for (int i = 0 ; i < a.length ; i++ ){           // 使用array.length属性获得数组长度
           System.out.println(a[i]);
       }
    }

    static int findNumInArray(int[] arr,int num){
        int mark = -1 ;
//        System.out.println(Arrays.toString(arr)); // 使用Arrays.toString , 不用再遍历每一个元素再打印。
        for ( int i = 0 ; i < arr.length ; i++) {
//            System.out.println(num + "    "+arr[i]);
            if (num == arr[i]) {
                System.out.println(num + " found at index of " + i + " start from 0!");
                mark = i;
            } else {
//                System.out.println(num + " not found!");
            }
        }
        return   mark >= 0 ? 0 : -1;
    }

    static int numRiddle(){
        int a , b
                ,c,d,e
                ,f,g,h;
        for(a = 0 ; a <= 9 ; a++){
            for (b = 0 ; b <= 9 ; b++){
                if ( 4 == a+b-9){
                    System.out.println("L1:a,b="+a+" , "+b);
                }
            }
        }
        return 0;
    }
}

