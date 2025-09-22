---
id: metro-pantalla-code
title: Metro y pantalla LCD 📟
img: metro-pantalla.png
testDuration: 60
description: Construye el código de Arduino para mostrar en una pantalla LCD la distancia recorrida en metros.
codigoBase: |
    #include <Wire.h>
    #include <LiquidCrystal_I2C.h>

    LiquidCrystal_I2C lcd(0x27, 16, 2);

    void setup() {
      Serial.begin(9600);
      lcd.begin();
      lcd.backlight();
    
      lcd.setCursor(0, 0);
      lcd.print("Distancia:");
    }
    
    void loop() {
      delay(500);
    }
---

Observa el esquema de conexión en el que un sensor ultrasónico está conectado a un Arduino, y este a su vez a una pantalla LCD.
Con base en el esquema:

- Escribe un programa en Arduino **utilizando exactamente los pines indicados en la conexión**.
- El programa debe permitir **mostrar en la pantalla LCD la distancia recorrida en metros**.

