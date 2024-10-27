import 'package:flutter/material.dart';
import 'package:whatsapp_project/view/home_screens/new_screen.dart';

class LoopCode extends StatefulWidget {
  const LoopCode({super.key});

  @override
  State<LoopCode> createState() => _LoopCodeState();
}

class _LoopCodeState extends State<LoopCode> {
  List whatsappnames = [
    'Iqra',
    'Zee',
    'Nazi',
    'Neelum',
    'Sobi',
    'Rahat',
    'Samina',
  ];
  List subTiltleMsg = [
    'Hi',
    'Hello g!',
    'kya baat hai janab',
    'Q?',
    'Wah g wahhh',
    'Balay Balay',
    'Hello Hello',
    // 'Hello g!',
    //'kya baat hai janab',
  ];
  List avatarImages = [
    'lib/assets/images/flower.jpg',
    'lib/assets/images/flwr2.webp',
    'lib/assets/images/D1.jpg',
    'lib/assets/images/D1.jpg',
    'lib/assets/images/flwr2.webp',
    'lib/assets/images/D1.jpg',
    'lib/assets/images/D1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromARGB(255, 235, 228, 228),
            child: const Icon(
              Icons.circle_outlined,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewScreen(),
                ),
              );
            },
            backgroundColor: const Color.fromARGB(255, 51, 161, 55),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(height: 10),
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: whatsappnames.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(avatarImages[index]),
                  ),
                  title: Text(whatsappnames[index]),
                  subtitle: Text(subTiltleMsg[index]),
                  trailing: const Text('data'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
