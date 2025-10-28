import 'package:flutter/material.dart';
import '../controllers/empleado_controller.dart';
import '../widgets/boton_calcular.dart';
import '../widgets/input_venta.dart';

class PaginaView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _PaginaViewState();
}

class _PaginaViewState extends State<PaginaView> {
  final controller = EmpleadoController();
  final edadEmpleado = TextEditingController();
  final antiguedadEmpleado = TextEditingController();

  void _calcular(){
    final resultado = controller.calcularSueldo(
        antiguedadEmpleado.text,
        edadEmpleado.text);

    //ruta
    Navigator.pushNamed(context, '/resultado', arguments: resultado);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular sueldo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            InputVenta(controller: antiguedadEmpleado, label: "Antiguedad Empleado"),
            SizedBox(height: 10,),
            InputVenta(controller: edadEmpleado, label: "Edad Empleado"),
            SizedBox(height: 10,),
            BotonCalcular(onPressed: _calcular)
          ],
        ),
      ),
    );
  }
}

