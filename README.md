# poc_flavor

<h1>COMO CRIAR NOVOS FLAVORS </h1>

é necessario  criar os assets e temas  implementando as classes de contrato.
E criar as configuraçoes dos defines 
e Criar um novo arquivo flutter_launcher_icons_<flavor>.yaml apontando  para o caminho do icone.


<h1>PARA GERAR OS ICONES DO FLAVOR É NECESSÁRIO RODAR OS COMANDOS ABAIXO : </h1>


PARA GERAR ICONES DO IDEAGRI
flutter pub run flutter_launcher_icons -f flutter_launcher_icons_ideagri.yaml

PARA GERAR ICONES DO PIRACANJUBA
flutter pub run flutter_launcher_icons -f flutter_launcher_icons_piracanjuba.yaml


<h1>PARA FAZER O BUILD É NECESSARIO UTULIZAR O DART DEFINE  </h1>

Exempo de launch.json 

"configurations": [
        {
            "name": "Ideagri",
            "request": "launch",
            "type": "dart",
            "args": [
                "change_app_package_name:main com.package.appname",
                "--dart-define=APP_FLAVOR=ideagri",
                "--dart-define=DEFINE_APP_NAME=Ideagri app",
                "--dart-define=DEFINE_BUNDLE_IDENTIFIER=com.ideagri.app",
                "--dart-define=DEFINE_APP_ID=com.ideagri.app"
            ]
        },
        {
            "name": "Piracanjuba",
            "request": "launch",
            "type": "dart",
            "args": [
                "change_app_package_name:main com.package.piracanjuba",
                "--dart-define=APP_FLAVOR=piracanjuba",
                "--dart-define=DEFINE_APP_NAME=Piracanjuba app",
                "--dart-define=DEFINE_BUNDLE_IDENTIFIER=com.piracanjuba.app",
                "--dart-define=DEFINE_APP_ID=com.piracanjuba.app"

            ]




