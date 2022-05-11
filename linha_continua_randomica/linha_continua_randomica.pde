//desenhando linha continua com padrões randomicos

//variáveis global para cor azul
float cB;

//variáveis globais para as cores vermelho e verde
//são utilizadas no mousePressed() para gerarem padrões randomicos
float rR;
float rG;

void setup(){
  size(800,800);
  background(10);
}

void draw(){
  //incremento
  cB = cB + 13.7;

  //limita o mouseX ao valor 100 através do módulo
  float randSW = random(mouseX%100);

  if (mousePressed) {
    strokeWeight(abs(randSW));
    stroke(rR,rG,cB%255,200);
    //função que altera o tipo de borda do line
    strokeCap(SQUARE);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }

}

void mousePressed(){
  //limpa tela
  background(10);

  //mudando os padrões das cores vermelha e verde
  rR = random(255);
  rG = random(255);
}
