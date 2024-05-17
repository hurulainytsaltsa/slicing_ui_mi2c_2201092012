import 'package:flutter/material.dart';
import 'package:slicing_ui_mi2c/latihan/page_course.dart';
import 'package:slicing_ui_mi2c/latihan/page_search.dart';

class PageDetailCourse extends StatefulWidget {
  const PageDetailCourse({super.key});

  @override
  State<PageDetailCourse> createState() => _PageDetailCourseState();
}

class _PageDetailCourseState extends State<PageDetailCourse> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, size: 24),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageSearch()),
                  );
                },
              ),
              SizedBox(height: 5),
              Container(
                width: screenWidth,
                height: 240,
                child: Image.asset(
                  'gambar/detail.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Machine Learning',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Text(
                    '4.6',
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
              SizedBox(height: 19),
              Row(
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(
                      color: Color(0xFF1E0094),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 80),
                  Text(
                    'Lectures',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 80),
                  Text(
                    'Similar Course',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Container(
                width: 70,
                child: Divider(
                  color: Color(0xFF1E0094),
                  thickness: 1,
                ),
              ),

              ListTile(
                leading: Icon(Icons.access_time),
                title: Text('6 Hours',
                style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                leading: Icon(Icons.fact_check),
                title: Text('Completion Certificate',
                  style: TextStyle(fontSize: 18),),
              ),
              ListTile(
                leading: Icon(Icons.bar_chart),
                title: Text('Beginner',
                  style: TextStyle(fontSize: 18),),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What will I learn?',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'The Machine learning basics program is designed to offer a solid foundation & work-ready skills for ML engineers. The Machine learning basics program is designed to offer a solid foundation & work-ready skills for ML engineers.',
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Rating and Reviews',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Text(
                      '3.4',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star, color: Colors.amber, size: 20),
                            Icon(Icons.star, color: Color(0xFFC4C4C4), size: 20),
                            Icon(Icons.star, color: Color(0xFFC4C4C4), size: 20),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          '3 reviews',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0113B9),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Start Learning',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
