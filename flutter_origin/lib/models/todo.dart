class Todo {
  static final MockupDatas = List.generate(
    20,
    (i) => Todo(
      'Todo $i',
      'A description of what needs to be done for Todo $i',
    ),
  );

  final String title;
  final String description;

  Todo(this.title, this.description);
}
