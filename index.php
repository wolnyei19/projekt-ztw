<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ZTW</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
    <div class="div">
        <header class="item-a" id="page-1" class="page1">
            <h1>Witam na stronie ZTW</h1>
        </header>
        <main class="item-b">
            <form method="post">
                <h2>Zarezerwuj bilet:</h2>
                <label for="imie">Wpisz Imie:</label>
                <input type="text" name="imie" required><br>

                <label for="nazwisko">Wpisz Nazwisko:</label>
                <input type="text" name="nazwisko" required><br>

                <label for="email">Wpisz E-mail:</label>
                <input type="email" name="email" required><br>

                <label for="tel">Wpisz Numer Telefonu:</label>
                <input type="text" name="tel" name="tel"><br>

                <label for="tickettype">Bilet normalny czy ulgowy:</label>
                <input type="text" name="tickettype" required><br>

                <label for="bil">Bilet jedno czy wieloosobowy:</label>
                <input type="text" name="bil" required><br>

                <label for="tickettime">Czas użytku biletu(w min):</label>
                <input type="text" name="tickettime" required><br>

                <label for="miejsce_startowe">Wybierz Miejsce Startowe(ulica):</label>
                <input type="text" name="miejsce_startowe" required><br>

                <label for="miejsce_docelowe">Wybierz Miejsce Docelowe(ulica):</label>
                <input type="text" name="miejsce_docelowe" required><br>

                <label for="zgoda">Zgadzam się na przetwarzanie danych: </label>
                <input type="checkbox" class="checkbox" required><br>

                <input type="submit" class="submit">
                <input type="reset" value="Reset">
            </form>
        </main>
        <aside class="item-c">
            <nav>
                <a href="#page-1">Bilety</a>
                <a href="#page-2">Przesiadki</a>
                <a href="#page-3">Transport</a>
              </nav>
            <section class="scroll-con">
                <article>
                    <h2>informacje o biletach:</h2>
                    <p>normalny - jednoosobowy (4zł)/czas - 20 min</p>
                    <p>normalny - jednoosobowy (5zł)/czas - 40 min</p>
                    <p>normalny - jednoosobowy (6zł)/czas - 90 min</p>
                    <p>normalny - jednoosobowy (12zł)/czas - 1440 min</p>
                    <p>ulgowy - jednoosobowy (2zł)/czas - 20 min</p>
                    <p>ulgowy - jednoosobowy (3zł)/czas - 40 min</p>
                    <p>ulgowy - jednoosobowy (4zł)/czas - 90 min</p>
                    <p>ulgowy - jednoosobowy (8zł)/czas - 1440 min</p>
                    <p>normalny - wieloosobowy (6zł)/czas - 20 min</p>
                    <p>normalny - wieloosobowy (7zł)/czas - 40 min</p>
                    <p>normalny - wieloosobowy (8zł)/czas - 90 min</p>
                    <p>normalny - wieloosobowy (16zł)/czas - 1440 min</p>
                    <p>ulgowy - wieloosobowy (3zł)/czas - 20 min</p>
                    <p>ulgowy - wieloosobowy (4zł)/czas - 40 min</p>
                    <p>ulgowy - wieloosobowy (5zł)/czas - 90 min</p>
                    <p>ulgowy - wieloosobowy (10zł)/czas - 1440 min</p>
                </article>
                <nav>
                    <a href="#page-1">Bilety</a>
                    <a href="#page-2">Przesiadki</a>
                    <a href="#page-3">Transport</a>
                  </nav>
                <article id="page-2" class="page2">
                    <h2>Przesiadki występują na ulicach:</h2>
                    <p>Gliwice:</p>
                    <ul>
                        <li>Centrum</li>
                        <li>Dworzec</li>
                        <li>Dworcowa</li>
                        <li>Strzody</li>
                        <li>Mikołowska</li>
                        <li>Komag</li>
                        <li>Lotników</li>
                        <li>Nowe gliwice</li>
                        <li>Bojkowska</li>
                        <li>Bojków</li>
                    </ul>
                    <p>Knurów:</p>
                    <ul>
                        <li>Rybna</li>
                        <li>Poczta</li>
                        <li>Remiza</li>
                        <li>Wojska_polskiego</li>
                        <li>Kosmonautów</li>
                        <li>Szpitalna</li>
                        <li>Kino</li>
                        <li>Zacisze</li>
                        <li>Michalskiego</li>
                        <li>Stadion</li>
                    </ul>
                    <p>Zabrze:</p>
                    <ul>
                        <li>Helenka</li>
                        <li>Rokitnicka</li>
                        <li>Mikulczyce</li>
                        <li>Biskupice</li>
                        <li>Politechnika</li>
                        <li>Plac</li>
                        <li>Kopalnia</li>
                        <li>Konczyce</li>
                        <li>Makoszowy</li>
                        <li>Legnicka</li>
                    </ul>
                </article>
                <nav>
                    <a href="#page-1">Bilety</a>
                    <a href="#page-2">Przesiadki</a>
                    <a href="#page-3">Transport</a>
                  </nav>
                <article id="page-3" class="page3">
                    <h2>Transport:</h2>
                    
                </article>
            </section>
            <nav>
                <a href="#page-1">Bilety</a>
                <a href="#page-2">Przesiadki</a>
                <a href="#page-3">Transport</a>
              </nav>
        </aside>
        <footer class="item-d">
            <p>&copy;Krystian Wolny 4EI</p>
        </footer>
    </div>

    <?php
    $connect = mysqli_connect('localhost','root','','projekt');

    $imie = $_POST['imie'];
    $nazwisko = $_POST['nazwisko'];
    $email = $_POST['email'];
    $tel = $_POST['tel'];
    $tickettype = $_POST['tickettype'];
    $bil = $_POST['bil'];
    $tickettime = $_POST['tickettime'];
    $miejsce_startowe = $_POST['miejsce_startowe'];
    $miejsce_docelowe = $_POST['miejsce_docelowe'];

    $insertclient = "INSERT INTO projekt.klienci VALUES(NULL, '$imie', '$nazwisko', '$email', '$tel', CURRENT_TIMESTAMP,'$tickettype','$bil','$tickettime','$miejsce_startowe','$miejsce_docelowe')";

    $result = mysqli_query($connect, $insertclient);
    
    if($result){
        echo 'Tranzakcja przeszła pomyślnie!';
    }else{
        echo 'nie udało się';
    }
    ?>
</body>
</html>