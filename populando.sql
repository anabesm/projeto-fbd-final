INSERT INTO Usuario (nome, email, telefone, categoria, rua, numero, complemento, bairro, cidade, estado, cep, descricao)
VALUES 
('Maria Eduarda Farias', 'meduardafarias@gmail.com', '(11) 99765-4021', 'Meio Ambiente', 'Rua das Flores', 123, NULL, 'Centro', 'São Paulo', 'SP', 12345678, 'Engenheira de software interessada em ajudar ONGs.'),
('Fundação SOS Mata Atlântica', 'info@sosma.org.br', '11 3262-4088', 'Animal, Meio Ambiente', 'Avenida Brasil', 456, 101, 'Copacabana', 'Rio de Janeiro', 'RJ', 87654321, 'ONG focada em educação infantil.'),
('Carlos Teixeira', 'carlos.teixeira3@hotmail.com', '(31) 99788-6671', 'Saúde', 'Rua das Palmeiras', 789, NULL, 'Savassi', 'Belo Horizonte', 'MG', 54321678, 'Estudante de medicina buscando experiências voluntárias.'),
('Ana Lívia Menezes', 'ana.menezes@icloud.com', '(41) 96965-3321', 'Animal', 'Rua das Acácias', 321, 202, 'Batel', 'Curitiba', 'PR', 65432187, 'Designer digital com interesse em causas sociais.'),
('Instituto do Cancêr Infantil', 'ici@ici.ong', '(51) 3331-8704', 'Crianças, Saúde', 'Avenida Independência', 654, NULL, 'Moinhos de Vento', 'Porto Alegre', 'RS', 98765432, 'ONG voltada para preservação ambiental.'),
('Fernanda Lima', 'fernanda.lima@gmail.com', '(81) 95677-4300', 'Saúde, Animal', 'Rua do Sol', 987, NULL, 'Boa Viagem', 'Recife', 'PE', 12378945, 'Professora de inglês interessada em projetos educacionais.'),
('Cruz Vermelha São Paulo', 'projetossociais@cruzvermelhasp.org.br', '(11) 5056-8666', 'Saúde, Comunidade', 'Rua das Mangueiras', 147, 303, 'Barra', 'Salvador', 'BA', 32165498, 'ONG que atua na inclusão digital de jovens.'),
('Juliana Costa', 'julianac@icloud.com', '(85) 98001-5567', 'Comunidade, Animal', 'Avenida Beira Mar', 258, NULL, 'Meireles', 'Fortaleza', 'CE', 45612378, 'Estudante de direito interessada em direitos humanos.'),
('Raul Bezerra', 'raul221b@gmail.com', '(11) 98766-7789', 'Animal, Meio Ambiente', 'Rua das Orquídeas', 369, NULL, 'Centro', 'Florianópolis', 'SC', 78945612, 'Cientista de dados buscando projetos sociais.'),
('Instituto Ampara Animal ', 'contato@amparanimal.org.br', '(62) 94456-0098', 'Animal', 'Rua das Violetas', 753, 404, 'Setor Oeste', 'Goiânia', 'GO', 85296374, 'ONG que promove a cultura local.'),
('Rodrigo Lima', 'digolima@gmail.com', '(48) 94456-9875', 'Saúde, Comunidade', 'Rua das Orquídeas', 369, NULL, 'Centro', 'Florianópolis', 'SC', 78945612, 'Buscando fazer o bem!'),
('Leonardo Cavalcante', 'leocavalcante24@gmail.com', '(48) 98765-4321', 'Comunidade', 'Rua das Orquídeas', 369, NULL, 'Centro', 'Florianópolis', 'SC', 78945612, NULL),
('Bruna Castro', 'brunacamazonas@gmail.com', '(12) 97425-7786', 'Meio Ambiente', 'Rua das Orquídeas', 369, NULL, 'Centro', 'Florianópolis', 'SC', 78945612, 'Tentando criar um amanhã melhor!'),
('Maria Vitória', 'mvitorialemos@icloud.com.com', '(81) 97789-4456', 'Animal, saúde', 'Rua das Orquídeas', 369, NULL, 'Centro', 'Florianópolis', 'SC', 78945612, NULL),
('Eduardo Andrade', 'eduandradecc@hotmail.com', '(88) 99889-4511', 'Crianças', 'Rua das Orquídeas', 369, NULL, 'Centro', 'Florianópolis', 'SC', 78945612, NULL);

