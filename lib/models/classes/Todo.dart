class Todo{
  String title;
  String desc;

  Todo({required this.title,required this.desc});

  Map<String, dynamic> toJson() {
    return {
      "title": this.title,
      "desc": this.desc,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> json) {
    return Todo(
      title: json["title"],
      desc: json["desc"],
    );
  }
//

}