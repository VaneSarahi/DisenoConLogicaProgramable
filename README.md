# Diseno Con Logica Programable

Repositorio que contiene las prácticas realizadas en el curso de **Diseño Digital utilizando FPGA**.
Todos los proyectos fueron desarrollados utilizando **Verilog** y sintetizados en **Quartus Prime** para la tarjeta **DE10-Lite**.

El objetivo de este repositorio es documentar la implementación de distintos sistemas digitales, desde lógica combinacional básica hasta interfaces de comunicación y video.

---

# 🛠 Herramientas utilizadas

* Quartus Prime
* Lenguaje de descripción de hardware: Verilog
* FPGA: DE10-Lite
* Simulación con testbench

---

# 📂 Estructura del repositorio

Cada práctica se encuentra organizada en su propia carpeta:

```
Practica_1_Primos
Practica_2_BCD_4Displays
Practica_3_Contador_0_100
Practica_4_Password
Practica_5_PWM
Practica_6_UART
Practica_7_VGA
```

Dentro de cada práctica pueden encontrarse archivos como:

```
codigo/        -> Archivos en Verilog
simulacion/    -> Testbench y resultados de simulación
imagenes/      -> Capturas de funcionamiento
README.md      -> Explicación de la práctica
```

---

# 📘 Prácticas del curso

## Práctica 1 — Números Primos

Implementación de un sistema digital que permite identificar o generar números primos utilizando lógica digital.

Conceptos utilizados:

* Lógica combinacional
* Comparadores
* Operaciones aritméticas

---

## Práctica 2 — BCD a 4 Displays

Diseño de un módulo que convierte un número en formato **BCD** para visualizarlo en **cuatro displays de 7 segmentos**.

Conceptos utilizados:

* Codificación BCD
* Control de displays de 7 segmentos
* Conversión de datos

---

## Práctica 3 — Contador 0–100 Ascendente y Descendente

Implementación de un contador que puede contar:

* de **0 a 100**
* en **modo ascendente o descendente**

Conceptos utilizados:

* Contadores síncronos
* Lógica secuencial
* Control mediante switches

---

## Práctica 4 — Sistema de Password

Diseño de un sistema de **verificación de contraseña** utilizando entradas digitales.

El sistema valida una secuencia de entradas para permitir o denegar acceso.

Conceptos utilizados:

* Máquinas de estado (FSM)
* Lógica secuencial
* Comparación de patrones

---

## Práctica 5 — Generación de PWM

Implementación de un módulo de **modulación por ancho de pulso (PWM)**.

El sistema permite controlar el **ciclo de trabajo (duty cycle)** de una señal digital.

Aplicaciones típicas:

* Control de motores
* Control de brillo de LEDs

Conceptos utilizados:

* Contadores
* Comparadores
* Generación de señales periódicas

---

## Práctica 6 — Comunicación UART

Diseño de un sistema de **comunicación serial UART** entre la FPGA y otro dispositivo.

Conceptos utilizados:

* Comunicación serial
* Transmisión y recepción de datos
* Temporización digital

---

## Práctica 7 — Interfaz VGA

Implementación de un controlador para generar señal **VGA** desde la FPGA.

Permite visualizar gráficos básicos en un monitor.

Conceptos utilizados:

* Generación de sincronización horizontal y vertical
* Control de píxeles
* Temporización de video

---

# 🎯 Objetivo del repositorio

Este repositorio sirve como evidencia del desarrollo de diferentes sistemas digitales implementados en FPGA, abarcando conceptos fundamentales del diseño digital y la descripción de hardware con Verilog.

---

# 👩‍💻 Autor

Vanessa Salazar
Ingeniería
