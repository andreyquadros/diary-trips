# 🗺️ MVP - Dário de Viagens App

Este projeto é um aplicativo Flutter que permite aos usuários explorar países que falam a língua portuguesa, visualizar informações detalhadas e registrar suas viagens. O aplicativo consome a API Rest Countries para obter informações atualizadas sobre os países e utiliza o Firebase para autenticação e armazenamento de dados do usuário. Além disso, integra o Google Maps para exibir a localização dos países selecionados.

## ✨ Funcionalidades

- **Autenticação de Usuário:** Permite que os usuários se registrem e façam login utilizando o Firebase Auth.
- **Listagem de Países de Língua Portuguesa:** Exibe uma lista de países que têm o português como idioma oficial, mostrando detalhes como nome, capital e bandeira.
- **Detalhes do País:** Ao selecionar um país, o usuário é direcionado para uma página com informações detalhadas, incluindo um mapa interativo exibindo a localização do país.
- **Visualização de Mapas:** Integração com o Google Maps para mostrar a posição geográfica do país utilizando urlLauncher.
- **Registro de Viagens:** Permite que o usuário registre viagens favoritadas, armazenando os dados no Firebase Firestore.
- **Interface Intuitiva:** Design responsivo e amigável, facilitando a navegação e interação com o aplicativo.

## 🛠️ Tecnologias Utilizadas

- **Flutter:** Framework utilizado para desenvolvimento do aplicativo.
- **Dart:** Linguagem de programação utilizada no Flutter.
- **Firebase Auth:** Utilizado para autenticação de usuários.
- **Firebase Firestore:** Banco de dados em tempo real para armazenamento de dados do usuário.
- **HTTP ou Dio:** Pacote utilizado para realizar requisições HTTP e consumir as APIs.
- **Rest Countries API:** API utilizada para obter dados dos países.

## 🚀 Pré-requisitos

- **Flutter SDK:** Certifique-se de ter o Flutter instalado em sua máquina ([Guia de Instalação](https://flutter.dev/docs/get-started/install)).
- **Conta no Firebase:** Para utilizar os serviços de autenticação e Firestore.

## 🌐 APIs Utilizadas

- **Rest Countries API:** [https://restcountries.com/](https://restcountries.com/)  
  Utilizada para obter informações atualizadas sobre países que falam a língua portuguesa.


## 📷 Demonstração

### 📝 Tela de Login

Permite que o usuário faça login ou crie uma nova conta.

<img src="https://github.com/andreyquadros/diary-trips/blob/master/loginPage.png" alt="Tela de Login" width="300"/>

### 🌍 Lista de Países

Exibe uma lista dos países de língua portuguesa com bandeira e nome.

<img src="https://github.com/andreyquadros/diary-trips/blob/master/Screenshot_20240917_151557.png" alt="Lista de Países" width="300"/>

### 📌 Detalhes do País com Mapa

Mostra detalhes do país selecionado e um mapa com sua localização.


<img src="https://github.com/andreyquadros/diary-trips/blob/master/Screenshot_20240917_151612.png" alt="País no Detalhe" width="300"/>


### 📒 Acessando o País pelo Google Maps

Permite que o usuário registre informações sobre suas viagens.

<img src="https://github.com/andreyquadros/diary-trips/blob/master/Screenshot_20240917_151624.png" alt="Google Maps" width="300"/>




