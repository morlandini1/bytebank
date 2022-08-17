import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
        appBar: AppBar(title: Text('Trasferências'),),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Icon(Icons.add),
        ),
      ),
    ));

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferencia(Transferencia(100.0, 1000)),
        ItemTransferencia(Transferencia(200.0, 1001)),
        ItemTransferencia(Transferencia(300.0, 2000)),

      ],
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