INSERT INTO ONG (id, num_curtidas, proj_concluidos, num_voluntarios)
VALUES 
(2, 100, 5, 50),  -- Fundação SOS Mata Atlântica
(5, 80, 3, 30),   -- Instituto do Cancêr Infantil
(7, 120, 7, 60),  -- Cruz Vermelha de São Paulo
(10, 90, 4, 40);  -- Instituto Ampara Animal

INSERT INTO Voluntario (id, projetos_participados)
VALUES 
(1, 2),  -- Maria Eduarda Farias participou de Refloresta Atlântica e Saúde para Todos
(3, 1),  -- Carlos Teixeira participou Sorrisos que Curam
(4, 1),  -- Ana Lívia Menezes participou SOS Frio
(6, 2),  -- Fernanda Lima participou de CastraPet Solidário e Doe Vida
(8, 1),  -- Juliana Costa participou de Saúde para Todos
(9, 1),  -- Raul Bezerra participou de Lares de Esperança
(11, 1), -- Rodrigo Lima participou de Carbono Neutro
(12, 1), -- Leonardo Cavalcante participou de Guardiões da Fauna
(13, 1), -- Bruna Castro participou de Alimentação Saudável
(14, 1), -- Maria Vitória participou de Ciência para a Cura
(15, 1); -- Eduardo Andrade participou de Carbono Neutro


INSERT INTO Projeto (id_ong, nome, descricao, meta_voluntarios, data_inicio, data_termino, status)
VALUES 
(2, 'Refloresta Atlântica', 'Projeto de reflorestamento de áreas degradadas da Mata Atlântica, promovendo a recuperação da biodiversidade e a proteção de nascentes.', 50, '2024-10-15', '2025-12-15', 'Em Andamento'),
(5, 'Sorrisos que Curam', 'Programa de voluntariado para levar recreação, arte e música a crianças em tratamento, proporcionando momentos de alegria e bem-estar.', 20, '2023-11-01', '2023-12-31', 'Pendente'),
(7, 'SOS Frio', 'Campanha de inverno para distribuir cobertores, roupas térmicas e refeições quentes para moradores em situação de rua durante os meses mais frios do ano.', 25, '2023-09-15', '2023-11-15', 'Concluído'),
(10, 'CastraPet Solidário', 'Mutirão de castração gratuita para cães e gatos de famílias de baixa renda e animais resgatados, visando reduzir o abandono e controlar a população de animais de rua.', 15, '2023-12-01', '2024-01-31', 'Pendente'),
(2, 'Carbono Neutro', 'Campanha de plantio de árvores e incentivo à compensação de carbono por empresas e indivíduos para reduzir impactos ambientais.', 60, '2023-08-01', '2023-10-31', 'Concluído'),
(5, 'Doe Vida', 'Campanha de doação de sangue e medula óssea para ampliar o banco de doadores e auxiliar no tratamento das crianças.', 10, '2023-09-01', '2023-11-30', 'Em Andamento'),
(7, 'Saúde para Todos', 'Mutirões de atendimento médico gratuito para comunidades carentes, incluindo consultas, vacinação e exames preventivos.', 30, '2023-10-15', '2023-12-15', 'Pendente'),
(10,'Lares de Esperança', 'Formação de uma rede de lares temporários para acolher animais resgatados até que encontrem um lar definitivo.', 15, '2023-11-15', '2024-01-15', 'Em Andamento'),
(2, 'Guardiões da Fauna', 'Programa de resgate e reabilitação de animais silvestres ameaçados, promovendo soltura e conservação da fauna da Mata Atlântica.', 30, '2023-12-15', '2025-02-15', 'Pendente'),
(5, 'Ciência para a Cura', 'Financiamento e incentivo à pesquisa sobre novos tratamentos para o câncer infantil, conectando cientistas, médicos e instituições de saúde.', 10, '2024-01-01', '2024-03-01', 'Pendente');

