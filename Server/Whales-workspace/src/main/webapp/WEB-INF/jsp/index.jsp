<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Atkinson+Hyperlegible:wght@400;700&display=swap" rel="stylesheet">

    <!--CSS-->
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Atkinson Hyperlegible', sans-serif;
        }

        body {
            background-color: rgb(21, 27, 39);
        }

        :active, :hover, :focus {
            outline: 0 !important;
            outline-offset: 0;
        }

        ::before, ::after {
            position: absolute;
            content: "";
        }

        nav {
            display: flex;
            position: relative;
            width: 100%;
            height: 55px;
            background-color: rgb(54, 92, 145);
        }

        /*CSS Contenedor menu de botones*/
        .button-menu--container {
            position: relative;
            padding: 15px;
        }

        .button-menu--container .button-holder {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            min-width: 350px;
            max-width: 1000px;
            margin: auto;
        }

        .button-menu--container .button-holder .button {
            position: relative;
            display: flex;
            width: auto;
            height: auto;
            background-color: transparent;
            cursor: pointer;
            margin: 10px 25px 25px;
            max-width: 200px;
        }

        .button-menu--container .button-holder .button span {
            position: relative;
            font-size: 15px;
            font-weight: bold;
            letter-spacing: 2px;
            width: 100%;
            padding: 15px 20px;
            transition: 0.3s;
        }

        /*CSS estilo de los botones*/
        .button-menu--container .button-holder .button-style {
            padding: 5px;
            width: 200px;
            text-align: left;
        }

        .button-menu--container .button-holder .button-style {
            color: rgb(255, 255, 255);
            background-color: rgb(21, 27, 39);
        }

        .button-style::before,
        .button-style::after {
            background: transparent;
            z-index: 2;
        }

        /*CSS hover botones*/
        .button.hover-border::before,
        .button.hover-border::after {
            width: 10%;
            height: 25%;
            transition: 0.35s;
        }

        .button.hover-border::before {
            top: 0;
            left: 0;
            border-left: 1px solid rgb(255, 255, 255);
            border-top: 1px solid rgb(255, 255, 255);
        }

        .button.hover-border::after {
            bottom: 0;
            right: 0;
            border-right: 1px solid rgb(255, 255, 255);
            border-bottom: 1px solid rgb(255, 255, 255);
        }

        .button.hover-border:hover::before,
        .button.hover-border:hover::after {
            width: 99%;
            height: 98%;
        }

        /*Branding*/
        .whales-workspace--branding {
            min-width: 400px;
            position: absolute;
            color: rgb(255, 255, 255);
            font-size: 2rem;
            padding: 0 15px;
            left: 60px;
            top: 10px;
        }

        .menu-tittle {
            position: relative;
            text-align: center;
            color: rgb(255, 255, 255);
            font-size: 2rem;
            padding: 15px;
            top: 15px;
        }

        /*CSS botón hamburguesa*/
        .hamburger-menu {
            position: relative;
            width: 24px;
            height: 24px;
            top: 5px;
            left: 15px;
        }

        .hamburger-menu .hamburger-menu--line {
            width: 33px;
            height: 4px;
            background-color: rgb(255, 255, 255);
            display: flex;
            margin: 8px auto;
            transition: all 0.2s ease-in-out;
            border-radius: 5px;
            z-index: 990;
        }

        .hamburger-menu:hover {
            cursor: pointer;
        }

        #hamburger-menu-id.is-active .hamburger-menu--line:nth-child(2) {
            transition: none;
        }

        #hamburger-menu-id .hamburger-menu--line:nth-child(2) {
            transition-delay: 0.2s;
        }

        #hamburger-menu-id.is-active .hamburger-menu--line:nth-child(2) {
            opacity: 0;
        }

        #hamburger-menu-id.is-active .hamburger-menu--line:nth-child(1) {
            transform: translateY(12px) rotate(45deg);
        }

        #hamburger-menu-id.is-active .hamburger-menu--line:nth-child(3) {
            transform: translateY(-12px) rotate(-45deg);
        }

        /*CSS menu accordion*/
        ul {
            list-style: none;
        }

        .accordion-menu {
            display: block;
            position: absolute;
            max-width: 250px;
            margin: 25px auto 20px 10px;
            background-color: rgb(255, 255, 255);
            border-radius: 10px;
            box-shadow: 3px 3px 3px;
            overflow-y: auto;
            overflow-x: hidden;
            z-index: 990;
        }

        .accordion-menu {
            display: none;
        }

        .accordion-menu.is-active {
            display: block;
        }

        .accordion-menu li:last-child .dropdown {
            border-bottom: 0;
        }

        .accordion-menu li.is-active .dropdown {
            color: rgb(21, 27, 39);
        }

        .accordion-menu li.is-active .dropdown .fa-chevron-down {
            transform: rotate(90deg);
        }

        .dropdown {
            cursor: pointer;
            padding: 15px 15px 15px 40px;
            font-size: 18px;
            border-bottom: 1px solid rgb(21, 27, 39);
            color: rgb(21, 27, 39);
            position: relative;
            transition: all 0.4s ease-out;
        }

        .dropdown:hover {
            background-color: rgb(168, 178, 209);
        }

        .dropdown i {
            position: absolute;
            top: 17px;
            left: 15px;
        }

        .user-name {
            cursor: default;
            background-color: rgb(0, 51, 99);
            color: rgb(255, 255, 255);
        }

        .user-name:hover {
            background-color: rgb(0, 51, 99);
        }

        .dropdown .fa-chevron-down {
            right: 30px;
            left: auto;
            transition: transform 0.2s ease-in-out;
        }

        .accordion-menu__el--sub {
            display: none;
            background-color: rgb(0, 51, 99);
        }

        .accordion-menu li.is-active .accordion-menu__el--sub {
            display: block;
        }

        .accordion-menu__el--sub div {
            display: block;
            color: rgb(255, 255, 255);
            font-weight: 700;
            padding: 12px 12px 12px 15px;
            border-bottom: 1px solid rgb(255, 255, 255);
            transition: all 0.2s ease-out;
            text-decoration: none;
        }

        .accordion-menu__el--sub div:hover {
            background-color: rgb(54, 92, 145);
            color: rgb(255, 255, 255);
        }

        /*CSS Scrollbar*/
        .scrollbar-menu__el {
            position: relative;
        }

        .scrollbar-menu__el--sub {
            display: none;
            background-color: rgb(255, 255, 255);
        }

        .scrollbar-menu li.is-active .scrollbar-menu__el--sub {
            display: flex;
            flex-wrap: wrap;
            position: relative;
            left: 25px;
            bottom: 20px;
            max-width: 200px;
            max-height: 200px;
            overflow: auto;
        }

        .scrollbar-menu__el--sub a {
            display: flex;
            color: rgb(21, 27, 39);
            font-weight: bold;
            font-size: 15px;
            min-width: 180px;
            padding: 12px;
            transition: all 0.2s ease-out;
            text-decoration: none;
            z-index: 990;
        }

        .scrollbar-menu__el--sub a:hover {
            background-color: rgb(121, 131, 160);
            color: rgb(255, 255, 255);
        }

        /*CSS Popup de Bookmark*/
        .overlay {
            background: rgba(0, 0, 0, 0.2);
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 999;
        }

        .popup-bookmark {
            background-color: rgb(255, 255, 255);
            box-shadow: 1px 1px 5px 3px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 1rem;
            width: 250px;
            height: 150px;
            color: rgb(60, 65, 79);
        }

        .popup-bookmark .btn-close-popup {
            position: relative;
            left: 210px;
            bottom: 25px;
            font-size: 20px;
            color: rgb(121, 131, 160);
            border-radius: 1px;
            transition: all 0.3s ease;
        }

        .popup-bookmark .btn-close-popup:hover {
            color: rgb(0, 0, 0);
        }

        .popup-bookmark h1 {
            color: rgb(21, 27, 39);
            font-size: 1em;
            font-weight: 700;
            margin-bottom: 15px;
            text-align: center;
        }

        .popup-bookmark p {
            font-size: 0.8em;
            font-weight: 700;
            line-height: 1.4em;
            margin-bottom: 15px;
            text-align: center;
        }

        .popup-bookmark .go-to-consulting-room {
            background-color: rgb(0, 51, 99);
            color: rgb(255, 255, 255);
            border-radius: 10px;
            cursor: pointer;
            font-size: 1.5em;
            font-weight: bold;
            letter-spacing: 1px;
            width: 200px;
            position: relative;
            left: 10px;
            text-align: center;
        }

        .overlay {
            display: none;
        }

        .overlay.is-active {
            display: flex;
        }

        /*Popup para entrar a la sala de espera*/
        .overlay-create-new-event {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            background: rgba(0, 0, 0, 0.2);
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 999;
        }

        .popup-creating-new-event {
            background-color: rgb(255, 255, 255);
            box-shadow: 1px 1px 5px 3px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 30px;
            width: 350px;
            height: 260px;
            color: rgb(21, 27, 39);
        }

        .popup-creating-new-event .btn-close-popup {
            position: relative;
            left: 290px;
            bottom: 40px;
            font-size: 20px;
            color: rgb(121, 131, 160);
            border-radius: 1px;
            transition: all 0.3s ease;
        }

        .popup-creating-new-event .btn-close-popup:hover {
            color: rgb(0, 0, 0);
        }

        .popup-creating-new-event p {
            font-size: 1em;
            font-weight: 600;
            line-height: 1.4em;
            margin-bottom: 10px;
            text-align: center;
        }

        .popup-creating-new-event .go-to-waiting-room {
            background-color: rgb(0, 51, 99);
            color: rgb(255, 255, 255);
            border-radius: 10px;
            padding: 5px;
            cursor: pointer;
            font-size: 1.5em;
            font-weight: bold;
            width: 310px;
            text-align: center;
        }

        .popup-creating-new-event .popup-input__container input{
            width: 100%;
            margin-bottom: 10px;
            height: 50px;
            font-size: 18px;
            text-align: center;
            border: none;
            border-bottom: 1px solid rgb(168, 178, 209);
            color: rgb(121, 131, 160);
        }

        .overlay-create-new-event {
            display: none;
        }

        .overlay-create-new-event.is-active {
            display: flex;
        }
    </style>
    <!--CSS-->
