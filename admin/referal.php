<?php
include "../inc/init.php";
include "../header.php";
?>
	<br/>
	<br/>
	<br/>
	<table border="1">
		<tr>
			<th>NO</th>
			<th>Nama</th>
			<th>Email</th>
			<th>Hp</th>
			<th>Referensi</th>
		</tr>

		<?php 
		$koneksi = mysqli_connect("localhost","root","","mls");
		$no = 1;
		$data = mysqli_query($koneksi,"select * from mls_ref");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['nama']; ?></td>
				<td><?php echo $d['email']; ?></td>
				<td><?php echo $d['hp']; ?></td>
        <td><?php echo $d['ref']; ?></td>
			</tr>
			<?php 
		}
		?>
	</table>
</body>
</html>
   </div><!--/.well -->
 </div><!--/span-->
 <div class="span9">

 </div><!--/span-->
</div><!--/row-->

</div><!--/.fluid-container-->
<?php
include '../footer.php';
?>


