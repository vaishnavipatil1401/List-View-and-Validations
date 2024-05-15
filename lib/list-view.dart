import 'package:flutter/material.dart';
import 'list-items.dart';
import 'product-details.dart';

List<Brand> topBrands = [
  Brand(
    name: 'Cetaphil',
    imageUrl:
        'https://hips.hearstapps.com/hmg-prod/images/gh-best-skincare-products-6557978b58b57.png?crop=0.502xw:1.00xh;0.256xw,0&resize=640:*',
  ),
  Brand(
    name: 'Himalaya',
    imageUrl:
        'https://static-01.daraz.com.np/p/c876bcaf5e1467ddec731441b88ccffd.jpg',
  ),
  Brand(
    name: 'NIVEA',
    imageUrl:
        'https://www.beiersdorf.co.th/~/media/Beiersdorf/local/th/brands/NIVEA/2021/Teaser2.png?rx=0&ry=0&rw=940&rh=528',
  ),
  Brand(
    name: 'Everyouth',
    imageUrl:
        'https://res.cloudinary.com/dotcom-prod/images/ar_4:3,c_fill,f_auto,g_auto,q_auto,w_1200/v1/wt-cms-assets/2020/03/ibf0f7wvjqj82mht4qll/eywebbanner3840x2160pixcel01.jpg',
  ),
  Brand(
    name: 'Ponds',
    imageUrl:
        'https://www.beautybulletin.com/media/reviews/photos/original/54/a3/45/8104-pond-s-flawless-radiance-skin-care-range-77-1366986311.jpg',
  ),
  Brand(
    name: 'Florence',
    imageUrl:
        'https://global.biotique.com/cdn/shop/articles/summer-skincare-tips-you-must-follow-900x450.webp?v=1671105783',
  ),
  Brand(
    name: 'Vicco Turmeric',
    imageUrl:
        'https://viccolabs.com/cdn/shop/products/017_Skin-Cream-2-pcs-_-face-Wash-2pcs_38a91f83-d6b1-420f-b905-28f6f5130659_1200x.jpg?v=1674626569',
  ),
  Brand(
    name: 'Garnier',
    imageUrl:
        'https://m.media-amazon.com/images/S/aplus-media/vc/30d9572a-7565-49bd-8844-43a4bc8bbb6b.__CR0,0,300,300_PT0_SX300_V1___.jpg',
  ),
  Brand(
    name: 'Others',
    imageUrl:
        'https://ae01.alicdn.com/kf/Se431f42c3d434aa494b05bec266ae5ceC/5Pcs-VC-Skin-Care-Set-Oil-Control-Facial-Cleanser-Nourishing-Face-Serum-Face-Cream-Fade-Dark.jpg',
  ),
];

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 16.0),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Top Brands',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
        ),
        const SizedBox(height: 16.0),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: topBrands.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 150,
                      child: CircleAvatar(
                        radius: 75.0,
                        backgroundImage:
                            NetworkImage(topBrands[index].imageUrl),
                      ),
                    ),
                    Text(
                      topBrands[index].name,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16.0),
        const Text(
          'Popular Products',
          style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailsPage(item: items[index]),
                    ),
                  );
                },
                child: Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            items[index].imageUrl,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return const Placeholder();
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(items[index].name),
                              Text(
                                'Price: \$${items[index].price.toStringAsFixed(2)}',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(items[index].description),
                            ],
                          ),
                          trailing: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProductDetailsPage(item: items[index]),
                                ),
                              );
                            },
                            child: const Text('View More'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
