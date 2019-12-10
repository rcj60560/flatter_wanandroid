class HomeDataModel1 {
  final List<BannerHome> bannerList;
  final Config config;
  final GridNav gridNav;
  final List<LocalNav> localNavList;
  final SalesBox salesBox;
  final List<SubNav> subNavList;

  HomeDataModel1(
      {this.bannerList,
      this.config,
      this.gridNav,
      this.localNavList,
      this.salesBox,
      this.subNavList});

  factory HomeDataModel1.fromJson(Map<String, dynamic> json) {
    return HomeDataModel1(
      bannerList: json['bannerList'] != null
          ? (json['bannerList'] as List)
              .map((i) => BannerHome.fromJson(i))
              .toList()
          : null,
      config: json['config'] != null ? Config.fromJson(json['config']) : null,
      gridNav:
          json['gridNav'] != null ? GridNav.fromJson(json['gridNav']) : null,
      localNavList: json['localNavList'] != null
          ? (json['localNavList'] as List)
              .map((i) => LocalNav.fromJson(i))
              .toList()
          : null,
      salesBox:
          json['salesBox'] != null ? SalesBox.fromJson(json['salesBox']) : null,
      subNavList: json['subNavList'] != null
          ? (json['subNavList'] as List).map((i) => SubNav.fromJson(i)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bannerList != null) {
      data['bannerList'] = this.bannerList.map((v) => v.toJson()).toList();
    }
    if (this.config != null) {
      data['config'] = this.config.toJson();
    }
    if (this.gridNav != null) {
      data['gridNav'] = this.gridNav.toJson();
    }
    if (this.localNavList != null) {
      data['localNavList'] = this.localNavList.map((v) => v.toJson()).toList();
    }
    if (this.salesBox != null) {
      data['salesBox'] = this.salesBox.toJson();
    }
    if (this.subNavList != null) {
      data['subNavList'] = this.subNavList.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'HomeDataModel1{bannerList: $bannerList, config: $config, gridNav: $gridNav, localNavList: $localNavList, salesBox: $salesBox, subNavList: $subNavList}';
  }
}

class Config {
  final String
      searchUrl; // https://m.ctrip.com/restapi/h5api/searchapp/search?source=mobileweb&action=autocomplete&contentType=json&keyword=1

  Config({this.searchUrl});

  factory Config.fromJson(Map<String, dynamic> json) {
    return Config(
      searchUrl: json['searchUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['searchUrl'] = this.searchUrl;
    return data;
  }
}

class LocalNav {
  final bool hideAppBar; // true
  final String icon; // https://www.devio.org/io/flutter_app/img/ln_guide.png
  final String statusBarColor; // 19A0F0
  final String title; // 当地攻略
  final String url; // https://m.ctrip.com/webapp/you/

  LocalNav(
      {this.hideAppBar, this.icon, this.statusBarColor, this.title, this.url});

  factory LocalNav.fromJson(Map<String, dynamic> json) {
    return LocalNav(
      hideAppBar: json['hideAppBar'],
      icon: json['icon'],
      statusBarColor: json['statusBarColor'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['icon'] = this.icon;
    data['statusBarColor'] = this.statusBarColor;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class GridNav {
  final Flight flight;
  final Hotel hotel;
  final Travel travel;

  GridNav({this.flight, this.hotel, this.travel});

  factory GridNav.fromJson(Map<String, dynamic> json) {
    return GridNav(
      flight: json['flight'] != null ? Flight.fromJson(json['flight']) : null,
      hotel: json['hotel'] != null ? Hotel.fromJson(json['hotel']) : null,
      travel: json['travel'] != null ? Travel.fromJson(json['travel']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.flight != null) {
      data['flight'] = this.flight.toJson();
    }
    if (this.hotel != null) {
      data['hotel'] = this.hotel.toJson();
    }
    if (this.travel != null) {
      data['travel'] = this.travel.toJson();
    }
    return data;
  }
}

class Hotel {
  final String endColor; // fa9b4d
  final Item1 item1;
  final Item2 item2;
  final Item3 item3;
  final Item4 item4;
  final MainItem mainItem;
  final String startColor; // fa5956

  Hotel(
      {this.endColor,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.mainItem,
      this.startColor});

  factory Hotel.fromJson(Map<String, dynamic> json) {
    return Hotel(
      endColor: json['endColor'],
      item1: json['item1'] != null ? Item1.fromJson(json['item1']) : null,
      item2: json['item2'] != null ? Item2.fromJson(json['item2']) : null,
      item3: json['item3'] != null ? Item3.fromJson(json['item3']) : null,
      item4: json['item4'] != null ? Item4.fromJson(json['item4']) : null,
      mainItem:
          json['mainItem'] != null ? MainItem.fromJson(json['mainItem']) : null,
      startColor: json['startColor'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['endColor'] = this.endColor;
    data['startColor'] = this.startColor;
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    return data;
  }
}

class Item4 {
  final bool hideAppBar; // true
  final String title; // 民宿 客栈
  final String url; // https://m.ctrip.com/webapp/inn/index

  Item4({this.hideAppBar, this.title, this.url});

  factory Item4.fromJson(Map<String, dynamic> json) {
    return Item4(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class MainItem {
  final String
      icon; // https://pic.c-ctrip.com/platform/h5/home/grid-nav-items-hotel.png
  final String statusBarColor; // 4289ff
  final String title; // 酒店
  final String url; // https://m.ctrip.com/webapp/hotel/

  MainItem({this.icon, this.statusBarColor, this.title, this.url});

  factory MainItem.fromJson(Map<String, dynamic> json) {
    return MainItem(
      icon: json['icon'],
      statusBarColor: json['statusBarColor'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['statusBarColor'] = this.statusBarColor;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item1 {
  final String statusBarColor; // 4289ff
  final String title; // 海外酒店
  final String url; // https://m.ctrip.com/webapp/hotel/oversea/?otype=1

  Item1({this.statusBarColor, this.title, this.url});

  factory Item1.fromJson(Map<String, dynamic> json) {
    return Item1(
      statusBarColor: json['statusBarColor'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusBarColor'] = this.statusBarColor;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item2 {
  final String title; // 特价酒店
  final String url; // https://m.ctrip.com/webapp/hotel/hotsale

  Item2({this.title, this.url});

  factory Item2.fromJson(Map<String, dynamic> json) {
    return Item2(
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item3 {
  final bool hideAppBar; // true
  final String title; // 团购
  final String
      url; // https://m.ctrip.com/webapp/tuan/?secondwakeup=true&dpclickjump=true

  Item3({this.hideAppBar, this.title, this.url});

  factory Item3.fromJson(Map<String, dynamic> json) {
    return Item3(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Flight {
  final String endColor; // 53bced
  final Item1X item1;
  final Item2X item2;
  final Item3X item3;
  final Item4X item4;
  final MainItemX mainItem;
  final String startColor; // 4b8fed

  Flight(
      {this.endColor,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.mainItem,
      this.startColor});

  factory Flight.fromJson(Map<String, dynamic> json) {
    return Flight(
      endColor: json['endColor'],
      item1: json['item1'] != null ? Item1X.fromJson(json['item1']) : null,
      item2: json['item2'] != null ? Item2X.fromJson(json['item2']) : null,
      item3: json['item3'] != null ? Item3X.fromJson(json['item3']) : null,
      item4: json['item4'] != null ? Item4X.fromJson(json['item4']) : null,
      mainItem: json['mainItem'] != null
          ? MainItemX.fromJson(json['mainItem'])
          : null,
      startColor: json['startColor'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['endColor'] = this.endColor;
    data['startColor'] = this.startColor;
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    return data;
  }
}

class MainItemX {
  final String
      icon; // https://pic.c-ctrip.com/platform/h5/home/grid-nav-items-flight.png
  final String title; // 机票
  final String url; // https://m.ctrip.com/html5/flight/swift/index

  MainItemX({this.icon, this.title, this.url});

  factory MainItemX.fromJson(Map<String, dynamic> json) {
    return MainItemX(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item1X {
  final bool hideAppBar; // true
  final String title; // 火车票
  final String
      url; // https://m.ctrip.com/webapp/train/?secondwakeup=true&dpclickjump=true&from=https%3A%2F%2Fm.ctrip.com%2Fhtml5%2F#/index?VNK=4e431539

  Item1X({this.hideAppBar, this.title, this.url});

  factory Item1X.fromJson(Map<String, dynamic> json) {
    return Item1X(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item3X {
  final bool hideAppBar; // true
  final String title; // 汽车票·船票
  final String url; // https://m.ctrip.com/html5/Trains/bus/

  Item3X({this.hideAppBar, this.title, this.url});

  factory Item3X.fromJson(Map<String, dynamic> json) {
    return Item3X(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item2X {
  final String title; // 特价机票
  final String url; // https://m.ctrip.com/html5/flight/swift/index

  Item2X({this.title, this.url});

  factory Item2X.fromJson(Map<String, dynamic> json) {
    return Item2X(
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item4X {
  final bool hideAppBar; // true
  final String title; // 专车·租车
  final String
      url; // https://m.ctrip.com/webapp/car/index?s=ctrip&from=https%3A%2F%2Fm.ctrip.com%2Fhtml5%2F

  Item4X({this.hideAppBar, this.title, this.url});

  factory Item4X.fromJson(Map<String, dynamic> json) {
    return Item4X(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Travel {
  final String endColor; // 6cd557
  final Item1XX item1;
  final Item2XX item2;
  final Item3XX item3;
  final Item4XX item4;
  final MainItemXX mainItem;
  final String startColor; // 34c2aa

  Travel(
      {this.endColor,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.mainItem,
      this.startColor});

  factory Travel.fromJson(Map<String, dynamic> json) {
    return Travel(
      endColor: json['endColor'],
      item1: json['item1'] != null ? Item1XX.fromJson(json['item1']) : null,
      item2: json['item2'] != null ? Item2XX.fromJson(json['item2']) : null,
      item3: json['item3'] != null ? Item3XX.fromJson(json['item3']) : null,
      item4: json['item4'] != null ? Item4XX.fromJson(json['item4']) : null,
      mainItem: json['mainItem'] != null
          ? MainItemXX.fromJson(json['mainItem'])
          : null,
      startColor: json['startColor'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['endColor'] = this.endColor;
    data['startColor'] = this.startColor;
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    return data;
  }
}

class Item3XX {
  final bool hideAppBar; // true
  final String title; // 邮轮旅行
  final String url; // https://m.ctrip.com/webapp/cruise/index

  Item3XX({this.hideAppBar, this.title, this.url});

  factory Item3XX.fromJson(Map<String, dynamic> json) {
    return Item3XX(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item4XX {
  final bool hideAppBar; // true
  final String title; // 定制旅行
  final String url; // https://m.ctrip.com/webapp/dingzhi

  Item4XX({this.hideAppBar, this.title, this.url});

  factory Item4XX.fromJson(Map<String, dynamic> json) {
    return Item4XX(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class MainItemXX {
  final bool hideAppBar; // true
  final String
      icon; // https://pic.c-ctrip.com/platform/h5/home/grid-nav-items-travel.png
  final String statusBarColor; // 19A0F0
  final String title; // 旅游
  final String url; // https://m.ctrip.com/webapp/vacations/tour/vacations

  MainItemXX(
      {this.hideAppBar, this.icon, this.statusBarColor, this.title, this.url});

  factory MainItemXX.fromJson(Map<String, dynamic> json) {
    return MainItemXX(
      hideAppBar: json['hideAppBar'],
      icon: json['icon'],
      statusBarColor: json['statusBarColor'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['icon'] = this.icon;
    data['statusBarColor'] = this.statusBarColor;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item1XX {
  final bool hideAppBar; // true
  final String statusBarColor; // 19A0F0
  final String title; // 门票
  final String url; // https://m.ctrip.com/webapp/ticket/ticket

  Item1XX({this.hideAppBar, this.statusBarColor, this.title, this.url});

  factory Item1XX.fromJson(Map<String, dynamic> json) {
    return Item1XX(
      hideAppBar: json['hideAppBar'],
      statusBarColor: json['statusBarColor'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['statusBarColor'] = this.statusBarColor;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item2XX {
  final bool hideAppBar; // true
  final String statusBarColor; // 19A0F0
  final String title; // 目的地攻略
  final String url; // https://m.ctrip.com/html5/you/

  Item2XX({this.hideAppBar, this.statusBarColor, this.title, this.url});

  factory Item2XX.fromJson(Map<String, dynamic> json) {
    return Item2XX(
      hideAppBar: json['hideAppBar'],
      statusBarColor: json['statusBarColor'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['statusBarColor'] = this.statusBarColor;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class SalesBox {
  final BigCard1 bigCard1;
  final BigCard2 bigCard2;
  final String
      icon; // https://www.devio.org/io/flutter_app/img/sales_box_huodong.png
  final String
      moreUrl; // https://contents.ctrip.com/activitysetupapp/mkt/index/moreact
  final SmallCard1 smallCard1;
  final SmallCard2 smallCard2;
  final SmallCard3 smallCard3;
  final SmallCard4 smallCard4;

  SalesBox(
      {this.bigCard1,
      this.bigCard2,
      this.icon,
      this.moreUrl,
      this.smallCard1,
      this.smallCard2,
      this.smallCard3,
      this.smallCard4});

  factory SalesBox.fromJson(Map<String, dynamic> json) {
    return SalesBox(
      bigCard1:
          json['bigCard1'] != null ? BigCard1.fromJson(json['bigCard1']) : null,
      bigCard2:
          json['bigCard2'] != null ? BigCard2.fromJson(json['bigCard2']) : null,
      icon: json['icon'],
      moreUrl: json['moreUrl'],
      smallCard1: json['smallCard1'] != null
          ? SmallCard1.fromJson(json['smallCard1'])
          : null,
      smallCard2: json['smallCard2'] != null
          ? SmallCard2.fromJson(json['smallCard2'])
          : null,
      smallCard3: json['smallCard3'] != null
          ? SmallCard3.fromJson(json['smallCard3'])
          : null,
      smallCard4: json['smallCard4'] != null
          ? SmallCard4.fromJson(json['smallCard4'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['moreUrl'] = this.moreUrl;
    if (this.bigCard1 != null) {
      data['bigCard1'] = this.bigCard1.toJson();
    }
    if (this.bigCard2 != null) {
      data['bigCard2'] = this.bigCard2.toJson();
    }
    if (this.smallCard1 != null) {
      data['smallCard1'] = this.smallCard1.toJson();
    }
    if (this.smallCard2 != null) {
      data['smallCard2'] = this.smallCard2.toJson();
    }
    if (this.smallCard3 != null) {
      data['smallCard3'] = this.smallCard3.toJson();
    }
    if (this.smallCard4 != null) {
      data['smallCard4'] = this.smallCard4.toJson();
    }
    return data;
  }
}

class SmallCard1 {
  final String
      icon; // https://dimg04.c-ctrip.com/images/700b0z000000neoth8688_375_160_345.jpg
  final String title; // 活动
  final String
      url; // https://contents.ctrip.com/activitysetupapp/mkt/index/nbaafs?pushcode=IP_nbaafs004

  SmallCard1({this.icon, this.title, this.url});

  factory SmallCard1.fromJson(Map<String, dynamic> json) {
    return SmallCard1(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class SmallCard4 {
  final String
      icon; // https://dimg04.c-ctrip.com/images/700d0s000000htvwo16C4_375_160_345.jpg
  final String title; // 活动
  final String url; // https://smarket.ctrip.com/webapp/promocode/add?source=5

  SmallCard4({this.icon, this.title, this.url});

  factory SmallCard4.fromJson(Map<String, dynamic> json) {
    return SmallCard4(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class BigCard2 {
  final String
      icon; // https://dimg04.c-ctrip.com/images/700a10000000portu2BAD_375_260_342.jpg
  final String title; // 活动
  final String
      url; // https://m.ctrip.com/webapp/you/livestream/plan/crhHotelList.html?liveAwaken=true&isHideHeader=true&isHideNavBar=YES&mktcrhcode=hotevent

  BigCard2({this.icon, this.title, this.url});

  factory BigCard2.fromJson(Map<String, dynamic> json) {
    return BigCard2(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class SmallCard3 {
  final String
      icon; // https://dimg04.c-ctrip.com/images/700a0t000000im512AB2C_375_160_345.jpg
  final String title; // 活动
  final String url; // https://smarket.ctrip.com/webapp/promocode/add?source=5

  SmallCard3({this.icon, this.title, this.url});

  factory SmallCard3.fromJson(Map<String, dynamic> json) {
    return SmallCard3(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class BigCard1 {
  final String
      icon; // https://dimg04.c-ctrip.com/images/700t0y000000m71h523FE_375_260_342.png
  final String title; // 活动
  final String
      url; // https://contents.ctrip.com/buildingblocksweb/special/membershipcard/index.html?sceneid=1&productid=14912&ishidenavbar=yes&pushcode=act_svip_hm31

  BigCard1({this.icon, this.title, this.url});

  factory BigCard1.fromJson(Map<String, dynamic> json) {
    return BigCard1(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class SmallCard2 {
  final String
      icon; // https://dimg04.c-ctrip.com/images/700w0z000000mogkyEF78_375_160_345.jpg
  final String title; // 活动
  final String url; // https://smarket.ctrip.com/webapp/promocode/add?source=5

  SmallCard2({this.icon, this.title, this.url});

  factory SmallCard2.fromJson(Map<String, dynamic> json) {
    return SmallCard2(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class SubNav {
  final bool hideAppBar; // true
  final String
      icon; // https://www.devio.org/io/flutter_app/img/sub_nav_more.png
  final String title; // 更多
  final String url; // https://dp.ctrip.com/webapp/more/

  SubNav({this.hideAppBar, this.icon, this.title, this.url});

  factory SubNav.fromJson(Map<String, dynamic> json) {
    return SubNav(
      hideAppBar: json['hideAppBar'],
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class BannerHome {
  final String
      icon; // https://dimg03.c-ctrip.com/images/fd/tg/g1/M03/7E/19/CghzfVWw6OaACaJXABqNWv6ecpw824_C_500_280_Q90.jpg
  final String
      url; // https://m.ctrip.com/webapp/vacations/tour/detail?productid=53720&departcityid=2&salecityid=2&from=https%3A%2F%2Fm.ctrip.com%2Fhtml5%2F

  BannerHome({this.icon, this.url});

  factory BannerHome.fromJson(Map<String, dynamic> json) {
    return BannerHome(
      icon: json['icon'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    return data;
  }

  @override
  String toString() {
    return 'Banner{icon: $icon, url: $url}';
  }
}
