import 'package:prueba_eje1/models/empleado_model.dart';

class EmpleadoController{
  String calcularSueldo(String s1, String s2){

    if(s1.isEmpty || s2.isEmpty ){
      return 'Colocar la informacion en todos los campos';
    }

    final v1Antiguedad = int.tryParse(s1);
    final v2Edad = int.tryParse(s2);

    if(v1Antiguedad == null || v2Edad == null ){
      return 'Ingrese solo numeros enteros';
    }

    final empleado = EmpleadoModel(v1Antiguedad, v2Edad);
    final sueldo = empleado.calcularSueldo();

    return "El sueldo del empleado es: \$${sueldo.toStringAsFixed(2)}";
  }
}