INSERT INTO Etapa (id_projeto, nome, data, descricao, rua, numero, complemento, bairro, cidade, estado, cep)
VALUES 
(6, 'Execução do Projeto', '2023-11-01', 'Etapa de execução das atividades do projeto.', 'Avenida Brasil', 456, 101, 'Copacabana', 'Rio de Janeiro', 'RJ', 87654321),
(6, 'Captação de Recursos', '2023-10-01', 'Etapa de captação de recursos para o projeto.', 'Rua das Flores', 123, NULL, 'Centro', 'São Paulo', 'SP', 12345678),
(6, 'Recrutamento', '2023-09-01', 'Etapa de recrutamento de voluntários.', 'Rua do Sol', 987, NULL, 'Boa Viagem', 'Recife', 'PE', 12378945),
(5, 'Execução do Projeto', '2023-11-01', 'Etapa de execução das atividades do projeto.', 'Avenida Brasil', 456, 101, 'Copacabana', 'Rio de Janeiro', 'RJ', 87654321),
(5, 'Divulgação', '2023-09-15', 'Etapa de divulgação do projeto.', 'Rua das Palmeiras', 789, NULL, 'Savassi', 'Belo Horizonte', 'MG', 54321678),
(5, 'Treinamento', '2023-10-15', 'Etapa de treinamento dos voluntários.', 'Rua das Mangueiras', 147, 303, 'Barra', 'Salvador', 'BA', 32165498),
(4, 'Execução do Projeto', '2023-11-01', 'Etapa de execução das atividades do projeto.', 'Avenida Brasil', 456, 101, 'Copacabana', 'Rio de Janeiro', 'RJ', 87654321),
(4, 'Planejamento', '2023-08-01', 'Etapa de planejamento do projeto.', 'Avenida Independência', 654, NULL, 'Moinhos de Vento', 'Porto Alegre', 'RS', 98765432),
(4, 'Divulgação', '2023-09-15', 'Etapa de divulgação do projeto.', 'Rua das Palmeiras', 789, NULL, 'Savassi', 'Belo Horizonte', 'MG', 54321678),
(3, 'Execução do Projeto', '2023-11-01', 'Etapa de execução das atividades do projeto.', 'Avenida Brasil', 456, 101, 'Copacabana', 'Rio de Janeiro', 'RJ', 87654321),
(3, 'Captação de Recursos', '2023-10-01', 'Etapa de captação de recursos para o projeto.', 'Rua das Flores', 123, NULL, 'Centro', 'São Paulo', 'SP', 12345678),
(3, 'Recrutamento', '2023-09-01', 'Etapa de recrutamento de voluntários.', 'Rua do Sol', 987, NULL, 'Boa Viagem', 'Recife', 'PE', 12378945),
(2, 'Execução do Projeto', '2023-11-01', 'Etapa de execução das atividades do projeto.', 'Avenida Brasil', 456, 101, 'Copacabana', 'Rio de Janeiro', 'RJ', 87654321),
(2, 'Captação de Recursos', '2023-10-01', 'Etapa de captação de recursos para o projeto.', 'Rua das Flores', 123, NULL, 'Centro', 'São Paulo', 'SP', 12345678),
(1, 'Execução do Projeto', '2023-11-01', 'Etapa de execução das atividades do projeto.', 'Avenida Brasil', 456, 101, 'Copacabana', 'Rio de Janeiro', 'RJ', 87654321),
(1, 'Divulgação', '2023-09-15', 'Etapa de divulgação do projeto.', 'Rua das Palmeiras', 789, NULL, 'Savassi', 'Belo Horizonte', 'MG', 54321678),
(1, 'Treinamento', '2023-10-15', 'Etapa de treinamento dos voluntários.', 'Rua das Mangueiras', 147, 303, 'Barra', 'Salvador', 'BA', 32165498);

INSERT INTO Inscricao (id_usuario, id_projeto, data_inscricao, status, justificativa, data_resultado)
VALUES 
(1, 1, '2023-10-10', 'Aprovado', NULL, '2023-10-12'),
(3, 2, '2023-10-11', 'Pendente', NULL, NULL),
(4, 3, '2023-09-10', 'Aprovado', NULL, '2023-09-12'),
(6, 4, '2023-11-01', 'Pendente', NULL, NULL),
(8, 5, '2023-08-05', 'Aprovado', NULL , '2023-08-07'),
(9, 6, '2023-09-05', 'Pendente', NULL , NULL),
(1, 7, '2023-10-15', 'Aprovado', NULL , '2023-10-17'),
(3, 8, '2023-11-10', 'Pendente', NULL , NULL),
(4, 9, '2023-12-10', 'Aprovado', NULL , '2023-12-12'),
(6, 10, '2024-01-05', 'Rejeitado', 'Alcançamos o número máximo de voluntários, agradecemos pelo interesse!' , NULL);

INSERT INTO Notificacao (id_usuario, titulo, descricao)
VALUES 
(1, 'Inscrição Aprovada', 'Sua inscrição no projeto Refloresta Atlântica foi aprovada.'),
(3, 'Curtida', 'Rodrigo Lima curtiu uma publicação recente.'),
(4, 'Inscrição Aprovada', 'Sua inscrição no projeto SOS Frio foi aprovada.'),
(6, 'Compartilhamento', 'Bruna Castro compartilhou sua publicação'),
(8, 'Inscrição Aprovada', 'Sua inscrição no projeto Carbono Neutro foi aprovada.'),
(9, 'Comentário', 'Ana Lívia Menezes comendou em sua publicação'),
(1, 'Inscrição Aprovada', 'Sua inscrição no projeto Saúde para Todos foi aprovada.'),
(3, 'Novo seguidor', 'Maria Vitória seguiu seu perfil.'),
(4, 'Inscrição Aprovada', 'Sua inscrição no projeto Guardiões da Fauna foi aprovada.'),
(6, 'Inscrição Rejeitada', 'Sua inscrição no projeto Ciência para a Cura foi rejeitada devido ao número máximo de voluntários.');

