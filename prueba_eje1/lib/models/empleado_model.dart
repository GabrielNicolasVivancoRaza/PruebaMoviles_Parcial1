class EmpleadoModel{
  final double sueldo = 35000;
  final int aniosAntiguedad;
  final int edad;

  EmpleadoModel(this.aniosAntiguedad, this.edad);

  double calcularSueldo(){
    int antiguedad = 0;
    for (int i = 1; i <= aniosAntiguedad; i++) {
      antiguedad += i;
    }
    antiguedad *= 100;
    return sueldo + antiguedad + edad;
  }
}