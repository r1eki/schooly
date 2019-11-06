import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        child: new Container(
          padding: new EdgeInsets.only(
            top: MediaQuery.of(context).padding.top
          ),
          child: new Container(
            padding: const EdgeInsets.only(
              left: 30.0,
              top: 20.0,
              bottom: 20.0
            ),
            child: new Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 11.0,bottom: 1.0),
                  child: Icon(
                  Icons.school,
                  size: 30.0,
                  color: Colors.black,
                  ),
                ),               
                Text(
              'Scoolly',
              style: new TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),
            ),
              ],
            )
          ),
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              colors: [
                Colors.lightBlue[300],
                Colors.lightBlue[200]
              ]
            ),
          ),
        ),
        preferredSize: new Size(
          MediaQuery.of(context).size.width,
          150.0
        ),
      ),
      body:Container(
        color: Colors.white10,
        child: ListView(
        children: <Widget>[
          MenuBar(),
          PengumumanBar(),
          RekomEbook(),
          Berita(),
          Beasiswa(),
          SizedBox(height: 100.0,)
        ],
      ),
      )
    );
  }
}

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 8.0),
              child: Container(
                height: 300.0,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),boxShadow: [new BoxShadow(color: Colors.grey, offset: new Offset(3.0, 3.0), blurRadius: 2.5
                )],color: Colors.white), 
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                          padding: const EdgeInsets.only(left:25.0, top: 10.0),
                          child: Container(
                            height: 110.0,
                            width: 110.0,
                            child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: FloatingActionButton(
                              backgroundColor: Colors.orange[300],
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                              child: Icon(Icons.assignment),
                              foregroundColor: Colors.black,
                              onPressed: (){},
                            ),
                          ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:27.0,bottom: 10.0),
                          child: Text('Absensi',style: TextStyle(fontWeight: FontWeight.bold),)
                        ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                          height: 100.0,
                          width: 100.0,
                          child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: FloatingActionButton(
                            backgroundColor: Colors.orange[300],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                            child: Icon(Icons.content_paste),
                              foregroundColor: Colors.black,
                              onPressed: (){},
                          ),
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2.0),
                          child: Text('Nilai',style: TextStyle(fontWeight: FontWeight.bold))
                        ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                          height: 100.0,
                          width: 100.0,
                          child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: FloatingActionButton(
                            backgroundColor: Colors.orange[300],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                            child: Icon(Icons.import_contacts),
                              foregroundColor: Colors.black,
                              onPressed: (){},
                          ),
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2.0),
                          child: Text('E-Book',style: TextStyle(fontWeight: FontWeight.bold))
                        ),
                          ],
                        )
                      ]),
                    ),
                      Container(
                        child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                          padding: const EdgeInsets.only(left:25.0),
                          child: Container(
                            height: 110.0,
                            width: 110.0,
                            child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: FloatingActionButton(
                              backgroundColor: Colors.orange[300],
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                              child: Icon(Icons.fastfood),
                              foregroundColor: Colors.black,
                              onPressed: (){},
                            ),
                          ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left:25.0,bottom: 5.0),
                          child: Text('Kantin',style: TextStyle(fontWeight: FontWeight.bold))
                        ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                          height: 100.0,
                          width: 100.0,
                          child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: FloatingActionButton(
                            backgroundColor: Colors.orange[300],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                            child: Icon(Icons.account_balance_wallet),
                              foregroundColor: Colors.black,
                              onPressed: (){},
                          ),
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2.0),
                          child: Text('Tabungan',style: TextStyle(fontWeight: FontWeight.bold))
                        ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                          height: 100.0,
                          width: 100.0,
                          child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: FloatingActionButton(
                            backgroundColor: Colors.orange[300],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                            child: Icon(Icons.color_lens),
                              foregroundColor: Colors.black,
                              onPressed: (){},
                          ),
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2.0),
                          child: Text('Ekstra',style: TextStyle(fontWeight: FontWeight.bold))
                        ),
                          ],
                        ),
                      ]),
                      ),
                  ],
                ),
              ),
            );
  }
}

class PengumumanBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 1.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Container(
                padding: EdgeInsets.only(top:15.0,right: 230.0,bottom: 5.0),
                color: Colors.white10,
                child: Text('Pengumuman',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right:8.0),
              child: Container(
                padding: EdgeInsets.only(left:20.0),
                height: 135.0,
                width: 400.0,
                
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.white
                ,boxShadow: [new BoxShadow(color: Colors.grey, offset: new Offset(3.0, 5.0), blurRadius: 5.0
                )]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      padding: EdgeInsets.only(right: 270.0,bottom: 10.0),
                      child: Text('20 Oktober 2019',style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 170.0),
                      child: Text('- Ini Pengumuman Ges',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold)),
                    ),
                      ],
                    ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 7.0,left: 272.0),
              child: RaisedButton(
                onPressed: (){},
                color: Colors.green,
                textColor: Colors.white,
                child: Text('Lihat Semua'),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
              ),
            )
          ],
        ),
      );
  }
}

class RekomEbook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:0.0),
              child: Container(
                padding: EdgeInsets.only(top:5.0,right: 310.0,bottom: 8.0,left: 27.0),
                color: Colors.white10,
                child: Text('E-Book',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right:8.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                height: 170.0,
                width: 400.0,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.white,
                boxShadow: [new BoxShadow(color: Colors.grey,offset: new Offset(3.0, 5.0),blurRadius: 5.0)]),
                child: Row(children: <Widget>[
                  Container(
                    height: 120.0,
                    width: 80.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.blueGrey[100]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    height: 120.0,
                    width: 80.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.blueGrey[100]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    height: 120.0,
                    width: 80.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.blueGrey[100]),
                  ),
                ],),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 7.0,left: 272.0),
              child: RaisedButton(
                onPressed: (){},
                color: Colors.green,
                textColor: Colors.white,
                child: Text('Lihat Semua'),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
              ),
            )
          ],
        ),
      );
  }
}

class Berita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:5.0, left: 15.0, right: 10.0),
      child: Column(
        children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15.0,top: 5.0),
          child: Text('Berita Terbaru',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
        width: 400.0,
        height: 40.0,
      ),
      Container(
        margin: EdgeInsets.only(top: 1.0),
        width: 400.0,
        height: 220.0,
        decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20.0),color: Colors.white,
        boxShadow: [new BoxShadow(color: Colors.grey, offset: new Offset(3.0, 5.0), blurRadius: 5.0
                )]),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0,bottom: 30.0),
              width: 386.0,
              height: 165.0,
              decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20.0),color: Colors.grey,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15.0,right: 170.0),
              child: Text('Pemkot Buka jasa pijat',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.normal),),
            )
          ],
        ),
      ),
        ],
      )
    );
  }
}

class Beasiswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25.0, left: 15.0, right: 10.0),
      child: Column(
        children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15.0,top: 5.0),
          child: Text('Informasi Beasiswa',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
        width: 400.0,
        height: 40.0,
      ),
      Container(
        margin: EdgeInsets.only(top: 1.0),
        width: 400.0,
        height: 150.0,
        decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20.0),color: Colors.white,
        boxShadow: [new BoxShadow(color: Colors.grey, offset: new Offset(3.0, 5.0), blurRadius: 5.0
                )]
                ),
                child: Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    height: 120.0,
                    width: 80.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.blueGrey[100]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    height: 120.0,
                    width: 80.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.blueGrey[100]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    height: 120.0,
                    width: 80.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.blueGrey[100]),
                  ),
                ],),
      ),
      Container(
              margin: EdgeInsets.only(top: 7.0,left: 272.0),
              child: RaisedButton(
                onPressed: (){},
                color: Colors.green,
                textColor: Colors.white,
                child: Text('Lihat Semua'),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
              ),
            )
        ],
      )
    );
  }
}

