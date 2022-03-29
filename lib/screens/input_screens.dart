import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first name': 'Fernando',
      'last name': 'Herrera',
      'email': 'fernando@google.com',
      'password': '12345',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del Usuario',
                  formProperty: 'first name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del Usuario',
                  formProperty: 'last name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Email del Usuario',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'Password del Usuario',
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario No Válido');
                      return;
                    }
                    //*TODO: imprimir valores del formulario
                    print(formValues);
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
