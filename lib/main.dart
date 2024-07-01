import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'preguntas_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PreguntasProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExamenPantalla(),
    );
  }
}

class ExamenPantalla extends StatefulWidget {
  @override
  _ExamenPantallaState createState() => _ExamenPantallaState();
}

class _ExamenPantallaState extends State<ExamenPantalla> {
  Map<int, List<String>> respuestas = {};

  @override
  Widget build(BuildContext context) {
    final preguntasProvider = Provider.of<PreguntasProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Examen de Sistemas Inteligentes para Negocios'),
      ),
      body: ListView.builder(
        itemCount: preguntasProvider.preguntas.length,
        itemBuilder: (context, index) {
          final pregunta = preguntasProvider.preguntas[index];
          return ListTile(
            title: Text(pregunta.enunciado),
            subtitle: _buildRespuestaWidget(index, pregunta),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: _calcularResultados,
      ),
    );
  }

  Widget _buildRespuestaWidget(int index, Pregunta pregunta) {
    switch (pregunta.tipo) {
      case 'completacion':
      case 'breve':
        return TextField(
          onChanged: (value) {
            respuestas[index] = [value];
          },
        );
      case 'enumeracion':
        return Column(
          children: List.generate(pregunta.respuestasEsperadas, (i) {
            return TextField(
              onChanged: (value) {
                if (respuestas[index] == null) {
                  respuestas[index] = List.filled(pregunta.respuestasEsperadas, '');
                }
                respuestas[index]![i] = value;
              },
            );
          }),
        );
      case 'vf':
        return Column(
          children: pregunta.opciones.map((opcion) {
            return RadioListTile(
              title: Text(opcion),
              value: opcion,
              groupValue: respuestas[index]?.first,
              onChanged: (value) {
                setState(() {
                  respuestas[index] = [value as String];
                });
              },
            );
          }).toList(),
        );
      case 'seleccion_multiple':
        return Column(
          children: pregunta.opciones.map((opcion) {
            return RadioListTile(
              title: Text(opcion),
              value: opcion,
              groupValue: respuestas[index]?.first,
              onChanged: (value) {
                setState(() {
                  respuestas[index] = [value as String];
                });
              },
            );
          }).toList(),
        );
      default:
        return Container();
    }
  }

  void _calcularResultados() {
    final preguntasProvider = Provider.of<PreguntasProvider>(context, listen: false);
    int correctas = 0;

    preguntasProvider.preguntas.asMap().forEach((index, pregunta) {
      if (pregunta.tipo == 'enumeracion') {
        final respuestaCorrecta = pregunta.respuestaCorrecta.split('\n').map((e) => e.trim()).toList();
        final respuestaUsuario = respuestas[index] ?? [];
        if (respuestaCorrecta.length == respuestaUsuario.length &&
            respuestaCorrecta.every((element) => respuestaUsuario.contains(element))) {
          correctas++;
        }
      } else if (respuestas[index] != null && respuestas[index]!.first.trim().toLowerCase() == pregunta.respuestaCorrecta.trim().toLowerCase()) {
        correctas++;
      }
    });

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Resultados'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Respuestas correctas: $correctas de ${preguntasProvider.preguntas.length}\n'),
                ...preguntasProvider.preguntas.asMap().entries.map((entry) {
                  final index = entry.key;
                  final pregunta = entry.value;
                  final respuestaUsuario = respuestas[index]?.join(', ') ?? 'Sin respuesta';
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Pregunta ${index + 1}: ${pregunta.enunciado}'),
                        Text('Tu respuesta: $respuestaUsuario'),
                        Text('Respuesta correcta: ${pregunta.respuestaCorrecta}\n'),
                      ],
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
