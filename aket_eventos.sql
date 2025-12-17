CREATE DATABASE IF NOT EXISTS aket_eventos;
USE aket_eventos;

CREATE TABLE cadastro
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL,
    imagemURL VARCHAR(255),
    senha VARCHAR(255) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE artistas
(
    idArtista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_show DATE NOT NULL,
    horario TIME NOT NULL,
    local_show VARCHAR(100) NOT NULL,
    imagem VARCHAR(255),
    descricao TEXT
);

INSERT INTO artistas (nome, data_show, horario, local_show, imagem, descricao) VALUES
(
    'Ana Castela',
    '2025-12-26',
    '23:00:00',
    'Espaço de Eventos',
    
    'https://billboard-com-br.s3.amazonaws.com/wp-content/uploads/2024/08/23153022/Roupa-Ana-Castela.jpg',
    'Cantora sertaneja em destaque no cenário nacional'
),

(
    'Alok',
    '2025-12-27',
    '20:00:00',
    'Espaço de Eventos',

    'https://static.ndmais.com.br/2018/12/cropped/c0d15981bc105fa8c0eaa4e26275e88fa3609a87.jpeg',
    'DJ brasileiro reconhecido internacionalmente'
),

(
    'Luan Santana',
    '2025-12-28',
    '21:30:00',
    'Espaço de Eventos',
    
    'https://agenciaamapa.com.br/midias/2024/grandes/up_ag_24060_ea0cfc30-e6e1-aafd-7e3d-402faf8bfc60.jpg',
    'Cantor sertanejo de grande sucesso no Brasil'
);