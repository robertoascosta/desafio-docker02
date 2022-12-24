#Usando programa Vagrant para instalação de clusters, configurando e instalando docker.

#Fazendo download e verificando versão do Vagrant

 wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor |  sudo  tee /usr/share/keyrings/hashicorp-archive-keyring.gpg 
 echo  "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp. com $( lsb_release -cs ) principal"  |  sudo  tee /etc/apt/sources.list.d/hashicorp.list 
 sudo  apt update &&  sudo  apt  install vagrant
 vagrante version

#Configurar arquivo Vangrantfile para indicar o sistema operacional, redes e caminho de programas para instalar.

nano Vagrantfile

#Modificar algumas configurações procurar usar o nano para editar o arquivo Vangrantfile

#Especificação da imagem a ser usada

config.vm.box = "coloca o box Vangrant"

#Especificação da rede a ser usada

config.vm.network "public_network"

#Direcionamento de instalação de programa na parte de provisionamento

config.vm.provision "shell", path: 'colocar o instalador.sh'

#Atualizar o Vangrant para usar as novas especificações

vagrant up

#Verificar os nó(clusters) criados

docker node ls


