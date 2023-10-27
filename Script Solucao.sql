USE [Filmes]
GO

SELECT Nome, Ano FROM dbo.Filmes
GO
SELECT * FROM dbo.Filmes ORDER BY Ano
GO
SELECT * FROM dbo.Filmes WHERE Nome='De volta para o futuro'
GO
SELECT * FROM dbo.Filmes WHERE Ano=1997
GO
SELECT * FROM dbo.Filmes WHERE Ano > 2000
GO
SELECT * FROM dbo.Filmes WHERE Duracao BETWEEN 101 AND 149 ORDER BY Duracao
GO
SELECT Ano, Quantidade=COUNT(Id) FROM dbo.Filmes GROUP BY Ano ORDER BY COUNT(Id) DESC
GO
SELECT * FROM dbo.Atores WHERE Genero='M'
GO
SELECT * FROM dbo.Atores WHERE Genero='F'
GO
SELECT Nome, Genero FROM dbo.Filmes INNER JOIN dbo.FilmesGenero ON dbo.Filmes.Id = dbo.FilmesGenero.idFilme INNER JOIN dbo.Generos ON dbo.Generos.Id = dbo.FilmesGenero.idGenero
GO
SELECT Nome, Genero FROM dbo.Filmes INNER JOIN dbo.FilmesGenero ON dbo.Filmes.Id = dbo.FilmesGenero.idFilme INNER JOIN dbo.Generos ON dbo.Generos.Id = dbo.FilmesGenero.idGenero WHERE Genero='Mistério'
GO
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM dbo.Filmes INNER JOIN dbo.ElencoFilme ON dbo.Filmes.Id = dbo.ElencoFilme.idFilme INNER JOIN dbo.Atores ON dbo.Atores.Id = dbo.ElencoFilme.IdAtor
GO