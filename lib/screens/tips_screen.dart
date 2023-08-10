import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  static const String id = "tips_screen";
  final List<Map<String, dynamic>> mentalHealthTips = [
    {
      "tip": "Practica la meditación y la atención plena.",
      "steps": [
        "Encuentra un lugar tranquilo para sentarte.",
        "Cierra los ojos y concéntrate en tu respiración.",
        "Deja que los pensamientos vengan y se vayan sin juzgarlos.",
      ],
      "icon": Icons.self_improvement,
    },
    {
      "tip": "Realiza ejercicio físico regularmente.",
      "steps": [
        "Elige una actividad que disfrutes, como caminar, nadar o bailar.",
        "Establece un horario regular para el ejercicio.",
        "Comienza con intensidad moderada y aumenta gradualmente.",
      ],
      "icon": Icons.directions_run,
    },
    {
      "tip": "Mantén una dieta equilibrada y saludable.",
      "steps": [
        "Incluye una variedad de frutas, verduras y proteínas magras.",
        "Limita el consumo de alimentos procesados y azucarados.",
        "Bebe suficiente agua a lo largo del día.",
      ],
      "icon": Icons.local_dining,
    },
    {
      "tip": "Establece límites y aprende a decir 'no'.",
      "steps": [
        "Identifica tus prioridades y limitaciones.",
        "Comunica tus límites de manera asertiva y respetuosa.",
        "No tengas miedo de rechazar tareas adicionales si estás sobrecargado.",
      ],
      "icon": Icons.accessibility_new,
    },
    {
      "tip": "Habla con amigos y seres queridos sobre tus sentimientos.",
      "steps": [
        "Encuentra momentos para conversar en un entorno relajado.",
        "Comparte tus preocupaciones y emociones de manera abierta.",
        "Escucha activamente a los demás y bríndales tu apoyo también.",
      ],
      "icon": Icons.people,
    },
    {
      "tip": "Busca ayuda profesional si es necesario.",
      "steps": [
        "Investiga y elige un profesional de la salud mental de confianza.",
        "Programa sesiones regulares para abordar tus desafíos.",
        "No dudes en buscar ayuda si sientes que lo necesitas.",
      ],
      "icon": Icons.medical_services,
    },
  ];

  void _showStepsDialog(BuildContext context, List<String> steps) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pasos para realizar la actividad'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: steps.map((step) => Text('• $step')).toList(),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consejos para mejorar la salud mental"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: mentalHealthTips.length,
        itemBuilder: (context, index) {
          final tip = mentalHealthTips[index];
          return Card(
            child: InkWell(
              onTap: () {
                _showStepsDialog(context, tip['steps']);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(tip['icon'], size: 48),
                  SizedBox(height: 8),
                  Text(
                    tip['tip'],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Tips(),
  ));
}
