import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/components/carousel.dart';
import 'package:food_app/components/quickOrderCard.dart';
import 'package:food_app/enum/constants.dart';
import 'package:food_app/utils/size_config.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => _animateSlider());
  }

  void _animateSlider() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      int nextPage = _pageController.page!.round() + 1;

      if (nextPage == carousel.length) {
        nextPage = 0;
      }

      _pageController
          .animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear)
          .then((_) => _animateSlider());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: SvgPicture.asset(
            'assets/images/Groupcarrot.svg',
            width: getProportionateScreenWidth(26),
          )),
      body: SingleChildScrollView(
          clipBehavior: Clip.none,
          physics: AlwaysScrollableScrollPhysics(),
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_rounded),
                  SizedBox(
                    width: getProportionateScreenWidth(3),
                  ),
                  Text('Accra, Ghana',
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(18.0),
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF4C4F4D)))
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(23)),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFF2F3F2),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15)),
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF7C7C7C)),
                      hintText: 'Search Store',
                    ),
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(23)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(20.0),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: getProportionateScreenHeight(115),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: PageView.builder(
                                    allowImplicitScrolling: true,
                                    controller: _pageController,
                                    onPageChanged: (value) {
                                      setState(() {
                                        _currentPage = value;
                                      });
                                    },
                                    itemCount: carousel.length,
                                    itemBuilder: (context, index) => Carousel(
                                          image: carousel[index]['image'],
                                        )),
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    carousel.length,
                                    (index) => buildDot(index),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(30.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Exclusive Offer',
                                style: Theme.of(context).textTheme.headline2),
                            Text(
                              'See all',
                              style: TextStyle(
                                  color: Color(0xFF53B175),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getProportionateScreenHeight(250),
                    child: ListView.separated(
                      padding: EdgeInsets.only(left: 30.0),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return QuickOrderCard(
                          image: quickOrder[index]['image'],
                          name: quickOrder[index]['name'],
                          price: quickOrder[index]['price'],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 15.0,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(25.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Best Selling',
                            style: Theme.of(context).textTheme.headline2),
                        Text(
                          'See all',
                          style: TextStyle(
                              color: Color(0xFF53B175),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25.0),
                  ),
                  Container(
                    height: getProportionateScreenHeight(250),
                    child: ListView.separated(
                      padding: EdgeInsets.only(left: 30.0),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return QuickOrderCard(
                          image: bestSelling[index]['image'],
                          name: bestSelling[index]['name'],
                          price: bestSelling[index]['price'],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 15.0,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(25.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Groceries',
                            style: Theme.of(context).textTheme.headline2),
                        Text(
                          'See all',
                          style: TextStyle(
                              color: Color(0xFF53B175),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25.0),
                  ),
                  Container(
                    height: getProportionateScreenHeight(105),
                    child: ListView.separated(
                      padding: EdgeInsets.only(left: 30.0),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          width: getProportionateScreenWidth(238.0),
                          height: getProportionateScreenHeight(105),
                          padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(17.0), horizontal: getProportionateScreenWidth(17.0)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Color(0xFFFEEFE0)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/pulses.png'),
                              SizedBox(
                                width: getProportionateScreenWidth(15.0),
                              ),
                              Text(
                                'Pulses',
                                style: Theme.of(context).textTheme.headline6,
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 15.0,
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: _currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: _currentPage == index ? Color(0xFF53B175) : Color(0xFFC4C4C4),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
