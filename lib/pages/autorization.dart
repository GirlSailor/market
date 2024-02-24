import 'package:flutter/material.dart';
import 'package:market_11_27/pages/product_list.dart';
import 'package:market_11_27/pages/registration.dart';

class AutorizationRoute extends StatelessWidget {
  const AutorizationRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Авторизация',
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: ConstrainedBox(
              constraints: const BoxConstraints.expand(width: 300, height: 300),
              child: Column(
                children: <Widget>[
                  const Expanded(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email",
                        hintText: "Введите email или логин",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Expanded(
                    flex: 1,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Password",
                        hintText: "Введите пароль",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            child: ElevatedButton(
                                child: const Text('Вход'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductList()),
                                  );
                                }),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            child: ElevatedButton(
                              child: const Text('Регистрация'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegistrationRoute()),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
