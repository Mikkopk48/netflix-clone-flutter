import 'package:clon_netflix_flutter/components/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget {
  const CartelPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    final double responsiveWidth = MediaQuery.of(context).size.width;
    final double responsiveHeight = MediaQuery.of(context).size.height;

    return Column(
    children: <Widget>[
      cabecera(),
      infoSerie(),
      botonera(),
      
    ],
  );
  }
}

Widget cabecera() {
  return Stack(children: <Widget>[
    Image.network(
      "https://imgs.search.brave.com/wjZjQ7AJmclw8AbhwadI1xn9irAXtlsC-wNqohcsZ_0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk5UZG1aakV5/TXprdE5HTXpOUzAw/WldNeUxUbGpOR010/T1RBMVpUTmxNemt3/WkRrMFhrRXlYa0Zx/Y0djQC5qcGc",
      height:700,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
    Container(
      width:double.infinity,
      height: 100,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.black,
            Color.fromARGB(31, 131, 121, 121),
          ],
        ),
      ),
    ),
    const SafeArea(child: NavBarSuperior()),
  ]);
}

Widget infoSerie() {
  return Container(
    width: double.infinity,
    height:20,
    color: const Color.fromARGB(255, 150, 12, 3),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text("2012"),
        Text("PGI 16+"),
        Text("1 temporada"),
        Text("Dramas"),
      ],
    ),
  );
}

Widget botonera() {
  return Container(
    width: double.infinity,
    height:80,
    color: Colors.black87,
    child: Row(
      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
      children: [
      const Padding(
        padding: EdgeInsets.only(top:10.0),
        child: Column(
          children: [
            Icon(Icons.check, color: Colors.white),
            Text('Mi lista',style:TextStyle(fontSize: 12) ,)],
        ),
      ),
      ElevatedButton.icon(
        
          onPressed: () {},
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.black,
            size: 26.0,
          ),
          label: const Text('Reproducir',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold, ),),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5), ),
          )),
          const Padding(
            padding: EdgeInsets.only(top:10.0),
            child: Column(
                    children: [
            Icon(Icons.info_outline, color: Colors.white),
            Text('Mi lista',style:TextStyle(fontSize: 12) ,)],
                  ),
          ),
    ]),
  );
}
