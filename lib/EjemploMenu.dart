import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
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
        child: Text('Bienvenido a la página el ElectroMSH.'),
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
      body: Center(child: Text('Lista de productos')),
    );
  }
}

class ContactoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacto')),
      body: Center(child: Text('Formulario de contacto')),
    );
  }
}
