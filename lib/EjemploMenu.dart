import 'package:flutter/material.dart';

void main() => runApp(MyApp1());

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú en Flutter para ejemplo práctico',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void _navigate(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ElectroMSH')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assets/images/fondo.jpg'),
      fit: BoxFit.cover,
    ),
  ),
  child: Text(
    'Menú Principal',
    style: TextStyle(color: Colors.white, fontSize: 24),
  ),
),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text('Nosotros'),
              onTap: () => _navigate(context, EmpresaPage()),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Productos'),
              onTap: () => _navigate(context, ProductosPage()),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contacto'),
              onTap: () => _navigate(context, ContactoPage()),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Bienvenido a ElectroMSH.'),
      ),
    );
  }
}

class EmpresaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nosotros')),
      body: Center(child: Text('Somos 3 empresarios queriendo actualizar el país .')),
    );
  }
}

class ProductosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Productos')),
      body: ListView(
  padding: EdgeInsets.all(10),
  children: [
    ListTile(
      leading: Icon(Icons.electrical_services),
      title: Text('Cargador rápido'),
      subtitle: Text('Carga eficiente para todo tipo de dispositivos'),
    ),
    ListTile(
      leading: Icon(Icons.headphones),
      title: Text('Audífonos Bluetooth'),
      subtitle: Text('Alta calidad de sonido y comodidad'),
    ),
    ListTile(
      leading: Icon(Icons.speaker),
      title: Text('Parlante portátil'),
      subtitle: Text('Sonido potente y batería duradera'),
    ),
    ListTile(
      leading: Icon(Icons.lightbulb),
      title: Text('Bombillos LED'),
      subtitle: Text('Ahorro de energía y larga duración'),
    ),
    ListTile(
      leading: Icon(Icons.power),
      title: Text('Multitoma'),
      subtitle: Text('Protección contra sobrecargas'),
    ),
  ],
),
    );
  }
}

class ContactoPage extends StatefulWidget {
  @override
  _ContactoPageState createState() => _ContactoPageState();
}

class _ContactoPageState extends State<ContactoPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacto')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingrese su nombre';
                  }
                  return null;
                },
              ),

              TextFormField(
                decoration: InputDecoration(labelText: 'Correo'),
              ),

              TextFormField(
                decoration: InputDecoration(labelText: 'Mensaje'),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                child: Text('Enviar'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Enviado')),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}