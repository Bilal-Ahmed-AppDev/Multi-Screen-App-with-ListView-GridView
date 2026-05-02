import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Android Lab 3 Flutter',
      home: const HomeScreen(),
    );
  }
}

// ================= HOME SCREEN =================
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AndLab3 Flutter"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const StudentsScreen(),
                  ),
                );
              },
              child: const Text("Students ListView"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CoursesScreen(),
                  ),
                );
              },
              child: const Text("Courses ListView"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CoursesGridScreen(),
                  ),
                );
              },
              child: const Text("Courses GridView"),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= STUDENTS SCREEN =================
class StudentsScreen extends StatelessWidget {
  const StudentsScreen({super.key});

  final List<String> students = const [
    "Bilal",
    "Adeel",
    "Ahmed",
    "Abdul",
    "Rasheed",
    "Ali",
    "Usman",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Students List"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(
              students[index],
              style: const TextStyle(fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}

// ================= COURSES SCREEN =================
class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  final List<String> courses = const [
    "Flutter",
    "Java",
    "Database",
    "AI",
    "Networking",
    "Web Dev",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Courses List"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.book),
            title: Text(
              courses[index],
              style: const TextStyle(fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}

// ================= COURSES GRID SCREEN =================
class CoursesGridScreen extends StatelessWidget {
  const CoursesGridScreen({super.key});

  final List<String> courses = const [
    "Flutter",
    "Java",
    "Database",
    "AI",
    "Networking",
    "Web Dev",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Courses Grid"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: courses.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),

        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.purple.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              courses[index],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}