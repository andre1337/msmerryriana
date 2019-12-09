<?php 
 
$koneksi = mysqli_connect("localhost","root","","mls");
 
// Check connection
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}
 
?>
<?php

$name = $_POST['name'];
$email = $_POST['email'];
$contact = $_POST['contact'];
$refferal = $_POST['refferal']; 

mysqli_query($koneksi,"insert into mls_ref values('','$name','$email','$contact','$refferal')");
 
header("location:contact.php");
 
?>