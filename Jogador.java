package A1;

//Construir a classe Jogador, com os seus atributos principais e seus métodos.

public class Jogador {

    
    /* Os atributos básicos requisitados e os seus tipos. Jogos do tipo também possuem um sistema de pontos,
    onde quando o jogador alcança X pontos ele sobe de categoria, e exibe seus pontos no seu perfil de jogador, 
    junto da categoria */

    private String nome, email;
    private String categoria;
    private int idade;
    private int pontos;
    
    
    //O método construtor. Categoria padrão definida como Bronze, usada em muitos jogos que possuem sistema de ranqueamento

    public void VJogador(String nome, String email, int idade){
        this.nome = nome;
        this.email = email;
        this.idade = idade;
        this.categoria = "Bronze";
        this.pontos = 0;                      
    }   
    
    /*O método usado para operar o resultado da partida e resultá-lo em recompensa ou não.

    Foi definido um rank para determinada quantias de pontos, do Bronze ao Diamante.

    O último rank, o Diamante, é alcançado ao atingir 8 pontos, porém o limite definido foi 10 pontos,
    servindo como recompensa para aqueles que vencerem mesmo após já terem alcançado a categoria máxima.

    O sistema também notifica o jogador caso o mesmo suba de ranque, isso não é só necessário como também pode aumentar a sensação de 
    ser recompensado por subir de ranque*/ 

    String categoria(int resultadopartida) {
        
        if (resultadopartida <= 0) {
        categoria = "Bronze";
        System.out.println("Você está no Bronze!");                    
        } 
        else if (resultadopartida == 2) {
        categoria = "Prata";
        pontos = resultadopartida;    
        System.out.println("Você está no Prata!");
        }    
        else if (resultadopartida == 4) {
        categoria = "Ouro";
        pontos = resultadopartida;  
        System.out.println("Você está no Ouro!");
        }
        else if (resultadopartida == 6) {
        categoria = "Platina";
        pontos = resultadopartida;  
        System.out.println("Você está no Platina!");
        }
        else if (resultadopartida == 8) {
        categoria = "Diamante";
        pontos = resultadopartida;  
        System.out.println("Você está no Diamante!");
        }   
        return categoria;
    }
    
    // Todos os getters e setters dos atributos privados da classe.

    public String getNome() {
        return nome;        
    } 

    void setNome(String nome){
        this.nome = nome;
    }
    
    public String geteMail(){
        return email;
    }

    void seteMail(String email){
        this.email = email;
    }
    
    public int getidade(){
        return idade;
    }

    void setidade(int idade){
        this.idade = idade;
    }
        
    public String getCategoria(){
        return categoria;
    }

    void setCategoria(String categoria){
        this.categoria = categoria;
    }
   
    
}
