// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class Pregunta {
  String enunciado;
  List<String> opciones;
  String respuestaCorrecta;
  String tipo; // "completacion", "enumeracion", "vf", "breve", "seleccion_multiple"
  int respuestasEsperadas;

  Pregunta(this.enunciado, this.opciones, this.respuestaCorrecta, this.tipo, {this.respuestasEsperadas = 1});
}

class PreguntasProvider with ChangeNotifier {
  List<Pregunta> _preguntas = [
    // Preguntas de Completación
    Pregunta(
      'Power BI consta de:',
      [],
      '1. Aplicación de Windows\n2. Servicio SaaS\n3. Aplicaciones móviles\n4. Power BI Report Server',
      'enumeracion',
      respuestasEsperadas:4 ,
    ),
    Pregunta(
      'Roles de los usuarios Power BI',
      [],
      '1. Consumidor\n2. Diseñador\n3. Administrador\n4. Desarrollador',
      'enumeracion',
      respuestasEsperadas:4 ,
    ),

    

    Pregunta(
        'En Power BI, el término _______ hace referencia a las aplicaciones, los paneles y los informes.',
        [],
        'contenido',
        'completacion'),

        Pregunta(
        'Conjunto de iconos que cuentan una historia.',
        [],
        'paneles',
        'completacion'),

        Pregunta(
        'Elementos gráficos de objetos que representa la información.',
        [],
        'informes',
        'completacion'),

        Pregunta(
        'Empaquetado de un conjunto de informes y paneles para la distribución a un grupo grande de usuarios',
        [],
        'aplicaciones',
        'completacion'),

        Pregunta(
        ' son las colecciones de datos que se han importado desde las diversas fuentes y que tienen relación entre ellos.',
        [],
        'conjuntos de datos',
        'completacion'),

        Pregunta(
        ' son un conjunto de datos especial, usado cuando se conecta (no se importa) a un archivo Excel.',
        [],
        'los libros',
        'completacion'),

        Pregunta(
        ' ayudan a unificar los datos provenientes de orígenes dispares',
        [],
        'flujos de datos',
        'completacion'),

        Pregunta(
        'es una aplicación gratuita que se puede instalar en el equipo local y que le permite conectarse a los datos, transformarlos y visualizarlos.',
        [],
        'power BI desktop',
        'completacion'),

        Pregunta(
      'Los usos más comunes de Power BI Desktop son los siguientes:',
      [],
      '1.  Conectar a datos\n2. Transformar y limpiar datos\n3. Crear objetos visuales\n4. Crear informes que son colecciones de objetos visuales\n5. Compartir informes con otros usuarios mediante el servicio Power BI',
      'enumeracion',
      respuestasEsperadas:5 ,
    ),

    Pregunta(
      'Hay tres vistas en Power BI:',
      [],
      '1.  Vista de informe\n2.  Vista de datos\n3.  Vista de modelo',
      'enumeracion',
      respuestasEsperadas:3 ,
    ),

      Pregunta(
      'Enumere 3 elementos de un informe',
      [],
      '1.  Texto\n2.  Tablas\n3.  Graficos',
      'enumeracion',
      respuestasEsperadas:3 ,
    ),

    Pregunta(
      'Tipos de Metricas',
      [],
      '1.  leading\n2.  lagging',
      'enumeracion',
      respuestasEsperadas:2 ,
    ),
Pregunta(
      'Para elegir un grafico es necesario seguir un proceso sistematico a traves de una serie de preguntas',
      [],
      '1.  Que se desea mostrar?\n2.  Cuantas variables tenemos?\n3. Es estatico o cambia en el tiempo?',
      'enumeracion',
      respuestasEsperadas:3 ,
    ),
    Pregunta(
      'El ciclo de vida de un informe se compone de las siguientes etapas',
      [],
      '1.  Identificar\n2.  Medir\n3. Revisar\n4.  Crear\n5.  Recopilar\n6. Mejorar',
      'enumeracion',
      respuestasEsperadas:6 ,
    ),
    Pregunta(
      'El uso del grafico va a depender del tipo de dato, que podemos clasificar en:',
      [],
      '1.  cualitativo\n2.  cuantitativo',
      'enumeracion',
      respuestasEsperadas:2 ,
    ),

        Pregunta(
        'significa Expresiones de análisis de datos y es el lenguaje de fórmulas usado en Power BI.',
        [],
        'DAX',
        'completacion'),

        Pregunta(
        'Se entiende por _____ la representacion visual de una serie de datos',
        [],
        'grafico',
        'completacion'),

              Pregunta(
        'Que son los Paneles',
        [],
        'Conjunto de iconos que cuentan una historia.',
        'completacion'),

                 Pregunta(
        'Que son los Informes',
        [],
        'Elementos gráficos de objetos que representa la información.',
        'completacion'),

                  Pregunta(
        'Que son las Aplicaciones ',
        [],
        'Empaquetado de un conjunto de informes y paneles para la distribución a un grupo grande de usuarios',
        'completacion'),

              Pregunta(
        ' Que son los conjuntos de Datos',
        [],
        'son las colecciones de datos que se han importado desde las diversas fuentes y que tienen relación entre ellos.',
        'completacion'),


       Pregunta(
        'Que son los libros  ',
        [],
        'son un conjunto de datos especial, usado cuando se conecta (no se importa) a un archivo Excel.',
        'completacion'),


               Pregunta(
        ' Que son los Flujos de Datos',
        [],
        'ayudan a unificar los datos provenientes de orígenes dispares',
        'completacion'),


               Pregunta(
        ' ',
        [],
        '',
        'completacion'),



               Pregunta(
        ' ',
        [],
        '',
        'completacion'),
        Pregunta(
        'Power BI Desktop es una herramienta completa de creación de informes y análisis de datos que se instala en el equipo local. (V/F)',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        'Un informe es un documento por medio del cual se presentan los resultados de uno o varios procesos de negocio. (V/F)',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
        Pregunta(
          'se entiende por plataforma de reporting aquellas soluciones que permiten diseñar y gestionar informes en el contexto de una organizacion o una de sus areas',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    

    // Preguntas para el Diseño de Informes
    Pregunta('¿Qué tipo de grafico se necesita para representar graficamente en un eje cartesiano de las frecuencias de una variable cualitativa o discreta?',
        ['Gráfico de barras', 'Gráfico de líneas', 'Histograma', 'Mapa de calor'],
        'Gráfico de barras', 'seleccion_multiple'),

      

        Pregunta('¿Qué tipo de grafico se necesita para representar las frecuencias de una variable cuantitativa continua?',
        ['Gráfico de barras', 'Gráfico de líneas', 'Histograma', 'Mapa de calor'],
        'Histograma', 'seleccion_multiple'),

        Pregunta('¿Qué tipo de grafica se necesita para la representacion grafica en un eje cartesiano de la relacion que existe entre 2 variables?',
        ['Gráfico de barras', 'Gráfico de líneas', 'Histograma', 'Mapa de calor'],
        'Gráfico de líneas', 'seleccion_multiple'),

        Pregunta('Grafico de barras vertical ordenado por frecuencias de forma descendente que identifica y da un orden y prioridad a los datos',
        ['Gráfico de barras', 'Gráfico de líneas', 'Grafico de Pareto', 'Mapa de calor'],
        'Grafico de Pareto', 'seleccion_multiple'),

       



        Pregunta('Tipos de Informes',
        ['Estaticos', 'Parametricos', 'Ad hoc', 'Todas son correctas'],
        'Todas son correctas', 'seleccion_multiple'),






    Pregunta('¿Qué es un indicador clave de rendimiento (KPI)?',
        ['Una medida que se utiliza para medir el éxito de un objetivo', 'Una meta que se quiere alcanzar', 'Una estrategia que se implementa', 'Un proceso que se realiza'],
        'Una medida que se utiliza para medir el éxito de un objetivo', 'seleccion_multiple'),

      Pregunta('¿Qué es un indicador de metas (KGI)?',
        ['Una medida que se utiliza para medir el éxito de un objetivo', 'Definen mediciones para informar a la Direccion General si un proceso ha alcanzado sus requisitos', 'Una estrategia que se implementa', 'Un proceso que se realiza'],
        'Definen mediciones para informar a la Direccion General si un proceso ha alcanzado sus requisitos', 'seleccion_multiple'),

  ];

  List<Pregunta> get preguntas => _preguntas;
}
