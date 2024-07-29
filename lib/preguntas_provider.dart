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
    Pregunta(
    "¿Qué es la minería de datos?",
    ["Un proceso de recopilación de datos brutos", "Una técnica para transformar datos en bruto en conocimiento práctico", "El almacenamiento de datos en grandes bases de datos", "Un método para visualizar datos a través de gráficos"],
    "Una técnica para transformar datos en bruto en conocimiento práctico",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Cuál es el objetivo principal de la minería de datos?",
    ["Extraer datos de diferentes fuentes", "Descubrir patrones y relaciones ocultas en grandes conjuntos de datos", "Guardar datos en un almacenamiento de datos", "Analizar datos mediante gráficos y tablas"],
    "Descubrir patrones y relaciones ocultas en grandes conjuntos de datos",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué significa el término 'minería de datos'?",
    ["Extraer datos brutos", "Buscar significado o conocimiento valioso en datos existentes", "Recopilar datos de diferentes orígenes", "Transformar datos en gráficos y tablas"],
    "Buscar significado o conocimiento valioso en datos existentes",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Cuál es el primer paso en el proceso habitual de minería de datos?",
    ["Almacenamiento de datos", "Recopilación de datos", "Análisis de datos", "Minería de datos"],
    "Recopilación de datos",
    "seleccion_multiple",
  ),
  Pregunta(
    "En el proceso de minería de datos, ¿qué implica la fase de almacenamiento de datos?",
    ["Guardar datos en una gran base de datos o almacenamiento de datos", "Capturar datos de diversas fuentes", "Procesar y analizar los datos con programas complejos", "Transformar datos en bruto en conocimiento útil"],
    "Guardar datos en una gran base de datos o almacenamiento de datos",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué se realiza durante la fase de análisis de datos?",
    ["Recopilar datos de diferentes fuentes", "Limpiar, integrar y dar formato a los datos", "Procesar, almacenar y analizar datos mediante software y algoritmos", "Generar informes de inteligencia empresarial"],
    "Procesar, almacenar y analizar datos mediante software y algoritmos",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué implica la fase de preparación de datos en la minería de datos?",
    ["Limpiar, integrar y dar formato a los datos", "Analizar patrones ocultos en los datos", "Almacenar datos en una base de datos centralizada", "Entrenar modelos de machine learning"],
    "Limpiar, integrar y dar formato a los datos",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué se busca en la fase de modelado de datos en minería de datos?",
    ["Entrenar modelos de machine learning y analizar resultados", "Recopilar y almacenar datos", "Limpiar y dar formato a los datos", "Evaluar la calidad de los datos"],
    "Entrenar modelos de machine learning y analizar resultados",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué se evalúa durante la fase de evaluación en minería de datos?",
    ["Los datos brutos recopilados", "La calidad de los modelos y su alineación con los objetivos empresariales", "La forma en que los datos son almacenados", "La preparación de los datos para el modelado"],
    "La calidad de los modelos y su alineación con los objetivos empresariales",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué ocurre en la fase de implementación del proceso de minería de datos?",
    ["El modelo es utilizado para generar inteligencia empresarial", "Los datos son limpios y preparados", "Se entrenan modelos de machine learning", "Se recopilan datos de diferentes fuentes"],
    "El modelo es utilizado para generar inteligencia empresarial",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué técnica de minería de datos busca encontrar relaciones entre dos conjuntos de datos diferentes?",
    ["Clasificación", "Agrupación en clústeres", "Minería de reglas de asociación", "Análisis de secuencias y trayectorias"],
    "Minería de reglas de asociación",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Cuál es la técnica que clasifica datos en diferentes categorías utilizando métodos estadísticos?",
    ["Agrupación en clústeres", "Minería de reglas de asociación", "Clasificación", "Análisis de secuencias y trayectorias"],
    "Clasificación",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué técnica de minería de datos agrupa puntos de datos basándose en sus similitudes?",
    ["Minería de reglas de asociación", "Clasificación", "Agrupación en clústeres", "Análisis de secuencias y trayectorias"],
    "Agrupación en clústeres",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué técnica de minería de datos busca patrones en secuencias de eventos o valores que conducen a otros eventos?",
    ["Clasificación", "Agrupación en clústeres", "Minería de reglas de asociación", "Análisis de secuencias y trayectorias"],
    "Análisis de secuencias y trayectorias",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué es la minería de procesos?",
    ["Una técnica para encontrar patrones en datos textuales", "Un método para detectar y mejorar procesos empresariales mediante el análisis de registros de eventos", "Una técnica para clasificar datos en categorías específicas", "Un proceso para predecir tendencias basadas en datos históricos"],
    "Un método para detectar y mejorar procesos empresariales mediante el análisis de registros de eventos",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué implica la minería de textos?",
    ["Automatizar el descubrimiento de conocimientos en textos escritos como correos electrónicos y artículos", "Agrupar datos en clústeres basándose en similitudes", "Predecir tendencias futuras basadas en datos históricos", "Encontrar relaciones entre conjuntos de datos diferentes"],
    "Automatizar el descubrimiento de conocimientos en textos escritos como correos electrónicos y artículos",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué hace la minería predictiva?",
    ["Estudia el impacto de decisiones empresariales futuras para elegir las opciones más eficaces", "Agrupa puntos de datos similares", "Encuentra patrones en secuencias de eventos", "Clasifica datos en diferentes categorías"],
    "Estudia el impacto de decisiones empresariales futuras para elegir las opciones más eficaces",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Cuál es la primera fase del proceso CRISP-DM?",
    ["Comprensión del negocio", "Comprensión de los datos", "Preparación de los datos", "Modelado de datos"],
    "Comprensión del negocio",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué implica la fase de 'Comprensión de los datos' en CRISP-DM?",
    ["Realizar un análisis preliminar y explorar los datos", "Definir los objetivos de la minería de datos", "Limpiar y dar formato a los datos", "Entrenar modelos de machine learning"],
    "Realizar un análisis preliminar y explorar los datos",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿En qué fase del CRISP-DM se limpia, integra y da formato a los datos?",
    ["Comprensión del negocio", "Comprensión de los datos", "Preparación de los datos", "Modelado de datos"],
    "Preparación de los datos",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué fase del CRISP-DM involucra entrenar y ajustar modelos de machine learning?",
    ["Comprensión del negocio", "Comprensión de los datos", "Preparación de los datos", "Modelado de datos"],
    "Modelado de datos",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Cuál es el objetivo de la fase de 'Evaluación' en CRISP-DM?",
    ["Medir los modelos con respecto a los objetivos empresariales y obtener retroalimentación", "Limpiar y preparar los datos", "Entrenar los modelos de machine learning", "Implementar el modelo en la práctica"],
    "Medir los modelos con respecto a los objetivos empresariales y obtener retroalimentación",
    "seleccion_multiple",
  ),
  Pregunta(
    "¿Qué se hace durante la fase de 'Implementación' en CRISP-DM?",
    ["Utilizar el modelo para generar inteligencia empresarial y entrenar a los usuarios", "Limpiar y dar formato a los datos", "Entrenar modelos de machine learning", "Evaluar la calidad de los modelos"],
    "Utilizar el modelo para generar inteligencia empresarial y entrenar a los usuarios",
    "seleccion_multiple",
  ),
    Pregunta(
        'Xplenty es una plataforma de integración de datos en la nube.',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    Pregunta(
        'Xplenty no ofrece automatización de procesos.',
        ['Verdadero', 'Falso'],
        'Falso, permite programar y automatizar flujos de trabajo de datos.',
        'vf'),
    Pregunta(
        'Dundas BI proporciona información en tiempo real.',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    Pregunta(
        'Teradata es una plataforma cerrada y no admite múltiples almacenes de datos.',
        ['Verdadero', 'Falso'],
        'Falso, es un sistema de gestión de bases de datos de código abierto y admite múltiples almacenes de datos.',
        'vf'),
    Pregunta(
        'Orange Data Mining se desarrolló inicialmente en un lenguaje de programación diferente al Java.',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    Pregunta(
        'WEKA fue desarrollado en la Universidad de Oxford.',
        ['Verdadero', 'Falso'],
        'Falso, fue desarrollado en la Universidad de Waikato.',
        'vf'),
    Pregunta(
        'Revolution es ahora conocido como Microsoft R Open y Microsoft R Server.',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    Pregunta(
        'Xplenty no ofrece integración con múltiples fuentes de datos.',
        ['Verdadero', 'Falso'],
        'Falso, Xplenty ofrece integración con diversas fuentes de datos como bases de datos SQL, NoSQL, y servicios en la nube.',
        'vf'),
    Pregunta(
        'Dundas BI no permite la personalización de tableros de control.',
        ['Verdadero', 'Falso'],
        'Falso, permite crear y personalizar tableros de control.',
        'vf'),
    Pregunta(
        'Teradata fue fundado en la década de 1980.',
        ['Verdadero', 'Falso'],
        'Verdadero',
        'vf'),
    
    // Completion questions
    Pregunta(
        'Xplenty ofrece una interfaz gráfica de usuario que simplifica la creación de flujos de trabajo de _____________.',
        [],
        'integración de datos',
        'completacion'),
    Pregunta(
        'Dundas BI permite crear y personalizar ____________ e ____________.',
        [],
        'tableros de control, informes',
        'completacion'),
    Pregunta(
        'Teradata soporta más de __________ petabytes de datos.',
        [],
        '50',
        'completacion'),
    Pregunta(
        'Orange Data Mining proporciona herramientas para __________ de texto.',
        [],
        'análisis',
        'completacion'),
    Pregunta(
        'WEKA incluye herramientas para el ___________ de datos en los ejes cartesianos.',
        [],
        'visualización',
        'completacion'),
    Pregunta(
        'Revolution permite realizar análisis estadísticos y de minería de datos utilizando el lenguaje de programación ___________.',
        [],
        'R',
        'completacion'),
    Pregunta(
        'Xplenty soporta la integración de datos en tiempo real y por lotes a través de ___________.',
        [],
        'ETL y ELT',
        'completacion'),
    Pregunta(
        'Dundas BI fue adquirido por una empresa llamada ____________.',
        [],
        'Insightsoftware',
        'completacion'),
    Pregunta(
        'Teradata utiliza la tecnología de base de datos ___________ para proporcionar análisis rápidos y escalables.',
        [],
        'paralela',
        'completacion'),
    Pregunta(
        'Orange Data Mining es una herramienta ___________ para el análisis y la visualización de datos.',
        [],
        'open-source',
        'completacion'),
    Pregunta(
        'La primera versión de WEKA fue desarrollada en un front-end __________.',
        [],
        'TCL/TK',
        'completacion'),
    Pregunta(
        'Revolution Analytics fue adquirida por ___________ en 2015.',
        [],
        'Microsoft',
        'completacion'),
    
    // Multiple choice questions
    Pregunta(
        'Una de las principales funciones de Xplenty es:',
        [
          'A. Minería de datos',
          'B. Integración de datos en la nube',
          'C. Visualización de datos',
          'D. Análisis de sentimiento'
        ],
        'B. Integración de datos en la nube',
        'seleccion_multiple'),
    Pregunta(
        'Dundas BI es conocido por:',
        [
          'A. Proveer información en tiempo real',
          'B. Ser una plataforma de minería de datos',
          'C. Soportar múltiples almacenes de datos',
          'D. Ser una herramienta para análisis de texto'
        ],
        'A. Proveer información en tiempo real',
        'seleccion_multiple'),
    Pregunta(
        'Teradata está orientado a:',
        [
          'A. Almacenamiento de datos',
          'B. Análisis de texto',
          'C. Visualización de datos',
          'D. Aprendizaje automático'
        ],
        'A. Almacenamiento de datos',
        'seleccion_multiple'),
    Pregunta(
        'Orange Data Mining fue desarrollado por:',
        [
          'A. Universidad de Oxford',
          'B. Universidad de Ljubljana',
          'C. Universidad de Waikato',
          'D. Universidad de Harvard'
        ],
        'B. Universidad de Ljubljana',
        'seleccion_multiple'),
    Pregunta(
        'WEKA recibió el galardón “Data Mining and Knowledge Discovery Service” en:',
        [
          'A. 2000',
          'B. 2005',
          'C. 2010',
          'D. 2015'
        ],
        'B. 2005',
        'seleccion_multiple'),
    Pregunta(
        'Revolution es ahora parte del ecosistema de herramientas de análisis de datos de:',
        [
          'A. Google',
          'B. IBM',
          'C. Microsoft',
          'D. Amazon'
        ],
        'C. Microsoft',
        'seleccion_multiple'),
    Pregunta(
        'Xplenty es conocido por su capacidad de:',
        [
          'A. Minería de datos',
          'B. Integración de datos y automatización de flujos de trabajo',
          'C. Visualización de datos en tiempo real',
          'D. Análisis de texto'
        ],
        'B. Integración de datos y automatización de flujos de trabajo',
        'seleccion_multiple'),
    Pregunta(
        'Dundas BI permite:',
        [
          'A. Crear informes y tableros de control personalizados',
          'B. Analizar datos de sensores',
          'C. Modelar enfermedades infecciosas',
          'D. Realizar optimización de sistemas'
        ],
        'A. Crear informes y tableros de control personalizados',
        'seleccion_multiple'),
    Pregunta(
        'Teradata es utilizada principalmente para:',
        [
          'A. Almacenamiento de datos y análisis a gran escala',
          'B. Análisis de datos censales',
          'C. Evaluación de programas educativos',
          'D. Modelado de enfermedades infecciosas'
        ],
        'A. Almacenamiento de datos y análisis a gran escala',
        'seleccion_multiple'),
    Pregunta(
        'Orange Data Mining es adecuado para:',
        [
          'A. Análisis exploratorio de datos y aprendizaje automático',
          'B. Integración de datos en la nube',
          'C. Automatización de flujos de trabajo de datos',
          'D. Visualización de datos en tiempo real'
        ],
        'A. Análisis exploratorio de datos y aprendizaje automático',
        'seleccion_multiple'),
    Pregunta(
        'WEKA puede ser utilizado para:',
        [
          'A. Preprocesamiento de datos y clasificación',
          'B. Integración de datos en la nube',
          'C. Análisis predictivo',
          'D. Minería de texto'
        ],
        'A. Preprocesamiento de datos y clasificación',
        'seleccion_multiple'),
    Pregunta(
        'Revolution permite realizar:',
        [
          'A. Análisis estadísticos y minería de datos utilizando R',
          'B. Integración de datos y automatización de flujos de trabajo',
          'C. Visualización de datos en tiempo real',
          'D. Análisis de texto'
        ],
        'A. Análisis estadísticos y minería de datos utilizando R',
        'seleccion_multiple'),
    
    // Enumeration questions
    Pregunta(
      'Las principales funciones de Xplenty incluyen:',
      [],
      '1. Extracción, Transformación y Carga (ETL)  \n2. Integración de Datos en la Nube   \n3. Automatización de Procesos   \n4. Visualización de Datos y Análisis',
      'enumeracion',
      respuestasEsperadas: 4,
    ),
    Pregunta(
      'Aplicaciones de Orange Data Mining:',
      [],
      '1. Análisis exploratorio de datos  \n2. Aprendizaje automático   \n3. Análisis de texto',
      'enumeracion',
      respuestasEsperadas: 3,
    ),
    Pregunta(
      'WEKA contiene herramientas para diferentes tareas básicas:',
      [],
      '1. Reprocesado  \n2. Clasificación   \n3. Agrupación   \n4. Asociación   \n5. Selección de atributos   \n6. Visualización',
      'enumeracion',
      respuestasEsperadas: 6,
    ),
    Pregunta(
      'Áreas de orientación de Revolution:',
      [],
      '1. Análisis predictivo  \n2. Minería de datos   \n3. Estadística avanzada   \n4. Visualización de datos   \n5. Integración y escalabilidad',
      'enumeracion',
      respuestasEsperadas: 5,
    ),
  ];

  List<Pregunta> get preguntas => _preguntas;
}
