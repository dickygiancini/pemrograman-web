<?php
    include ('conn.php');
    session_start();  
?>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta http-equiv="X-UA-Compatible" content='ie=edge'>
	<link rel="stylesheet" href="./style/style.css">
</head>
<body>

	<?php
		if(@$_GET['Empty']==true){
	?>
	<?php echo $_GET['Empty']?>
	<?php		
		}
	?>

	<?php
		if(@$_GET['Invalid']==true){
	?>
	<?php echo $_GET['Invalid']?>
	<?php		
		}
	?>

	<form action="login.php" method="post">		
		<table>
			<tr>
				<td>Username</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td></td>
				<td class="button"><input type="submit" name="login" value="Log In"></td>
			</tr>
		</table>
	</form>
</body>
</html>