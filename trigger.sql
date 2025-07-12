CREATE OR REPLACE TRIGGER trgafterinsert
AFTER INSERT ON Customer
FOR EACH ROW
BEGIN
    UPDATE Stock
    SET D_qnty = D_qnty - 1
    WHERE :NEW.M_id = D_id;
END;