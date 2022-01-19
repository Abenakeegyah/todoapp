import 'dart:html';

import 'package:flutter/material.dart';
import 'package:todo_app/create_todo_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listTile = ListTile(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.check_circle_outline_outlined),
      ),
      title: Text('Plan the trip to Finland'),
      subtitle: Text(
        "The family's trip to Finland next summer",
        style: TextStyle(fontSize: 10),
      ),
      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        Text('Yesterday')
      ]),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1635807012936-540d20f59e34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
        ),
        title: Text(
          'My Tasks',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
            ],
          )
        ],
      ),
      body: ListView(padding: EdgeInsets.all(30), children: [
        Card(
          child: listTile,
        ),
        Card(
          child: ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.check_circle_outline_outlined)),
            title: const Text('Plan susan\'s birthday'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_outlined),
                ),
                Text('Today')
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.check_circle_outline_outlined)),
            title: Text('Groceries for dinner'),
            subtitle: Text(
                'Get tomatoes,lettuce,potatoes,green beans,cream and beef filet.Also buy red wine at John\'s Wine Shop'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_outlined)),
                Text('Today')
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.check_circle_outline_outlined),
            ),
            title: Text('Port projects'),
            subtitle: Text(
              "send the presentation to Bill",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_outlined)),
                Text('Tomorrow')
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.check_circle_outline_outlined)),
            title: Text('Take jacket to cleaning'),
            subtitle: Text(
              "",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_outlined)),
                Text('Fri.')
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.check_circle_outline_outlined)),
            title: Text('Fix Dad\'s PC'),
            subtitle: Text(
              "install the latest updates and check your wireless connection",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_outlined)),
                Text('')
              ],
            ),
          ),
        ),
        Card(
          child: ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.check_circle_outline_outlined)),
            title: Text('Trip to Stockholm'),
            subtitle: Text(
              "Talk with Monica about trip",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ),
        Card(
          child: ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.check_circle_outline_outlined)),
            title: Text('Joe has covid19'),
            subtitle: Text(
              "I pray for quick recovery",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ),
        Card(
          child: ListTile(
            tileColor: Colors.black26,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.check_circle_outline_outlined)),
            title: Text('Completed'),
            subtitle: Text(
              "",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (Context) {
          return CreateTodoView();
        }));
        child:
        Icon(
          Icons.add,
          color: Colors.white,
        );
      }),
    );
  }
}
