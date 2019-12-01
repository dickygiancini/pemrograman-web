<?php 
session_start();

$username = "";
include ('conn.php');

   if(isset($_POST['login'])){
      if(empty($_POST['username']) || empty($_POST['password'])){
         header("location:index.php?Empty= Enter the blank space");
      }
      else {
         $username = mysqli_real_escape_string($con, $_POST['username']);
         $password = mysqli_real_escape_string($con, $_POST['password']);

         $query="SELECT * FROM data_user WHERE username='$username' and password='$password'";
         $result=mysqli_query($con,$query);

         $user_login = mysqli_fetch_assoc($result);
         if($user_login['username'] == 'admin@admin.com'){
            $_SESSION['User']="Admin";
            $_SESSION['kode_fakultas']='0';
            $_SESSION['username']=$user_login;
            header("location:dashboard.php");
         }

         else if($user_login['username'] != 'admin@admin.com'){
            $_SESSION['User']="User";
            $_SESSION['username']=$user_login;
            $_SESSION['kode_fakultas']=$user_login['kode_fakultas'];
            header("location:dashboard.php");
         }
         else {
            header("location:index.php?Invalid= User Invalid");
         } 
      }
   }
   else {
      echo '';
   }

   function isAdmin(){
      if (isset($_SESSION['username']) && $_SESSION['User'] == 'Admin'){
         return true;
      }else{
         return false;
      }
   }
?>