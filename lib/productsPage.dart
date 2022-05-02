// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cosmetic_app/eachProduct.dart';
import 'package:cosmetic_app/imgEditPage.dart';
import 'package:flutter/material.dart';
import 'SideBar.dart';

class ProductPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ProductPage> {
  bool isLocal = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.grey),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => imageEditPage()));
              },
              icon: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assest/pro.jpg',
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            )
          ],
        ),
        drawer: Container(
          width: 190.0,
          child: SideBar(),
        ),
        backgroundColor: Colors.grey[200],
        body: ListView(
          
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.0),
          children: [
            Column(
              children: [
                Container(
                  // margin: EdgeInsets.only(top: 5.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                            "Welcome,",
                            style: TextStyle(
                                fontSize: 15.0, color: Colors.grey[800]),
                          ),
                          Text("$userName",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[800]))
                        ],
                      )),
                ),
                Stack(children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0),
                    height: 30.0,
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                            ),
                            fillColor: Colors.red[50],
                            filled: true,
                            hintText: 'Search',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 3.0),
                              // borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3.0, color: Colors.transparent),
                            ),
                            contentPadding: EdgeInsets.only(left: 37.0))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.0, left: 10.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey[800],
                    ),
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 32.0,
                        width: 32.0,
                        margin: EdgeInsets.only(top: 13.0),
                        decoration: BoxDecoration(
                          color: Color(0xffcb3a48),
                          border: Border.all(
                            color: Colors.transparent,
                            width: 2.7,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.edit_road,
                          color: Colors.white,
                          size: 18.0,
                        ),
                      ))
                ]),
                SizedBox(
                  height: 10.0,
                ),
                DefaultTabController(
                    length: 4, // length of tabs
                    initialIndex: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: TabBar(
                              labelColor: Colors.grey[900],
                              indicatorColor: Colors.red[400],
                              tabs: [
                                Tab(text: 'Face'),
                                Tab(text: 'Body'),
                                Tab(text: 'Hair'),
                                Tab(text: 'Gifts'),
                              ],
                            ),
                          ),
                          Container(
                              height: 225, //height of TabBarView
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.grey, width: 0.5))),
                              child: TabBarView(children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 15.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          makeProduct(
                                              "https://i0.wp.com/beautyvelle.com/wp-content/uploads/2021/10/Natasha-Denona-Holiday-Palettes-Banner-2.png?resize=800%2C800&ssl=1",
                                              Color(0xff00465c),
                                              "Eye Shadow",
                                              "\$60",
                                              "Pressed Powder Palette contains 5 shades in three finishes: matte, metallic and glitter. This Halloween-inspired color story features soft, easy-to-blend formulas that deliver a highly pigmented color payoff."),
                                          makeProduct(
                                              "https://images.squarespace-cdn.com/content/v1/4f7f153f24ac62b8df44a479/1619121351777-TKKE47ROUFX5TYQZ8X2L/TulaShot4.jpg?format=500w",
                                              Color(0xff3bcde0),
                                              "Hand Mostirizer",
                                              "\$30",
                                              "Tired, dull looking skin got you feeling blue? Meet our new Infallible Magic Essence Drops. Priming drops specially formulated with blue toned light diffusing technology to counteract sallowness and revitalise and restore radiance to dull looking skin"),
                                          makeProduct(
                                              "https://images.squarespace-cdn.com/content/v1/56787cadc647ad2a4bc5c983/1523657591878-VBFI9AIQI048CEKZOWOB/NARS_WEB-DARKER-on+site.jpg?format=2500w",
                                              Color(0xffba765b),
                                              "Nars Foundation",
                                              "\$55",
                                              "Re-discover True Match, a skin-care infused foundation, now available in 40 shades"),
                                          makeProduct(
                                              "https://images.squarespace-cdn.com/content/v1/4f7f153f24ac62b8df44a479/1619812838315-LRB95ERJAIQES5XH9G5U/3_PIECE_AGAVE_LIP_CARE_SET+_315.jpg?format=750w",
                                              Color(0xff2e2b2e),
                                              "Agave Cream",
                                              "\$99",
                                              "Re-discover True Match, a skin-care infused foundation, now available in 40 shades. "),
                                          makeProduct(
                                              "https://images.squarespace-cdn.com/content/v1/4f7f153f24ac62b8df44a479/1618868631017-HO1PI4ZTJ65N0HVIVSW5/JMP_BITE_01272125969_r1.jpg?format=500w",
                                              Color(0xff700744),
                                              "BITE Mascara",
                                              "\$18",
                                              "It's time to say bye-bye to boring lashes and hello to new Miss Baby Roll Mascara, for mega volume, curl and all-day hold."),
                                          makeProduct(
                                              "https://kenh14cdn.com/thumb_w/620/2019/3/27/peri0-1553678609843313362661.jpg",
                                              Color(0xff540000),
                                              "Lispstick Set",
                                              "\$77",
                                              "Dress your lips in the must-have, iconic Color Riche Lipstick. Rich, pure colour pigments with a luxurious satin finish. The ultra-creamy formula, enriched with nourishing Omega 3 and Vitamin E, leaves lips feeling soft, smooth and hydrated."),
                                          makeProduct(
                                              "https://www.makeup.com/-/media/project/loreal/brand-sites/mdc/americas/us/articles/2017/november/15-women-in-beauty-christina-suh/23507662_505474163163657_4295354624740687872_n.jpg?w=705&h=881&blr=False&hash=894818FB122F5C48AB57A1DD2BB38485",
                                              Color(0xff2e2b2e),
                                              "Maybelline Marscara",
                                              "\$50",
                                              "It's time to say bye-bye to boring lashes and hello to new Miss Baby Roll Mascara, for mega volume, curl and all-day hold. Our mega curl roller brush curls lashes from the root, for an instant lash lift!"),
                                          makeProduct(
                                              "https://coty.scene7.com/is/image/cotyemea/3616303132415_KS_LOILW_21_Product_6ml_0.2oz_pack_Pink_Background?\$SQUARE-575x575-2X\$",
                                              Color(0xff944851),
                                              "Watermelon Lip Oil",
                                              "\$88",
                                              "Facial Oil helps balance, clarify, and improve skin’s texture leaving it with a healthy-looking glow. Formulated with skin-loving ingredients")
                                        ]),
                                  ),
                                ),
                                Container(
                                    padding: EdgeInsets.only(top: 15.0),
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              makeProduct(
                                                  "https://mir-s3-cdn-cf.behance.net/project_modules/fs/7af70f119637947.60a24441aac84.jpg",
                                                  Color(0xff465e36),
                                                  "Body Loshin",
                                                  "\$100",
                                                  "A body lotion has both emollients and humectants as moisturizing ingredients. It also contains vitamin E and essential fatty acids, which keep your skin hydrated and protect your natural skin barrier."),
                                              makeProduct(
                                                  "http://iblcor.jpg3.kr/livingpickcom/multiimage/whitelab_thumb03.jpg",
                                                  Color(0xffc28836),
                                                  "White Lab",
                                                  "\$70",
                                                  "work by reducing a pigment called melanin in the skin. Most people who use lighteners do so to treat skin problems such as age spots, acne scars, or discoloration related to hormones."),
                                              makeProduct(
                                                  "https://images.squarespace-cdn.com/content/v1/4f7f153f24ac62b8df44a479/1619121351777-TKKE47ROUFX5TYQZ8X2L/TulaShot4.jpg?format=500w",
                                                  Color(0xff3bcde0),
                                                  "Hand Mostirizer",
                                                  "\$30",
                                                  "Tired, dull looking skin got you feeling blue? Meet our new Infallible Magic Essence Drops. Priming drops specially formulated with blue toned light diffusing technology to counteract sallowness and revitalise and restore radiance to dull looking skin"),
                                            ]))),
                                Container(
                                    padding: EdgeInsets.only(top: 15.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          makeProduct(
                                              "https://cdn.wallpaper.com/main/styles/responsive_770w_scale/s3/gmists_toner-009_ret.jpg",
                                              Color(0xff423938),
                                              "Haircare set",
                                              "\$44",
                                              "With its elegant good looks and health-conscious ethos, True Botanicals could easily be lumped together with many other natural skincare brands that stand in the luxury market today."),
                                          makeProduct(
                                              "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/7e67ab45652017.5837e42f21e79.jpg",
                                              Colors.grey,
                                              "Hair shampoo set",
                                              "\$66",
                                              "")
                                        ],
                                      ),
                                    )),
                                Container(
                                    padding: EdgeInsets.only(top: 15.0),
                                    child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              makeProduct(
                                                  "https://cdn.wallpaper.com/main/styles/responsive_1460w_scale/s3/vegan_cultus.jpg?itok=5q9bbhvQ",
                                                  Color(0xff423938),
                                                  "Cultus Artem",
                                                  "\$55",
                                                  "San Antonio, Texas brand Cultus Artem crafts all its own vegan skincare products and fragrances from a converted 1920s manor that houses its laboratory, warehouse, and design studios."),
                                              makeProduct(
                                                  "https://cdn.wallpaper.com/main/styles/responsive_1460w_scale/s3/rose_lelabo.jpg?itok=FhhX_p00",
                                                  Colors.grey,
                                                  "Rose 31 by Le Labo ",
                                                  "\$80",
                                                  "Le Labo’s Rose 31 perfume aims to transform the traditionally feminine Grasse Rose into an ‘assertively virile’ fragrance by blending it with warm and spicy notes of cumin, cedar and amber.")
                                            ]))),
                              ]))
                        ])),
              ],
            ),
            // SizedBox(
            //   height: 15.0,
            // ),
            Text("Pupular products"),
            SizedBox(
              height: 7.0,
            ),

            makePupularProduct(
                "https://images.squarespace-cdn.com/content/v1/4f7f153f24ac62b8df44a479/1619813976707-83PQ1KPD4WQYXMBV384O/JMP_DERM_010621_003b.jpg?format=500w",
                "Snake Oil",
                Color(0xff540000),
                "4.5",
                "\$80",
                "Facial Oil helps balance, clarify, and improve skin’s texture leaving it with a healthy-looking glow. Formulated with skin-loving ingredients"),
            makePupularProduct(
                "https://images.squarespace-cdn.com/content/v1/4f7f153f24ac62b8df44a479/1619812838315-LRB95ERJAIQES5XH9G5U/3_PIECE_AGAVE_LIP_CARE_SET+_315.jpg?format=750w",
                "Agave Cream",
                Color(0xff2e2b2e),
                "4.9",
                "\$99",
                "Re-discover True Match, a skin-care infused foundation, now available in 40 shades. "),
            makePupularProduct(
                "https://images.squarespace-cdn.com/content/v1/4f7f153f24ac62b8df44a479/1619812769641-BPPE6HTAEZ7I927H90SO/MiracleBalm_219_v1.jpg?format=500w",
                "Face Powder",
                Color(0xff944851),
                "4.4",
                "\$66",
                "Available in 6 natural shades, this loose, weightless powder was designed for all skin tones and is a must-have for keeping your makeup looking good all day long."),
            makePupularProduct(
                "https://images.squarespace-cdn.com/content/v1/56787cadc647ad2a4bc5c983/1523657591878-VBFI9AIQI048CEKZOWOB/NARS_WEB-DARKER-on+site.jpg?format=2500w",
                "Nars Foundation",
                Color(0xffba765b),
                "4.3",
                "\$55",
                "Re-discover True Match, a skin-care infused foundation, now available in 40 shades"),
           
          ],
        ));
  }

  GestureDetector makeProduct(String imgUrl, Color c, String pName,
      String productPrice, String descrip) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => eachProduct(
                    productImg: imgUrl,
                    productName: pName,
                    mainColor: c,
                    price: productPrice,
                    description: descrip,
                  )),
        );
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 125,
                height: 140.0,
                margin: EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                  image: DecorationImage(
                    image: NetworkImage(imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 135.0, left: 10.0),
                  height: 55.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18)),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          pName,
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(productPrice, style: TextStyle(fontSize: 11.0)),
                          Container(
                            height: 25.0,
                            width: 25.0,
                            decoration: BoxDecoration(
                                color: Color(0xffcb3a48),
                                border: Border.all(
                                    color: Colors.transparent, width: 3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Icon(
                              Icons.shopping_bag,
                              size: 15.0,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Container makePupularProduct(String imgUrl, String pName, Color c,
      String rating, String productPrice, String desrip) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 6.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.transparent, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => eachProduct(
                          productImg: imgUrl,
                          productName: pName,
                          mainColor: c,
                          price: productPrice,
                          description: desrip,
                        )),
              );
            },
            child: Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17), // Image border
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(48), // Image radius
                      child: Image.network(imgUrl, fit: BoxFit.cover),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(pName),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            rating,
                            style: TextStyle(fontSize: 10.0),
                          )
                        ],
                      ),
                    ),
                    //  Icon(Icons.favorite_border)
                  ],
                )
              ],
            )));
  }
}
