
class Todos {
    Todos({
        this.userId,
        this.id,
        this.title,
        this.completed,
    });

    int userId;
    int id;
    String title;
    bool completed;

    factory Todos.fromJson(Map<String, dynamic> json) => Todos(
        userId: json["userId"] == null ? null : json["userId"],
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        completed: json["completed"] == null ? null : json["completed"],
    );

}
