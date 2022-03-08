class Todo {
  String title;
  bool status;

  Todo({
    required this.title,
    this.status = false
  });

  void toggleStatus() {
    status = !status;
  }

}