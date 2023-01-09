# Challenge-RockingData-Mercadolibre

Data analysis challenge


SQL features:

- [ ] Diseñar un DER del modelo de datos que logre responder cada una de las preguntas mencionadas anteriormente.
- [X] Generar el script DDL para la creación de cada una de las tablas representadas en el DER. Enviarlo con el nombre “create_tables.sql”.
- [X] Generar el código SQL para responder cada una de las situaciones mencionadas anteriormente sobre el modelo diseñado. Nombre solicitado: “respuestas_negocio.sql”
- [ ] Barrer una lista de más de 150 ítems ids en el servicio público: https://api.mercadolibre.com/sites/MLA/search?q=chromecast&limit=50#json
En este caso particular y solo a modo de ejemplo, son resultados para la búsqueda “chromecast”, pero deberás elegir otros términos para el experimento que permitan enriquecer el análisis en un hipotético dashboard (ejemplo Google Home, Apple TV, Amazon Fire TV, o afines para poder comparar dispositivos portátiles, o bien elegir otros 3 que te interesen para comparar).
- [ ] Por cada resultado, realizar el correspondiente GET por Item_Id al recurso público: https://api.mercadolibre.com/items/{Item_Id}
- [ ] Escribir los resultados en un archivo plano delimitado por comas, desnormalizando el JSON obtenido en el paso anterior, en tantos campos como sea necesario para guardar las variables que te interesen modelar.


Python features:

- [ ] Generar un análisis de disciplinas y países.
- [ ] Generar un análisis descriptivo de los atletas y enriquecer si es posible la informacion con archivos externos al dataset. 
- [ ] Generar un script de python que cargue la informacion en una base de datos a elección y presentar la estructura de estos datos (realice todas las transformaciones necesarias).
- [ ] Limpiar los datos. (Hacer lo que consideres necesario para que puedan utilizarse para una predicción). 
- [ ] Presentarnos el análisis y el trabajo realizado.


PowerBI features:

  Desafios:
  - [ ] IDENTIFICAR LAS PROVINCIAS CON MAYOR NECESIDAD DE ATENCIÓN POR PARTE DEL PROGRAMA "EL ESTADO EN TU BARRIO" PARA PLANIFICAR EL 2020
  - [ ] EVALUAR LA INCORPORACIÓN DEL TRÁMITE "MICROCRÉDITOS" EN EL PROGRAMA "EL ESTADO EN TU BARRIO"

  Preguntas de negocio
  - [ ] ¿CUÁLES SON LAS PROVINCIAS DONDE SE REALIZARON MAYOR CANTIDAD DE TRÁMITES POR PERSONA DEL PROGRAMA "EL ESTADO EN TU BARRIO"?
  - [ ] ¿EXISTE UNA CORRELACIÓN ENTRE LA CANTIDAD DE TRÁMITES DE "EL ESTADO EN TU BARRIO" Y LA CANTIDAD DE MICROCRÉDITOS?
  - [ ] CUALQUIER OTRA PREGUNTA QUE SE TE OCURRA EN BASE A LOS DESAFÍOS PLANTEADOS! ACORDATE DE RECOMENDAR ACCIONES O DECISIONES.



