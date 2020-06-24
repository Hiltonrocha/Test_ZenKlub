Olá, meu nome é Hilton Rocha e desenvolvi essa pequena automação usando o framework Capybara. Abaixo segue as instruções de como preparar o ambiente para rodar a automação desde instalar Ruby até baixar o projeto da automação.
 
 Configurando o Ambiente no Windows:

1 - Instale o Ruby no Windows
  - baixe em: ​http://rubyinstaller.org/downloads/​. 
  - Executar o arquivo baixado e seguir as instruções clicando em ‘next’
  - Selecionar os 3 checkbox exibidos e continuar a dar ‘next’ até o ‘finish’. 
  - No Console, digite o comando ​ruby –v​, der tudo certo você vai ver a versão instalada. 

2 - Instale o DEVkit
  - Baixe em: http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx. exe​.
  - Acesse o diretório C:\Ruby23-x64.
  - Crie uma pasta chamada ​devKit​ e coloque o arquivo baixado dentro dessa pasta.
  - Clique duas vezes no arquivo para que ele descompate os arquivos na pasta que foi criada.
  -  No Console, digite os comandos:
     > cd C:\Ruby23-x64\devkit
     > ruby dk.rb init
     > ruby dk.rb install 

3 - Instalando o Bundler
  - No prompt de comando digite:
  > gem install bundler
  
4 - Instalando ChromeDriver
  - Baixe em: ​http://chromedriver.storage.googleapis.com/index.html?path=2.25/​
  - Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin 

5 - Instalando Geckodriver
  - Baixe em: https://github.com/mozilla/geckodriver/releases/tag/v0.18.0
  - Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin 

Rodando a Automação:

1 - Faça o clone do repositorio no Git:
  > git clone <url_do_reporitorio>

2 - Instale as dependencias do projeto com o comando:
  > bundle init

3 - Por padrão a automação irá rodar em cima do browser Google Chrome, para rodar os testes digite o comando:
  > cucumber 

4 - Mas se desejar rodar a automação usando o firefox. Digite o comando:
  > cucumber -p firefox

5 - Para rodar os teste com o relatório html. Digite o comando:
  > cucumber report_html
  O report será gerado dentro da pasta /reports com o nome report.html

6 - Para gerar relatório em Json. Digite o comando:
  > cucumber report_json
  O report será gerado dentro da pasta /reports com o nome report.json

7 - Acessando o report.html é gerado os prints de tela para cada cenário executado. Clique em "Veja Imagem" para ver a evidência. As evidências também são armazenadas dentro do projeto na pasta "/reports/screenshot"

Muito Obrigado =)





