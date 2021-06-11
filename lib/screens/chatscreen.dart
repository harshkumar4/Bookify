import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final routeName = '/chat-screen';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                child: Text(
                  'K',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple.shade300,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Text(
                'Kartik',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_sharp,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Row(
            mainAxisAlignment: index % 2 == 0
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 4,
                ),
                width: 180,
                child: Material(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomRight: index % 2 == 0
                        ? Radius.circular(0)
                        : Radius.circular(8),
                    bottomLeft: index % 2 == 0
                        ? Radius.circular(8)
                        : Radius.circular(0),
                  ),
                  color: index % 2 == 0
                      ? Theme.of(context).primaryColor
                      : Color.fromRGBO(43, 43, 43, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Text(
                      'Can you please make it 60. I really want this.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: index % 2 == 0 ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: Material(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Start Typing...',
                      contentPadding: EdgeInsets.only(
                        left: 8,
                        top: 12,
                      ),
                      suffixIcon: Icon(Icons.add),
                    ),
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                color: Colors.yellow,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
