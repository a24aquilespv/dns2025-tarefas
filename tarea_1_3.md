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
![Forzar transferencia de zona ](./img/img_4_tarea_1_3.png)



## 2. Transferencia de zona la reiniciar y registro de chewbacca.starwars.lan


###### **- Transferencia de zona al reiniciar los contenedores**
![transferencia de zona al reiniciar ambos servidores](./img/img_5_tarea_1_3.png)

###### **- Fichero de la zona db.starwars.lan en el darthsidious**
![fichero starwars.lan en darthsidious](./img/img_6_tarea_1_3.png)

## 3. Comprobar que el darhtsidous puede resolver el nuevo chewbacca.starwars.lan
- $ dig chewbacca.starwars.lan
![resolver el chewbacca](./img/img_7_tarea_1_3.png)


## 4. Lo mismo que el apartado 2, pero ahora usando una clave TSIG

###### **- Transferencia de zona al reiniciar los contenedores**
![axfr automático al levantar los servidores](./img/img_8_tarea_1_3.png)

###### **- Fichero de la zona db.starwars.lan en el darthsidious**
![zona compilada de starwars.lan en darthsidious](./img/img_9_tarea_1_3.png)