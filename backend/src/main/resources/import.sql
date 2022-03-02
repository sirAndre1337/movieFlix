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

INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Venom', 'Tempo de Carnificina', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/vIgyYkXkg6NC2whRbYjBD7eb3Er.jpg', 'Em busca de seu próximo furo de reportagem, o jornalista Eddie Brock consegue uma entrevista exclusiva com Cletus Kasady, um assassino no corredor da morte, que descobre o segredo de Eddie e se torna o hospedeiro de Carnificina, um simbionte aterrorizante e ameaçador. Eddie e Venom precisam superar sua relação atribulada e trabalhar em conjunto para derrotar Carnificina.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Resident Evil', 'Bem-Vindo a Raccoon City', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/biVabQ1bDTfw6evfXFaUedXGKz9.jpg', 'O que já foi um dia a casa da gigante farmacêutica em expansão Umbrella Corporation, Raccoon City, é agora uma cidade agonizante do meio-oeste. O êxodo da empresa transformou a cidade em um deserto, com um grande mal fermentando escondido abaixo da superfície. Quando esse mal é libertado, um grupo de sobreviventes deve trabalhar juntos para descobrir a verdade por trás da Umbrella enquanto buscam viver por mais uma noite.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Matrix', 'Resurrections', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/eNI7PtK6DEYgZmHWP9gQNuff8pv.jpg', 'Em um mundo de duas realidades — a vida cotidiana e o que está por trás dela —, Thomas Anderson terá que escolher seguir o coelho branco mais uma vez. A escolha, embora seja uma ilusão, ainda é a única maneira de entrar ou sair da Matrix, que é mais forte, mais segura e mais perigosa do que nunca.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('A Era do Gelo', 'As Aventuras de Buck', 2022, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/eG0oOQVsniPAuecPzDD1B1gnYWy.jpg', 'As peripécias hilárias dos mamíferos pré-históricos favoritos de todo mundo continuam, enquanto os gambás caçadores de emoções Crash e Eddie se juntam ao seu amigo caolho, aventureiro e caçador de dinossauros, a doninha Buck Wild, para enfrentar os dinossauros rebeldes do Mundo Perdido.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Uncharted' , 'Fora do Mapa', 2022, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/yuvFyfOAO2UB5YP0HKgu8imtJul.jpg', 'Baseado no videogame de sucesso, em Uncharted, o caçador de tesouros Nathan Drake, descendente do explorador Francis Drake, inicia uma jornada em busca de um tesouro na lendária cidade sul americana de El Dorado. Lá, acabam sendo perseguidos por um grupo de mercenários que também busca o tesouro perdido.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Homem-Aranha', 'Sem Volta Para Casa', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg', 'Peter Parker é desmascarado e não consegue mais separar sua vida normal dos grandes riscos de ser um super-herói. Quando ele pede ajuda ao Doutor Estranho, os riscos se tornam ainda mais perigosos, e o forçam a descobrir o que realmente significa ser o Homem-Aranha.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Kings Man', 'A Origem', 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/4OTYefcAlaShn6TGVK33UxLW9R7.jpg', 'Quando uma série dos piores tiranos e gênios do crime da história se juntam para criar uma guerra que aniquilará milhões, um homem e seu pupilo precisam correr contra o tempo para pará-los.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Alerta Vermelho', 'Roubar é uma arte.' , 2021, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/dK12GIdhGP6NPGFssK2Fh265jyr.jpg', 'No mundo do crime internacional, a INTERPOL lança um Alerta Vermelho, o que inicia uma caçada para capturar a mais notória ladra de artes do globo.');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Demon Slayer', 'Mugen Train: O Filme', 2020, 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/cGOmHLZLjzJ71hdNXf15mALDTp9.jpg' , 'Tanjiro Kamado, junto com Inosuke Hashibira, um garoto criado por javalis que usa uma cabeça de javali, e Zenitsu Agatsuma, um garoto assustado que revela seu verdadeiro poder quando dorme, embarca no Trem Infinito em uma nova missão com o Hashira de Fogo, Kyojuro Rengoku, para derrotar um demônio que tem atormentado o povo e matado os caçadores de oni que se opõem a ele!');
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis) VALUES ('Batman', 'Após a perda de seus pais, Bruce Wayne acaba se tornando um vigilante na cidade de Gotham City.', 2022, 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cKNxg77ll8caX3LulREep4C24Vx.jpg', 'Bruce Wayne é um jovem bilionário da cidade de Gotham City, Nova Jersey, que também age secretamente como o vigilante noturno Batman após o assassinato dos seus pais.');


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


