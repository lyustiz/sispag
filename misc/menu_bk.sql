INSERT INTO pagos.menu(
            id_modulo, nb_menu, tx_url, tx_icon, tx_extra, nu_orden, 
            id_menu_base, tx_observaciones, id_usuario, id_status, fe_creado, 
            fe_actualizado)
     (SELECT id_modulo, nb_menu, tx_url, tx_icon, tx_extra, nu_orden, 
            22,             tx_observaciones, id_usuario, id_status, fe_creado, 
            fe_actualizado
  FROM pagos.menu_bk where id_modulo = 4)


