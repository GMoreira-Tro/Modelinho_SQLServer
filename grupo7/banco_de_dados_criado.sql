INSERT INTO DiaDaSemana VALUES ('Segunda-Feira')
INSERT INTO DiaDaSemana VALUES ('Terça-Feira')
INSERT INTO DiaDaSemana VALUES ('Quarta-Feira')
INSERT INTO DiaDaSemana VALUES ('Quinta-Feira')
INSERT INTO DiaDaSemana VALUES ('Sexta-Feira')
INSERT INTO DiaDaSemana VALUES ('Sábado')
INSERT INTO DiaDaSemana VALUES ('Domingo')

INSERT INTO NivelDeEnsino VALUES ('Graduação')
INSERT INTO NivelDeEnsino VALUES ('Pós-Graduação')
INSERT INTO NivelDeEnsino VALUES ('Mestrado')
INSERT INTO NivelDeEnsino VALUES ('Doutorado')
INSERT INTO NivelDeEnsino VALUES ('Pós-Doutorado')

INSERT INTO Professor VALUES ('João da Silva', '13/06/1982', '142.453.300-74', 'joao.silva@universidade.com.br')
INSERT INTO Professor VALUES ('Lúcia Gonçalves', '11/02/1977', '066.218.390-81', 'joao.silva@universidade.com.br')
INSERT INTO Professor VALUES ('Rosana Madeira', '01/12/1969', '406.892.100-86', 'rosana.madeira@universidade.com.br')

INSERT INTO Aluno VALUES ('Guilherme Alves', '13/06/1998', '145.689.060-32', 'Guilherme.Alves@universidade.com.br')
INSERT INTO Aluno VALUES ('Thiago Galhardo', '11/02/1987', '565.200.870-92', 'Thiago.Galhardo@universidade.com.br')
INSERT INTO Aluno VALUES ('Patricia Avila', '01/12/1999', '650.984.520-23', 'Patricia.Avila@universidade.com.br')
INSERT INTO Aluno VALUES ('Diego Souza', '01/12/1989', '893.648.570-97', 'Diego.Souza@universidade.com.br')

INSERT INTO Cadeira VALUES ('Banco de Dados I', 'Noite', 1)
INSERT INTO Cadeira VALUES ('Banco de Dados I', 'Noite', 3)

INSERT INTO Curso VALUES ('Ciências da Computação', 1)
INSERT INTO Curso VALUES ('Sistemas da Informação', 1)

INSERT INTO CursoCadeira VALUES (1, 2)
INSERT INTO CursoCadeira VALUES (2, 1)

INSERT INTO Historico VALUES ('02/03/2020', 1)
INSERT INTO Historico VALUES ('26/02/2018', 3)
INSERT INTO Historico VALUES ('04/06/2017', 4)

INSERT INTO CursoHistorico VALUES (1, 3)
INSERT INTO CursoHistorico VALUES (1, 2)
INSERT INTO CursoHistorico VALUES (2, 3)
INSERT INTO CursoHistorico VALUES (2, 2)

INSERT INTO Nota VALUES (7.3, 3, 1)
INSERT INTO Nota VALUES (8.31, 2, 1)

INSERT INTO DiaCadeira VALUES (3, 2)
INSERT INTO DiaCadeira VALUES (1, 1)