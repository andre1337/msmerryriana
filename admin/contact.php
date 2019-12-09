<?php

include "inc/init.php";
include 'header.php';

//include 'footer.php';
?>

<html>

<h3>Add Refferal </h3>

	<form method="post" action="tambah_aksi.php">
		<table>
			<tr>			
				<td>Name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td>Contact</td>
				<td><input type="text" name="contact"></td>
			</tr>

			<tr>
				<td>Refferal</td>
				<td><input type="text" name="refferal"></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="SIMPAN"></td>
			</tr>		
		</table>
	</form>

</html>

