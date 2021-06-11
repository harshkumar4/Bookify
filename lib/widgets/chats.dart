import 'package:bookify/screens/chatscreen.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 18,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 2),
              leading: CircleAvatar(
                backgroundColor: Colors.purple,
                radius: 24,
                child: Text(
                  'S',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                foregroundColor: Colors.purple.shade100,
              ),
              title: Text(
                'SoniKHudi',
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Something always kept me interesting ...',
                maxLines: 1,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color.fromRGBO(192, 192, 192, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(
                '11:10',
                style: TextStyle(
                  color: Color.fromRGBO(192, 192, 192, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(ChatScreen().routeName);
              },
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        );
      },
    );
  }
}
