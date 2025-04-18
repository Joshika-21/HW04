// import 'package:flutter/material.dart';
// import 'chat_screen.dart';
// import 'profile_screen.dart';
// import 'settings_screen.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   final List<Map<String, dynamic>> boards = const [
//     {'name': 'Games', 'icon': Icons.sports_esports},
//     {'name': 'Business', 'icon': Icons.business_center},
//     {'name': 'Public Health', 'icon': Icons.health_and_safety},
//     {'name': 'Study', 'icon': Icons.book},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Message Boards'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(color: Colors.brown),
//               child: Text('Menu',
//                   style: TextStyle(color: Colors.white, fontSize: 24)),
//             ),
//             ListTile(
//               title: const Text('Message Boards'),
//               onTap: () => Navigator.pop(context),
//             ),
//             ListTile(
//               title: const Text('Profile'),
//               onTap: () => Navigator.push(context,
//                   MaterialPageRoute(builder: (_) => const ProfileScreen())),
//             ),
//             ListTile(
//               title: const Text('Settings'),
//               onTap: () => Navigator.push(context,
//                   MaterialPageRoute(builder: (_) => const SettingsScreen())),
//             ),
//           ],
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: boards.length,
//         itemBuilder: (context, index) {
//           final board = boards[index];
//           return ListTile(
//             leading: Icon(board['icon']),
//             title: Text(board['name']),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (_) => ChatScreen(boardName: board['name'])),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, dynamic>> boards = const [
    {'name': 'Games', 'icon': Icons.sports_esports},
    {'name': 'Business', 'icon': Icons.business_center},
    {'name': 'Public Health', 'icon': Icons.health_and_safety},
    {'name': 'Study', 'icon': Icons.book},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Message Boards')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.brown),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: const Text('Message Boards'),
              leading: const Icon(Icons.forum),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text('Profile'),
              leading: const Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
              },
            ),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (_) => const SettingsScreen()));
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: boards.length,
        itemBuilder: (context, index) {
          final board = boards[index];
          return ListTile(
            leading: Icon(board['icon']),
            title: Text(board['name']),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ChatScreen(boardName: board['name'])),
              );
            },
          );
        },
      ),
    );
  }
}
