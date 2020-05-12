
<html>
    <head>
        <meta name="author" content="Slobodan Jevtic 2017/0758">
    </head>
    <body>

            <table border = "0px" width = "100%">
                <form action = '/jelo' class="form-horizontal" method="post" enctype="multipart/form-data">
                @csrf
                <tr>
                    <th align = "right" width = "50%"><font size = "10">Hotty</font></th>
                    <th align = "left" width = "50%"><img src = "/slike/logo4.png" height = "100" width = "100" ></th> 
                </tr>
                <tr>
                    <th width = "100%" colspan = "2">
                        <br><hr><br>
                    </th>
                </tr>
                <tr>
                    <th align="right">
                        <h4>Naziv jela:</h4>
                    </th>
                    <th align="left"  valign = "top">
                        <input type="text" name="naziv" value="{{ old('naziv') }}" >
                        @if ($errors->has('naziv'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('naziv') }}</strong>
                        </span>
                        @endif
                    </th>
                </tr>
                <tr>
                    <th align="right">
                        <h4>Cena:</h4>
                    </th>
                    <th align="left"  valign = "top">
                        <input type="text" name="cena" value="{{ old('cena') }}" >
                        @if ($errors->has('cena'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('cena') }}</strong>
                        </span>
                        @endif
                    </th>
                </tr>
                <tr>
                    <th align="right">
                        <h4>Vrsta jela:</h4>
                    </th>
                    <th align="left"  valign = "top">
                        <input type="text" name="vrsta" value="{{ old('vrsta') }}" >
                        @if ($errors->has('vrsta'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('vrsta') }}</strong>
                        </span>
                        @endif
                    </th>
                </tr>
                <tr>
                    <th align="right">
                        <h4>Sastojci:</h4>
                    </th>
                    <th align="left"  valign = "top">
                        <input type="text" name="sastojci" value="{{ old('sastojci') }}" >
                        @if ($errors->has('sastojci'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('sastojci') }}</strong>
                        </span>
                        @endif
                    </th>
                </tr>
                <tr>
                    <th align="right">
                        <h4>Gramaza:</h4>
                    </th>
                    <th align="left"  valign = "top">
                        <input type="text" name="gramaza" value="{{ old('gramaza') }}" >
                        @if ($errors->has('gramaza'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('gramaza') }}</strong>
                        </span>
                        @endif
                    </th>
                </tr>
                <tr>
                    <th align="right">
                        <label for="slika" class="col-md-4 col-form-label">Slika:</label>
                    </th>
                    <th align="left"  valign = "top">

                        <input type="file" class="form-control-file" multiple="multiple" id="slika" name="slika" >

                        @if ($errors->has('slika'))
                            <strong>{{ $errors->first('slika') }}</strong>
                        @endif
                    </th>
                </tr>
                <tr>
                    <th colspan="2">
                        <button class="btn btn-primary">Potvrdi</button>
                    </th>
                </tr>
            </table>
        </form>    
    </body>
</html>
