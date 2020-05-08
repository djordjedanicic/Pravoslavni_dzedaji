<html>
<head>
    <meta name="author" content="Djordje Danicic 2017/0692">
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
    <form method="POST" action="restorancontroller" name="forma_reg_rest">
        @csrf
        <table border = "0px">
            <tr>
                <th align = "left">
                    Naziv: 
                </th>
                <th>
                    <input type="text" name="naziv" size="30">
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
                    Lokacija:
                </th>
                <th>
                    <input type="text" name="lokacija" size="30">
                </th>
            </tr>
            <tr>
                <th align = "left">Tip Kuhinje: </th>
                <th>
                    <input type = "radio" name = "tip_kuhinje" value = "azijsk">&nbsp;Azijska
                    <input type = "radio" name = "tip_kuhinje" value = "italijanska">&nbsp;Italijanska
                    <input type = "radio" name = "tip_kuhinje" value = "brza hrana">&nbsp;Brza Hrana
                </th>
            </tr>
            <tr>
                <th align = "left">
                    Vreme od:
                </th>
                <th>
                    <input type="time" name="vremeod" >
                </th>
            </tr>
            <tr>
                <th align = "left">
                    Vreme do:
                </th>
                <th>
                    <input type="time" name="vremedo">
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