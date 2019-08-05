import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageV2 extends StatefulWidget {
  final String email, name;
  HomePageV2({this.email, this.name});
  @override
  _HomePageStateV2 createState() => _HomePageStateV2();
}

class _HomePageStateV2 extends State<HomePageV2> {
  final Widget berasIcon = SvgPicture.asset('assets/flour.svg');
  final Widget galonIcon = SvgPicture.asset('assets/water.svg');
  final Widget gasIcon = SvgPicture.asset('assets/gas-cylinder.svg');

  List<String> listImg = [
    'images/slider1.jpg',
    'images/slider2.jpg',
    'images/slider3.jpg',
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

  final TextStyle _boldText = TextStyle(fontWeight: FontWeight.w700);
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.8), BlendMode.dstATop),
                    image: AssetImage('images/slider2.jpg'),
                    fit: BoxFit.cover),
              ),
              accountEmail: Text(widget.email),
              accountName: Text(
                widget.name,
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
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.userAlt,
                color: Colors.black,
              ),
              title: Text('Profile', style: _boldText),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.solidCheckSquare,
                color: Colors.black,
              ),
              title: Text('Satus Pembelian', style: _boldText),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.solidQuestionCircle,
                color: Colors.black,
              ),
              title: Text('Bantuan', style: _boldText),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.info,
                color: Colors.black,
              ),
              title: Text('Tentang', style: _boldText),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 3.25),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                onTap: () {},
                leading: Icon(
                  FontAwesomeIcons.signOutAlt,
                  color: Colors.black,
                ),
                title: Text('Keluar'),
              ),
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
                color: Color(0xffea2c2c),
              ),
              Container(
                height: 130.0,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffea2c2c),
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
            height: (daftarBeras.length * 100).toDouble(),
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: daftarBeras.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 200,
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
                                  const EdgeInsets.only(left: 10, top: 130),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    daftarBeras[index]['nama_beras'],
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
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
