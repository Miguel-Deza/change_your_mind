import 'package:flutter/material.dart';

class Consult extends StatefulWidget {
  static const String id = "consult_screen";

  @override
  State<Consult> createState() => _ConsultState();
}

class Psychologist {
  final String name;
  final String specialty;
  final String imageURL;
  final String email;

  Psychologist({
    required this.name,
    required this.specialty,
    required this.imageURL,
    required this.email,
  });
}

List<Psychologist> psychologistData = [
  Psychologist(
    name: "Dr. John Doe",
    specialty: "Clinical Psychologist",
    imageURL:
        "https://img.freepik.com/vector-gratis/fondo-personaje-doctor_1270-84.jpg?w=2000",
    email: "john.doe@example.com",
  ),
  Psychologist(
    name: "Dr. Jane Smith",
    specialty: "Counseling Psychologist",
    imageURL:
        "https://img.freepik.com/vector-gratis/fondo-personaje-doctor_1270-84.jpg?w=2000",
    email: "jane.smith@example.com",
  ),
  Psychologist(
    name: "Dr. Michael Johnson",
    specialty: "Child Psychologist",
    imageURL:
        "https://img.freepik.com/vector-gratis/fondo-personaje-doctor_1270-84.jpg?w=2000",
    email: "michael.johnson@example.com",
  ),
  Psychologist(
    name: "Dr. Emily Davis",
    specialty: "Family Therapist",
    imageURL:
        "https://img.freepik.com/vector-gratis/fondo-personaje-doctor_1270-84.jpg?w=2000",
    email: "emily.davis@example.com",
  ),
  Psychologist(
    name: "Dr. Daniel Lee",
    specialty: "Addiction Counselor",
    imageURL:
        "https://img.freepik.com/vector-gratis/fondo-personaje-doctor_1270-84.jpg?w=2000",
    email: "daniel.lee@example.com",
  ),
  // Agrega más psicólogos de ejemplo aquí con datos falsos.
];

class _ConsultState extends State<Consult> {
  void _showAppointmentDialog(
      String psychologistName, String psychologistEmail) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Solicitar una cita con $psychologistName'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  'Por favor, introduce tus detalles de contacto para solicitar una cita:'),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nombre'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Correo electrónico'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Implementa aquí la lógica para solicitar la cita.
                // Por ejemplo, puedes enviar un correo electrónico al psicólogo.
                // sendAppointmentRequestEmail(psychologistEmail);
                Navigator.of(context).pop();
              },
              child: Text('Solicitar cita'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: const Text(
              "Consult",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            "Psychologist's",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: psychologistData.length,
              itemBuilder: (context, index) {
                final psychologist = psychologistData[index];

                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(psychologist.imageURL),
                    ),
                    title: Text(psychologist.name),
                    subtitle: Text(psychologist.specialty),
                    onTap: () {
                      _showAppointmentDialog(
                          psychologist.name, psychologist.email);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
