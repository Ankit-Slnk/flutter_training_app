import 'package:faker/faker.dart';

class Training {
  String name;
  String address;
  String date;
  String time;
  String price;
  String discountedPrice;
  String trainer;

  Training({
    required this.name,
    required this.address,
    required this.date,
    required this.time,
    required this.trainer,
    required this.price,
    required this.discountedPrice,
  });
}

List<Training> trainings = [
  Training(
    name: 'Flutter - The Complete Guide',
    address: faker.address.city(),
    date: 'Jan 20 - 25, 2025',
    time: '10:00 AM - 12:00 PM',
    price: '\$259',
    discountedPrice: '\$199',
    trainer: faker.person.name(),
  ),
  Training(
    name: 'iOS - The Complete Guide',
    address: faker.address.city(),
    date: 'Jan 22 - 24, 2025',
    time: '10:00 AM - 12:00 PM',
    price: '\$300',
    discountedPrice: '\$350',
    trainer: faker.person.name(),
  ),
  Training(
    name: 'Android - The Complete Guide',
    address: faker.address.city(),
    date: 'Jan 19 - 27, 2025',
    time: '10:00 AM - 12:00 PM',
    price: '\$400',
    discountedPrice: '\$250',
    trainer: faker.person.name(),
  ),
  Training(
    name: 'Full Stack Mobile Development',
    address: faker.address.city(),
    date: 'Jan 19 - 27, 2025',
    time: '10:00 AM - 12:00 PM',
    price: '\$1200',
    discountedPrice: '\$999',
    trainer: faker.person.name(),
  ),
];
