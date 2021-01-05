import 'package:flutter/material.dart';
import 'package:webtest/models/project.dart';

import 'package:webtest/widgets/projectCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lucas Maia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Project> projetos;

  @override
  void initState() {
    super.initState();
    projetos = loadProjects();
  }

  @override
  Widget build(BuildContext context) {
    double windowWidth = MediaQuery.of(context).size.width;

    double childAspectRatio = 2;

    if (windowWidth < 650 && windowWidth >= 550) {
      childAspectRatio = 3.5;
    } else if (windowWidth < 550 && windowWidth >= 450) {
      childAspectRatio = 3;
    } else if (windowWidth < 450 && windowWidth >= 380) {
      childAspectRatio = 2;
    } else if (windowWidth < 450) {
      childAspectRatio = 1;
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: windowWidth > 700 ? 700 : windowWidth,
            padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    'Lucas Maia',
                    style: TextStyle(
                      fontSize: 36,
                    ),
                  ),
                  subtitle: Text(
                    'Flutter developer',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'About me',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  subtitle: Text(
                    '''Hi, my name is Lucas, 20, Brazil, Software Developer at Instituto Metropole Digital (IMD/UFRN) and software engineering student at IMD/UFRN. I'm a Flutter mobile developer. But i also study back-end technologys like NodeJS and Deno. Besides that, my hobby is create things using electronics, IoT and what i think that can be possible.
''',
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Projects',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
                Container(
                  height: (projetos.length / 2) * 200,
                  child: GridView.count(
                    childAspectRatio: childAspectRatio,
                    crossAxisCount: windowWidth < 650 ? 1 : 2,
                    children: projetos
                        .map(
                          (e) => ProjectCard(
                              title: e.title,
                              description: e.description,
                              language: e.language,
                              url: e.repoURL),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
