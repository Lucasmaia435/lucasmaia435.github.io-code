class Project {
  final String title;
  final String description;
  final String repoURL;
  final String language;

  Project({
    this.title,
    this.description,
    this.repoURL,
    this.language,
  });
}

List<Project> loadProjects() {
  List<Project> projetos = [
    new Project(
        title: 'Search_Invocador',
        description: "Flutter app for showing League of Legends' players data.",
        language: 'Dart',
        repoURL: 'https://github.com/Lucasmaia435/Search_Invocador'),
    new Project(
        title: 'API-Riot-Data',
        description:
            "API made in Deno(TypeScript) for request summoners (League of Legends' player) data from Riot's dev API.",
        language: 'TypeScript',
        repoURL: 'https://github.com/Lucasmaia435/API-Riot-Data'),
    new Project(
        title: 'Deno-API',
        description: 'Simple API created using Deno.',
        language: 'TypeScript',
        repoURL: 'https://github.com/Lucasmaia435/Deno-API'),
    new Project(
        title: 'Deno-cli',
        description:
            'Command Line Interface (CLI) to create and manage your deno workspace.',
        language: 'JavaScript',
        repoURL: 'https://github.com/Lucasmaia435/deno-cli'),
    new Project(
        title: 'Nubank_clone',
        description: 'Clone do aplicativo do Nubank.',
        language: 'Dart',
        repoURL: 'https://github.com/Lucasmaia435/Nubank_clone'),
    new Project(
        title: 'Sigaa-clone',
        description:
            'O Sigaa-clone é uma cópia do aplicativo móvel do Sigaa-UFRN feito em Flutter.',
        language: 'Dart',
        repoURL: 'https://github.com/Lucasmaia435/Sigaa-clone'),
    new Project(
        title: 'RN-FAB',
        description:
            'Floating Reaction Button (FAB) component for React Native.',
        language: 'TypeScript',
        repoURL: 'https://github.com/Lucasmaia435/RN-Floating-Action-Button'),
    new Project(
        title: 'Shortcut-Manager',
        description: 'App em Electron, para criar atalhos globais no desktop.',
        language: 'JavaScript',
        repoURL: 'https://github.com/Lucasmaia435/Shortcut-Manager'),
  ];

  return projetos;
}
