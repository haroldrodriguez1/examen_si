// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class Pregunta {
  String enunciado;
  List<String> opciones;
  String respuestaCorrecta;
  String
      tipo; // "completacion", "enumeracion", "vf", "breve", "seleccion_multiple"
  int respuestasEsperadas;

  Pregunta(this.enunciado, this.opciones, this.respuestaCorrecta, this.tipo,
      {this.respuestasEsperadas = 1});
}

class PreguntasProviderGrecia with ChangeNotifier {
  List<Pregunta> _preguntas = [
    // Preguntas de Completación
    Pregunta(
      'Power BI consta de:',
      [],
      '1. Aplicación de Windows\n2. Servicio SaaS\n3. Aplicaciones móviles\n4. Power BI Report Server',
      'enumeracion',
      respuestasEsperadas: 4,
    ),
    Pregunta(
      'Roles de los usuarios Power BI',
      [],
      '1. Consumidor\n2. Diseñador\n3. Administrador\n4. Desarrollador',
      'enumeracion',
      respuestasEsperadas: 4,
    ),

    Pregunta(
        'En Power BI, el término _______ hace referencia a las aplicaciones, los paneles y los informes.',
        [],
        'contenido',
        'completacion'),

    Pregunta('Conjunto de iconos que cuentan una historia.', [], 'paneles',
        'completacion'),

    Pregunta('Elementos gráficos de objetos que representa la información.', [],
        'informes', 'completacion'),

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

    Pregunta(' ayudan a unificar los datos provenientes de orígenes dispares',
        [], 'flujos de datos', 'completacion'),

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
      respuestasEsperadas: 5,
    ),

    Pregunta(
      'Hay tres vistas en Power BI:',
      [],
      '1.  Vista de informe\n2.  Vista de datos\n3.  Vista de modelo',
      'enumeracion',
      respuestasEsperadas: 3,
    ),

    Pregunta(
      'Enumere 6 elementos de un informe',
      [],
      '1.  Texto\n2.  Tablas\n3.  Graficos\n4.  Mapas\n5.  Metricas\n6.  Alertas visuales y automaticas',
      'enumeracion',
      respuestasEsperadas: 3,
    ),

