public class Cenario {

  PImage lateral, lateral2, hearts;
  int y = 50; 

  public void pista() {

    noStroke();
    fill(#98A096); //pista
    rect(100, 0, 350, 600); 

    fill(255); //detalhes da pista
    rect(270, y-200, 12, 80); //esses y negativos são para não ficar um buraco no ngc
    //teste sem eles se n entendeu o motivo 
    rect(270, y-400, 12, 80);
    rect(270, y-600, 12, 80); 
    rect(270, y, 12, 80); 
    rect(270, y+200, 12, 80); 
    rect(270, y+400, 12, 80);
    ;
    rect(270, y+600, 12, 80);
  }

  public void acelerar() {
    y += 15; //Para dar a ideia de movimento aos carros 
    if (y > 600) { //Esse if é uma forma de tratarmos as bordas e a pista continuar "acelerando"
      y = 50;
    }
  }

  public void cena() {
    noStroke();
    fill(#4ED124); 
    rect(0, 0, 100, 600); //Detalhes do lado esquerdo do cenário 

    fill(#000000); 
    rect(400, 0, 300, 600);
  }

  public void des(PImage lateral, PImage lateral2, PImage hearts) { //Detalhes da lateral das pistas e da quantidade de vida do jogador 
    image(lateral, 90, 0, 15, 245);
    image(lateral, 90, 240, 15, 245);
    image(lateral, 90, 480, 15, 245);

    image(lateral2, 450, 0, 15, 245);
    image(lateral2, 450, 240, 15, 245);
    image(lateral2, 450, 480, 15, 245);

    image(hearts, 505, 470, 78, 20);
  }
}
