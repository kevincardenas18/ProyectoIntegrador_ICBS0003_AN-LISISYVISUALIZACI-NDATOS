# ProyectoIntegrador_ICBS0003_AN-LISISYVISUALIZACI-NDATOS
 Proyecto Integrador de la Materia ICBS0003-2856-ANÁLISIS Y VISUALIZACIÓN DATOS

## Integrantes

- Kevin Cárdenas
- Martín Alvear
- Bryan Sarabino

## Descripción

Este repositorio contiene el código fuente usado para el proyecto final de Visualización de Datos. Para ello, se utilizó la últiman versión de Python y MySQL para el almacenamiento de datos. La generación de datos aleatorios se llevó a cabo con la librería Faker y para la visualización de datos se utilizó Power BI.

El proyecto propuesto solventa las necesidades analíticas de la compañía Importadora Andina. Se requiere captar nuevos clientes y determinar los productos que más se venden. Esta solución implementa un proceso ETL vinculado a una base de datos MySQL instanciado en una máquina virtual en linux y permite visualizar los resultados en Power BI.

En este proyecto, se busca resolver las siguientes necesidades analíticas del negocio:
1. Analizar los costos de los productos a través del tiempo según su categoría, e identificar el porcentaje de rentabilidad del producto.
2. Identificar el top 3 mensual de vendedores con más ventas realizadas.
3. Identificar el rendimiento de los proveedores a travez del tiempo, segun la marca y producuto
4. Productos más vendidos en fechas festivas e identificar si hubo o no feriado, y si no hubo feriado, indicar la fecha en la cual se realizó el puente del día de descanso.

## Ejecución

Para la ejecución del proyecto, se debe clonar el repositorio y ejecutar los siguientes comandos.
1. python data_start.py
2. python gen_data.py
3. python etl_start.py