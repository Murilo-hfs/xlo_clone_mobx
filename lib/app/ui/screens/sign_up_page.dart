import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xlo_clone_mobx/app/components/widgets/field_title.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.all(32),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FieldTitle(
                      title: 'Apelido',
                      subtitle: 'Como aparecerá em seus anúncios.'),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Ex: João S.",
                        isDense: true),
                  ),
                  FieldTitle(
                      title: 'E-mail',
                      subtitle: 'Enviaremos um e-mail de confirmação.'),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Ex: joao@gmail.com",
                        isDense: true),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                  ),
                  FieldTitle(title: 'Celular', subtitle: 'Proteja sua conta.'),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "(99) 9999-9999",
                        isDense: true),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      TelefoneInputFormatter()
                    ],
                  ),
                  FieldTitle(
                      title: 'Senha',
                      subtitle: 'Use letras, números e caracteres especiais.'),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), isDense: true),
                  ),
                  FieldTitle(
                      title: 'Repita sua senha', subtitle: 'Repita a senha.'),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), isDense: true),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Container(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                        ),
                        child: Text('CADASTRAR'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Divider(thickness: 0.9),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 3.0, bottom: 4.0, top: 16.0),
                    child: Row(
                      children: [
                        Text(
                          'Já tem um conta?     ',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        GestureDetector(
                          child: Text(
                            'Entrar',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                                fontSize: 16,
                                decoration: TextDecoration.underline),
                          ),
                          onTap: Navigator.of(context).pop,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