</head>
<body>
    <nav>
        <!--Contenedor del Menu hamburguesa-->
        <div class="menu-container">
            <!--Botón hamburguesa-->
            <div class="hamburger-menu" id="hamburger-menu-id">
                <span class="hamburger-menu--line"></span>
                <span class="hamburger-menu--line"></span>
                <span class="hamburger-menu--line"></span>
            </div>
        
            <!--Menu-->
            <ul class="accordion-menu" id="accordion-menu-id">
                <li class="accordion-menu__el">
                    <div class="dropdown user-name">
                        <i class="fa-solid fa-apple-whole"></i>
                        Nombre de usuario
                    </div>
                </li>
                <li class="accordion-menu__el" id="exp-btn-id">
                    <div class="dropdown">
                        <i class="fa-solid fa-bookmark"></i>
                        Marcadores
                        <i class="fa-solid fa-chevron-down"></i>
                    </div>
                    <ul class="accordion-menu__el--sub">
                        <li><div id="btn-open-popup-id">Catedratico 1</div></li>
                        <li><div id="btn-open-popup-id">Catedratico 2</div></li>
                        <li><div id="btn-open-popup-id">Catedratico 3</div></li>
                    </ul>
                </li>
                <li class="accordion-menu__el">
                    <div class="dropdown">
                        <i class="fa-brands fa-google-drive"></i>
                        Consultas
                    </div>
                </li>
                <li class="accordion-menu__el">
                    <div id="out-session" class="dropdown">
                        <i class="fa-solid fa-arrow-right-from-bracket"></i>
                        Cerrar sesion
                    </div>
                </li>
            </ul>
        </div>
        <div class="whales-workspace--branding">Whale's Workspace</div>
    </nav>

    <div class="menu-tittle">Facultades</div>

    <!--Contenedor de las facultades-->
    <div class="button-menu--container">
        <ul class="button-holder scrollbar-menu">
            <li class="scrollbar-menu__el">
                <div class="button button-style hover-border"><span>Ingenieria Y Aquitectura</span></div>
                <ul class="scrollbar-menu__el--sub">
                    <li><a href="#">Arquitectura</a></li>
                    <li><a href="#">Ingenieria de Alimentos</a></li>
                    <li><a href="#">Ingenieria Civil</a></li>
                    <li><a href="#">Ingenieria Electrica</a></li>
                    <li><a href="#">Ingenieria Industrial</a></li>
                    <li id="info"><a href="#">Ingenieria Informatica</a></li>
                    <li><a href="#">Ingenieria Mecanica</a></li>
                    <li><a href="#">Ingenieria Quimica</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <!--Final del contenedor de las facultades-->

    <!--Popup (PENDIENTE DE MODIFICAR: TIENE QUE SER UN FOREACH)-->
    <div class="overlay" id="overlay-id">
        <div class="popup-bookmark" id="popup-bookmark-id">
            <a href="#" id="btn-close-popup-id" class="btn-close-popup"><i class="fa-solid fa-xmark"></i></a>
            <h1>Nombre Catedratico</h1>
            <p>Estado: Activo</p>
            <div class="go-to-consulting-room" id="go-to-consulting-room-id">Hacer Consulta</div>
        </div>
    </div>

    <!--Popup para agregar consulta-->
    <div class="overlay-create-new-event" id="overlay-create-new-event-id">
        <div class="popup-creating-new-event" id="popup-creating-new-event">
            <a href="#" id="btn-close-popup__w--id" class="btn-close-popup"><i class="fa-solid fa-xmark"></i></a>
            <p>Link de Google Meet</p>
            <div class="popup-input__container">
                <input type="text" placeholder="Descripción">
                <input type="text" placeholder="Invitados">
                <div id="consulta" class="go-to-waiting-room">Entrar a la sala de espera</div>
            </div>
        </div>
    </div>

    <!--JavaScript-->
    <script>
        /*JavaScript para abrir y cerrar popup*/
        let btnOpenPopup = document.getElementById("btn-open-popup-id");
        let btnClosePopup = document.getElementById("btn-close-popup-id");
        let overlay = document.getElementById("overlay-id");

        btnOpenPopup.addEventListener("click", () => {
            overlay.classList.add("is-active");
        });

        btnClosePopup.addEventListener("click", () => {
            overlay.classList.remove("is-active");
        });

        /*JavaScript para el menu de botones*/
        let NodeCollector = document.querySelectorAll(".scrollbar-menu__el");

        NodeCollector.forEach(elementList =>{
            elementList.addEventListener("click", () =>{
                if (elementList.classList.contains("is-active")) {
                    elementList.classList.remove("is-active");
                } else {
                    NodeCollector.forEach(switchDown => {
                        switchDown.classList.remove("is-active");
                    })
                    elementList.classList.toggle("is-active");
                }
            })
        })

        let bookmarkToggle = document.getElementById("exp-btn-id");

        (function click() {
            bookmarkToggle.addEventListener("click", () => {
                bookmarkToggle.classList.toggle("is-active");
            });
        })();

        let el = document.getElementById("hamburger-menu-id");
        let accordionToggle = document.getElementById("accordion-menu-id");

        (function click() {
            el.addEventListener("click", () => {
                el.classList.toggle("is-active");
                accordionToggle.classList.toggle("is-active");
            });
        })();

        /*abrir popup para hacer realizar nueva consulta desde marcadores*/
        let overlayWR = document.getElementById("overlay-create-new-event-id");
        let goToCR = document.getElementById("go-to-consulting-room-id");
        let btnClosePopupWR = document.getElementById("btn-close-popup__w--id");

        (function click() {
            goToCR.addEventListener("click", () => {
                overlay.classList.toggle("is-active");
                overlayWR.classList.toggle("is-active");
            });
        })();

        btnClosePopupWR.addEventListener("click", () => {
            overlayWR.classList.remove("is-active");
        });

        document.getElementById("info").onclick = function () {
            location.href = "grade";
        };

        document.getElementById("out-session").onclick = function () {
            location.href = "login";
        };

        document.getElementById("consulta").onclick = function () {
            location.href = "queuing";
        };
    </script>
</body>
</html>