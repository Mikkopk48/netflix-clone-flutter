import 'package:clon_netflix_flutter/components/cartel_principal.dart';
import 'package:clon_netflix_flutter/components/item_img.dart';
import 'package:clon_netflix_flutter/components/item_redondeado.dart';
import 'package:flutter/material.dart';
class InicioPage extends StatelessWidget {
  const InicioPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
    const CartelPrincipal(),
    listaHorizontal("Avances",ItemRedondeado(),9),
    listaHorizontal("Programas sobre viajes",ItemImg(),20),
    listaHorizontal("Tendencias",ItemImg(),20),
    listaHorizontal("Para tí",ItemImg(),20),
        
        ],
      ),
      bottomNavigationBar:navInferior(),
    );
  }
}
  BottomNavigationBar navInferior(){
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
    items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
    icon: Icon(Icons.home),
            label: 'Inicio',),
            BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
            ),BottomNavigationBarItem(
            icon: Icon(Icons.movie_rounded),
            label: 'Librería',
            ),BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Descargar',
            ),BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Más',
            ),
          
    ],
    );
  }
Widget listaHorizontal(String titulo,Widget item, int cantidad){
  return Column(
    children: [
      Container(
            color: Colors.black87,
            width: double.infinity,
            height:50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("$titulo",
              style:TextStyle(color:Colors.white,
              fontSize: 18,fontWeight: FontWeight.bold
              )),
            ),
          ),
      Container(
        color: Colors.black87,
            height: 260,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cantidad,
              itemBuilder: (context,index){
                return item;
              },
            ),
          ),],
  );
}

