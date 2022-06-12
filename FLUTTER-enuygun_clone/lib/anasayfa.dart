import 'package:flutter/material.dart';
import 'package:fk_toggle/fk_toggle.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),
            iconSize: 25, color: Colors.black45,),
          title: const  Center(
            child:  Text("ENUYGUN",
              style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold, fontFamily: "Poppins", fontSize: 40 ),),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications),
              iconSize: 25, color: Colors.black45,),
          ],

          bottom:  TabBar(tabs: [

            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Tab(icon: Icon(Icons.airplanemode_active),),
                  Text("Uçak", style: TextStyle(fontSize: 20),),],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Tab(icon: Icon(Icons.hotel),),
                  Text("Otel", style: TextStyle(fontSize: 20),),],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Tab(icon: Icon(Icons.directions_bus),),
                  Text("Otobüs", style: TextStyle(fontSize: 20),),],
              ),
            ),

          ],
            indicatorColor: Colors.green,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black87,
          ),
        ),
        body: Container(


              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("resimler/bck.jpg"),
                fit: BoxFit.cover,
                ),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children:<Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 31),
                  child: Card(
                    child: FkToggle(width: 170, height: 35,
                      labels: const ['Tek Yön', 'Gidiş-Dönüş'],
                      selectedColor: Colors.green,
                      backgroundColor: Colors.white,
                      cornerRadius: 3,

                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  child: SizedBox(
                    width: 385,
                    height: 140,
                    child: Card(
                      elevation: 2,
                      margin: EdgeInsets.all(12),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Row(
                          children: <Widget> [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                                  child: Text("Nereden"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                                  child: Text('İstanbul', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                  child: Text("İstanbul, Türkiye-"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                                  child: Text("İstanbul Havalimanı"),
                                ),

                              ],
                            ),
                            Spacer(),
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.end
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 0),
                                  child: Text("|",style: TextStyle(fontSize: 22,color: Colors.black38), ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                                  child: Icon(Icons.compare_arrows),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                                  child: Text("|",style: TextStyle(fontSize: 22, color: Colors.black38),),
                                ),



                              ],

                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                                  child: Text("Nereye"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                                  child: Text('Elazığ', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal:2),
                                  child: Text("EZS, Elazığ, Türkiye-"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 1),
                                  child: Text("Elazığ Havalimanı"),
                                ),

                              ],
                            ),

                          ],

                        ),
                      ),

                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 13),
                  child: SizedBox(
                    width: 385,
                    height: 130,
                    child: Card(
                      elevation: 2,
                      margin: EdgeInsets.all(12),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        child: Row(
                          children: <Widget> [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
                                  child: Text("Gidiş Tarihi"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(

                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 0, right: 2, bottom: 15, top: 2),
                                            child: Text('30', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 0, top: 0, bottom: 3, right: 1),
                                                    child: Text('Eylül', style: TextStyle(fontWeight: FontWeight.bold),),),
                                                ],),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 0, right: 1, left: 0, bottom:15 ),
                                                    child: Text('Cuma', ),),
                                                ],
                                              ),
                                            ],
                                          ),




                                        ],
                                      ),
                                    ],

                                  ),
                                ),








                              ],
                            ),
                            Spacer(),
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.end
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[

                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 27),
                                  child: Text("|",style: TextStyle(fontSize: 40, color: Colors.black12),),
                                ),






                              ],

                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 55),
                                  child: Icon(Icons.add_circle_outline_outlined),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                                  child: Text('Dönüş Ekle', style: TextStyle(fontSize: 15, )),
                                ),



                              ],
                            ),

                          ],

                        ),
                      ),

                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: SizedBox(
                    width: 380,
                    height: 70,
                    child: Card(
                      elevation: 2,
                      margin: EdgeInsets.all(12),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Row(
                          children: <Widget> [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget> [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                                  child: Text("1 Yolcu / Ekonomi"),
                                ),


                              ],
                            ),
                            Spacer(),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget> [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                                      child: Text("Yolcu Ekle  "),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                                      child:  Icon(Icons.add_circle_outline),
                                    ),
                                  ],
                                ),



                              ],
                            ),

                          ],

                        ),
                      ),

                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 40),
                  child: Text("Sadece aktarmasız uçuşları göster",style: TextStyle(fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                  child: Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.green,

                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: SizedBox(
                    width: 360,
                    height: 40,
                    child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      child: Text("UCUZ BİLET BUL",
                        style: TextStyle(fontSize: 20), ),

                    ),
                  ),
                ),
              ],
            ),

          ],


        ),














        ),
        bottomNavigationBar: Container(
          height: 40,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0,-10),
                blurRadius: 35,
                color: Colors.lightBlueAccent.withOpacity(0.38),
              ),

            ],
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),

            ),
          ),
          child: Row(

            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 140),
                child: Text("Hızlı İşlemler", style: TextStyle(fontSize: 17),),
              ),
            ],
          ),
        ),





//
      ),
    );
  }
}

/*
Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [],
          ),
        ),

 */