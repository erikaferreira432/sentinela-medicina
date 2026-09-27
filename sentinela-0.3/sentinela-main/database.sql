-- Estrutura inicial do banco de dados Sentinela
CREATE TABLE pacientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE atendimentos (
    id SERIAL PRIMARY KEY,
    paciente_id INT REFERENCES pacientes(id),
    status VARCHAR(50) DEFAULT 'aguardando',
    data_atendimento TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