INSERT INTO Avaliacao (id_usuario, id_projeto, nota, comentario)
VALUES 
(1, 1, 5, 'Excelente projeto, muito bem organizado.'),
(3, 2, 4, 'Bom projeto, mas teria sido mais organizado com mais voluntários.'),
(4, 3, 5, 'Projeto muito relevante para a comunidade, um trabalho lindo!.'),
(6, 4, 3, 'Projeto interessante, mas precisa de mais divulgação.'),
(8, 5, 5, 'Projeto essencial, parabéns a todos!.'),
(9, 6, 4, 'Boa iniciativa!'),
(1, 7, 5, 'Projeto muito bem estruturado.'),
(3, 8, 4, 'Muito gratificante ajudar tantos animais!'),
(4, 9, 5, 'Excelente iniciativa para promover o cuidado com o meio ambiente.'),
(6, 10, 3, 'Projeto interessante, mas precisa de mais recursos.');

INSERT INTO Publicacao (id_usuario, legenda, anexo)
VALUES 
-- Publicações de Voluntários
(1, 'Hoje foi meu primeiro dia no projeto Refloresta Atlântica. Plantamos mais de 100 mudas!', 'foto_plantio.jpg'),  -- Maria Eduarda Farias (Refloresta Atlântica)
(3, 'Finalmente me inscrevi no projeto Sorrisos que Curam. Mal posso esperar para levar alegria às crianças!', 'foto_inscricao.jpg'),  -- Carlos Teixeira (Sorrisos que Curam)
(4, 'Ver o sorriso das pessoas ao receberem ajuda é algo que não tem preço.', 'foto_sosfrio.jpg'),  -- Ana Lívia Menezes (SOS Frio)
(6, 'Ver os animais sendo cuidados com tanto carinho foi maravilhoso!', 'foto_animais.jpg'),  -- Fernanda Lima (CastraPet Solidário)
(11, 'Compartilhando uma foto do evento de arrecadação de fundos para o projeto Carbono Neutro. Foi um sucesso!  #CarbonoNeutro', 'foto_evento.jpg'),  -- Rodrigo Lima (Carbono Neutro)
(15, 'Foi incrível participar da distribuição de mudas no projeto Carbono Neutro. Vamos juntos cuidar do planeta!  #CarbonoNeutro', 'foto_mudas.jpg'),  -- Eduardo Andrade (Carbono Neutro)
(2, 'Estamos felizes em anunciar o início do projeto Refloresta Atlântica! Participe conosco dessa jornada pela preservação da Mata Atlântica.', 'foto_refloresta.jpg'),  -- Fundação SOS Mata Atlântica (Refloresta Atlântica)
(5, 'O projeto Sorrisos que Curam está precisando de voluntários para levar alegria às crianças em tratamento. Venha fazer parte!', 'foto_sorrisos.jpg'),  -- Instituto do Cancêr Infantil (Sorrisos que Curam)
(7, 'A campanha SOS Frio foi um sucesso! Distribuímos cobertores e refeições quentes para mais de 500 pessoas. Obrigado a todos os voluntários!', 'foto_sos_frio.jpg'),  -- Cruz Vermelha São Paulo (SOS Frio)
(10, 'Participe do CastraPet Solidário e ajude a controlar a população de animais de rua. Inscrições abertas para voluntários!', 'foto_castrapet.jpg');  -- Instituto Ampara Animal (CastraPet Solidário)

INSERT INTO Curte (id_usuario, id_publicacao)
VALUES 
(1, 1),
(3, 2),
(4, 3),
(6, 4),
(8, 5),
(9, 6),
(1, 7),
(3, 8),
(4, 9),
(6, 10);

INSERT INTO Comenta (id_usuario, id_publicacao, comentario)
VALUES 
(1, 1, 'Ótima iniciativa!'),
(3, 2, 'Parabéns pelo trabalho!'),
(4, 3, 'Muito importante para a comunidade.'),
(6, 4, 'Adorei!'),
(8, 5, 'Excelente projeto!'),
(9, 6, 'Boa iniciativa!'),
(1, 7, 'Projeto muito bem organizado.'),
(3, 8, 'Parabéns pela iniciativa!'),
(4, 9, 'Muito relevante para a sociedade.'),
(6, 10, 'Projeto interessante!');

