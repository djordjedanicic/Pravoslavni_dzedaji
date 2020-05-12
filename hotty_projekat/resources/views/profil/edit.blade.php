<html>
    <head>
        <meta name="author" content="Djordje Danicic 2017/0692">
    </head>
    <body>
        <table border = "0px" width = "100%">
        <form action = '/restoran/{{ $restoran->id }}' class="form-horizontal" method="post" enctype="multipart/form-data">
                @csrf
                @method('PATCH')
            <tr>
                <th align = "right" width = "50%"><font size = "10">Hotty</font></th>
                <th align = "right" width = "50%"><img src = "/slike/logo4.png" height = "100" width = "100" ></th> 
            </tr>
            <tr>
                <th width = "100%" colspan = "2">
                    <br><hr><br>
                </th>
            </tr>
            <tr>
            <th align = "center">
                Telefon: 
            </th>
            <th>
                <input type="text" name="telefon" size="30" value="{{ old('telefon') ?? $restoran->profil_restorana->telefon }}" >
                        @if ($errors->has('telefon'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('telefon') }}</strong>
                        </span>
                        @endif
            </th>
        </tr>
        <tr>
            <th align = "center">
                Lokacija:
            </th>
            <th>
                <input type="text" name="lokacija" size="30" value="{{ old('lokacija') ?? $restoran->profil_restorana->lokacija }}" >
                        @if ($errors->has('lokacija'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('lokacija') }}</strong>
                        </span>
                        @endif
                
            </th>
        </tr>
        <tr>
            <th align = "center">
                Opstina:
            </th>
            <th class="box">
                <select name="opstina" id="opstina" value="{{ old('opstina') ?? $restoran->profil_restorana->opstina }}">
                <option>{{ old('opstina') ?? $restoran->profil_restorana->opstina }} </option>
                    <option>Novi Beograd</option>
                    <option>Stari grad</option>
                    <option>Vracar</option>
                    <option>Vozdovac</option>
                </select>
                
            </th>
        </tr>
        <tr>
            <th align = "center">Tip Kuhinje: </th>
            <th class="box">
                <select name="tip" id="tip" value="{{ old('tip') ?? $restoran->profil_restorana->tip }}">
                <option>{{ old('tip') ?? $restoran->profil_restorana->tip }}</option>
                    <option>Azijska</option>
                    <option>Italijanska</option>
                    <option>Brza Hrana</option>
                    <option>Meksicka</option>
                </select>
                
            </th>
        </tr>
        <tr>
            <th align = "center">
                Vreme od:
            </th>
            <th>
            <input type="time" name="vreme_od" value="{{ old('vreme_od') ?? $restoran->profil_restorana->vreme_od }}" >
                        @if ($errors->has('vreme_od'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('vreme_od') }}</strong>
                        </span>
                        @endif
            </th>
        </tr>
        <tr>
            <th align = "center">
                Vreme do:
            </th>
            <th>
            <input type="time" name="vreme_do" value="{{ old('vreme_do') ?? $restoran->profil_restorana->vreme_do }}" >
                        @if ($errors->has('vreme_do'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('vreme_do') }}</strong>
                        </span>
                        @endif
            </th>
        </tr>
            <tr>
                <th align="left" colspan="2">
                    <h4>Unesite tekst:</h4>
                </th>
            </tr>
            <tr>
                <th align="left"  valign = "top" colspan="2">
                    <textarea class="form-control{{ $errors->has('opis') ? 'is-invalid' : ''}}"
                        name="opis" rows="6" cols="180">{{ old('opis') ?? $restoran->profil_restorana->opis }}</textarea>
                        @if ($errors->has('opis'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('opis') }}</strong>
                        </span>
                        @endif
                </th>
            </tr>
            <tr>
                    <th align="right">
                        <label for="slika" class="col-md-4 col-form-label">Logo Restorana:</label>
                    </th>
                    <th align="left"  valign = "top">

                        <input type="file" class="form-control-file" multiple="multiple" id="slika" name="slika" >

                        @if ($errors->has('slika'))
                            <strong>{{ $errors->first('slika') }}</strong>
                        @endif
                    </th>
                </tr>
                <tr>
            <tr>
                <th colspan="2">
                    <button class="btn btn-primary">Potvrdi</button>
                </th>
            </tr>
        </table>
    </body>
</html>