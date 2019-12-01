<?php
    include ('conn.php');
    include ('login.php');
    echo 'Welcome ' .$_SESSION['User']. ' With user id : '.$_SESSION['kode_fakultas'];

    $query = "SELECT * FROM data_inv";
    $jenis = mysqli_query($con,$query);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="./style/style.css">
</head>
<body>
    <a href="admin.php">Admin Privilage</a>
    <a href="logout.php">Shutdown</a>
    <br>
    <form>
		<select id="jenis">
			<option value="">--- PILIH ---</option>
            <option value="KOMPUTER">KOMPUTER</option>
            <option value="KENDARAAN">KENDARAAN</option>
            <option value="LCD">LCD</option>
            <option value="MEJA">MEJA</option>
		</select>

        <select id="kondisi">
			<option value="">--- PILIH ---</option>
            <option value="BAIK">BAIK</option>
            <option value="BARU">BARU</option>
            <option value="BUTUH PERBAIKAN">BUTUH PERBAIKAN</option>
		</select>
        <!-- style="display: none;" -->
        <select id="kode_fakultas">
			<option value="<?php echo $_SESSION['kode_fakultas']; ?>"></option>
		</select>
	</form>
    <button id="filter">Filter</button>
    <p id="data"></p>
    <span id="load_data" style="display: none;">Loading Inventaris...</span>
</body>
</html>

<script type="text/javascript">
$(function(){
    $("#filter").click(function(){
        $("#load_data").show();
        var jenis = $("#jenis").val();
        var kondisi = $("#kondisi").val();
        var kode_fakultas = $("#kode_fakultas").val();

        $.ajax({
            type: "GET",
            url: "ajax_inventaris.php?jenis=" + jenis + "&kondisi=" + kondisi + "&kode_fakultas=" + kode_fakultas,
            success: function(msg){
                $("#load_data").hide();
                $("#data").html(msg);
            }
        });
    });
});
$(function(){
    $("#ok").click(function(){
        $("#alert").hide();
        $("#ok").hide();
    });
});
</script>