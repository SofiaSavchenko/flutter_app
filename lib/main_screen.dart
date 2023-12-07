import 'package:flutter/material.dart';
import 'package:flutter_app/carousel.dart';
import 'elements_list.dart';
import 'filters.dart';
import 'resources/strings.dart';
import 'resources/images.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                icon: Image.asset(Images.cross),
                onPressed: () {},
              ),
              const Spacer(),
              IconButton(
                icon: Image.asset(Images.arrowRight),
                onPressed: () {},
              ),
            ],
          ),
        ),
        
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: Container(  
                    child: Image.asset(
                      Images.avatar,
                      height: 110,
                      width: 110,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 36),
                ),
                const SliverToBoxAdapter(
                  child: Text(
                    Strings.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'SFProText',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 14),
                ),
                SliverPersistentHeader(
                  delegate: _TabBarDelegate(
                    tabBar: const TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: Colors.green,
                      tabs: [
                        Tab(
                          child: Text(
                            Strings.profile,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            Strings.settings,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(
              children: [
                ListView(
                  children: const [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Carousel(),
                        SizedBox(height: 32),
                        ElementsList(),
                        SizedBox(height: 32),
                        Filters(),
                      ],
                    ),
                  ],
                ),
                const Center(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _TabBarDelegate({required this.tabBar});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
