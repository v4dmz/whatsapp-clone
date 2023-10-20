import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WhatsAppClone(),
    );
  }
}

class WhatsAppClone extends StatefulWidget {
  @override
  _WhatsAppCloneState createState() => _WhatsAppCloneState();
}

class _WhatsAppCloneState extends State<WhatsAppClone> {
  final List<Widget> _pages = [ChatsPage(), StatusPage(), CallsPage()];
  final List<String> _tabTitles = ['Chats', 'Status', 'Calls'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp Clone'),
          bottom: TabBar(
            tabs: _tabTitles.map((String title) {
              return Tab(text: title);
            }).toList(),
          ),
          backgroundColor: Color(0xFF075E54), // WhatsApp green color
        ),
        body: TabBarView(
          children: _pages,
        ),
      ),
    );
  }
}

class ChatsPage extends StatelessWidget {
  final List<String> chatList = [
    'Jawad Ali',
    'Ahmed Khan',
    'Baseer Ahmed',
  ];

  final List<String> chatMessages = [
    'How are you?',
    'What are you up to?',
    'Lets meet later?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          final String firstLetter = chatList[index][0].toUpperCase();
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFF075E54), // WhatsApp green color
              child: Text(
                firstLetter,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(chatList[index]),
            subtitle: Text(chatMessages[index]), // Unique text for each contact
            trailing: Text('10:30 AM', style: TextStyle(color: Colors.grey)),
          );
        },
      ),
    );
  }
}

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFF075E54), // WhatsApp green color
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 28,
                child: Icon(
                  Icons.camera_alt,
                  color: Color(0xFF075E54), // WhatsApp green color
                  size: 30,
                ),
              ),
              title: Text(
                'My Status',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'Tap to add status update',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFF075E54), // WhatsApp green color
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
            title: Text(
              'My Status',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Tap to add status update',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CallsPage extends StatelessWidget {
  final List<String> callList = [
    'Jatin Naqvi',
    'Muhammad Ali',
    'Sara Ahmed',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: callList.length,
        itemBuilder: (context, index) {
          final String firstLetter = callList[index][0].toUpperCase();
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFF075E54), // WhatsApp green color
              child: Text(
                firstLetter,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(
              callList[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Incoming',
              style: TextStyle(
                color: Color(0xFF25D366), // WhatsApp green color
              ),
            ),
            trailing: Text(
              '10:30 AM',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          );
        },
      ),
    );
  }
}
