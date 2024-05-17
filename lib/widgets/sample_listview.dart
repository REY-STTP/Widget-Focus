import 'package:flutter/material.dart';

class SampleListView extends StatelessWidget {
  SampleListView({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  final List data = [
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=1',
      'name': 'Rey Angry React',
      'address': 'Pati',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=2',
      'name': 'Osakai',
      'address': 'Pati',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=3',
      'name': 'Cupen',
      'address': 'Pati',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=4',
      'name': 'Mamad_uye',
      'address': 'Pati',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=5',
      'name': 'Deri',
      'address': 'Pati',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img=6',
      'name': 'KJ Tubil',
      'address': 'Pati',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widgets List View'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(data[index]['photoUrl']),
            title: Text(data[index]['name']),
            subtitle: Text(data[index]['address']),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
            tileColor: Colors.grey[400],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
        },
        itemCount: colorCodes.length,
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 2,
            color: Colors.grey,
          );
        },
      ),

      // body: Container(
      //   height: 130,
      //   child: ListView.builder(
      //     scrollDirection: Axis.horizontal,
      //     padding: const EdgeInsets.all(10),
      //     itemBuilder: (context, index) {
      //       return CircleAvatar(
      //         radius: 60,
      //         backgroundColor: Colors.red,
      //         child: CircleAvatar(
      //           radius: 50,
      //           backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=$index'),
      //         ),
      //       );
      //     },
      //     itemCount: colorCodes.length,
      //   ),
      // ),

      // body: ListView.builder(
      //   padding: const EdgeInsets.all(10),
      //   itemBuilder: (context, index) {
      //     return Container(
      //       color: Colors.purple[colorCodes[index]],
      //       height: 100,
      //     );
      //   },
      //   itemCount: colorCodes.length,
      // ),
      
      // body: ListView(
      //   reverse: true,
      //   padding: const EdgeInsets.all(10),
      //   children: [
      //     Container(
      //       color: Colors.purple[700],
      //       height: 100,
      //     ),
      //     Container(
      //       color: Colors.purple[400],
      //       height: 100,
      //     ),
      //     Container(
      //       color: Colors.purple[100],
      //       height: 100,
      //     ),
      //     Container(
      //       color: Colors.purple[700],
      //       height: 100,
      //     ),
      //     Container(
      //       color: Colors.purple[400],
      //       height: 100,
      //     ),
      //     Container(
      //       color: Colors.purple[100],
      //       height: 100,
      //     ),
      //   ],
      // ),
    );
  }
}