class RecentWork {
  final String? image, category, title;
  final int? id;

  RecentWork({this.id, this.image, this.category, this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "Drinking water makes the life easy",
    category: "News Rooms",
    image: "assets/images/work_1.png",
  ),
  RecentWork(
    id: 2,
    title: "8 Glasses of water makes you active",
    category: "Promotion",
    image: "assets/images/work_2.png",
  ),
  RecentWork(
    id: 3,
    title: "New & Fresh Looking Product",
    category: "Our Journal",
    image: "assets/images/work_3.png",
  ),
  RecentWork(
    id: 4,
    title: "Water table is lowering...",
    category: "News",
    image: "assets/images/work_4.png",
  ),
];
