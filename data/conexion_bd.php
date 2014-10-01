<?php
	class conexionBD
{
   /**
    * @param string $sql
    * @return array
    */
    public function consultar($sql)
    {
        $basededatos = new PDO('mysql:host=localhost;dbname=mydb', 'root', '');
        $consulta = $basededatos->prepare($sql);
        $consulta->execute();
        return $consulta;
    }
}
		
?>