    Pregunta(
      'Tipos de Metricas',
      [],
      '1.  leading\n2.  lagging',
      'enumeracion',
      respuestasEsperadas: 2,
    ),
    Pregunta(
      'Para elegir un grafico es necesario seguir un proceso sistematico a traves de una serie de preguntas',
      [],
      '1.  Que se desea mostrar?\n2.  Cuantas variables tenemos?\n3. Es estatico o cambia en el tiempo?',
      'enumeracion',
      respuestasEsperadas: 3,
    ),
    Pregunta(
      'El ciclo de vida de un informe se compone de las siguientes etapas',
      [],
      '1.  Identificar\n2.  Medir\n3. Revisar\n4.  Crear\n5.  Recopilar\n6. Mejorar',
      'enumeracion',
      respuestasEsperadas: 6,
    ),
    Pregunta(
      'El uso del grafico va a depender del tipo de dato, que podemos clasificar en:',
      [],
      '1.  cualitativo\n2.  cuantitativo',
      'enumeracion',
      respuestasEsperadas: 2,
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

    Pregunta('Que son los Paneles', [],
        'Conjunto de iconos que cuentan una historia.', 'completacion'),

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
    Pregunta(
        '¿Qué tipo de grafico se necesita para representar graficamente en un eje cartesiano de las frecuencias de una variable cualitativa o discreta?',
        [
          'Gráfico de barras',
          'Gráfico de líneas',
          'Histograma',
          'Mapa de calor'
        ],
        'Gráfico de barras',
        'seleccion_multiple'),

    Pregunta(
        '¿Qué tipo de grafico se necesita para representar las frecuencias de una variable cuantitativa continua?',
        [
          'Gráfico de barras',
          'Gráfico de líneas',
          'Histograma',
          'Mapa de calor'
        ],
        'Histograma',
        'seleccion_multiple'),

    Pregunta(
        '¿Qué tipo de grafica se necesita para la representacion grafica en un eje cartesiano de la relacion que existe entre 2 variables?',
        [
          'Gráfico de barras',
          'Gráfico de líneas',
          'Histograma',
          'Mapa de calor'
        ],
        'Gráfico de líneas',
        'seleccion_multiple'),

    Pregunta(
        'Grafico de barras vertical ordenado por frecuencias de forma descendente que identifica y da un orden y prioridad a los datos',
        [
          'Gráfico de barras',
          'Gráfico de líneas',
          'Grafico de Pareto',
          'Mapa de calor'
        ],
        'Grafico de Pareto',
        'seleccion_multiple'),

    Pregunta(
        'Grafico que es una representacion circular de las frecuencias relativas de una variable cualitativa o discreta que permite de una manera sencilla y rapida, su comparacion',
        [
          'Gráfico de dispersoin',
          'Gráfico de líneas',
          'Grafico de Sectores',
          'Mapa de calor'
        ],
        'Grafico de Sectores',
        'seleccion_multiple'),

    Pregunta(
        'Grafico que representa mediante figuras o simbolos las frecuencias de una variable cualitativa o discreta',
        [
          'Gráfico de Sectores',
          'Gráfico de burbujas',
          'Grafico de Pareto',
          'Pictograma'
        ],
        'Pictograma',
        'seleccion_multiple'),

    Pregunta(
        'Grafico que muestra en un eje cartesiano la relacion que existe entre dos variables e informa del grado de correlacion entre ellas',
        [
          'Gráfico de Sectores',
          'Gráfico de dispersion',
          'Grafico de Pareto',
          'Mapa de calor'
        ],
        'Grafico de dispersion',
        'seleccion_multiple'),

    Pregunta(
        'Un Cartograma es:',
        [
          'Un mapa en el que se presentan datos por regiones bien poniendo el numero o bien coloreando las distintas zonas en funcion del dato que represetan',
          'Un tipo de grafico que normalmente es usado para comprender como un valor inicial se ve afectado por una serie de cambios intermedios positivos y negativos',
          'Es un tipo de grafico que utiliza los cuartiles para representar un conjunto de datos',
          'es una representacion grafica de los datos donde los valores individuales contenidos en una matriz se representan como colores'
        ],
        'Un mapa en el que se presentan datos por regiones bien poniendo el numero o bien coloreando las distintas zonas en funcion del dato que represetan',
        'seleccion_multiple'),

    Pregunta(
        'Un Grafico en cascada es:',
        [
          'Un mapa en el que se presentan datos por regiones bien poniendo el numero o bien coloreando las distintas zonas en funcion del dato que represetan',
          'Un tipo de grafico que normalmente es usado para comprender como un valor inicial se ve afectado por una serie de cambios intermedios positivos y negativos',
          'Es un tipo de grafico que utiliza los cuartiles para representar un conjunto de datos',
          'es una representacion grafica de los datos donde los valores individuales contenidos en una matriz se representan como colores'
        ],
        'Un tipo de grafico que normalmente es usado para comprender como un valor inicial se ve afectado por una serie de cambios intermedios positivos y negativos',
        'seleccion_multiple'),

    Pregunta(
        'Un Diagrama de caja es:',
        [
          'Un mapa en el que se presentan datos por regiones bien poniendo el numero o bien coloreando las distintas zonas en funcion del dato que represetan',
          'Un tipo de grafico que normalmente es usado para comprender como un valor inicial se ve afectado por una serie de cambios intermedios positivos y negativos',
          'Es un tipo de grafico que utiliza los cuartiles para representar un conjunto de datos',
          'es una representacion grafica de los datos donde los valores individuales contenidos en una matriz se representan como colores'
        ],
        'Es un tipo de grafico que utiliza los cuartiles para representar un conjunto de datos',
        'seleccion_multiple'),

    Pregunta(
        'Un Mapa de Calor es:',
        [
          'Un mapa en el que se presentan datos por regiones bien poniendo el numero o bien coloreando las distintas zonas en funcion del dato que represetan',
          'Un tipo de grafico que normalmente es usado para comprender como un valor inicial se ve afectado por una serie de cambios intermedios positivos y negativos',
          'Es un tipo de grafico que utiliza los cuartiles para representar un conjunto de datos',
          'es una representacion grafica de los datos donde los valores individuales contenidos en una matriz se representan como colores'
        ],
        'es una representacion grafica de los datos donde los valores individuales contenidos en una matriz se representan como colores',
        'seleccion_multiple'),

    Pregunta(
        'Tipos de Informes',
        ['Estaticos', 'Parametricos', 'Ad hoc', 'Todas son correctas'],
        'Todas son correctas',
        'seleccion_multiple'),

    Pregunta(
        '¿Qué es un indicador clave de rendimiento (KPI)?',
        [
          'Una medida que se utiliza para medir el éxito de un objetivo',
          'Una meta que se quiere alcanzar',
          'Una estrategia que se implementa',
          'Un proceso que se realiza'
        ],
        'Una medida que se utiliza para medir el éxito de un objetivo',
        'seleccion_multiple'),

    Pregunta(
        '¿Qué es un indicador de metas (KGI)?',
        [
          'Una medida que se utiliza para medir el éxito de un objetivo',
          'Definen mediciones para informar a la Direccion General si un proceso ha alcanzado sus requisitos',
          'Una estrategia que se implementa',
          'Un proceso que se realiza'
        ],
        'Definen mediciones para informar a la Direccion General si un proceso ha alcanzado sus requisitos',
        'seleccion_multiple'),
  ];

