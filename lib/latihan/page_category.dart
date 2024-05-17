import 'package:flutter/material.dart';
import 'package:slicing_ui_mi2c/latihan/bottom_navigation.dart';
import 'package:slicing_ui_mi2c/latihan/page_detail_course.dart';

class PageCategory extends StatefulWidget {
  const PageCategory({Key? key}) : super(key: key);

  @override
  State<PageCategory> createState() => _PageCategoryState();
}

class _PageCategoryState extends State<PageCategory> {
  List<Map<String, dynamic>> listKategori = [
    {
      "judul": "Cyber Security",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "cyber.png"
    },
    {
      "judul": "Ethica Hacking",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "ethica.png"
    },
    {
      "judul": "Introduction to Cyber Security",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "intro.png"
    },
    {
      "judul": "Introduction to Cyber Crime",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "crime.png"
    },
    {
      "judul": "Introduction to cryptography",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "crypto.png"
    },
    {
      "judul": "CISSP",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "cissp.png"
    },
    {
      "judul": "Introduction to CISSP",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "cissp2.png"
    },
    {
      "judul": "Cyber Crime",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "crime2.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PageDetailCourse(),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, size: 24),
                  onPressed: () {
                    // Navigasi ke halaman tujuan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavigation()),
                    );
                  },
                ),
                SizedBox(width: 8),
                Text(
                  'Cyber Security',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: listKategori.length,
                itemBuilder: (context, index) {
                  final movie = listKategori[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie['judul'],
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    movie['rating'], // Nilai rating
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 18,
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                movie['jumlah'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'gambar/${movie['gambar']}',
                            height: 85,
                            width: 85,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
