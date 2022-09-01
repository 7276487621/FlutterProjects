final List<String> stories =[
  'images/mypic.jpg',
  'images/Disha-Patani.jpg',
  'images/shradha.jpg',
  'images/nargis.jpg',
  'images/nidhhi-agerwal.jpg',
  'images/katrina.png',
  'images/Kiara-Advani.jpg',
  'images/shruti-haasan.jpg',
  'images/pooja-hegde.jpg',
  'images/tamanna.jpg',
];

class Post{
  String authorName;
  String authorImageUrl;
  String timeAgo;
  String imageUrl;
  String likes;
  String comments;
  bool favLike;

  Post({
    this.authorName='',
    this.authorImageUrl='',
    this.timeAgo='',
    this.imageUrl='',
    this.likes = '',
    this.comments = '',
    this.favLike = false,
});
}

final List<Post> posts = [
  Post(
    authorName: 'Sachin Gardi',
    authorImageUrl: 'images/mypic.jpg',
    timeAgo: '5 min',
    imageUrl:'images/me.jpg',
    likes:'2515',
    comments:'900',
    favLike: false,
  ),
  Post(
      authorName: 'Disha Patani',
      authorImageUrl: 'images/Disha-Patani.jpg',
      timeAgo: '1 min',
      imageUrl:'images/Disha Patani.jpg',
      likes:'2000',
      comments:'800',
    favLike: false,
  ),
  Post(
    authorName: 'Shraddha Kapoor',
    authorImageUrl: 'images/shradha.jpg',
    timeAgo: '7 min',
    imageUrl:'images/shraddha kapoor1.jpg',
    likes:'1500',
    comments:'320',
    favLike: false,
  ),
  Post(
    authorName: 'Nargis fakhri',
    authorImageUrl: 'images/nargis.jpg',
    timeAgo: '3 min',
    imageUrl:'images/nargis2.jpg',
    likes:'2001',
    comments:'420',
    favLike: false,
  ),
  Post(
    authorName: 'Nidhi Agerwal',
    authorImageUrl: 'images/nidhhi-agerwal.jpg',
    timeAgo: '8 min',
    imageUrl:'images/nidhi-agarwal.jpg',
    likes:'2300',
    comments:'500',
    favLike: false,
  ),
  Post(
    authorName: 'Katrina Kaif',
    authorImageUrl: 'images/katrina.png',
    timeAgo: '3 min',
    imageUrl:'images/kat.jpg',
    likes:'2200',
    comments:'400',
    favLike: false,
  ),
  Post(
    authorName: 'Kiara Advani',
    authorImageUrl: 'images/Kiara-Advani.jpg',
    timeAgo: '4 min',
    imageUrl:'images/kiara advani1.jpg',
    likes:'850',
    comments:'700',
    favLike: false,
  ),
  Post(
    authorName: 'Shruti Haasan',
    authorImageUrl: 'images/shruti-haasan.jpg',
    timeAgo: '10 min',
    imageUrl:'images/Shruti Haasan3.jpg',
    likes:'350',
    comments:'270',
    favLike: false,
  ),
  Post(
    authorName: 'Pooja Hegade',
    authorImageUrl: 'images/pooja-hegde.jpg',
    timeAgo: '6 min',
    imageUrl:'images/pooja hegade3.jpg',
    likes:'950',
    comments:'950',
    favLike: false,
  ),
  Post(
    authorName: 'Tamanna Bhatia',
    authorImageUrl: 'images/tamanna.jpg',
    timeAgo: '6 min',
    imageUrl:'images/tamanna2.jpg',
    likes:'380',
    comments:'220',
    favLike: false,
  ),
];