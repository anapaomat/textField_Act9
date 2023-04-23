import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Tienda de distribuidor Cklass',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Av de las torres 448-int 4'
                  "656-233-3233 "
                  'Horario 10:00-18:00',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.gps_fixed_outlined,
            color: Color(0xfff43636),
          ),
          const Text('07'),
        ],
      ),
    );

    Color color = Color(0xfff43636);

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'LLAMAR'),
        _buildButtonColumn(color, Icons.near_me, 'RUTA'),
        _buildButtonColumn(color, Icons.share, 'COMPARTIR'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Cklass USA es la empresa #1 a nivel internacional, con amplia experiencia enfocada a la venta de CALZADO, VESTUARIO y ACCESORIOS por catálogo, nuestra filosofía es servir y hacer crecer a nuestros afiliados, garantizar nuestros productos y como única meta ofrecer productos vanguardistas de excelente calidad y a los mejores precios del mercado.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Cklass',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Realizar pedido'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/logo.jfif',
              width: 600,
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Datos necesarios para realizar el envio:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.brown,
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Nombre",
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
                      helperText: "Ingresa tu nombre completo "),
                )),
            Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Numero telefonico",
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
                      helperText: "Ingresa tu numero de telefono "),
                )),
            Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
                      helperText: "Ingresa tu correo electronico "),
                )),
            Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Direccion",
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
                      helperText: "Ingresa tu direccion"),
                )),
            Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "C.P",
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
                      helperText: "Ingresa tu codigo postal "),
                )),
            Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Metodo de pago",
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
                      helperText: "Ingresa tu forma de pago"),
                )),
            Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Total a pagar: 0",
                      hintStyle:
                          TextStyle(color: Colors.black38, fontSize: 20)),
                )),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
