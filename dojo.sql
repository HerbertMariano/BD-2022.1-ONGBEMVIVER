CREATE DATABASE ONGBEMVIVER;
CREATE TABLE
    RESPONSAVEL(
        Responsavel_Telefone VARCHAR(12) NOT NULL,
        CPF_Responsavel VARCHAR(11) PRIMARY KEY,
        Nome_Responsavel VARCHAR(255) NOT NULL,
        Parentesco VARCHAR(20) NOT NULL,
        Endereco VARCHAR(255),
        renda INT NOT NULL,
        Num_Telefone VARCHAR(12)
    );

CREATE TABLE
    CRIANCA(
        CPF_Responsavel VARCHAR(11) NOT NULL,
        Nome_Crianca VARCHAR(255) NOT NULL,
        Peso FLOAT NOT NULL,
        Idade INT NOT NULL,
        Altura FLOAT NOT NULL,
        Sexo VARCHAR(3) NOT NULL,
        PRIMARY KEY(Nome_Crianca, CPF_Responsavel)
    );

CREATE TABLE
    MEDICO(
        CRM VARCHAR(255) NOT NULL,
        Nome_Medico VARCHAR(255) NOT NULL,
        Especialidade VARCHAR(255) NOT NULL,
        NUM_Telefone VARCHAR(12) NOT NULL,
        Horas_Semanais INT NOT NULL,
        Dias_Semanais VARCHAR(255) NOT NULL,
        PRIMARY KEY(CRM)
    );

CREATE TABLE
    ASSISTENTE_SOCIAL(
        CPF_Assistente  VARCHAR(11) NOT NULL,
        Nome_Assistente VARCHAR(255) NOT NULL,
        PRIMARY KEY(CPF_Assistente)
    );

CREATE TABLE 
    VOLUNTARIO(
        CPF_Voluntario VARCHAR(11) NOT NULL,
        Nome_Voluntario VARCHAR(255) NOT NULL,
        Criancas_Adotadas TEXT,
        PRIMARY KEY(CPF_Voluntario)
);

CREATE TABLE
    BENEFICIO(
        COD_Crianca VARCHAR(11) NOT NULL,
        Nome_Crianca VARCHAR(255) NOT NULL,
        COD_Assistente VARCHAR(11) NOT NULL,
        Resumo_Avaliacao TEXT,
        Data_Avaliacao DATE,
        Data_Distribuicao DATE,
        PRIMARY KEY(COD_Crianca,Nome_Crianca)
    );

CREATE TABLE 
    CONSULTA(
        CRM VARCHAR(255) NOT NULL,
        CPF_Assistente VARCHAR(11) NOT NULL,
        CPF_Responsavel VARCHAR(11) NOT NULL,
        Nome_Crianca VARCHAR(255) NOT NULL,
        Consulta_Data DATE NOT NULL,
        Consulta_Hora TIME NOT NULL,
        PRIMARY KEY(CRM,Consulta_Data,Consulta_Hora)
    );

CREATE TABLE 
    DIAGNOSTICO(
        CRM VARCHAR(255) NOT NULL,
        Nome_Crianca VARCHAR(255) NOT NULL,
        Consulta_Data DATE NOT NULL,
        Consulta_Hora TIME NOT NULL,
        Tratamento TEXT,
        Doenca TEXT,
        PRIMARY KEY(CRM,Consulta_Data,Consulta_Hora)
    );

INSERT INTO crianca(CPF_Responsavel,Nome_Crianca,Peso,Idade,Altura,Sexo)
VALUES
('56216216242','Zezinho Pereira',55.66,11,1.20,'M'),
('56216216242','Pedrinho Pereira',39.26,5,0.8,'M'),
('86216236242','Valentina Stark',30.2,4,0.5,'F'),
('96216456242','Pablo Vittar',65.36,13,1.4,'NB');

INSERT INTO responsavel(Responsavel_Telefone,CPF_Responsavel,Nome_Responsavel,Parentesco,Endereco,Renda,Num_Telefone)
VALUES
('21911111111','56216216242','Zezao Pereira','Pai','Rua do Registro - 66',2,'21922224444'),
('21911111111','86216236242','Tony Stark','Pai','Avenida do João - 8',0,'21933335555'),
('21911111111','96216456242','Anitta Vittar','Mãe','Rua da Igreja - 42',1,'21988887777');

INSERT INTO medico(CRM,Nome_Medico,Especialidade,NUM_Telefone,Horas_Semanais,Dias_Semanais)
VALUES
('42426-RJ','Drauzio Varela','Clinico Geral','21912341234',20,'Segunda - Sexta'),
('16164-DRUM','Tony Tony Chopper','Pediatra - Cardiologista','21915555555',30,'Terça - Quarta - Quinta');

INSERT INTO voluntario(CPF_Voluntario,Nome_Voluntario,Criancas_Adotadas)
VALUES
('12345678942','Madre Tereza','Zezinho e Pedrinho'),
('16316316356','Hans Chucrute','Valentina e Pablo');

INSERT INTO assistente_social(CPF_Assistente,Nome_Assistente)
VALUES
('4814814177','Judity Lorrany');

INSERT INTO consulta(CRM,CPF_Assistente,CPF_Responsavel,Nome_Crianca,Consulta_Data,Consulta_Hora)
VALUES
('42426-RJ','4814814177','56216216242','Zezinho Pereira','1996-12-02','10:00:00'),
('42426-RJ','4814814177','86216236242','Valentina Stark','1996-12-02','11:30:00'),
('16164-DRUM','4814814177','56216216242','Zezinho Pereira','1996-12-03','18:00:00'),
('42426-RJ','4814814177','96216456242','Pablo Vittar','1996-12-02','08:00:00'),
('16164-DRUM','4814814177','56216216242','Pedrinho Pereira','1996-11-02','14:00:00');

INSERT INTO diagnostico(CRM,Nome_Crianca,Consulta_Data,Consulta_Hora,Tratamento,Doenca)
VALUES
('42426-RJ','Zezinho Pereira','1996-12-02','10:00:00','Rivotril 4 vezes ao dia durante uma semana','Doença não posso descer na proxima ilha'),
('42426-RJ','Valentina Stark','1996-12-02','11:30:00','Dorflex 3 vezes ao dia durante um mes','Gripe'),
('16164-DRUM','Zezinho Pereira','1996-12-03','18:00:00','Potenai 4 vezes ao dia pra sempre','Cancer'),
('42426-RJ','Pablo Vittar','1996-12-02','08:00:00','Redoxon 4 vezes ao dia durante 3 dias','Gripe'),
('16164-DRUM','Pedrinho Pereira','1996-11-02','14:00:00','Dipirona 4 vezes ao dia durante 9 meses','Doença não posso descer na proxima ilha');

INSERT INTO beneficio(COD_Crianca,Nome_Crianca,COD_Assistente,Resumo_Avaliacao,Data_Avaliacao,Data_Distribuicao)
VALUES
('56216216242','Zezinho Pereira','4814814177','Precisa de material escolar e atendimento','1996-12-02','1996-12-02'),
('56216216242','Pedrinho Pereira','4814814177','Precisa de material escolar e atendimento','1996-12-02','1996-12-02'),
('86216236242','Valentina Stark','4814814177','Precisa de material escolar e atendimento','1996-12-02','1996-12-02'),
('96216456242','Pablo Vittar','4814814177','Precisa de material escolar e atendimento','1996-12-02','1996-12-02');