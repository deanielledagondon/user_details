import 'package:flutter/material.dart';

class DisplayDetails extends StatefulWidget {
  const DisplayDetails({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DisplayDetailsState();
  }
}


int x = 0;
int y = 1;

List details = [];
List users = [];

class _DisplayDetailsState extends State<DisplayDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity #4'),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(users[index]['name']),
              leading: const Icon(Icons.account_circle),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    users.removeAt(index);
                  });
                },
                icon: const Icon(Icons.delete, color: Colors.red),
              ),
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text('Email Address: ${users[index]['email']}'),
                        Text('Phone Number: ${users[index]['phoneNum']}'),
                        Text('Birthday: ${users[index]['birthDate']}'),
                        Text('Age: ${users[index]['age']}'),
                        Text('Course: ${users[index]['course']}'),
                        Text('Section: ${users[index]['section']}'),
                        Text('Facebook: ${users[index]['facebook']}'),
                      ],
                    ))
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 30, 170, 156),
        foregroundColor: Colors.black,
        onPressed: () async {
          details.add(await Navigator.pushNamed(context, '/second'));
          setState(() {
            if (y == 1) {
              x = 0;
            }
            if (y > 1) {
              x++;
            }
            users = details
                .map((item) => {
                      'name': item[0]['name'],
                      'email': item[0]['email'],
                      'phone': item[0]['phone'],
                      'bday': item[0]['bday'],
                      'age': item[0]['age'],
                      'section': item[0]['section'],
                      'course': item[0]['course'],
                      'fb': item[0]['fb']
                    })
                .toList();
            y++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}