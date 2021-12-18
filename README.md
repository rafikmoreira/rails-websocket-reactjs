
## Ruby on Rails 6 Api Mode, Action Cable (websocket) e integração com ReactJS

Fala, ***'men'!*** Se você chegou até aqui, provavelmente está planejando implementar ***websocket*** na sua aplicação ***Rails*** utilizando a ***gem Action Cable***. Para facilitar a sua caminhada *(e a minha)* resolvi criar este repositório contendo uma aplicação básica na qual utilizo o ***Ruby on Rails na versão 6*** e o ***ReactJS 17*** para criar um sistema simples de alertas (leia notificações). O sistema desenvolvido emite dados via **ActionCable** (***websocket***) para os clientes assinantes do canal especificado. Espero que isso lhe permita compreender a utilização básica da funcionalidade integrada ao ***ReactJS***, podendo o conhecimento ser aplicado a qualquer ***framework front-end*** atual ***(Vue, Angular, React, Svelte e etc.)*** ou ***JS Vanilla***. Vamos ao *fork*!

![Tenha sangue nos olhos! here](https://media0.giphy.com/media/xThuW1N2Qe6OLKpfgI/giphy.gif?cid=ecf05e472m43wlk3lo8y58lpy7sba6z3i62byyvdc24dc259&rid=giphy.gif&ct=g)

**Pull request utilizando docker? Aceitamos!!**

### Tenha em sua mochila

 - Pacotes
	 - Ruby 2.7.0 (versão utilizada)
	 - NodeJs 14.8.2 (versão utilizada)
 - Frameworks
 	 - Rails 6
	 - ReactJS

### Passo a passo para desenvolver a aplicação

 
- **back-end**
 - Inicie um novo projeto rails:
	 - *rails new aplicativo-alertas --api*
 - Adicione a gem 'rack-cors' *(bundle add rack-cors)*
	 - Agora remova o comentário e atualize o arquivo localizado em  *config/initializers/cors.rb*
	 ![código cors](https://raw.githubusercontent.com/rafikmoreira/rails-websocket-reactjs/f2dee3e2158a6cb965949718bb9e3947e4ae4db9/img/rack-cors.png)
 - Gere o model para os alertas
	 - rails g model alerta titulo:string tipo:string
	 - rails db:migrate
- Hora de configurar nosso arquivo de rotas em *config/routes.rb*
	->>>>![Rotas configuradas](https://raw.githubusercontent.com/rafikmoreira/rails-websocket-reactjs/main/img/routes.png)
- Gerar o nosso canal para alertas
	- *rails g channel alertas*
	- acesse o arquivo em *app/channels/alertas_channel.rb*
	- configure da seguinte forma
	![enter image description here](https://raw.githubusercontent.com/rafikmoreira/rails-websocket-reactjs/main/img/alertas-channel.png)
- Gerar o nosso controller
	- *rails g controller alertas*
	- vá para *app/controllers/alertas_controller.rb* e deixe da seguinte forma:
![alertas controller](https://raw.githubusercontent.com/rafikmoreira/rails-websocket-reactjs/main/img/alerta-controller.png)
- **front-end**
- crie a sua aplicação react e adicione o pacote npm actioncable para realizar a conexão:
	- *yarn create react-app alertas-front* 
	- *yarn add actioncable*
-	deixe o seu App.jsx da seguinte forma:
	-	![arquivo app.jsx](https://raw.githubusercontent.com/rafikmoreira/rails-websocket-reactjs/main/img/app-jsx.png)
- Execução
	- suba a sua aplicação do front e do back :)
	- abra a sua ferramenta preferida para testar APIs REST e execute uma requisição do tipo POST para http://localhost:3000/alertas (lembre-se de verificar a porta do servidor rails e substituir aqui caso seja necessário) contendo um JSON com titulo e tipo. Abra a sua aplicação ReactJS, cadastre um alerta no back e veja a mágica no console.
		
### Execução (Repositório)

 - Aplicação Ruby on Rails
	1. Entre no diretório do projeto e execute os seguintes comandos:
	2. bundle install
	3. rails db:migrate
	4. rails s -p 3000
 - Aplicação ReactJS
	1. Entre no diretório do projeto e execute os seguintes comandos:
	2. yarn install
	3. yarn dev

![você conseguiu!!](https://media3.giphy.com/media/3o6gaUIP3L0eLVJNPq/giphy.gif?cid=ecf05e4713wxoukx8g0zkm0wfg9o4nmtapjyjdtocotdbsxe&rid=giphy.gif&ct=g)
	
