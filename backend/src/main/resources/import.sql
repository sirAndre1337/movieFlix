INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Ana', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('André Luis', 'andre@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_VISITOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_MEMBER');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);

INSERT INTO tb_genre (name) VALUES ('Ação');
INSERT INTO tb_genre (name) VALUES ('Ficção científica');
INSERT INTO tb_genre (name) VALUES ('Aventura');
INSERT INTO tb_genre (name) VALUES ('Terror');
INSERT INTO tb_genre (name) VALUES ('Comedia');
INSERT INTO tb_genre (name) VALUES ('Drama');

INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Venom Tempo de Carnificina', 'Tempo de Carnificina', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/vIgyYkXkg6NC2whRbYjBD7eb3Er.jpg', 'Em busca de seu próximo furo de reportagem, o jornalista Eddie Brock consegue uma entrevista exclusiva com Cletus Kasady, um assassino no corredor da morte, que descobre o segredo de Eddie e se torna o hospedeiro de Carnificina, um simbionte aterrorizante e ameaçador. Eddie e Venom precisam superar sua relação atribulada e trabalhar em conjunto para derrotar Carnificina.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Resident Evil Bem-Vindo a Raccoon City', 'Bem-Vindo a Raccoon City', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/biVabQ1bDTfw6evfXFaUedXGKz9.jpg', 'O que já foi um dia a casa da gigante farmacêutica em expansão Umbrella Corporation, Raccoon City, é agora uma cidade agonizante do meio-oeste. O êxodo da empresa transformou a cidade em um deserto, com um grande mal fermentando escondido abaixo da superfície. Quando esse mal é libertado, um grupo de sobreviventes deve trabalhar juntos para descobrir a verdade por trás da Umbrella enquanto buscam viver por mais uma noite.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Matrix Resurrections', 'Resurrections', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/eNI7PtK6DEYgZmHWP9gQNuff8pv.jpg', 'Em um mundo de duas realidades — a vida cotidiana e o que está por trás dela —, Thomas Anderson terá que escolher seguir o coelho branco mais uma vez. A escolha, embora seja uma ilusão, ainda é a única maneira de entrar ou sair da Matrix, que é mais forte, mais segura e mais perigosa do que nunca.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('A Era do Gelo As Aventuras de Buck', 'As Aventuras de Buck', 2022, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/eG0oOQVsniPAuecPzDD1B1gnYWy.jpg', 'As peripécias hilárias dos mamíferos pré-históricos favoritos de todo mundo continuam, enquanto os gambás caçadores de emoções Crash e Eddie se juntam ao seu amigo caolho, aventureiro e caçador de dinossauros, a doninha Buck Wild, para enfrentar os dinossauros rebeldes do Mundo Perdido.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Uncharted Fora do Mapa' , 'Fora do Mapa', 2022, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/yuvFyfOAO2UB5YP0HKgu8imtJul.jpg', 'Baseado no videogame de sucesso, em Uncharted, o caçador de tesouros Nathan Drake, descendente do explorador Francis Drake, inicia uma jornada em busca de um tesouro na lendária cidade sul americana de El Dorado. Lá, acabam sendo perseguidos por um grupo de mercenários que também busca o tesouro perdido.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Homem-Aranha Sem Volta Para Casa', 'Sem Volta Para Casa', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg', 'Peter Parker é desmascarado e não consegue mais separar sua vida normal dos grandes riscos de ser um super-herói. Quando ele pede ajuda ao Doutor Estranho, os riscos se tornam ainda mais perigosos, e o forçam a descobrir o que realmente significa ser o Homem-Aranha.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Kings Man A Origem', 'A Origem', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/4OTYefcAlaShn6TGVK33UxLW9R7.jpg', 'Quando uma série dos piores tiranos e gênios do crime da história se juntam para criar uma guerra que aniquilará milhões, um homem e seu pupilo precisam correr contra o tempo para pará-los.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Alerta Vermelho', 'Roubar é uma arte.' , 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/dK12GIdhGP6NPGFssK2Fh265jyr.jpg', 'No mundo do crime internacional, a INTERPOL lança um Alerta Vermelho, o que inicia uma caçada para capturar a mais notória ladra de artes do globo.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Demon Slayer Mugen Train: O Filme', 'Mugen Train: O Filme', 2020, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/cGOmHLZLjzJ71hdNXf15mALDTp9.jpg' , 'Tanjiro Kamado, junto com Inosuke Hashibira, um garoto criado por javalis que usa uma cabeça de javali, e Zenitsu Agatsuma, um garoto assustado que revela seu verdadeiro poder quando dorme, embarca no Trem Infinito em uma nova missão com o Hashira de Fogo, Kyojuro Rengoku, para derrotar um demônio que tem atormentado o povo e matado os caçadores de oni que se opõem a ele!');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Batman', 'Após a perda de seus pais, Bruce Wayne acaba se tornando um vigilante na cidade de Gotham City.', 2022, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cKNxg77ll8caX3LulREep4C24Vx.jpg', 'Bruce Wayne é um jovem bilionário da cidade de Gotham City, Nova Jersey, que também age secretamente como o vigilante noturno Batman após o assassinato dos seus pais.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Drive', 'Alguns heróis são reais.', 2011, 'https://www.themoviedb.org/t/p/w220_and_h330_face/1dREXakGbByZ1kti8vfVX3I8Dc.jpg', 'Um motorista habilidoso é dublê em Hollywood e piloto de fuga em assaltos. Quando aceita ajudar o marido de sua vizinha Irene, fica na mira dos homens mais perigosos de LA. Mas o trabalho dá errado, e a única forma de garantir a segurança de Irene e do filho é fazer o que ele faz de melhor: dirigir.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('South Park', '', 1997, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/7uihCghJiyYFTXSh1BOPdHQN8xK.jpg', 'Série animada que satiriza com muito humor negro a sociedade estadounidense ao apresentar situações bizarras e surreais protagonizadas por Stan, Kyle, Eric e Kenny, as crianças mais travessas de South Park.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('O Poderoso Chefão', 'Uma oferta que você não vai poder recusar.', 1972, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/4vG2j7IgMvoILP71AmefPM8Ts6f.jpg', 'Uma família mafiosa luta para estabelecer sua supremacia nos Estados Unidos depois da Segunda Guerra Mundial. Uma tentativa de assassinato deixa o chefão Vito Corleone incapacitado e força os filhos Michael e Sonny a assumir os negócios.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Coringa' , 'Coloque um sorriso nessa cara.', 2019, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/2nbKZ5RWFSvjq5IGVRcz8kAolmw.jpg', 'Um comediante falido enlouquece e se torna um assassino psicopata.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Os Infiltrados', 'Policiais ou criminosos. Quando você encara uma arma carregada, qual a diferença?', 2006, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/slQO3vwrtHtT9YJYrHJXOEW66T0.jpg', 'Billy Costigan, um jovem policial, recebe a missão de se infiltrar na máfia, mais especificamente no grupo comandado por Frank Costello. Billy conquista sua confiança ao mesmo tempo em que Colin Sullivan, um criminoso que atuou na polícia como informante de Costello, também ascende dentro da corporação. Tanto Billy quanto Colin se sentem aflitos devido à vida dupla que levam. Mas quando a máfia e a polícia descobrem que há um espião entre eles, a vida de ambos passa a correr perigo.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('007: Sem Tempo para Morrer', 'A missão que muda tudo começa...', 2021, 'https://www.themoviedb.org/t/p/original/9nMKJtMuhB6wiLaGLxnmTCD6g3m.jpg', 'Bond deixou o serviço ativo e está desfrutando de uma vida tranquila na Jamaica. Sua paz é interrompida quando o seu velho amigo Felix Leiter, da CIA, aparece pedindo sua ajuda. A missão de resgatar um cientista sequestrado acaba sendo muito mais difícil do que o esperado, deixando Bond no caminho de um vilão misterioso e armado com uma nova tecnologia perigosa.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Space Jam: Um Novo Legado', 'Bem-vindo ao Jam!', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/xhbXRitgTCzYSZbwhHRj56wLlIz.jpg', 'O superastro do basquete LeBron James se junta à gangue Looney Tunes para derrotar o Goon Squad e salvar seu filho.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Maze Runner: Correr ou Morrer', 'Prepare-se para correr.', 2014, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/vHJlbhsXrZ5yrO2KqCbGSIU6fRX.jpg', 'Num cenário pós-apocalíptico, uma comunidade de rapazes descobre que estão presos num labirinto misterioso. Juntos, terão de descobrir como escapar, resolver o enigma e revelar o arrepiante segredo acerca de quem os colocou ali e por que razão.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Corações de Ferro' , 'Uma guerra nunca termina serenamente.', 2014, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/kdbLf3aTQsEXqYlH9vA4fzmnSFz.jpg', 'Durante o final da Segunda Guerra Mundial, um grupo de cinco soldados americanos é encarregado de atacar os nazistas dentro da própria Alemanha. Apesar de estarem em quantidade inferior e terem poucas armas, eles são liderados pelo enfurecido Wardaddy, sargento que pretende levá-los à vitória, enquanto ensina o novato Norman a lutar.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Eu Sou a Lenda', 'O último homem na Terra não está sozinho.', 2007, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/hSHZYqBO9LKNQFj3Hmd8LhojIFB.jpg', 'Robert Neville é um brilhante cientista e o único sobrevivente de uma epidemia que transformou os humanos em mutantes sedentos por sangue. Andando pela cidade de Nova York, ele procura por outros possíveis sobreviventes e tenta achar a cura da praga usando seu próprio sangue, que é imune.');


INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (1,1);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (1,2);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (1,3);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (2,1);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (2,2);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (2,4);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (3,1);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (3,2);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (3,3);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (4,3);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (4,5);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (5,1);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (5,3);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (6,1);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (6,2);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (6,3);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (7,1);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (7,3);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (8,1);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (8,5);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (9,1);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (9,3);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (10,1);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (11,6);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (12,5);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (13,6);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (14,6);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (15,6);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (16,1);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (16,3);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (17,2);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (17,5);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (18,1);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (18,2);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (19,1);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (19,6);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (20,2);
INSERT INTO tb_movie_genre (movie_id, genre_id) VALUES (20,6);

INSERT INTO tb_review (text, movie_id, user_id) VALUES ('Filme pika' , 10, 3);
INSERT INTO tb_review (text, movie_id, user_id) VALUES ('o melhor dos batmans' , 10, 3);

