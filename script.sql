-- EXERCICIO TRIGGER
-- 1.1 Adicione uma coluna à tabela tb_pessoa chamada ativo
ALTER TABLE tb_pessoa
ADD COLUMN ativo BOOLEAN DEFAULT TRUE;
