SELECT DISTINCT doenca,COUNT(*) AS QUANTIDADE FROM (SELECT doenca FROM diagnostico
WHERE diagnostico.consulta_data >= '1992-01-01') as dig
GROUP BY doenca
ORDER BY QUANTIDADE DESC
LIMIT 2;


SELECT DISTINCT crianca.nome_crianca,crianca.idade,c.nome_medico,c.crm,c.num_telefone,b.tratamento,b.doenca from crianca
JOIN consulta a ON a.cpf_responsavel = crianca.cpf_responsavel
JOIN diagnostico b ON b.nome_crianca = crianca.nome_crianca
JOIN medico c ON b.crm = c.crm
WHERE  crianca.nome_crianca= 'Zezinho Pereira';

SELECT beneficio.cod_crianca,b.Responsavel_Telefone,beneficio.nome_crianca,resumo_avaliacao,data_avaliacao,data_distribuicao FROM beneficio
JOIN responsavel b on b.cpf_responsavel = cod_crianca; 