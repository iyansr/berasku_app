import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageV2 extends StatefulWidget {
  @override
  _HomePageStateV2 createState() => _HomePageStateV2();
}

class _HomePageStateV2 extends State<HomePageV2> {
  final Widget berasIcon = SvgPicture.asset('assets/flour.svg');
  final Widget galonIcon = SvgPicture.asset('assets/water.svg');
  final Widget gasIcon = SvgPicture.asset('assets/gas-cylinder.svg');

  List<String> listImg = [
    'assets/slider.jpg',
    'assets/slider.jpg',
    'assets/slider.jpg',
  ];

  var daftarBeras = [
    {
      'nama_beras': 'Beras Kepala 50Kg',
      'harga': '460000',
      'gambar':
          'https://cdn.sribu.com/assets/media/contest_detail/2016/10/desain-packing-beras-merek-paijo-57fd3efb9d68b1117b534159/7dc5835584.jpg'
    },
    {
      'nama_beras': 'Beras Kepala 25Kg',
      'harga': '250000',
      'gambar':
          'https://cdn.sribu.com/assets/media/contest_detail/2016/10/desain-packing-beras-merek-paijo-57fd3efb9d68b1117b534159/7dc5835584.jpg'
    },
    {
      'nama_beras': 'Beras Kepala 20Kg',
      'harga': '200000',
      'gambar':
          'https://cdn.sribu.com/assets/media/contest_detail/2016/10/desain-packing-beras-merek-paijo-57fd3efb9d68b1117b534159/7dc5835584.jpg'
    },
  ];

  String email = 'iyan_saputra@outlook.co.id';
  String name = 'Iyan Saputra';

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            UserAccountsDrawerHeader(
              // decoration: BoxDecoration(color: Colors.),
              accountEmail: Text(email),
              accountName: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://avatarfiles.alphacoders.com/149/149714.jpg',
                ),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('One-line with trailing widget'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('One-line with trailing widget'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                print(daftarBeras.length);
              },
              icon: Icon(
                FontAwesomeIcons.shoppingCart,
              ),
            )
          ],
          title: Text(
            'Berasku',
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontFamily: 'Lobster',
            ),
          ),
          leading: IconButton(
              icon: Icon(FontAwesomeIcons.bars),
              onPressed: () => _scaffoldKey.currentState.openDrawer())),
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                height: 175,
                color: Colors.red,
              ),
              Container(
                height: 130.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      listImg[index],
                      fit: BoxFit.cover,
                    );
                  },
                  itemCount: listImg.length,
                  pagination: SwiperPagination(),
                  control: SwiperControl(),
                  autoplay: true,
                  autoplayDelay: 6000,
                ),
              ),
              Positioned(
                top: 130.0,
                left: 10.0,
                right: 10.0,
                child: Container(
                  height: 80.0,
                  child: Card(
                    elevation: 10,
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  print('beras');
                                },
                                child: SizedBox(
                                  width: 36,
                                  height: 36,
                                  child: berasIcon,
                                ),
                              ),
                              Text(
                                'Beras',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: <Widget>[
                              SizedBox(width: 36, height: 36, child: gasIcon),
                              Text(
                                'Gas',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: <Widget>[
                              SizedBox(width: 36, height: 36, child: galonIcon),
                              Text(
                                'Galon',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            height: (daftarBeras.length * 190).toDouble(),
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: daftarBeras.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              daftarBeras[index]['gambar'].toString(),
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 200.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    Colors.white.withOpacity(0.0),
                                    Colors.white,
                                  ],
                                  stops: [0.3, 1.0],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, top: 125),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    daftarBeras[index]['nama_beras'],
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                  Text(
                                    'Rp. ' + daftarBeras[index]['harga'] + ',-',
                                    style: TextStyle(fontFamily: 'Raleway'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
