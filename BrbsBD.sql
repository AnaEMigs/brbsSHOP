CREATE DATABASE BrbsBD;

CREATE TABLE Produtos (
  idProduto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nomeProduto VARCHAR(50) NOT NULL,
  descProduto VARCHAR(100) NOT NULL,
  valorProduto VARCHAR(10) NOT NULL
  
);

CREATE TABLE Imagens (
  idProduto INT NOT NULL,
  linkImagem VARCHAR(500) NOT NULL PRIMARY KEY,
  
  FOREIGN KEY (idProduto) REFERENCES Produtos(idProduto)

);


INSERT INTO Produtos(nomeProduto, descProduto, valorProduto)
VALUES
  (
    'Caneta BIC 0.7mm', 
    'A Caneta BIC Cristal que já é sinônimo de qualidade no mundo inteiro, apresenta a Cristal Precisão e Suavidade, caneta com Ponta Ultra Fina (0.7mm) que proporciona uma maciez na escrita e uma alta precisão no traço. Ponta Bola de Tungstênio, esfera perfeita e muito resistente.',
    '0.70'
  ),
  (
    'Borracha Faber-Castell Dust-Free',
    'A série Faber-Castell Dust-Free eraser oferece o melhor desempenho em apagamento limpo. Também não contém plastificante nocivo - Phthalate. A fórmula única "Dust-Free" torna o apagador macio e garante um excelente apagamento limpo e sem manchas.',
    '1.50'
  )
  
INSERT INTO Imagens(idProduto, linkImagem)
VALUES
  (1, 'linkImgCaneta1'),
  (1, 'linkImgCaneta2'),
  (2, 'linkImgBorracha')
