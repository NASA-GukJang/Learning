public class p_178 {
    public static void main(String[] args){
        Loop1 : for(int i = 2; i <= 9; i++){
            for (int j = 1; j <= 9; j++){
                if(j == 5)
                    break Loop1;                // 이름 지어서 해당 루프만 탈출
                // break;
                // continue Loop1;
                // continue;
            System.out.println(i + "*" + j + "=" + i*j);
            }
            System.out.println();
        }
    }
}
