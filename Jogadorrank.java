package A1;


import java.util.Scanner;

public class Jogadorrank {

    
    //O método main da classe Jogador, usado para definir os atributos e as condições para subir de categoria

    public static void main (String [] args) {

        /* char resultadopartida; usado para simular uma ocasião onde o player venceu ou não uma partida.
           int i; usado como pontos, onde o valor será alterado caso o jogador vença ou perca  */

        
        char resultadopartida;
        int i = 0;

        //Criação de um novo Objeto da classe Jogador

        Jogador jGabriel = new Jogador ();
        

        Scanner teclado = new Scanner(System.in);
        
              
       /*Foi criado um loop para simular uma sequência de partidas jogadas
                          
         Foi necessário a criação de uma condição de parada, para habilitar testes em cada uma das condições no método categoria*/
        do {
            System.out.println("resultado da partida (V ou D)");
            resultadopartida = teclado.next().charAt(0); 

            if (resultadopartida == 'V' || resultadopartida == 'v') {
                i ++;
                System.out.print("Você tem " + i + " pontos");
            } 
            else if (resultadopartida == 'D' || resultadopartida == 'd') {
                i --;
                if (i < 0) {         //impedir que aconteça do ponto ser negativo
                    i = 0;
                }
                System.out.print("Você tem" + i + "pontos");
            } else {
                break;
            } 
        } while (i <= 9);


        jGabriel.categoria(i);
        

        teclado.close();

    }

    
    
}
