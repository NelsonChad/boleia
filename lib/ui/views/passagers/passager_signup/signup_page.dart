import 'package:boleia_app/ui/views/halpers/functions.dart';
import 'package:boleia_app/ui/views/passagers/home/home_page.dart';
import 'package:boleia_app/ui/widgets/button.dart';
import 'package:boleia_app/ui/widgets/formfield.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final List<String> parentItems = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registar Passageiro")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Formfield(
                callbackFunction: (x) {},
                hintText: "Nome completo",
                type: "TEXT",
                isEnabled: true,
                isPassword: false,
                nameController: TextEditingController(),
              ),
              const SizedBox(height: 10),
              Formfield(
                callbackFunction: (x) {},
                hintText: "Endereco",
                type: "TEXT",
                isEnabled: true,
                isPassword: false,
                nameController: TextEditingController(),
              ),
              const SizedBox(height: 10),
              Formfield(
                callbackFunction: (x) {},
                hintText: "Telefone",
                type: "TEL",
                isEnabled: true,
                isPassword: false,
                nameController: TextEditingController(),
              ),
              const SizedBox(height: 10),
              Formfield(
                callbackFunction: (x) {},
                hintText: "Telefone  de emergência",
                type: "TEL",
                isEnabled: true,
                isPassword: false,
                nameController: TextEditingController(),
              ),
              const SizedBox(height: 10),
              Formfield(
                callbackFunction: (x) {},
                hintText: "Telefone  de emergência",
                type: "TEL",
                isEnabled: true,
                isPassword: false,
                nameController: TextEditingController(),
              ),
              const SizedBox(height: 10),
              Formfield(
                callbackFunction: (x) {},
                hintText: "Grau de parentesco",
                type: "SELECT",
                items: parentItems,
                isEnabled: true,
                isPassword: false,
                nameController: TextEditingController(),
              ),
              const SizedBox(height: 10),
              Formfield(
                callbackFunction: (x) {},
                hintText: "Endereco de origem",
                type: "TEXT",
                isEnabled: true,
                isPassword: false,
                nameController: TextEditingController(),
              ),
              const SizedBox(height: 10),
              Formfield(
                callbackFunction: (x) {},
                hintText: "Endereco de destino",
                type: "TEXT",
                isEnabled: true,
                isPassword: false,
                nameController: TextEditingController(),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  color: Colors.green,
                  fcolor: Colors.white,
                  borderColor: Colors.green,
                  hasIcon: false,
                  label: "Login",
                  height: 60.0,
                  width: double.infinity,
                  onPressed: () {
                    navegateReplaceTo(context, const HomePage());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
