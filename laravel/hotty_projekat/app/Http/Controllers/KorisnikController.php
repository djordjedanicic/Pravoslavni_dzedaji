<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class KorisnikController extends Controller
{
    public function formSubmit(Request $req){

        $ime = $req->input('ime');
        $prezime =$req->input('prezime');
        $telefon = $req->input('telefon');
        $adresa =$req->input('adresa');
        $pol = $req->input('pol');
        $email = $req->input('mail');
        $sifra = $req->input('sifra');
        $sifraPon = $req->input('sifraPon');
        $bodovi = 0.0;

        if (!empty($ime) || !empty($prezime) || !empty($telefon) || !empty($adresa) || !empty($pol) || !empty($email)|| !empty($sifra) || !empty($sifraPon)) {
            $host = "localhost";
            $dbUsername = "root";
            $dbPassword = "";
            $dbname = "projekat_db";
            //create connection
            $conn = mysqli_connect($host, $dbUsername, $dbPassword, $dbname);
            if (mysqli_connect_error()) {
             die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
            } else {
             $SELECT = "SELECT email From korisnik Where email = ? Limit 1";
             $INSERT = "INSERT Into korisnik (ime, prezime, adresa, telefon, pol,email,sifra,bodovi) values(?, ?, ?, ?, ?, ?, ?, ?)";
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
              $stmt->bind_param('sssssssd',$ime, $prezime, $adresa, $telefon, $pol, $email,$sifra,$bodovi);
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
