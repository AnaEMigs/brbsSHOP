CREATE DATABASE BrbsBD;

CREATE TABLE Produtos (
  idProduto INT NOT NULL PRIMARY KEY,
  nomeProduto VARCHAR(50) NOT NULL,
  descProduto VARCHAR(100) NOT NULL,
  marcaProduto VARCHAR(50) NOT NULL,
  variacaoProduto varchar(200) NOT NULL,
  tipoProduto VARCHAR(50) NOT NULL,
  valorProduto FLOAT NOT NULL
  
);

CREATE TABLE Imagens (
  linkImagem VARCHAR(500) NOT NULL PRIMARY KEY,
  indexImagem INT NOT NULL,
  idProduto INT NOT NULL,
  
  FOREIGN KEY (idProduto) REFERENCES Produtos(idProduto)

);


INSERT INTO Produtos(idProduto, nomeProduto, descProduto, marcaProduto, variacaoProduto, tipoProduto, valorProduto)
VALUES
  (
    1,
    'BIC Cristal UP - Caneta Esferográfica 1.2mm',
    'Caneta Esferográfica Cristal UP 1.2MM BIC. De olho no público jovem, a BIC lançou a linha de Canetas Esferográfica BIC Cristal UP, procurando transmitir singularidade a autenticidade. A tecnologia na produção permitiu que a cor do clipe ficasse diferente da cor do corpo da caneta. É uma caneta de muita qualidade e desliza muito bem na folha sem precisar de muitos esforços. Disponível em cores vibrantes. O corpo traz muito conforto na hora da escrita em companhia com a sua ponta média 1,2mm. Resumindo, é um produto único no mercado! Deixe a volta às aulas mais completa, inove na lista de material escolar e tenha no escritório a ferramenta certa para ajudar você com a rotina do dia a dia.', 
    'BIC',
    'Azul\Azul Claro\Laranja\Preto\Rosa\Verde\Vermelho\Violeta',
    'Caneta Esferográfica',
    2.1
  ),
  (
    2,
    'BIC Cristal Fina - Caneta Esferográfica 0.8mm',
    'Fórmula exclusiva que não falha; Ponta Fina 0.8mm; Tampa ventilada; Para escritas delicadas e precisas; Nas cores azul, vermelho e preto.', 
    'BIC',
    'Azul\Preto\Vermelho',
    'Caneta Esferográfica',
    1.3
  ),
  (
    3,
    'BIC Cristal Clássica - Caneta Esferográfica 1.0mm',
    'Corpo hexagonal que assegura o conforto na escrita e transparente para visualização da tinta; Tinta de alta qualidade, que seca rapidamente evitando borrões na escrita; Durabilidade: Escreve até 2 Km; Escrita macia. A BIC e o Meio Ambiente; Produto fabricado com a quantidade certa de matéria-prima para uso prolongado e seguro; Não contém PVC; Ponta média de 1 mm, largura da linha 0,4mm; Tampa e plug da mesma cor da tinta; Tampa ventilada em conformidade com padrão ISO; Bola de Tungstênio, esfera perfeita e muito resistente.', 
    'BIC',
    'Azul\Preto\Verde\Vermelho',
    'Caneta Esferográfica',
    1.4
  ),
  (
    4,
    'BIC Retrátil C/ 4 Cores - Caneta Esferográfica',
    'A praticidade de 4 cores na mesma caneta. Principais benefícios: ao pressionar um botão pode selecionar a cor que deseja, vermelho, verde, preto e azul. A facilidade de escrever em 4 cores com uma única caneta, perfeita para anotar dados em cores diferentes.',
    'BIC',
    '4Cores',
    'Caneta Esferográfica',
    11.4
  ),
  (
    5,
    'BIC Cristal BOLD - Caneta Esferográfica 1.6mm',
    'As canetas esferográficas BIC Cristal Intenso tem ponta grossa 1,6mm e escrita intensa, que proporciona maciez e um deslizar ultra fácil. Possui tampa ventilada que garante a segurança do produto. Com a linha de materiais da BIC você garante toda a qualidade necessária para realizar suas tarefas diárias e trabalhos impecáveis. Com modelos e funções diferentes, a linha BIC é ideal para decorar sua mesa de trabalho, seu material escolar ou seu escritório te ajudando a manter sempre por perto tudo o que precisa. A caneta BIC Cristal Intenso é ideal para o uso no dia a dia, prática e eficiente.',
    'BIC',
    'Azul\Preto\Vermelho',
    'Caneta Esferográfica',
    3.2
  ),
  (
    6,
    'BIC Retrátil C/ 2 Cores - Caneta Esferográfica',
    'Principais benefícios: ao pressionar um botão pode selecionar a cor que deseja, vermelho e azul. A facilidade de escrever em 2 cores com uma única caneta, perfeita para anotar dados em cores diferentes.',
    'BIC',
    '2Cores',
    'Caneta Esferográfica',
    7.6
  ),
  (
    7,
    'ACRILEX Borracha Skate',
    'A Borracha Skate ACRILEX é a parceira perfeita para os amantes da arte e do desenho! Com sua maciez irresistível, ela desliza pelo papel como um skate em uma pista radiante, sem deixar manchas indesejadas para trás. E o melhor de tudo: é totalmente isenta de PVC, garantindo que sua criatividade flua livre e sustentável. Prepare-se para apagar erros com estilo e diversão!',
    'ACRILEX',
    'Amarelo\Azul\Preto',
    'Borracha',
    2.4
  ),
  (
    8,
    'ACRILEX Borracha Jelly',
    'Conheça a Borracha Jelly ACRILEX: a super macia que vai fazer você se apaixonar! Esqueça o drama do papel manchado, porque essa belezura não esfarela e ainda apaga com uma facilidade impressionante. E o melhor? É isenta de P.V.C., garantindo que sua escrita fique sempre limpa e sem preocupações. Dê adeus às borrachas comuns e venha se divertir com a suavidade da Jelly!',
    'ACRILEX',
    'Azul\Lilás\Rosa',
    'Borracha',
    4
  ),
  (
    9,
    'GIOTTO Borracha Neon',
    'Dust free - Não faz sujeira na hora de apagar, macia, sem pvc. Disponível em 5 cores Fluo: rosa neon, laranja neon, verde neon, azul neon e amarelo neon.',
    'GIOTTO',
    'Amarelo\Azul\Laranja\Rosa\Verde',
    'Borracha',
    2.1
  ),
  (
    10,
    'TILIBRA Borracha Nuvem',
    'Esqueça-se da sujeira ao tentar apagar algo do seu caderno! A Borracha Nuvem é macia e apaga tudo de maneira eficiente! Possui uma capa protetora que mantém a borracha sempre limpa e deixa seu uso mais confortável. Sua fórmula é livre de produtos tóxicos como o ftalato, garantindo maior segurança durante o uso. Ideal para o dia a dia na escola, auxiliando o aluno nas atividades de escrever, desenhar e colorir.',
    'TILIBRA',
    'Azul\Branco\Rosa',
    'Borracha',
    2.6
  ),
  (
    11,
    'BUENDIA Bobbie Goods Isso e Aquilo',
    'Descubra o encantador universo da artista Abbie Goveia com o livro de colorir oficial da Bobbie Goods. "Isso e Aquilo" oferece uma experiência única para quem busca relaxar e explorar a criatividade através da arte.',
    'BUENDIA',
    'Default',
    'Bobbie Goods',
    39.9
  ),
  (
    12,
    'BUENDIA Bobbie Goods Dias Frios',
    'Nada como os dias mais frios do ano para deixar a sua imaginação fluir! Puxe o edredom mais próximo e mergulhe neste universo cheio de neve, cenas quentinhas e bichinhos fofinhos! ',
    'BUENDIA',
    'Default',
    'Bobbie Goods',
    39.9
  ),
  (
    13,
    'Faber-Castell Lápis Jumbo',
    'O lápis de alta qualidade Castell 9000 também está disponível na opção Jumbo com um grafite extra grosso. O Castell 9000 Jumbo é perfeitamente adequado para esboços e rascunhos rápidos, além de sombrear áreas extensas e trabalhos artísticos.',
    'Faber-Castell',
    '2B\4B\6B\8B\HB',
    'Lápis',
    18.3
  ),
  (
    14,
    'STAEDTLER Lápis Lumograph',
    'Lápis de desenho de alta qualidade; Formulação especial da mina para resultados com brilho metálico em uma ampla variedade de tons cinza; Adequado para escrever, desenhar, esboçar (sketching), bem como para aplicações gráficas e artísticas profissionais em papel comum e papel de desenho fosco; Alta resistência contra quebra através de formulação especial de mina e sua consistência.',
    'STAEDTLER',
    'B\2B\3B\4B\5B\6B\7B\8B\9B\10B\11B\12B\H\2H\HB',
    'Lápis',
    12.8
  ),
  (
    15,
    'CIS Lápis Preto Abraçadinho',
    'Graduação: HB. Personagem no topo. Corpo decorado. Corpo redondo de plástico.',
    'CIS',
    'Coala\Joaninha\Macaco\Panda',
    'Lápis',
    5.8
  )

