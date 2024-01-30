// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Formfield extends StatefulWidget {
  final TextEditingController nameController;
  final String type;
  final String hintText;
  final String? prefixItem;
  final value;
  final dynamic items;
  final TextAlign? textAlign;
  final Function(String) callbackFunction;
  final bool? isEnabled;
  final bool? isPassword;

  const Formfield(
      {super.key,
      required this.nameController,
      required this.type,
      required this.hintText,
      this.prefixItem,
      this.value,
      this.items,
      this.textAlign,
      required this.callbackFunction,
      this.isEnabled,
      this.isPassword});

  @override
  State<Formfield> createState() => _FormfieldState();
}

class _FormfieldState extends State<Formfield> {
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    // listener for focus change
    focusNode.addListener(() {
      // TODO: implement
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = widget.nameController;

    var type = widget.type;
    var hintText = widget.hintText;
    //var items = widget.items;
    //var value = widget.value;
    var textAlign = widget.textAlign;
    //var prefixItem = widget.prefixItem;
    bool? isEnabled = widget.isEnabled;
    bool? isPassword = widget.isPassword;

    Widget fieldType = Container();

    if (type == "TEXT") {
      fieldType = _formTextField(
        Keytype: TextInputType.text,
        hintText: hintText,
        textAlign: textAlign,
        nameController: controller,
        isEnabled: isEnabled,
        isPassword: isPassword,
      );
    }

    return fieldType;
  }
}

Widget _formTextField({
  // ignore: non_constant_identifier_names
  required TextInputType Keytype,
  required TextEditingController nameController,
  textAlign,
  hintText,
  maskFormatter,
  isEnabled,
  isPassword,
  prefixIcon,
}) {
  return TextFormField(
    enabled: isEnabled ?? true,
    obscureText: isPassword ?? false,
    controller: nameController,
    keyboardType: Keytype,
    //focusNode: focusNode,
    textAlign: textAlign ?? TextAlign.left,
    decoration: InputDecoration(
      prefixIcon: prefixIcon,
      labelText: hintText,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: Colors.grey[300],
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
          color: Colors.grey,
          width: 2.0,
        ),
      ),
    ),
    inputFormatters: maskFormatter != null ? [maskFormatter] : [],
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor preencha o campo correctamente.';
      }
      return null;
    },
  );
}
