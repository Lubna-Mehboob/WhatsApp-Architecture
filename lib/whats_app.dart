import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        backgroundColor: Colors.greenAccent,
      ),
      body: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dart Group'),
                      Text('Last seen'),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 10,
                    child: Text(
                      '12',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                  Text('26/10/2024'),
                ],
              )
            ],
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text('Atiqa'),
            subtitle: Text('last message'),
            trailing: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.green,
              child: Text(
                '10',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
          Text('26/10/2024'),
        ],
      ),
    );
  }
}
