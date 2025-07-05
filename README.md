# pesquisaCEP

![image](https://github.com/user-attachments/assets/a430042a-fa33-45bc-95d8-a1b09c9939bb)


📦 Aplicativo de Consulta de CEP — Delphi VCL
Este projeto foi desenvolvido utilizando **Delphi VCL** com foco em boas práticas de arquitetura de software, adotando o padrão **MVC (Model-View-Controller)** para promover maior organização, escalabilidade e facilidade de manutenção do código.
O aplicativo consome dados de endereços brasileiros via CEP por meio da API pública disponível em BrasilAPI. 
A API permite a recuperação de informações como rua, bairro, cidade e estado a partir de um número de CEP informado pelo usuário.
⚙️ Tecnologias e Conceitos Utilizados:
- Delphi VCL para interface gráfica rica e responsiva.
- Arquitetura MVC:
- Model: responsável pelo tratamento dos dados recebidos da API.
- View: interface com o usuário para inserção e exibição dos dados.
- Controller: camada intermediária que processa ações e faz a requisição à API.
- Consumo de WebService REST com suporte a JSON.
- Tratamento de erros e respostas inválidas, garantindo robustez e uma experiência de uso mais segura.

Autor: Rafael de Azevedo Lima

