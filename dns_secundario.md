# Respuestas Tarefa 1.3: Instalación de zonas secundarias

## 1. Configuración de ambos servidores y mostrar logs de la transferencia de zona

###### **- Darthvader: named.conf.local**
![Fichero named.conf.local de darthvader](./img/img_1_tarea_1_3.png)

###### **- Darthsidious: named.conf.local**
![Fichero named.conf.local de darthsidious](./img/img_2_tarea_1_3.png)

###### **- Transferencias de zona**

- Al recargar las zonas: `$ rndc reload`
![Transferencia de zona](./img/img_3_tarea_1_3.png)

- Forzar tansferencia de zona: `$ dig axfr starwars.lan @172.24.0.100`
![Forzar transferencia de zona ](./img/img_2_tarea_1_4.png)
