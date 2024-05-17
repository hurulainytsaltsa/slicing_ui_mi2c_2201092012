import 'package:flutter/material.dart';
import 'package:slicing_ui_mi2c/latihan/page_category.dart';
import 'package:slicing_ui_mi2c/latihan/page_search.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                //controller: txtCari,
                decoration: InputDecoration(
                    hintText: "Hello Liza ..",
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1)),
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(
                'gambar/beranda.png',
                fit: BoxFit.contain,
                height: 203,
                width: 800,
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Categories',
                  style: TextStyle(
                    fontSize: 18,
                  ),),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.white,
                      elevation: 3,
                      child: ListTile(
                        title: Text('Cyber Security'),
                        subtitle: Text('145 Course'),
                        trailing: Icon(Icons.library_add_check_outlined),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => PageCategory()));
                        },
                      ),
                    ),
                  ),
                  SizedBox(width: 7),
                  Expanded(
                    child: Card(
                      color: Colors.white,
                      elevation: 3,
                      child: ListTile(
                        title: Text('Data Science'),
                        subtitle: Text('120 Course'),
                        trailing: Icon(Icons.cloud_outlined),
                        onTap: () {

                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Top Course',
                  style: TextStyle(
                    fontSize: 18,
                  ),),
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Card(
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: 230,
                          maxWidth: 250,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'gambar/gambar1.png',
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Data Science',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              subtitle: Row(
                                children: [
                                  Text(
                                    '4.6',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(Icons.star, color: Colors.black, size: 18,),
                                  SizedBox(width: 25),
                                  Text(
                                    '10.5k learner',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Card(
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: 230,
                          maxWidth: 250,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'gambar/gambar2.png',
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Machine Learning',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                              subtitle: Row(
                                children: [
                                  Text(
                                    '4.6', // Nilai rating
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(Icons.star, color: Colors.black, size: 18,),
                                  SizedBox(width: 25),
                                  Text(
                                    '10.5k learner',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_) => PageSearch()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Popular Blogs',
                  style: TextStyle(
                    fontSize: 18,
                  ),),
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: 160,
                          maxWidth: 250,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'gambar/gambar3.png',
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: 121,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rian Mendella',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'How to improve Microsoft Excel Skills',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'Most people know the power Excel can wield, especially when used properly. But fewer people know how to make the most of Excel...', // Teks yang ingin ditampilkan di sebelah kanan gambar
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Card(
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: 160,
                          maxWidth: 250,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'gambar/gambar4.png',
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: 121,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Liza Nisel',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Top 10 Java Tools for 2021',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'Java is the most widely used high level object oriented programming language across the globe. Oracle Corporation purchased SUN MiCROSYSTEM in 2010...',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
