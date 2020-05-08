<!DOCTYPE html>
<html>
<head>
    <meta name="author" content="Dimitrije Gucevic 2017/0698">
</head>
<body>
    <table border = "0px" width = "100%">
        <tr>
            <th align = "right" width = "50%"><font size = "10">Hotty</font></th>
            <th align = "left" width = "50%"><img src = "{{url('images/logo4.png')}}" height = "100" width = "100" ></th> 
            
        </tr>
        <tr>
            <th width = "100%" colspan = "2">
                <br><hr><br>
            </th>
        </tr>
    </table>
    <form method="POST" action="korisnikcontroller" name="forma_reg_kor">
        @csrf
        <table border = "0px">
            <tr>
                <th align = "left">
                    Ime: 
                </th>
                <th>
                    <input type="text" name="ime" size="30">
                </th>
            </tr>
            <tr>
                <th align = "left">
                    Prezime: 
                </th>
                <th>
                    <input type="text" name="prezime" size="30">
                </th>
            </tr>
            <tr>
                <th align = "left">
                    Telefon: 
                </th>
                <th>
                    <input type="text" name="telefon" size="30">
                </th>
            </tr>
            <tr>
                <th align = "left">
                    Adresa:
                </th>
                <th>
                    <input type="text" name="adresa" size="30">
                </th>
            </tr>
            <tr>
                <th align = "left">Pol: </th>
                <th>
                    <input type = "radio" name = "pol" value = "muski">&nbsp;Muski
                    <input type = "radio" name = "pol" value = "zenski">&nbsp;Zenski
                </th>
            </tr>
            <tr>
                <th align = "left">
                    Mail: 
                </th>
                <th>
                    <input type="text" name="mail" size="30">
                </th>
            </tr>
            <tr>
                <th align = "left">
                    Sifra: 
                </th>
                <th>
                    <input type="password" name="sifra" size="30">
                </th>
            </tr>
            <tr>
                <th align = "left">
                    Ponovi sifru: 
                </th>
                <th>
                    <input type="password" name="sifraPon" size="30">
                </th>
            </tr>
            <tr>
                <th colspan = "2">
                    <br>
                    <input type = "submit" value = "Registruj Se">
                </th>
            </tr>
        </table>
    </form>
</body>
</html>