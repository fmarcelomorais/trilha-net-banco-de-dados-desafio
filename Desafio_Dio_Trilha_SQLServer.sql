
CREATE PROCEDURE busca_Nome_E_Ano_Filme
AS
	SELECT Nome, Ano 
	FROM Filmes
GO

CREATE PROCEDURE busca_Nome_Ano_Duracao_Filme
AS
	SELECT * 
	FROM Filmes
GO

CREATE PROCEDURE busca_De_Volta_Para_o_Futuro
AS
	SELECT * 
	FROM Filmes
	WHERE Nome = 'De Volta para o Futuro'
GO

CREATE PROCEDURE Filmes_Lancados_1997
AS
	SELECT * 
	FROM Filmes
	WHERE Ano = 1997
GO

CREATE PROCEDURE Filmes_Lancados_Apos_2000
AS
	SELECT * 
	FROM Filmes
	WHERE Ano > 2000
GO

CREATE PROCEDURE Filmes_Duracao_Entre_100_e_150
AS
	SELECT * 
	FROM Filmes
	WHERE Duracao > 100 and Duracao < 150
	ORDER BY Duracao ASC
GO

CREATE PROCEDURE Quantidade_Filmes_Ano
AS
	SELECT Ano, COUNT(*) Quantidade
	FROM Filmes 
	GROUP BY Ano
	ORDER BY Quantidade DESC;
GO

CREATE PROCEDURE Primeiro_e_Ultmino_Nome_e_Genero
AS
	SELECT PrimeiroNome, UltimoNome, Genero
	FROM Atores 
	WHERE Genero = 'M'
GO

CREATE PROCEDURE Primeiro_e_Ultmino_Nome_e_Genero_F
AS
	SELECT PrimeiroNome, UltimoNome, Genero
	FROM Atores 
	WHERE Genero = 'F'
	ORDER BY PrimeiroNome
GO


EXEC busca_Nome_E_Ano_Filme;
EXEC busca_Nome_Ano_Duracao_Filme;
EXEC busca_De_Volta_Para_o_Futuro;
EXEC Filmes_Lancados_1997;
EXEC Filmes_Lancados_Apos_2000;
EXEC Filmes_Duracao_Entre_100_e_150;
EXEC Quantidade_Filmes_Ano;
EXEC Primeiro_e_Ultmino_Nome_e_Genero;
EXEC Primeiro_e_Ultmino_Nome_e_Genero_F;


SELECT f.Nome, g.Genero
FROM Filmes f 
INNER JOIN FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN Generos g ON g.Id = fg.IdGenero

SELECT f.Nome, g.Genero
FROM Filmes f 
INNER JOIN FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN Generos g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério'


SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM ElencoFilme ef 
INNER JOIN Filmes f ON f.Id = ef.IdFilme
INNER JOIN Atores a ON a.Id = ef.IdAtor



--DROP PROCEDURE busca_Nome_E_Ano_Filme;
--GO

--DROP PROCEDURE busca_Nome_E_Ano_Filme;
--DROP PROCEDURE busca_Nome_Ano_Duracao_Filme;
--DROP PROCEDURE busca_De_Volta_Para_o_Futuro;
--DROP PROCEDURE Filmes_Lancados_1997;
--DROP PROCEDURE Filmes_Lancados_Apos_2000;
--DROP PROCEDURE Filmes_Duracao_Entre_100_e_150;
--DROP PROCEDURE Quantidade_Filmes_Ano;
--DROP PROCEDURE Primeiro_e_Ultmino_Nome_e_Genero;
--DROP PROCEDURE Primeiro_e_Ultmino_Nome_e_Genero_F;
