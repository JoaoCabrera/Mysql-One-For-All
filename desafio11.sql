CREATE VIEW cancoes_premium AS
SELECT c.cancao AS 'nome', COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario_id
WHERE plano_id > 1
GROUP BY c.cancao_id
ORDER BY c.cancao;
