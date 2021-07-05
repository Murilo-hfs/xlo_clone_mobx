import 'package:flutter/material.dart';
import 'package:xlo_clone_mobx/app/ui/screens/login_page.dart';

class CustomDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => LoginPage()),
        );
      },
      child: Container(
        color: Colors.purple,
        height: 80,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Icon(Icons.person),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Acesse sua conta agora',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    'Clique aqui!',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
