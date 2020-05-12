<html>
    <head>

    </head>
    <body>
        <table border = "0px" width = "100%">
            <tr>
                <th align = "right" width = "50%"><font size = "10">Hotty</font></th>
                <th align = "left" width = "25%"><img src = "/slike/logo4.png" height = "100" width = "100" ></th> 
                <th align = "right" width = "25%" valign = "top">Restoran: <u>{{$restoran->naziv}}</u> 
                <li class="nav-item dropdown">

                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{ route('logout') }}"
                            onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                             @csrf
                        </form>
                    </div>
                </li>
                </div>
                </th>
            </tr>
            <tr>
                <th width = "100%" colspan = "3">
                    <br><hr><br>
                </th>
            </tr>
        </table>
        <table border="0px" width = "100%">
            <tr>
                <th>
                    <img src = "{{ $restoran->profil_restorana->profileImage() }}" width="200" height = "200">
                </th>
                <th align="left">
                    <h4>{{$restoran->profil_restorana->opis}}</h4>
                </th>
            </tr>
            <tr>
                <th >
                    <a href="/restoran/{{$restoran->id}}/edit">Promeni opis</a>
                </th>
            </tr>
            <th width = "100%" colspan = "2">
                 <br><hr><br>
            </th>
            <tr>
                <th align="center" colspan = "2">
                    <h2>Meni {{$restoran->naziv}}</h2>
                </th>
            </tr>
            <tr>
                <th valign = "top">
                    <a href="/jelo/create">Dodaj jelo</a>
                </th>
                <th width = "75%">
                    <table>
                        @foreach($restoran->jelo as $jelo)
                        <tr>
                            <th>
                                <img src = "/storage/{{ $jelo->slika }}" width="200" height = "150">
                            </th>
                            <th align = "left">
                                <ul>
                                    <li>Naziv: {{$jelo->naziv}}</li>
                                    <li>Cena: RSD {{$jelo->cena}}</li>
                                    <li>Vrsta Jela: {{$jelo->vrsta}}</li>
                                    <li>Sastojci: {{$jelo->sastojci}}</li>
                                    <li>Kolicina: {{$jelo->gramaza}}g</li>
                                    <li><button type="button">Ukloni jelo</button> <button type="button">Azuriraj</button></li>
                                </ul>
                            </th>
                        </tr>
                        <th width = "100%" colspan = "2">
                            <br><hr><br>
                        </th>
                        @endforeach
 
                    </table>
                </th>
            </tr>
        </table>
        <tr>
            <th width = "100%">
                <br><hr><br>
            </th>
        </tr>
        <tr>
            <th align="left">
                <h3>Komentari</h3>
            </th>
        </tr>
        <table border="0px" width = "100%">
            <form action = "{{ route('komentar.store') }}" method="post" enctype="multipart/form-data">
                <tr>
                    <th align="left" colspan="2">
                        <h4>Unesi komentar:</h4>
                    </th>
                </tr>
                <tr>
                    <th align="left"  valign = "top">
                        <input type="text" name="tekst" size="160">
                        @if ($errors->has('tekst'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('tekst') }}</strong>
                        </span>
                        @endif
                    </th>
                    <th align="left">
                        <input type="submit" class="btn btn-primary btn-lg" style="width: 100%" name="submit">
                    </th>
                </tr>
                
            </table>
    </body>
</html>