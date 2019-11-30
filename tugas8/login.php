<?php 
session_start();
require_once ('conn.php');

   if(isset($_POST['login'])){
      if(empty($_POST['username']) || empty($_POST['password'])){
         header("location:index.php?Empty= Enter the blank space");
      }
      else {
         $query="SELECT * FROM users WHERE username='".$_POST['username']."' and password='".$_POST['password']."'";
         $result=mysqli_query($con,$query);
         if(mysqli_fetch_assoc($result)){
            $_SESSION['User']=$_POST['username'];
            header("location:dashboard.php");
         }
         else {
            header("location:index.php?Invalid= User Invalid");
         } 
      }
   }
   else {
      echo 'Not Work';
   }
// $dbServer = 'localhost';
// $dbUser = 'root';
// $dbPass = '';
// $dbName = "tugas8";

// $conn = mysqli_connect($dbServer, $dbUser, $dbPass);
// $username = $_POST['username'];
// $password = $_POST['password'];
 
// $query = mysqli_query($conn, "SELECT * FROM users WHERE username='$username' AND password='$password'");

// echo "Sukses";
?>