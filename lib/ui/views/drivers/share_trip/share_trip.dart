import 'package:boleia_app/ui/views/drivers/share_trip/time_widget.dart';
import 'package:boleia_app/ui/widgets/button2.dart';
import 'package:boleia_app/ui/widgets/formfield.dart';
import 'package:flutter/material.dart';

class ShareTrip extends StatefulWidget {
  final String where;
  const ShareTrip({super.key, required this.where});

  @override
  State<ShareTrip> createState() => _ShareTripState();
}

class _ShareTripState extends State<ShareTrip> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          "Partilhar Viatura",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Text(
                "Viagem para ${widget.where}",
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              const Text(
                "Sai daqui a quanto tempo?",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 125,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      _selectTime(context);
                    },
                    child: TimeWidget(
                      hour: selectedTime.hour.toString(),
                      minute: selectedTime.minute.toString(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Quantos lugares disponiveis?",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 120,
                child: Formfield(
                    callbackFunction: (p0) {},
                    hintText: "Lugares",
                    items: ["1", "2", "3", "4", "5", "6"],
                    nameController: TextEditingController(),
                    type: "SELECT"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Alguma observação",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 300,
                child: Formfield(
                    callbackFunction: (p0) {},
                    hintText: "Observação",
                    nameController: TextEditingController(),
                    type: "TEXT"),
              ),
              const SizedBox(height: 50),
              AppButton2(onTap: () {}, text: "Abrir Corrida")
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked_s = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
            child: child!,
          );
        });
    if (picked_s != null && picked_s != selectedTime)
      setState(() {
        selectedTime = picked_s;
      });
  }
}
