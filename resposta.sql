
-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano, Duracao from Filmes 
order by Ano asc

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, Duracao from Filmes
where Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
select Nome, Ano, Duracao from Filmes
where Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select Nome, Ano, Duracao from Filmes
where Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao from Filmes
where Duracao > 100 and Duracao < 150
order by Duracao asc

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS TotalFilmes
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
Select * from Atores
where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
Select * from Atores
where Genero = 'F'
order by PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
Select F.Nome, G.Genero from Filmes as F
JOIN FilmesGenero as FG ON FG.IdFilme = F.Id
JOIN Generos as G ON FG.IdGenero = G.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
Select F.Nome, G.Genero from Filmes as F
JOIN FilmesGenero as FG ON FG.IdFilme = F.Id
JOIN Generos as G ON FG.IdGenero = G.Id
where G.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
Select F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel from Filmes as F
JOIN ElencoFilme as EF ON EF.IdFilme = F.Id
JOIN Atores as A ON EF.IdAtor = A.Id
