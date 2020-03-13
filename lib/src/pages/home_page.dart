import 'package:flutter/material.dart';
import 'package:you_car/src/pages/map_page_sinzoom.dart';
import 'package:you_car/src/pages/map_page_full.dart';
import 'package:you_car/src/pages/plate_page.dart';
import 'package:you_car/src/pages/messages_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final colorApp = Color.fromRGBO(33, 200, 19, 55);

  //Lista de los widgets de la barra inferior,se debe de poner el metodo llamado en su respectivo orden de la barra
  //De izquierda a derecha
  List<Widget> _widgetOptions = <Widget>[
    HomePageP(),
    MessagesPage(),
    HomePageP(),
    MapSinZoom(),
  ];


  //Diseño de la aplicaion en si.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YouCar',
            style: TextStyle(fontFamily: 'Dessau', fontSize: 36)),
        backgroundColor: colorApp,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      backgroundColor: colorApp,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: colorApp,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 28,
            ),
            title: Text('Inicio'),
            activeIcon: Icon(
              Icons.home,
              color: Colors.white,
              size: 36,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.white,
              size: 28,
            ),
            title: Text('Mensajes'),
            activeIcon: Icon(
              Icons.message,
              color: Colors.white,
              size: 36,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_alert,
              color: Colors.white,
              size: 28,
            ),
            title: Text('Alertar'),
            activeIcon: Icon(
              Icons.add_alert,
              color: Colors.white,
              size: 36,
            ),
          ),
                    BottomNavigationBarItem(
            icon: Icon(
              Icons.place,
              color: Colors.white,
              size: 28,
            ),
            title: Text('Ubicacion'),
            activeIcon: Icon(
              Icons.place,
              color: Colors.white,
              size: 36,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
