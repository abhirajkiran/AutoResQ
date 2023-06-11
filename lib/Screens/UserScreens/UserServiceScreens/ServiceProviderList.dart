import 'package:flutter/material.dart';

class ServiceProviderScreen extends StatelessWidget {
  const ServiceProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service Provider", style: TextStyle(fontSize: 22)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: ListView(
          itemExtent: 100.0,
          reverse: true,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.person), backgroundColor: Colors.white),
              title: Text("COMPANY NAME"),
              subtitle: Text("Service name"),
              trailing: SizedBox(
                width: 120,
                height: 25,
                child: Row(
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.call),
                        label: Text("Call Now")),
                  ],
                ),
              ),
              onTap: () {},
              tileColor: Colors.white,
            ),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.person), backgroundColor: Colors.white),
              title: Text("COMPANY NAME"),
              subtitle: Text("Service name"),
              trailing: SizedBox(
                width: 120,
                height: 25,
                child: Row(
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.call),
                        label: Text("Call Now")),
                  ],
                ),
              ),
              onTap: () {},
              tileColor: Colors.green.shade50,
            ),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.person), backgroundColor: Colors.white),
              title: Text("COMPANY NAME"),
              subtitle: Text("Service name"),
              trailing: SizedBox(
                width: 120,
                height: 25,
                child: Row(
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.call),
                        label: Text("Call Now")),
                  ],
                ),
              ),
              onTap: () {},
              tileColor: Colors.white,
            ),
            ListTile(
              leading: CircleAvatar(
                  child: Icon(Icons.person), backgroundColor: Colors.white),
              title: Text("COMPANY NAME"),
              subtitle: Text("Service name"),
              trailing: SizedBox(
                width: 120,
                height: 25,
                child: Row(
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.call),
                        label: Text("Call Now")),
                  ],
                ),
              ),
              onTap: () {},
              tileColor: Colors.green.shade50,
            ),
          ],
        ),
      ),
    );
  }
}
