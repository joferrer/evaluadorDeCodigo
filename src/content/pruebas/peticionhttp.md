---
id: peticion-http-code
title: Haciendo POST
testDuration: 60
description: Construye un buena petición POST en arduino.
---

Observa el endpoint de la API y base a el **construye una correcta petición http al servidor**. El servidor espera recibir una petición POST con un JSON en el cuerpo con la siguiente estructura:

```http
POST https://nuestroincreiblementerapidoservidor/api/resgistrarRiego HTTP/1.1
content-type: application/json

{
    "idPlanta": string,
    "humedad": number
}
```
Aunque no es necesario que la humedad sea number al enviarla, **el servidor la convertirá a number**. Tenlo en cuenta o la petición fallará.
Sea la peticion correcta o no el servidor responderá con un JSON con la siguiente estructura:

```json
{
    "message": string,
    "idPlanta",
    "fechaRiego",
    "humedad"
}
```

Pero si la petición no puede ni siquiera conectarse al servidor, **el response code será -1**. Tu tarea es construir la petición e imprimir en el monitor serial la respuesta del servidor o mensaje de error si la petición no se ha podido completar. 

Recuerda que la librería que usamos en el curso es la HTTPClient. Los métodos que necesitarás son:

```cpp
HTTPClient http;
http.begirn("url"); // Inicia la petición
http.addHeader("Content-Type", "application/json"); // Añade cabeceras
http.POST("body"); // Envía la petición y devuelve el código, si es -1 ha fallado.
http.getString(); // Obtiene la respuesta del servidor
http.end(); // Finaliza la petición
```