public class p_204 {
    public static void main(String[] args){
        int[] numArr = new int[10];
        int[] counter = new int[10];

        for(int i = 0; i < numArr.length; i++){
            numArr[i] = (int)(Math.random() * 10);
            System.out.print(numArr[i]);
        }
        System.out.println();

        for(int i = 0; i < numArr.length; i++){                 // 각 수의 개수 저장
            counter[numArr[i]]++;
        }

        for(int i = 0; i < numArr.length; i++){
            System.out.println(i + "개수 : " + counter[i]);
        }
    }
}
