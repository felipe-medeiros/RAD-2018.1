# RAD-2018.1
IFPB - Sistemas para Internet - RAD

## Configuração do Ambiente de Desenvolvimento

Tutorial para instalação e configuração do ambiente de desenvolvimento da disciplina de [Desenvolvimento Rápido para Web (RAD)](https://rad.valeriacavalcanti.com.br/home).

### VirtualBox

Download: [VirtualBox](https://www.virtualbox.org/wiki/Downloads) 
Instalação: 

	sudo dpkg -i virtualbox.xxxx.deb

### Vagrant
Download: https://www.vagrantup.com/downloads.html
Instalação: 

	sudo dpkg -i vagrante.xxxx.deb

#### Configuração

Neste [link](https://app.vagrantup.com/boxes/search) você pode pesquisar e baixar a boxs (sistema operacional) que deseja.

Instalando a box com o Ubuntu 16.04
	
	vagrant box add bento/ubuntu-16.04

>AVISO: Durante a instalação da box, será solicitado o  programa que abrigará
> a box, neste exemplo estamos utilizando o Virtualbox, então insira o
> número correspondente.

Para listar as boxs instaladas:
		
	vagrant box list

Para manter a compatibilidade entre o VirtualBox e a box instalada, instale o seguinte plugin:

	vagrant plugin install vagrant-vbguest

Na pasta que deseja criar sua máquina virtual, digite o seguinte comando:

	vagrant init

Este comando irá criar um arquivo chamado Vagrantfile, este arquivo contem as configurações da máquina virtual, você pode abrir e modifica-lo de acordo com suas necessidades, para este tutorial será utilizado a seguinte configurações:

	  Vagrant.configure("2") do |config|
		  config.vm.box = "bento/ubuntu-16.04"

		   config.vm.network "forwarded_port", guest: 3000, host: 3000
		   config.vm.network "forwarded_port", guest: 9292, host: 9292
		   config.vm.network "forwarded_port", guest: 4567, host: 4567
		   config.vm.network "forwarded_port", guest: 1080, host: 1080
		   config.vm.network "forwarded_port", guest: 8888, host: 8888
		   config.vm.network "forwarded_port", guest: 3306, host: 3306
		   config.vm.network "forwarded_port", guest: 1234, host: 1234
		   config.vm.network "forwarded_port", guest: 5432, host: 5432
		   config.vm.network "forwarded_port", guest: 6379, host: 6379
		   config.vm.network "forwarded_port", guest: 9200, host: 9200
		   config.vm.network "forwarded_port", guest: 27017, host: 27017
		   config.vm.network "forwarded_port", guest: 80, host: 8080

		   config.vm.network "private_network", ip: "192.168.33.10"

		   config.vm.provider "virtualbox" do |vb|
			     vb.memory = "1024"
		   end
	end

> AVISO: Cada linha destas configuração e explicada diretamente no Vagrantfile

Para executar a máquina virtual use:
		
	vagrant up
	
Para acessar a máquina virtual use:

	vagrant ssh
Pronto, você deve ter notado que o terminal está acessando outra máquina, para facilitar o uso você pode instalar o autocomplete:

	sudo apt-get install bash-completion

> AVISO: Saia da máquina virtual e entre novamente para que o autocomplete funcione.

Para  sair, basta digitar o comando:

	exit

Por fim, caso queria colocar a máquina virtual em estado de hibernação utilize:

	vagrant suspend

E para desligar:

	vagrant halt

#### Configurando a Máquina Virtual

Após concluir a instalação da máquina, é hora de configurar (lembrando que este tutorial está apresentando as configurações necessárias para a disciplina de RAD, porém você pode configurar como desejar).

Primeiro passo é atualizar seu sistema operacional:

	sudo apt-get update && sudo apt-get upgrade

Instalando as dependências para a disciplina:

> AVISO: Lembre-se de que essas atualizações e instalações estão sendo realizadas em uma máquina virtual, e não compromete e nem altera nada na sua máquina real.

	sudo apt-get install build-essential
	sudo apt-get install autoconf
	sudo apt-get install bison
	sudo apt-get install libssl-dev
	sudo apt-get install libyaml-dev
	sudo apt-get install libreadline6-dev
	sudo apt-get install zlib1g-dev
	sudo apt-get install libncurses5-dev
	sudo apt-get install libffi-dev
	sudo apt-get install libgdbm-dev
	sudo apt-get install curl
	sudo apt-get install lynx


#### Instalando o Github
Instalando ferramenta de acesso e gerência do repositório [Github](http://git-scm.com)

	sudo apt-get install git


#### Instalando o RVM
RVM: Para instalar o RVM você pode serguir o tutorial presente neste [link RVM](http://rvm.io/rvm/install), ou digite os seguintes comando sequencialmente:
1 - Se ainda não tiver, adicione o repositório do programa com este comando;

	sudo apt-add-repository ppa:rael-gc/rvm

 2 -  Atualize o gerenciador de pacotes com o comando:

	sudo apt-get update
3- Agora use o comando abaixo para instalar o programa;

	sudo apt-get install rvm


> AVISO: Saia da máquina virtual e entre novamente para que o rvm funcione.


#### Ruby
Você pode instalar a versão que desejar da linguagem de programação [Ruby](http://www.ruby-lang.org), usando o comando:
		
	rvm install <versão>

Veja as versão mais recentes neste [link](http://www.ruby-lang.org).

Também é possível instalar várias versão e configurar qual irá usar:

	rvm use <versão>

Para ver a versão que está sendo utilizada:

	ruby -v

####  GEMs

Uma “RubyGem” ou simplesmente “Gem” é uma biblioteca, um conjunto de arquivos Ruby reusáveis, etiquetada com um nome e uma versão. Você pode reutilizar diversas funcionalidades já implementadas em Gems, basta pesquisar neste [site](http://rubygems.org) a que melhor corresponde a suas necessidades.

Para instalar uma nova Gem:

	gem install <nome da gem> -v ‘~>=<versão>'

Para remover:
	
	gem unistall <nome da gem> -v <versão>

Para listar as Gems instaladas:

	gem list

####  Bundler
O [Bundler](http://bundler.io) é um gerenciador para instalação de Gems. Veja o arquivo Gemfile dentro do projeto criado usando Rails.

Instalação:

	gem install bundle


Para usar, dentro da pasta do projeto Rails, use o comando (ele irá baixar e instalar as dependências especificadas no arquivo Gemfile): 


	bundle install
	

####  Rails
Framework [Rails](http://rubyonrails.org) para desenvolvimento de aplicações web.

Instalação:

	gem install rails

Para ver a versão instalada:

	rails -v
	
####  NodeJS
O [NodeJS](http://nodejs.org) é um Interpretador (servidor) javascript.

Instalação:

	sudo apt-get install nodejs

Para ver a versão instalada:

	nodejs --version
	
####  MySql
Gerenciador de Banco de dados [MySql](https://www.mysql.com/).

Instalação:
		
	sudo apt-get install mysql-client mysql-server libmysqlclient-dev
Acesso:

		mysql –u root -p
		
####  Postgresql

Gerenciador de Banco de dados !

Instalação:
	
	sudo apt-get install postgresql postgresql-contrib libpq-dev

Criando um novo usuário:	

	sudo -u postgres createuser -rds vagrant

Criando um novo banco:

	createdb vagrant
Acesso:

	psql

