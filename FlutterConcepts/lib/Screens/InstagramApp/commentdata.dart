class Comment{
  String authorName;
  String authorImageUrl;
  String text;
  bool like;

  Comment({
    this.authorName='',
    this.authorImageUrl='',
    this.text='',
    this.like=false,
});
}

final List<Comment> comments = [
  Comment(
    authorName: 'Katrina Kaif',
    authorImageUrl: 'images/katrina.png',
    text: 'Smart picππππ!!',
    like: false,

  ),
  Comment(
    authorName: 'Disha Patani',
    authorImageUrl: 'images/Disha-Patani.jpg',
    text: 'Looking nice ππππ!!',
    like: false,
  ),
  Comment(
    authorName: 'Nargis Fakhri',
    authorImageUrl: 'images/nargis.jpg',
    text: 'Awesome picπππππ!!',
    like: false,
  ),
  Comment(
    authorName: 'Kiara Advani',
    authorImageUrl: 'images/Kiara-Advani.jpg',
    text: 'Looking Handsomeππππππ!!',
    like: false,
  ),
];