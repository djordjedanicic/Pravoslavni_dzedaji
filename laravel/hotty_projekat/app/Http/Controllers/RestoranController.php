<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RestoranController extends Controller
{
    public function formSubmit(Request $req){

        $naziv = $req->input('naziv');
        $telefon = $req->input('telefon');
        $lokacija =$req->input('lokacija');
        $tip =$req->input('tip_kuhinje');
        $vreme_od = $req->input('vremeod');
        $vreme_do = $req->input('vremedo');
        $email = $req->input('mail');
        $sifra = $req->input('sifra');
        $sifraPon = $req->input('sifraPon');
        //treba dodati sliku, opis, ocenu-na pocetku neku default

        if (!empty($naziv) || !empty($tip) || !empty($telefon) || !empty($lokacija) || !empty($vremeod)|| !empty($vremedo) || !empty($email)|| !empty($sifra) || !empty($sifraPon)) {
            $host = "localhost";
            $dbUsername = "root";
            $dbPassword = "";
            $dbname = "projekat_db";
            //create connection
            $conn = mysqli_connect($host, $dbUsername, $dbPassword, $dbname);
            if (mysqli_connect_error()) {
             die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
            } else {
             $SELECT = "SELECT email From restoran Where email = ? Limit 1";
             $INSERT = "INSERT Into restoran (naziv, telefon, lokacija, tip, vreme_od,vreme_do, email, sifra) values(?, ?, ?, ?, ?, ?, ?, ?)";
             //Prepare statement
             $stmt = $conn->prepare($SELECT);
             $stmt->bind_param("s", $email);
             $stmt->execute();
             $stmt->bind_result($email);
             $stmt->store_result();
             $rnum = $stmt->num_rows;
             if ($rnum==0) {
              $stmt->close();
              $stmt = $conn->prepare($INSERT);
              $stmt->bind_param('ssssssss',$naziv, $telefon, $lokacija, $tip, $vreme_od, $vreme_do, $email, $sifra);
              $stmt->execute();
              echo "New record inserted sucessfully";
             } else {
              echo "Someone already register using this email";
             }
             $stmt->close();
             $conn->close();
            }
        } else {
         echo "All field are required";
         die();
        }
    }
}
