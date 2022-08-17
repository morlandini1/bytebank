import 'package:flutter/material.dart';

void main() => runApp(
    BytebankApp()
    );

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}


class FormularioTransferencia extends StatelessWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('criando transferencia'),),
      body: Text('teste'));
  }
}
class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trasferências'),),
      body: Column(
        children: [
          ItemTransferencia(Transferencia(100.0, 1000)),
          ItemTransferencia(Transferencia(200.0, 1001)),
          ItemTransferencia(Transferencia(300.0, 2000)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
   }
  }

  class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;


  ItemTransferencia(this._transferencia);
  @override
    Widget build(BuildContext context) {
      return Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(_transferencia.valor.toString()),
          subtitle: Text(_transferencia.numeroconta.toString()),
        ),
      );
    }
  }

  class Transferencia {
  final double valor;
  final int numeroconta;

  Transferencia(this.valor, this.numeroconta);
}

