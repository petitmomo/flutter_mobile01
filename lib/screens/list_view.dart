import 'package:flutter/material.dart';


const List<Map<String, dynamic>> listHasTags = [
  {
    "name":"#flutter",
  },
   {
    "name":"#dart",
  },
   {
    "name":"#pyhon",
  },
   {
    "name":"javaScript",
  },
];
class ListViewAstags extends StatelessWidget {
  const ListViewAstags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listHasTags.isEmpty? Center(
      child: const Text("Pas de hastags"),
    )
    : ListView.builder(
        itemCount: listHasTags.length,
        itemBuilder: (context, index) {
        return Dismissible(
          key: Key(index.toString()),
          onDismissed: (direction) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("$index supprimé"),
              ),
            );
          },
          background: Container(
            color: Colors.red,
          ),
          child: Card(
            child: ListTile(
              title: Text(listHasTags[index]["name"],
            ),
          ),
        ),
        );
      },
    );
  }
}