  List<Pregunta> get preguntas => _preguntas;
}

class PreguntasProviderCADAN with ChangeNotifier {
  List<Pregunta> _preguntas = [
    // Preguntas de Completación
    Pregunta(
      'Los tipos de registros que están normalmente disponibles son :',
      [],
      '1.Registros de datos  \n2.  Registros de dirección.  \n3.Códigos de condición. ',
      'enumeracion',
      respuestasEsperadas: 3,
    ),

    Pregunta(
      'Los registros de dirección pueden ser en si mismos de propósito general o pueden estar dedicados a una forma o modo particular de direccionamiento de memoria. Mencione algunos ejemplos:',
      [],
      '1.Registro índice  \n2. Puntero de segmento. \n3.Puntero de pila.  ',
      'enumeracion',
      respuestasEsperadas: 3,
    ),

    /*  Pregunta(
      '',
      [],
      '1. \n2. \n3. \n4. ',
      'enumeracion',
      respuestasEsperadas: 4,
    ),

    Pregunta('', [], '', 'completacion'),

    Pregunta('', [], '', 'completacion'),*/

    Pregunta(
        'La Memoria de alta velocidad, tiene un bajo precio y un tamaño elevado ',
        ['Verdadero', 'Falso'],
        'Falso, Tiene un precio elevado y tamaño reducido',
        'vf'),

    Pregunta(
        'La memoria de la computadora se organiza en forma de una jerarquía. ',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        'En la jerarquía se utilizan memorias temporales de baja capacidad y baja velocidad ',
        ['Verdadero', 'Falso'],
        'Falso, se utilizan memorias temporales de alta capacidad y baja velocidad',
        'vf'),

    Pregunta(
        ' Un procesador incluye un conjunto de registros que proporcionan un tipo de memoria que es más rápida y de menor capacidad que la memoria principal. ',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        'Los registros de control y Estado permiten al programador en lenguaje máquina o ensamblador minimizar las referencias a memoria principal, optimizando el uso de registros. ',
        ['Verdadero', 'Falso'],
        'Falso, Son los registros visibles para el usuario',
        'vf'),

    Pregunta(
        ' Los registros de control y Estado son usados por el procesador para controlar su operación y por rutinas privilegiadas del sistema operativo para controlar la ejecución de programas. ',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        ' En algunas máquinas, una llamada a una subprotina o un procedimiento implica salvar automáticamente todos los registros visibles para el usuario que se restaurarán al retornar',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        'En los registros de control y Estado, un contador de programa PC contiene la dirección de la siguiente instrucción de máquina. ',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        ' En los registros de control y Estado, un puntero de pila SP contiene la instrucción en curso de ejecución ',
        ['Verdadero', 'Falso'],
        'Falso esta definición pertenece al registro de instrucción RI, La definición para el puntero de pila SP es contiene la dirección de la cabecera de la pila. ',
        'vf'),

    Pregunta(
        ' ¿Un registro de Estado contiene los bits siguientes 1.bits de Estado aritméticos 2.Bits de nivel de ejecución 3.Bits de control de interrupciones. ',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        'Un registro de identificador de espacio de Direccionamiento RIED. Identifica el espacio del mapa de memoria que puede utilizar el programa en ejecución. ',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        'El propósito de la memoria caché es proporcionar un tiempo de acceso a memoria próximo al de las memorias más rápidas disponibles. ',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta('La memoria principal almacena datos y programas.  ',
        ['Verdadero', 'Falso'], 'Verdadero', 'vf'),

    Pregunta(
        'En Una memoria secundaria situada fuera del propio computador  El procesador puede accederla directamente. ',
        ['Verdadero', 'Falso'],
        'Falso, El procesador no. Puede acceder directamente, primero debe copiarse a la memoria principal. El disco y la cinta son ejemplos de este tipo de memoria. ',
        'vf'),

    Pregunta(
        'En un sistema sin memoria virtual, el sistema operativo divide la memoria principal en trozos ',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        'La memoria virtual utiliza solo un nivel de la jerarquía, que es la memoria principal. ',
        ['Verdadero', 'Falso'],
        'Falso, utiliza dos niveles de jerarquía, la memoria principal y una memoria de respaldo. ',
        'vf'),

    Pregunta(
        'En hardware de gestión de memoria MMU usa dos tablas de páginas, una tabla de páginas de usuario y una tabla de páginas del sistema. ',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        'El fenómeno fragmentación interna implica que por cada proceso se desperdiciará en término medio, la mitad de una página',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        'Se denominan páginas virtuales a las páginas del espacio virtual. ',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        'Se denominan páginas de intercambio. A las páginas residentes en el disco ',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    Pregunta(
        'Se denominan Marcos de página a los espacios en los que se dividen la memoria principal. ',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),

    // Pregunta('', ['Verdadero', 'Falso'], 'Falso', 'vf'),

    Pregunta(
        'Los registros de datos contienen direcciones de memoria principal de datos e instrucciones o una parte de la dirección que se utiliza en el cálculo de la dirección efectiva completa. ',
        ['Verdadero', 'Falso'],
        'Falso, Esta Definición pertenece a los registros De dirección. ',
        'vf'),

    Pregunta(
        'Los registros del procesador sirven para dos funciones ',
        [
          'A. Registros visibles para el usuario ',
          'B. Registros de control y Estado. ',
          'C.Registros Del hardware. ',
          'Todas Las Anteriores',
          'A y B',
          'A y C'
        ],
        'A y B',
        'seleccion_multiple'),

    Pregunta(
        'Hay que afrontar aspectos de diseño similares al tratar el diseño de memoria virtual y de la caché de discos y se divide en las siguientes categorías: ',
        [
          ' Tamaño de la caché ',
          'Tamaño del bloque ',
          'Función de correspondencia ',
          'Algoritmo de reemplazo ',
          'Política de escritura.',
          'Para. A y B son correctas. ',
          'Todas son correctas. '
        ],
        'Todas son correctas',
        'seleccion_multiple'),

    Pregunta(
        'Se trata de la tabla que permite conocer que Marcos están libres y cuáles están ocupados.  ',
        [
          'Tabla de Marcos de página.',
          'Tabla de gestión. ',
          'Tabla de control. ',
          'Tabla de valorizaciones. '
        ],
        'Tabla de Marcos de página ',
        'seleccion_multiple'),
  ];

  List<Pregunta> get preguntas => _preguntas;
}

class PreguntasProvider with ChangeNotifier {
  List<Pregunta> _preguntas = [
    Pregunta('Los microcontroladores AVR incluyen un procesador RISC de 8 bits',
        ['Verdadero', 'Falso'], 'Verdadero', 'vf'),
    Pregunta(
        'La arquitectura de los microcontroladores AVR es del tipo Von Neumann.',
        ['Verdadero', 'Falso'],
        'Falso, son del tipo Hardvard',
        'vf'),
    Pregunta(
        'Los microcontroladores AVR se basan en un núcleo cuya arquitectura fue diseñada por All-Joseph  y Charles Mcgill,',
        ['Verdadero', 'Falso'],
        'Falso, la arquitectura fue diseñada por Alf-Egil Bogen y Vegard Wollan',
        'vf'),
    Pregunta('El ATMega8 incluye 3 puertos, 2 de 8 bits y 1 de 7 bits',
        ['Verdadero', 'Falso'], 'Verdadero', 'vf'),
    Pregunta('el ATMega16 contiene 4 puertos, todos de 6 bits.',
        ['Verdadero', 'Falso'], 'Falso, sus 4 puertos son de 8 Bits', 'vf'),
    Pregunta(
        'La principal función de la CPU es asegurar la correcta ejecución de programas.',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    Pregunta(
        'El flujo del programa por naturaleza es secuencial, con incrementos automáticos del PC.',
        ['Verdadero', 'Falso'],
        'Falso, el flujo si es secuencial',
        'vf'),
    Pregunta(
        'En la SRAM se tienen tres espacios diferentes en un mapa con direccionamiento lineal',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    Pregunta(
        'El Apuntador de Pila (SP) es un registro de 16 bits que forma parte de los Registros.I/O y que contiene la dirección del tope de la pila.',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    Pregunta(
        'Para la sincronización de los microcontroladores ATMega8 y ATMega16 se tienen diferentes fuentes de reloj, la selección se realiza por medio de un multiplexor.',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    Pregunta('Un ATMega8 tiene 5 modos de reposo y un ATMega16 tiene 6.',
        ['Verdadero', 'Falso'], 'Verdadero', 'vf'),
    Pregunta(
        ' En los modos de bajo consumo el Modo de ahorro de potencia: sólo se tiene al reloj asíncrono, con su correspondiente oscilador',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    Pregunta(
        ' En los modos de bajo consumo el Modo de espera: similar al modo de baja potencia, la única diferencia es que en este modo se mantiene el suministro del reloj principa',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    Pregunta(
        'En los modos de bajo consumo el Modo de espera extendido: similar al modo de ahorro de potencia, la única diferencia es que en este modo también está activo el suministro del reloj principal.',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    Pregunta(
        'Es la unidad central de procesamiento (CPU), es decir, es el hardware encargado de la captura, decodificación y ejecución de instrucciones.',
        [],
        'Nucleo AVR',
        'completacion'),
    Pregunta(
        'El archivo de registros contiene ______ registros de ___ bits de propósito general.',
        [],
        '32 registros de 8 Bits...',
        'completacion'),
    Pregunta(
        'es un espacio continuo de memoria Flash cuyo tamaño varía entre los miembros de la familia AVR, para el ATMega8 es de 8 KB y para el ATMega16 es de 16 KB',
        [],
        'Memoria de Programa',
        'completacion'),
    Pregunta(
        'Los microcontroladores incluyen dos espacios con tecnologías diferentes: __________________________, para el almacenamiento de variables o datos volátiles, y ____________________, para aquellos datos que se quieren preservar aun en ausencia de energía.',
        [],
        'un espacio de SRAM de 1120 bytes..... y un espacio de EEPROM de 512 bytes',
        'completacion'),
    Pregunta(
        ' se utilizan para definir la configuración, realizar el control o monitorear el estado de los recursos internos.',
        [],
        'Registros I/O',
        'completacion'),
    Pregunta(
        'es parte de los Registros I/O. Este registro es importante debido a que refleja el estado de la CPU y no de algún recurso específico.',
        [
          'A. Apuntador de Pila',
          'B. Registro de Estado. ',
          'C.Registros Del hardware. ',
          'Registro I/O',
          'ESPACIO DE EEPROM',
        ],
        'Registro de Estado',
        'seleccion_multiple'),
    Pregunta(
        'El espacio de propósito general queda disponible para:',
        [
          'Variables Simples',
          'Variables Compuestas ',
          'Para La Pila de datos temporales',
          'Todas son Correctas'
        ],
        'Todas son Correctas',
        'seleccion_multiple'),
    Pregunta(
        'En los microcontroladores AVR se tienen diferentes fuentes de Interrupción:',
        [
          'Una interrupción por inicialización o Reset.',
          ' Dos interrupciones externas (tres en el ATMega16).',
          'Siete interrupciones por los temporizadores (ocho en el ATMega16), pueden ser por comparación, captura o desbordamiento. ',
          'Todas son Correctas'
        ],
        'Todas son Correctas',
        'seleccion_multiple'),
    Pregunta(
        'Si en un programa se utilizan las interrupciones, se requiere:',
        [
          ' Configurar el recurso o recursos para monitorear el evento o eventos',
          ' Habilitar a la interrupción o interrupciones',
          ' Continuar con la ejecución normal de la aplicación',
          'Todas son Correctas'
        ],
        'Todas son Correctas',
        'seleccion_multiple'),
    Pregunta(
        'Una causa o causas de inicialización de Reset es:',
        [
          'A. Reset Externo',
          'B. Reset por Watchdog',
          'C. Reset por contaminación electromagnética',
          'D. Full Moon Influence Reset',
          'E. UFO Sighting Reset',
          'A y B',
          'A y D'
        ],
        'A y B, las causas serian  Reset de Encendido (Power-on Reset)• Reset Externo • Reset por Watchdog• Reset por reducción de voltaje (Brown out)• Reset por JTAG ',
        'seleccion_multiple'),
    /* Pregunta(
        '',
        [
          '',
          ' ',
          ' ',
        ],
        '',
        'seleccion_multiple'),*/
    Pregunta(
        ' es un espacio para el almacenamiento temporal de variables, el cual está implementado dentro de la SRAM de propósito general.',
        [],
        'La Pila',
        'completacion'),
    Pregunta(
        'es un espacio no volátil para el almacenamiento de datos, cuyo tamaño varía en los diferentes integrantes de la familia AVR.',
        [],
        'La EEPROM',
        'completacion'),
    Pregunta(
      'Una memoria de cualquier tipo requiere de 3 buses para su manejo:',
      [],
      '1.  Un bus de datos  \n2.  Un bus de direcciones   \n3. Un bus de control ',
      'enumeracion',
      respuestasEsperadas: 3,
    ),
    Pregunta(
      'Las señales de reloj son:',
      [],
      '1.  clkCPU  \n2.   clkFLASH   \n3. clkADC \n4.  clkI/O \n5. clkASY',
      'enumeracion',
      respuestasEsperadas: 5,
    ),
    Pregunta(
        'proporcionan el mecanismo por medio del cual un microcontrolador se comunica con su entorno.',
        [],
        'Puertos de entrada/salida',
        'completacion'),
    Pregunta(
      'Para el manejo de cada puerto se requiere de 3 registros del espacio de Registros I/O, éstos son:',
      [],
      '1. PORTx   \n2. DDRx    \n3. PINx ',
      'enumeracion',
      respuestasEsperadas: 3,
    ),
    /* Pregunta(
      '',
      [],
      '1.    \n2.     \n3. ',
      'enumeracion',
      respuestasEsperadas: 3,
    ),*/
    Pregunta(
        'es la ocurrencia de un evento producido por algún recurso del microcontrolador, que ocasiona la suspensión temporal del programa principal.',
        [],
        'Una Interrupcion',
        'completacion'),
    Pregunta(
        'La _____________ o ________________ de un microcontrolador es fundamental para su operación adecuada, porque garantiza que sus registros internos van a tener un valor inicial conocido.',
        [],
        'inicialización o Reset',
        'completacion'),
    Pregunta(
        ' permiten el ahorro de energía al “apagar” módulos de un MCU, cuyo uso no es requerido en un sistema',
        [],
        'modos de bajo consumo',
        'completacion'),
    Pregunta(
        'En este modo de bajo consumo todos los recursos del MCU trabajan, pero la CPU no ejecuta instrucciones porque no tienen señal de reloj.',
        [],
        'Modo Ocioso',
        'completacion'),
    Pregunta(
        ' En este modo de bajo consumo únicamente trabaja el ADC y el oscilador asíncrono para el temporizador 2.',
        [],
        'Modo de reducción de ruido en el ADC',
        'completacion'),
    Pregunta(
        'En este modo de bajo consumo no hay reloj en los módulos de recursos y tampoco están activas las fuentes de oscilación, por lo tanto, es el modo con el menor consumo de energía',
        [],
        'Modo de baja potencia',
        'completacion'),
  ];

  List<Pregunta> get preguntas => _preguntas;
}
