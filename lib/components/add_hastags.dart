import 'package:flutter/material.dart';

class AddHashtagsComponent extends StatelessWidget {
  const AddHashtagsComponent({Key? key}) : super(key: key);


  void _modal(BuildContext context)=> showModalBottomSheet(
    context: context,
    builder: (context)=>Padding(padding: const EdgeInsets.all(8.0),
          child: Wrap(
        children:<Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Créateur de hastags",
              style:TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              )
              ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Entrer votre hastags"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: ()=> Navigator.pop(context),
                  child: const Text("AJOUTER"),
                ),
                TextButton(
                  onPressed: ()=> Navigator.pop(context),
                  child: const Text("ANNULER"),
                ),
              ],
            ),
          )
        ],
      ),
    )
  );
  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
            onPressed: ()=>_modal(context),
            child: const Icon(Icons.add),
          );
  }
}