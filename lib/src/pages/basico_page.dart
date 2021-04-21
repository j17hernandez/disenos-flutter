import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 14.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _crearImagen(),
              _crearContainer(),
              _crearAcciones(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
              _crearTexto(),
            ]
          ),
      )
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
          image: NetworkImage(
              'https://archi-monarch.com/wp-content/uploads/2020/01/1.jpeg'
          ),
          height: 180.0,
          fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearContainer() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Oeschinen Lake Campground', style: estiloTitulo),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text('Kandersteg, Switzerland', style: estiloSubtitulo),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
  
  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String text ) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Labore consectetur aute eu ad culpa laboris ut et deserunt. Duis aliquip pariatur laborum laborum culpa ipsum aute. Veniam dolor anim eu id aliquip do ipsum magna ullamco.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
