<?php
	class conexionBD
{
   /**
    * @param string $sql
    * @return array
    */
    public function consultar($sql)
    {
        $basededatos = new PDO('mysql:host=localhost;dbname=tallerApp', 'root', '',array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES  \'UTF8\''));
        $consulta = $basededatos->prepare($sql);
        $consulta->execute();
        return $consulta;
    }
}
		
?>