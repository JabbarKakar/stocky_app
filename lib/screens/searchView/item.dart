class Item{
  final String name;
  final String catagory;
  final String section;
  final String brand;
  final double price;
  final List colorList;
  final List sizeList;
  final String image;
  final store;
  final link;

  Item({
    required this.name,
    required this.catagory,
    required this.section,
    required this.brand,
    required this.price,
    required this.colorList,
    required this.sizeList,
    required this.image,
    required this.store,
    required this.link
  });

  factory Item.zara(Map item) {
    double price = item['price'] / 100;
    List colorList = item['detail']['colors'].where((color) => color['availability'] == "in_stock").map((color) => color['name']).toList();
    List sizeList = colorList;      // implement sizeLst by finding how to retrieve the available sizes of an item
    
    String img = "";
    if (item['xmedia'][0]['url'] == null){img = 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg';
    }else{img = item['xmedia'][0]['url'].split('?')[0];}

    String urlkey = item['id'].toString();

    return Item(
      name: item['name'].toString(),
      catagory: item['familyName'].toString(),
      section: item['sectionName'].toString(),
      brand: item['brandImpl'].toString(),
      price: price,
      colorList: colorList,
      sizeList: sizeList,
      image: img,
      store: "zara",
      link: "https://www.zara.com/uk/en/products-details?productIds=$urlkey&ajax=true",
    );
  }


  factory Item.primark(Map item) {
    double price = item['price'] / 100;

    //List colorList = item['detail']['colors'].where((color) => color['availability'] == "in_stock").map((color) => color['name']).toList();
    //List sizeList = colorList;      // implement sizeLst by finding how to retrieve the available sizes of an item
    
    String img = "";
    if (item['thumb_image'] == null){img = 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg';
    }else{img = item['thumb_image'];}

    String urlkey = item['url'];


    return Item(
      name: item['title'].toString(),
      catagory: 'Category',
      section: 'Section',
      brand: 'Brand',
      price: price,
      colorList: ['blue','red'],
      sizeList: ['M','L'],
      image: img,
      store: "primark",
      link: "https://api001-arh.primark.com/bff-002?operationName=PdpPage&variables=%7B%22locale%22%3A%22en-gb%22%2C%22categorySlug%22%3A%22$urlkey%22%2C%22pageSlug%22%3A%22p%2Fwide-leg-denim-jeans-light-blue-991088422504%22%2C%22currencyCode%22%3A%22GBP%22%2C%22styleCode%22%3A%22991088422%22%2C%22productCode%22%3A%22991088422504%22%2C%22widgetId%22%3A%22o9gd1790%22%7D&extensions=%7B%22persistedQuery%22%3A%7B%22version%22%3A1%2C%22sha256Hash%22%3A%228ded181257ea2269fcde6a035cda60d41109e6e04224545014bbfab79903b55a%22%7D%7D",
    );
  }

  @override
  String toString(){
    return 'name: $name\n catagory: $catagory\n section: $section\n brand: $brand\n price: $price\n colourList: $colorList\n sizeList: $sizeList\n image: $image';
  }
}
