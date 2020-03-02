class NoData{
  final String imageUrl;
  final String title;
  final String content;
  final String endText;
  NoData({
    this.imageUrl,
    this.content,
    this.title,
    this.endText
});
}

final NoData noChat = NoData(
  imageUrl: "assets/nochat.png",
  title: "No Conversation",
  content: "You didn't made any conversation yet, please select username.",
  endText: "Chat People",
);

final NoData noCall = NoData(
  imageUrl: "assets/nocall.png",
  title: "No Phone Call",
  content: "You didn't made any conversation yet, please select username.",
  endText: "Make Phone call",
);

final NoData noGroup = NoData(
  imageUrl: "assets/nocall.png",
  title: "No Group Chat",
  content: "You didn't made any conversation yet, please select username.",
  endText: "Create Group",
);