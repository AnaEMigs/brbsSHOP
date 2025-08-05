CREATE DATABASE BrbsBD;

CREATE TABLE Produtos (
  idProduto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nomeProduto VARCHAR(50) NOT NULL,
  descProduto VARCHAR(100) NOT NULL,
  marcaProduto VARCHAR(50) NOT NULL,
  variacaoProduto varchar(200) NOT NULL,
  tipoProduto VARCHAR(50)
  valorProduto FLOAT NOT NULL
  
);

CREATE TABLE Imagens (
  linkImagem VARCHAR(500) NOT NULL PRIMARY KEY,
  indexImagem INT NOT NULL,
  idProduto INT NOT NULL,
  
  FOREIGN KEY (idProduto) REFERENCES Produtos(idProduto)

);


INSERT INTO Produtos(nomeProduto, descProduto, marcaProduto, variacaoProduto, tipoProduto, valorProduto)
VALUES
  (
    'BIC Cristal Precisão -Caneta Esferográfica 0.8mm',
    'desc mamlcalmclmac', 
    'BIC',
    'Azul\Preto\Vermelho',
    'Caneta',
    6.60
  ),
  (
    'BIC Dura Mais -Caneta Esferográfica 1.0mm',
    'desc 2 mckankncc', 
    'BIC',
    'Azul\Preto\Vermelho',
    'Caneta',
    35.60
  )

INSERT INTO Imagens(idProduto, indexImagem, linkImagem)
VALUES
  (1, 1, 'https://i.postimg.cc/jqnT7ybM/61-I5mks75t-L-AC-SL1300.jpg'),
  (1, 2, 'https://i.postimg.cc/R0JdRCZx/61e-Xbu7n-LBL-AC-SL1300.jpg'),
  (2, 1, 'https://i.postimg.cc/gkfnhGQZ/61-FBGb-A2-HGL-AC-SL1000.jpg')
