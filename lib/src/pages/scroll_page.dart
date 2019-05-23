import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _pagina1(),
        _pagina2(),
      ],
    ));
  }

  // TODO: pagina 1
  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _crearTextos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 210, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTextos() {
    final estiloText = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Text(
            '11°',
            style: estiloText,
          ),
          Text(
            'Miércoles',
            style: estiloText,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  // TODO: pagina 2
  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 210, 1.0),
      child: Center(
        child: RaisedButton(
          onPressed: () {},
          color: Colors.blue,
          shape: StadiumBorder(),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
