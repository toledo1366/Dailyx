class DiaryEntry {
  DateTime createdAt;
  DateTime? editedAt;
  String content;
  double satisfactionLevel;

  DiaryEntry(this.createdAt, this.editedAt, this.content, this.satisfactionLevel);
}