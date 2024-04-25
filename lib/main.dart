import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '',
            textAlign: TextAlign.center, // Alinea el texto al centro
          ),
          centerTitle: true, // Centra el título horizontalmente
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 100, // Altura del encabezado
                color: Colors.blue, // Color azul para el encabezado
                child: Center(
                  child: Text(
                    '1390-22-5808',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
              CustomPaint(
                size: Size(200, 400), // Cambié el alto a 400 para centrar el contenido
                painter: ShapesPainter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Ajuste para centrar verticalmente
    double centerY = (size.height - 400) / 2 - 30;

    // Rectángulo azul con bordes azules y fondo blanco
    Paint blueRectPaint = Paint()..color = Colors.blue;
    canvas.drawRect(Rect.fromLTWH(50, 70 + centerY, 100, 100), blueRectPaint);

    Paint whiteRectPaint = Paint()..color = Colors.white;
    canvas.drawRect(Rect.fromLTWH(52, 72 + centerY, 96, 96), whiteRectPaint);

    // Línea de borde rojo (ahora más larga y gruesa)
    Paint redPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0; // Ajusta el ancho del trazo aquí
    canvas.drawLine(Offset(0, 180 + centerY), Offset(size.width, 180 + centerY), redPaint);

    // Círculo amarillo completo (subido más)
    Paint yellowFillPaint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(100, 240 + centerY), 30, yellowFillPaint);

    // Círculo con borde naranja (más pequeño)
    Paint orangePaint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5; // Ajusta el ancho del trazo aquí
    canvas.drawCircle(Offset(100, 340 + centerY), 30, orangePaint);

    // Cuadrado azul completo (más pequeño)
    Paint blueFillPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    canvas.drawRect(Rect.fromLTWH(50, 400 + centerY, 100, 100), blueFillPaint);

    // Texto del nombre (Edvin Posadas)
    TextPainter textPainter2 = TextPainter(
      text: TextSpan(
        text: 'Edvin Posadas',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.0,
        ),
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter2.layout();
    textPainter2.paint(canvas, Offset(50 + (100 - textPainter2.width) / 2, 400 + centerY + (100 - textPainter2.height) / 2));

    // Línea curva color amarillo (forma de sonrisa más larga y gruesa)
    Paint yellowLinePaint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0; // Ajusta el ancho del trazo aquí
    Path path = Path()
      ..moveTo(0, 530 + centerY)
      ..quadraticBezierTo(100, 570 + centerY, 200, 530 + centerY); // Ajusta las coordenadas para la forma deseada
    canvas.drawPath(path, yellowLinePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

