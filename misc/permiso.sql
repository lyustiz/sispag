INSERT INTO pagos.permiso(
            id_rol, id_menu, bo_create, bo_update, bo_read, bo_delete, 
            tx_observaciones, id_usuario, id_status, fe_creado, fe_actualizado)
    SELECT 3, id_menu, bo_create, bo_update, bo_read, bo_delete, 
       tx_observaciones, id_usuario, id_status, fe_creado, fe_actualizado
  FROM pagos.permiso
  where id_menu not in (20, 22,23)
  and id_rol =1;
