// item.dart
// list-items.dart
import 'package:flutter/material.dart';

class Brand {
  final String name;
  final String imageUrl;

  Brand({required this.name, required this.imageUrl});
}

class Item {
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  final String
      moreInformation; 

  Item({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.moreInformation,
  });
}

// List of items
List<Item> items = [
  Item(
    name: 'Cetaphil - Healthy Glow Daily Cream',
    price: 30.00,
    description: 'For dry or dehydrated, sensitive skin',
    imageUrl:
        'https://i5.walmartimages.com/asr/82b2da78-e8e4-4ec6-94ef-aa06ef8a78fb.840ca7df50e85460688d623f9b3136da.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF',
    moreInformation:
        'This lightweight, non-greasy cream deeply replenishes skin hydration for 48 hours and helps to improve the overall quality of skin. Formulated with hyaluronic acid and niacinamide to immediately soothe and deeply replenish dry, dehydrated sensitive skin.',
  ),
  Item(
    name: 'Himalaya Purifying Neem Face Wash',
    price: 35.00,
    description: 'Best for pimple-prone skin. Suitable for all skin types.',
    imageUrl:
        'https://himalayawellness.in/cdn/shop/files/150-ml.jpg?v=1705376827',
    moreInformation:
        'Himalaya Herbals Purifying Neem Facial Soap is a facial cleansing gel for daily use that cleanses the skin by removing excess oil and impurities without dehydrating it, it uses a special formula so that your skin is clean and radiant. Known for its purifying and antibacterial properties, Neem, in combination with Turmeric, helps control impurities and blackheads, leaving skin soft, clean and healthy looking. Moisten the face and massage it avoiding the eye area. Rinse and gently pat dry.',
  ),
  Item(
    name: 'Biotique Vitamin C Brightning Cream',
    price: 15.00,
    description:
        'Gives Nourishment to skin, Provides hydration to skin, Ensures Flawless skin',
    imageUrl: 'https://m.media-amazon.com/images/I/61ncEIxMEAL.jpg',
    moreInformation:
        'Biotique Coconut Brightening Instant Glow Cream is an extraordinary glow cream meticulously crafted with natural ingredients, delivering exceptional results. This brightening cream deeply nourishes and revitalizes your skin to feel velvety, smooth, and impeccably textured.',
  ),
  Item(
    name: 'Natural Glow Kesar Face Cream',
    price: 10.00,
    description:
        'Nature’s goodness for a naturally glowing face! Suitable for all skin types.',
    imageUrl:
        'https://static-01.daraz.lk/p/75fd0295d15f34e5f6e651fb1972f4df.jpg',
    moreInformation:
        'Himalaya Natural Glow Kesar Face Cream comes with the goodness of Kashmiri Kesar. 100 per cent natural ingredients to tackle a dull, uneven complexion and clear dark spots and discoloured and pigmented skin. Its unique formulation ensures ease of application, faster absorption and better nourishment to the skin. Enriched with the extracts of Persian Rose, Mandarin Orange, Walnut and Aloe Vera, Fairness Cream works round the clock, providing four-dimensional fairness.',
  ),
  Item(
    name: 'Himalaya - Nourishing Skin Cream',
    price: 22.00,
    description:
        'It can also be used as a base for make-up. Suitable for all skin types.',
    imageUrl:
        'https://himalayawellness.in/cdn/shop/products/nourishing-skin-cream.jpg?v=1622098340',
    moreInformation:
        'Himalaya’s Nourishing Skin Cream is a light, non-greasy, daily-use cream, which provides all-day moisturizing, nourishment, and protection against dryness. The cream enhances the complexion, evens out skin tone, imparts a natural glow and reduces the appearance of blemishes. Its easy application and absorption help nourish skin more effectively. ',
  ),
  Item(
    name: 'Himalaya Moisturizing Aloe Vera Face Gel',
    price: 20.00,
    description: 'Instantly hydrate your skin everyday with Himalaya Aloe Vera Refreshing Body Gel. ',
    imageUrl:
        'https://himalayawellness.in/cdn/shop/products/Aloe-Vera-Refreshing-Body-Gel-300ml_Open.jpg?v=1686632025',
    moreInformation:
        'A clinically tested, soap-free formulation made with the unique combination of neem and turmeric. This pimple expert gently removes impurities, and helps prevent and clear pimples.',
  ),
  Item(
    name: 'Nourishing Face Moisturizing Lotion',
    price: 10.00,
    description: 'thick, provide intense hydration, and sometimes a little greasy.',
    imageUrl:
        'https://himalayawellness.in/cdn/shop/products/nourishing-body-lotion.jpg?v=1622100936',
    moreInformation:
        'It Neem Oil and Neem leaves are excellent skin care ingredients which gives to your skin a fresh feel. For better results ,use it twice a day. This is easy to use as it is made up with natural ingredients. Skin reactions such as peeling/burning/dry/reddened skin may occur, especially at the start of treatment.',
  ),
  Item(
    name: 'Vicco Turmeric',
    description: 'helps to fight with various skin problems and reduces pimples, dark spots and blemishes.',
    price: 15.00,
    imageUrl:
        'https://rukminim2.flixcart.com/image/850/1000/k5msb680/fairness/s/s/n/70-turmeric-skin-cream-vicco-original-imaf3wjy9sbawhan.jpeg?q=90&crop=false',
    moreInformation: 'Its antiseptic and anti-inflammatory properties help prevent the further spread of bacteria, reducing the redness and swelling of blemishes. Fourth, turmeric is an effective ingredient for reducing dark circles.',
  ),
  Item(
    name: 'Garnier Brighting Facewash',
    price: 25.00,
    description: 'Cleanse up all the oil and never feel rashes or harshness on the skin.',
    imageUrl:
        'https://m.media-amazon.com/images/I/61pWyNVeMjL.jpg',
    moreInformation: 'The Garnier Bright Complete Brightening Duo Action Face Wash is the perfect facewash for oily skin. This Garnier facewash is infused with the brightening properties of lemon and purifying properties of white clay.',
  ),
];
