<html>
    <head>
        <meta name="author" content="Dimitrije Gucevic 2017/0698">
        <script type="text/javascript" src="{{ URL::asset('js/main.js') }}"></script>
    </head>
    <body onload="loadPocetna()">
        <table border = "0px" width = "100%">
            <tr>
                <th align = "right" width = "50%"><font size = "10">Hotty</font></th>
                <th align = "left" width = "25%"><img src = "{{url('images/logo4.png')}}" height = "100" width = "100" ></th> 
                <th align = "right" width = "25%" valign = "top" class="set_kor"> <button onclick="window.location.href = '{{ URL::route('reg_log') }}';">Registruj/Uloguj Se</button></th>
            </tr>
            <tr>
                <th width = "100%" colspan="3">
                    <button onclick="window.location.href = '{{ URL::route('index') }}';">Pocetna</button>
                    <button type="button" onclick="MojeNarudz()">Moje Narudzbine</button>
                </th>
            </tr>
            <tr>
                <th width = "100%" colspan = "3">
                    <br><hr><br>
                </th>
            </tr>
        </table>
        <table width = "100%" border = "0px">
            <tr>
                <th colspan = "2" align = "left">Filteri:</th>
            </tr>
            <tr>
                <th align = "left" width = "15%" valign="top">
                <i>Lokacija</i><br>
                    <ul>
                        <li>
                            <input type="checkbox" id="noviBeograd" name="noviBeograd" value="noviBeograd">
                            <label for="noviBeograd"> Novi Beograd</label><br>
                        </li>
                        <li>
                            <input type="checkbox" id="stariGrad" name="stariGrad" value="stariGrad">
                            <label for="stariGrad"> Stari grad</label><br>
                        </li>
                    </ul><br>
                    <i>Tip Kuhinje</i><br>
                    <ul>
                        <li>
                            <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
                            <label for="vehicle1"> Azijska</label><br>
                        </li>
                        <li>
                            <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
                            <label for="vehicle1"> Italijanska</label><br>
                        </li>
                    </ul><br>
                <button type="button">Potvrdi</button>
                </th>
                <th align = "left" width = "15%" valign="top">
                    &nbsp;
                </th>
                <th width = "70%">
                    <table>
                        <tr>
                            <th>
                                <img src = "../slike/marukoshi.jpg" width="200" height = "200">
                            </th>
                            <th align = "left">
                                <ul>
                                    <li>Naziv: Marukoshi</li>
                                    <li>Adresa: Stari Grad, Kapetana Misina 37</li>
                                    <li>Tip Kuhinje: Azijska</li>
                                    <li>Ocena: 4.3</li>
                                    <li>Radno vreme: uto-ned 09:00-00:00h</li>
                                    <li><button onclick="window.location.href = 'marukoshi.html';">Meni</button></li>
                                </ul>
                            </th>
                        </tr>
                        <th width = "100%" colspan = "2">
                            <br><hr><br>
                        </th>
                        <tr>
                            <th>
                                <img src = "../slike/mc.png" width="200" height = "200">
                            </th>
                            <th align = "left">
                                <ul>
                                    <li>Naziv: McDonald's</li>
                                    <li>Adresa: Novi Beograd, Jurija Gagarina 16</li>
                                    <li>Tip Kuhinje: Brza Hrana</li>
                                    <li>Ocena: 4.2</li>
                                    <li>Radno vreme: pon-ned 09:30-23:00h</li>
                                    <li><button type="button">Meni</button></li>
                                </ul>
                            </th>
                        </tr>
                        <th width = "100%" colspan = "2">
                            <br><hr><br>
                        </th>
                        <tr>
                            <th>
                                <img src = "../slike/vapiano.png" width="200" height = "200">
                            </th>
                            <th align = "left">
                                <ul>
                                    <li>Naziv: Vapiano</li>
                                    <li>Adresa: Novi Beograd, Buliver Mihaila Pupina 6</li>
                                    <li>Tip Kuhinje: Italijanska</li>
                                    <li>Ocena: 4.0</li>
                                    <li>Radno Vreme: pon-ned 10:00-22:00h</li>
                                    <li><button type="button">Meni</button></li>
                                </ul>
                            </th>
                        </tr>
                        <th width = "100%" colspan = "2">
                            <br><hr><br>
                        </th>
                    </table>
                    &nbsp;
                </th>
            </tr>
        </table>
    </body>
</html>
