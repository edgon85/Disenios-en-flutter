import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final styleTitle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final styleSubTitle =
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          SizedBox(height: 10.0,),
          _crearAcciones(),
          _crearText(),
        ],
      ),
    );
  }

  // TODO: Imagen de inicio
  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/originals/ca/68/8d/ca688dcdd1218f6ca5b1af6a355211c3.jpg'),
    );
  }

  //TODO: Titulo de cabecera
  Widget _crearTitulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Carreterra en montaña',
                  style: styleTitle,
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  'Loren ipsunm texto de relleno para desarrollo',
                  style: styleSubTitle,
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 30.0,
          ),
          Text(
            '41',
            style: TextStyle(fontSize: 20.0),
          )
        ],
      ),
    );
  }

  // TODO: acciones
  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // ** columna phone
        _accion(Icons.call, 'Call'),
        // ** columna route
        _accion(Icons.near_me, 'Route'),
        // ** columna route
        _accion(Icons.share, 'Share')

      ],
    );
  }

  // TODO: columna de las acciones
  Widget _accion(IconData icon, String text){
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blueAccent,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(text.toUpperCase(), style: TextStyle(color: Colors.blueAccent, fontSize: 15.0, ),)
      ],
    );
  }

  // TODO: texto del boton
  Widget _crearText() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque convallis placerat cursus. Duis vitae cursus ante. In quis tortor porttitor, molestie elit eget, eleifend nulla. Nam viverra purus ac lobortis mattis. Suspendisse maximus mi sed augue tincidunt feugiat. Curabitur nec egestas tortor. Aenean tristique ligula mauris, nec tempor elit finibus eget. Aliquam ac convallis nulla, non semper diam. Aliquam accumsan libero diam, non auctor purus pretium sed.',
      textAlign: TextAlign.justify,
      ),
    );
  }
}
