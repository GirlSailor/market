import 'package:flutter/material.dart';

class RegistrationRoute extends StatelessWidget {
  const RegistrationRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 300, maxHeight: 500),
            child: ListView(
              children: <Widget>[
                const Expanded(
                  flex: 1,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Имя",
                      hintText: "Введите имя",
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
                      labelText: "Фамилия",
                      hintText: "Введите фамилию",
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
                      labelText: "Логин",
                      hintText: "Введите логин",
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
                      labelText: "Email",
                      hintText: "Введите email",
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
                      labelText: "Пароль",
                      hintText: "Введите пароль",
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
                      hintText: "Подтвердите пароль",
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
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Регистрация')),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Вход'),
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
