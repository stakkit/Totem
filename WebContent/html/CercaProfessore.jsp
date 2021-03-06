<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/CercaProfessore.css">
        <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.0/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
        <link rel="stylesheet" type="text/jquery" href="../js/jquery.js"> 
        <title>Cerca Professore</title>
    </head>
    <body class="poluzzi">
        <div class="container">
            <div class="navigation">
                <ul class="nav nav-tabs">
                    <li>
                        <a href="index.html"><i class="fa fa-home"></i></a>
                    </li>
                    <p>Cerca Professore</p>
                </ul>
            </div>
            <div class="form-cerca-aula">
                    <div class="row select1">
                        <div class="col-md-4 selectOra">
                            <h4>Istituto:</h4>    
                        </div>
                        <div class="col-md-6 radioInput">
                            <form action="">
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="radioLun" name="radioLun" value="Belluzzi" onclick="prima()"/> Belluzzi
                                    </label> 
                                    <label class="btn btn-default">
                                        <input type="radio" id="radioMar" name="radioMar" value="Fioravanti" checked="checked" onclick="prima()"/> Fioravanti
                                    </label> 
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row select1" style="visibility:hidden" id="selectGiorno">
                        <div class="col-md-4 selectOra">
                            <h4>Giorno:</h4>    
                        </div>
                        <div class="col-md-6 radioInput">
                            <form>
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="radioLun" name="radioLun" value="Lunedi" checked="checked" onclick="seconda()"/> Luned�
                                    </label> 
                                    <label class="btn btn-default">
                                        <input type="radio" id="radioMar" name="radioMar" value="Martedi" onclick="seconda()"/> Marted�
                                    </label> 
                                    <label class="btn btn-default">
                                        <input type="radio" id="radioMer" name="radioMer" value="Mercoledi" onclick="seconda()"/> Mercoled�
                                    </label> 
                                    <label class="btn btn-default">
                                        <input type="radio" id="radioGiov" name="radioGiov" value="Giovedi" onclick="seconda()"/> Gioved�
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="radioVen" name="radioVen" value="Venerdi" onclick="seconda()"/> Venerd�
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="radioSab" name="radioSab" value="Sabato" onclick="seconda()"/> Sabato
                                    </label>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row select1" style="visibility:hidden" id="selectOra">
                        <div class="col-md-4 selectOra">
                            <h4>Ora:</h4>    
                        </div>
                        <div class="col-md-6 radioInput">
                            <form action="">
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-default">
                                        <input type="radio" id="radio1" name="radio1" value="1" onclick="terza()"/> 1
                                    </label> 
                                    <label class="btn btn-default">
                                        <input type="radio" id="radio2" name="radio2" value="2" onclick="terza()"/> 2
                                    </label> 
                                    <label class="btn btn-default">
                                        <input type="radio" id="radio3" name="radio3" value="3" onclick="terza()"/> 3
                                    </label> 
                                    <label class="btn btn-default">
                                        <input type="radio" id="radio4" name="radio4" value="4" onclick="terza()"/> 4
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="radio5" name="radio5" value="5" onclick="terza()"/> 5
                                    </label>
                                    <label class="btn btn-default">
                                        <input type="radio" id="radio6" name="radio6" value="6" onclick="terza()"/> 6
                                    </label>
                                </div>
                            </form>
                        </div>
                    </div>
                <div class="row select1" style="visibility:hidden" id="selectAula-Prof">
                    <div class="col-md-4 selectOra">
                        <h4>Aula:</h4>
                    </div>
                    <div class="col-md-2" >
                        <form id="selectForm" method="POST" action="">
                            <select class="form-control" id="staffSelect" name="dipendenti" onchange="">
                                <option class="idoption1" value="1">100</option>
                                <option class="idoption1" value="2">101</option>
                                <option class="idoption1" value="3">102</option>
                            </select>
                        </form>
                    </div> 
                    <div class="col-md-1 selectOra">
                        <h4>Prof:</h4>
                    </div>
                    <div class="col-md-3">
                        <form id="selectForm" method="POST" action="">
                            <select class="form-control" id="staffSelect" name="dipendenti" onchange="">
                                <option class="idoption1" value="1">Lorenzo Turrini</option>
                                <option class="idoption1" value="2">Giovanni Minelli</option>
                                <option class="idoption1" value="3">Anna Maria Giusepppa</option>
                            </select>
                        </form>
                    </div> 
                </div>
            </div>
             
            <!--<div class="messaggioDiv">
                <input width="620" height="440" type="text" readonly value="Prova testo">
            </div>-->
            <div class="row">
                <div class="col-sm-6">
                    <div class="descrizione"></div>
                </div>
                <div class="col-sm-6">
                    <video width="600" height="550" autoplay loop muted>
                        <source src="../video/elba trailer.mp4" type="video/mp4" />
                        Your browser does not support the video tag.
                    </video>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <img id="logo2" src="../img/Logo.jpg" alt="">
                </div>
                <div class="col-md-4 logo3">
                    <img id="logo3" src="../img/Logo ITIS 2.png" alt="">
                </div>
                <div class="col-md-4 logo4">
                    <img id="logo4" src="../img/ComunediBologna_Emblema_COL.png" alt="">
                </div>
            </div>
            <div class="row">
                <div class="copyright">
                    <small>&copy; Copyright 2016, Giovanni Minelli & Lorenzo Poluzzi/Turrini (L^2PT)</small>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function prima(){
                document.getElementById('selectGiorno').style.visibility ='visible';
            }
            function seconda(){
                document.getElementById('selectOra').style.visibility ='visible';
            }
            function terza(){
                document.getElementById('selectAula-Prof').style.visibility ='visible';
            }
            $("form").submit(function() {
                console.log($(this).serializeArray());
                return false;
            });
        </script>
    </body>
</html>