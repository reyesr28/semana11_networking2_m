import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:semana11_networking2_m/api/Service.dart';

class vista1 extends StatelessWidget {
  const vista1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trabajando Netwonking 2'),
      ),


      body: FutureBuilder(

        initialData: [],

        future: Service.getProduct(),

        builder: (context, AsyncSnapshot<List> snapshot){

          return ListView.builder(

              itemCount: snapshot.data!.length,

              itemBuilder: (context, index){

                var prod = snapshot.data![index];

                return Container(

                  height: 100,

                  child: Column(

                    children: [

                      Row(

                        children: [

                          Container(

                            width: 250,

                            child: Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [

                                Text('Código: ${prod.id}'),

                                SizedBox(

                                  height: 10,

                                ),

                                Text('Descripcion: ${prod.title}'),

                              ],

                            ),

                          ),

                          Image.network('${prod.image}',

                            width: 120,

                            height: 50,

                          ),

                        ],

                      ),

                    ],

                  ),

                );

              }

          );

        },

      ),
    );
  }
}
