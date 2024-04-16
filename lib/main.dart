import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Indonesian Beach';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'images/pantai.jpg',
              ),
              TitleSection(name: 'Beach Ora', location: 'Maluku, Indonesia'),
              ButtonSection(),
              TextSection(
                description:
                    'Pantai Ora merupakan satu tujuan wisata alam di Maluku, '
                    'Indonesia yang telah menarik minat banyak wisatawan baik '
                    'dalam maupun luar negeri Keindahan pantai yang banyak '
                    'disebut sebagai surga duniawi, sering kali disandingkan '
                    'dengan keindahan pantai di Maladewa, Pantai Boracay di '
                    'Filipina atau Pantai Bora-Bora di Samudera Pasifik '
                    'Selain selam permukaan, masih banyak aktivitas lain yang '
                    'dapat dilakukan di Pantai Ora. Berkunjung ke Taman Nasional '
                    'Manusela yang terletak di belakang Ora Beach Resort, dapat '
                    'menjadi salah satu opsi menarik. Di Taman Nasional Manusela '
                    'ini terdapat sekitar 117 spesies burung, di mana 14 di '
                    'antaranya merupakan spesies endemik, seperti nuri bayan, '
                    'kasturi tengkuk-ungu, raja udang, dan kakatua Maluku.',
              ),
              ImageSection(
                image: 'images/ora.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.verified,
            color: Colors.blue[700],
          ),
          Icon(
            Icons.star,
            color: Colors.red[700],
          ),
          const Text('76K'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});
  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.gps_fixed,
            label: 'AROUND',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.settings_cell,
            label: 'PHONE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
