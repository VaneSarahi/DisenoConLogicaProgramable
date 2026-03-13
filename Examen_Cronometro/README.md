# ⏱️ Práctica: Cronómetro Digital en FPGA

## 📌 Descripción

En esta práctica se diseñó e implementó un **cronómetro digital** utilizando el lenguaje de descripción de hardware **Verilog** en una FPGA.

El sistema permite medir tiempo en **segundos y milisegundos**, mostrando los valores en los **displays de 7 segmentos** de la tarjeta.

El cronómetro cuenta con funciones de:

* Inicio del conteo
* Pausa del conteo
* Reinicio del sistema

---

# 🎯 Objetivo

Diseñar un sistema digital que implemente un cronómetro utilizando contadores y lógica secuencial, mostrando los resultados en los displays de la FPGA.

---

# ⚙️ Funcionamiento del sistema

El sistema recibe como entrada el **reloj principal de la FPGA**.
Este reloj se reduce mediante un **divisor de frecuencia (`clk_divider`)** para generar una señal adecuada para contar milisegundos.

El funcionamiento del contador es el siguiente:

1. Los **milisegundos** incrementan desde **0 hasta 999**.
2. Cuando los milisegundos llegan a **999**, se reinician a **0**.
3. Al reiniciarse los milisegundos, el contador de **segundos aumenta en 1**.
4. Los **segundos cuentan de 0 a 59**.
5. Cuando los segundos llegan a **59**, el cronómetro vuelve a **0**.

---

# 🎮 Controles del sistema

Los controles se realizan mediante los **switches y botones** de la FPGA.

| Entrada | Control | Función                |
| ------- | ------- | ---------------------- |
| SW0     | Start   | Inicia el cronómetro   |
| KEY0    | Stop    | Pausa el cronómetro    |
| KEY1    | Reset   | Reinicia el cronómetro |

---

# 🖥️ Visualización

Los valores del cronómetro se muestran en los **displays de 7 segmentos**.

| Display | Información             |
| ------- | ----------------------- |
| HEX0    | Milisegundos (unidades) |
| HEX1    | Milisegundos (decenas)  |
| HEX2    | Milisegundos (centenas) |
| HEX3    | Segundos (unidades)     |
| HEX4    | Segundos (decenas)      |

La conversión de números a señales de display se realiza mediante el módulo:

```
BCD_4displays
```

---

# 🧠 Arquitectura del sistema

El sistema está compuesto por los siguientes módulos:

### 1. Módulo principal

```
ejer1.v
```

Implementa:

* Lógica del cronómetro
* Contadores de milisegundos y segundos
* Control de start, stop y reset

---

### 2. Wrapper del sistema

```
ejer1_w.v
```

Conecta el módulo principal con:

* Pines físicos de la FPGA
* Switches
* Botones
* Displays de 7 segmentos

---

### 3. Archivo de configuración

```
cronometro_Vane.qsf
```

Contiene la asignación de pines utilizada por Quartus.

---

# 🧪 Simulación

Para verificar el funcionamiento del sistema se creó un **testbench** que simula:

* señal de reloj
* inicio del cronómetro
* pausa
* reinicio

Esto permite comprobar que los contadores funcionan correctamente antes de implementar el sistema en la FPGA.

---

# 👩‍💻 Autor

Vanessa Salazar
Ingeniería en Robótica y Sistemas
