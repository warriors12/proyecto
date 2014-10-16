<?php
session_start();
error_reporting(0);

include ('bd.php');

function ProtectVars($str)
{
	$str = addslashes($str);
	$str = mysql_real_escape_string($str);
	$str = htmlspecialchars($str);
	return $str;
}

foreach($_POST as $param => $value)
{
	$_POST[$param] = ProtectVars($value);
}
foreach($GET as $param => $value)
{
	$_GET[$param] = ProtectVars($value);
}

if(isset($_POST['Usuario']) && isset($_POST['Contrasena']))
{
	$U = $_POST['Usuario'];
	$P = $_POST['Contrasena'];
	$Fail = false;
	
	$GetUser = mysql_query("SELECT * FROM Usuario WHERE Usuario = '$U' AND Contrasena = '$P'");
	if(empty($U) || empty($P))
	{
		echo 'Los datos estan vacios';
	}
	elseif(mysql_num_rows($GetUser) == 0)
	{
		echo 'El usuario no existe o la contrase&ntilde;a es incorrecta';
		$Fail = true;
	}
	if($Fail == false)
	{
		if(mysql_num_rows($GetUser) > 0)
		{
			$_SESSION['Usuario'] = $U;
			$_SESSION['Contrasena'] = $P;
		}
	}
}

if(isset($_SESSION['Usuario']) && isset($_SESSION['Contrasena']))
{
	$SU = $_SESSION['Usuario'];
	$SP = $_SESSION['Contrasena'];
	
	$GetUser = mysql_query("SELECT * FROM Usuario WHERE Usuario = '$SU' AND Contrasena = '$SP'");
	if(mysql_num_rows($GetUser) > 0)
	{
		$lml = mysql_fetch_assoc($GetUser);
		define("User", true);
	}
} else {
	define("User", false);
}

if($_GET['action'] == 'exit')
{
	session_destroy();
	echo '<meta http-equiv="Refresh" content="0;URL=./" />';
}
?>
<!DOCTYPE HTML>
<html>
<head>
	<title><?php echo User == true ? $lml['User'] : 'login'; ?></title>
	<style type="text/css">body{font-family:Segoe UI;}</style>
</head>
<body>
	<?php if(User == false) { ?>
	<label style="font-size: 30px; font-family: Segoe UI;">Ingresar</label><br>
	<form action="" method="POST">
		Nombre de usuario:<br>
		<input type="text" name="Usuario" placeholder="Nombre de usuario" /><br>
		Contrase&ntilde;a:<br>
		<input type="password" name="Contrasena" placeholder="********" /><br>
		<input type="submit" value="Entrar" />
	</form>

	<?php } if(User == true) { ?>
	<label style="font-size: 30px; font-family: Segoe UI;">Bienvenido</label><br>
	<b>Hola, <?php echo $lml['User']; ?></b><br>
	<a href="?action=exit">Salir</a>
	<?php } ?>
</body>
</html>