INSERT INTO Imagens(idProduto, indexImagem, linkImagem)
VALUES
  (1, 1, 'https://i.postimg.cc/VvfHNXrG/caneta-esferografica-cristal-up-1-2mm-bic-3811-1-b2b0d7fcc4b821eddaaa9c0c0058a111.webp'),
  (2, 1, 'https://i.postimg.cc/NfLpPs1H/caneta-esferografica-cristal-fina-0-8mm-bic-3785-1-5bab4eb59131698bc7eb6074253b3e0d.webp'),
  (3, 1, 'https://i.postimg.cc/vTTLjh6s/caneta-esferografica-cristal-classica-1-0mm-bic-3783-1-3820cfda77b837b328d7448f23f0aed7.webp'),
  (4, 1, 'https://i.postimg.cc/nrN7WJJ4/caneta-esferografica-retratil-c-4-cores-bic-3775-1-c6f8b485416d67132020b31d091c3a93.webp'),
  (5, 1, 'https://i.postimg.cc/8s8JHmRw/caneta-esferografica-cristal-bold-1-6mm-bic-13413-1-ecf2859f725ac43ae336eaee564801c2.webp'),
  (6, 1, 'https://i.postimg.cc/ZYNr9WFj/caneta-esferografica-c-2-cores-bic-3777-1-dcfd3ef9a90424df6fe7e454591c1722.webp'),
  (7, 1, 'https://i.postimg.cc/qML6nytc/7891153119212borracha-skate-acrilex-20616-1-d0a09034ea232add6f3f3391d058855b.webp'),
  (8, 1, 'https://i.postimg.cc/3JSJYB4q/borracha-jelly-acrilex-20612-1-5196d38714716b9daf43eab5dfafdbd1.webp'),
  (9, 1, 'https://i.postimg.cc/G3M1ypL8/borracha-neon-232700-giotto-9751-1-a2570deb479f906c665a136298da0784.webp'),
  (10, 1, 'https://i.postimg.cc/50xZXhDS/borracha-nuvem-337153-tilibra-6953-1-247531446168d3e7c89f9bdbd84a3d0d.webp'),
  (11, 1, 'https://i.postimg.cc/hhFsdxfR/livro-de-colorir-isso-e-aquilo-bobbie-goods-21178-1-a9f7c3a2de9f18bf3e16bccdbfcc09b2.webp'),
  (11, 2, 'https://i.postimg.cc/7Z48vJXR/livro-de-colorir-isso-e-aquilo-bobbie-goods-21178-2-1f6894700105985c7344dee5ad5c1c6c.webp'),
  (12, 1, 'https://i.postimg.cc/Jhd2hscM/livro-de-colorir-dias-frios-bobbie-goods-21464-1-3bb0e581cdd3ad3cfea8c5687505bac4.webp'),
  (12, 2, 'https://i.postimg.cc/qBcxbthq/livro-de-colorir-dias-frios-bobbie-goods-21464-2-0b07f71e46aeb19023a467bbf1654630.webp'),
  (13, 1, 'https://i.postimg.cc/9fGDm9jq/lapis-jumbo-9000-faber-castell-8381-1-98085bab109b100ec33b5ff34f7ca026.webp'),
  (14, 1, 'https://i.postimg.cc/CxbhkVr3/lapis-lumograph-staedtler-1641-1-b4a7ec1c0e4c0ce0c38da0c664343a41.webp'),
  (15, 1, 'https://i.postimg.cc/cJsS3tn3/lapis-preto-abracadinhos-cis-5547-1-451e69ff9274e84f03f91052ef0360af.webp')
