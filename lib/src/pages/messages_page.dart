import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: _crearItemsCorta()
      ),

    );
  }


  //MOSTRAR LISTA CON STRINGS FORMA1
  List<Widget> _crearItems() {

    List<Widget> lista = new List<Widget>();

    for (String opt in opciones  ) {
      final tempWidget = ListTile(
      title: Text(opt),
      );

      lista.add(tempWidget);
      lista.add(Divider());

      //lista..add(tempWidget)
      //     ..add(Divider());
    }

    return lista;
  }


  //MOSTRAR LISTA CON STRINGS FORMA2 CORTA
  List<Widget> _crearItemsCorta(){

    var widgets = opciones.map((item){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '?'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.notifications),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          
          ),
          Divider(),
        ],
      );

    }).toList();

    return widgets; 

  }

}