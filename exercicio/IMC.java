package exercicio;

import java.util.Scanner;

public class IMC {
    public static void main(String[] args) {
         try (Scanner leitor = new Scanner(System.in)) {
            System.out.println("Digite seu peso");
             double peso = leitor.nextDouble();
             System.out.println("Digite sua altura");
             double altura = leitor.nextDouble();
             double imc;
             imc = peso / Math.pow(altura, 2);
             System.out.println("IMC eh: " + imc);
        }
     }
}
