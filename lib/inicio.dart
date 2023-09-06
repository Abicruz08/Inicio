import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});
  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gestory Password",
      home: Scaffold(

        appBar: AppBar(
          title: Text('Ejemplo'),
          actions: [
            Switch(value: AdaptiveTheme.of(context).mode == AdaptiveThemeMode.light,
              onChanged: (bool value){
                if(value){
                  AdaptiveTheme.of(context).setLight();
                }
                else{
                  AdaptiveTheme.of(context).setDark();
                }
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      //height: 200,
                      //padding: EdgeInsets.all(30),
                      margin: EdgeInsets.only(left: 20, top: 40),
                      child: CircleAvatar(
                        radius: 30, // Tamaño del círculo de la foto de perfil
                        //backgroundImage: AssetImage(''), // Aquí debes poner la ruta de la imagen de perfil
                      ),
                    ),
                    Container(
                      //padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 50),
                      //margin: EdgeInsets.only(right: 30),
                      child: Text(
                        'Gestory Password',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey), // Agregar un borde
                    borderRadius: BorderRadius.circular(10), // Agregar redondeo
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'busqueda de nota...',
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //SizedBox(width: 20),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 20),
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          child: Text(
                            'Bancaria Movil',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          child: Text(
                            'Redes sociales',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 20, right: 20),
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),

                          child: Text(
                            'Lista de compras',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),

            SizedBox(height: 30),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 110),
                      child: Text('Cuenta BBVA'),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 110),
                      child: Text('Cuenta BBVA'),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 110),
                      child: Text('Cuenta BBVA'),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 110),
                      child: Text('Cuenta BBVA'),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 110),
                      child: Text('Cuenta BBVA'),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),

            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.add ),
          onPressed: (){
            print('Hola Mundo');
          },
        ),
      ),
    );
  }
}