INSERT INTO Compartilha (id_usuario, id_publicacao)
VALUES 
(1, 1),
(3, 2),
(4, 3),
(6, 4),
(8, 5),
(9, 6),
(1, 7),
(3, 8),
(4, 9),
(6, 10);

INSERT INTO Segue (id_usuario1, id_usuario2)
VALUES 
(1, 2),  -- Maria Eduarda Farias segue Fundação SOS Mata Atlântica
(2, 1),  -- Fundação SOS Mata Atlântica segue Maria Eduarda Farias 
(3, 5),  -- Carlos Teixeira segue Instituto do Cancêr Infantil
(5, 3),  -- Instituto do Cancêr Infantil segue Carlos Teixeira 
(4, 7),  -- Ana Lívia Menezes segue Cruz Vermelha São Paulo
(7, 4),  -- Cruz Vermelha São Paulo segue Ana Lívia Menezes 
(6, 10), -- Fernanda Lima segue Instituto Ampara Animal 
(10, 6), -- Instituto Ampara Animal segue Fernanda Lima 
(8, 9),  -- Juliana Costa segue Raul Bezerra 
(9, 8),  -- Raul Bezerra segue Juliana Costa 
(11, 12), -- Rodrigo Lima segue Leonardo Cavalcante 
(12, 11), -- Leonardo Cavalcante segue Rodrigo Lima
(13, 14), -- Bruna Castro segue Maria Vitória 
(14, 13), -- Maria Vitória segue Bruna Castro 
(15, 1),  -- Eduardo Andrade segue Maria Eduarda Farias 
(1, 15);  -- Maria Eduarda Farias segue Eduardo Andrade 

INSERT INTO Colabora (id_voluntario, id_projeto, data_entrada, data_termino)
VALUES 
(1, 1, '2023-10-15', NULL),  -- Maria Eduarda Farias no Refloresta Atlântica
(1, 7, '2023-10-15', NULL),  -- Maria Eduarda Farias no Saúde para Todos
(3, 2, '2023-11-01', NULL),  -- Carlos Teixeira no Sorrisos que Curam
(4, 3, '2023-09-15', '2023-11-15'),  -- Ana Lívia Menezes no SOS Frio
(6, 4, '2023-12-01', NULL),  -- Fernanda Lima no CastraPet Solidário
(6, 6, '2023-09-01', NULL),  -- Fernanda Lima no Doe Vida
(8, 7, '2023-10-15', NULL),  -- Juliana Costa no Saúde para Todos
(9, 8, '2023-11-15', NULL),  -- Raul Bezerra no Lares de Esperança
(11, 5, '2023-08-01', '2023-10-31'),  -- Rodrigo Lima no Carbono Neutro
(12, 9, '2023-12-15', NULL),  -- Leonardo Cavalcante no Guardiões da Fauna
(13, 10, '2024-01-01', NULL),  -- Bruna Castro no Alimentação Saudável
(14, 10, '2024-01-01', NULL),  -- Maria Vitória no Ciência para a Cura
(15, 5, '2023-08-01', '2023-10-31');  -- Eduardo Andrade no Carbono Neutro

INSERT INTO Recebe (id_usuario, id_notificacao)
VALUES 
(1, 1),  -- Maria Eduarda Farias recebe a notificação "Inscrição Aprovada" no projeto Refloresta Atlântica
(3, 2),  -- Carlos Teixeira recebe a notificação "Curtida" de Rodrigo Lima
(4, 3),  -- Ana Lívia Menezes recebe a notificação "Inscrição Aprovada" no projeto SOS Frio
(6, 4),  -- Fernanda Lima recebe a notificação "Compartilhamento" de Bruna Castro
(8, 5),  -- Juliana Costa recebe a notificação "Inscrição Aprovada" no projeto Carbono Neutro
(9, 6),  -- Raul Bezerra recebe a notificação "Comentário" de Ana Lívia Menezes
(1, 7),  -- Maria Eduarda Farias recebe a notificação "Inscrição Aprovada" no projeto Saúde para Todos
(3, 8),  -- Carlos Teixeira recebe a notificação "Novo seguidor" de Maria Vitória
(4, 9),  -- Ana Lívia Menezes recebe a notificação "Inscrição Aprovada" no projeto Guardiões da Fauna
(6, 10); -- Fernanda Lima recebe a notificação "Inscrição Rejeitada" no projeto Ciência para a Cura