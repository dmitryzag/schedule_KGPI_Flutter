import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:schedule/theme/custom_icons.dart';

@RoutePage()
class AuthorScreen extends StatelessWidget {
  const AuthorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Создатель',
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/CherryBender.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Дмитрий Загибалов',
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(CustomIcons.github),
                      SizedBox(width: 10),
                      Text(
                        'GitHub',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Text('ССЫЛКА'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(CustomIcons.instagram),
                      SizedBox(width: 10),
                      Text(
                        'Instagram',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Text('ССЫЛКА'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.telegram),
                      SizedBox(width: 10),
                      Text(
                        'Telegram',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Text('ССЫЛКА'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(CustomIcons.vk),
                      SizedBox(width: 10),
                      Text(
                        'ВКонтакте',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Text('ССЫЛКА'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(CustomIcons.whatsapp),
                      SizedBox(width: 10),
                      Text(
                        'Whatsapp',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Text('ССЫЛКА'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Одиноко.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
