--1.2 Associe um trigger de DELETE à tabela
CREATE OR REPLACE FUNCTION fn_desativar_pessoa()
RETURNS TRIGGER LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE tb_pessoa
    SET ativo = FALSE
    WHERE id = OLD.id;
    RETURN NULL;
END;
$$;

CREATE TRIGGER tg_desativar_pessoa
BEFORE DELETE ON tb_pessoa
FOR EACH ROW
EXECUTE FUNCTION fn_desativar_pessoa();


-- EXERCICIO TRIGGER
-- 1.1 Adicione uma coluna à tabela tb_pessoa chamada ativo
-- ALTER TABLE tb_pessoa
-- ADD COLUMN ativo BOOLEAN DEFAULT TRUE;
