<html>
    <head>
        <meta name="author" content="Slobodan Jevtic 2017/0758">
        <script type="text/javascript" src="{{ URL::asset('js/main.js') }}"></script>
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
            <tr>
                <th align="right">
                    <h4>Korisnicko ime:</h4>
                </th>
                <th align="left"  valign = "top">
                    <input type="text" name="kor_ime">
                </th>
            </tr>
            <tr>
                <th align="right">
                    <h4>Sifra:</h4>
                </th>
                <th align="left"  valign = "top">
                    <input type="password" name="sifra">
                </th>
            </tr>
            <tr>
                <th colspan="2">
                    <button type="button" onclick="potvrdaLogovanja()">Potvrdi</button>
                </th>
            </tr>
            <tr>
                <th colspan="2">
                    <button onclick="window.location.href = '{{ URL::route('registracijaKorisnika') }}';">Registruj se kao korisnik</button>
                </th>
            </tr>
            <tr>
                <th colspan="2">
                    <button onclick="window.location.href = '{{ URL::route('registracijaRestorana') }}';">Registruj se kao restoran</button>
                </th>
            </tr>
        </table>
    </body>
</html>