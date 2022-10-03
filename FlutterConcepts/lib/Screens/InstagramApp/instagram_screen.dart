import 'package:flutter/material.dart';
import 'package:projec/Screens/InstagramApp/postScreen.dart';
import 'package:projec/Screens/InstagramApp/postdata.dart';
import 'package:projec/Screens/registration/space.dart';

import 'contacts.dart';

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  Widget buildPost(int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Container(
          width: double.infinity,
          height: 510.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ]),
                        child: CircleAvatar(
                          child: ClipOval(
                            child: Image(
                              height: 50.0,
                              width: 50.0,
                              image: AssetImage(posts[index].authorImageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      title: Text(
                        posts[index].authorName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(posts[index].timeAgo),
                      trailing: IconButton(
                        icon: const Icon(Icons.more_horiz),
                        color: Colors.black,
                        onPressed: () {
                          showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              )),
                              context: context,
                              builder: (context) => Container(
                                    height: 350,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      color: Color(0XFFEDF0F6),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Column(

                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        const Center(
                                          child: Icon(
                                            Icons.horizontal_rule_rounded,
                                            size: 50.0,
                                          ),
                                        ),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            shareBox(),
                                            shareBox(icon: Icons.link,iconText: 'Link'),
                                            shareBox(icon: Icons.qr_code_scanner_rounded,iconText: 'QR code'),
                                            shareBox(icon: Icons.report_problem_outlined,iconColor: Colors.red,iconText: 'Report',textColor: Colors.red,borderColor: Colors.red.shade200),
                                          ],
                                        ),
                                        const Divider(
                                          height: 40.0,
                                          thickness: 1.0,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10.0),
                                          child: Text('Why you\'re seeing this post',style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold,

                                          ),
                                          ),
                                        ),
                                        const Divider(
                                          height: 30.0,
                                          thickness: 1.0,
                                        ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('Add to favourites',style: TextStyle(
                                          fontSize: 19.0,
                                          fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      verticalSpace(15.0),
                                      const Text('Hide',style: TextStyle(
                                          fontSize: 19.0,
                                          fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      verticalSpace(15),
                                      const Text('Unfollow',style: TextStyle(
                                          fontSize: 19.0,
                                          fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ],
                                  ),
                                )


                                      ],
                                    ),
                                  ));
                        },
                      ),
                    ),
                    InkWell(
                      onDoubleTap: () => {},
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PostScreen(post: posts[index]),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        width: double.infinity,
                        height: 350.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black45,
                                offset: Offset(0, 5),
                                blurRadius: 8.0,
                              ),
                            ],
                            image: DecorationImage(
                              image: AssetImage(posts[index].imageUrl),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      posts[index].favLike =
                                          !posts[index].favLike;
                                    });
                                  },
                                  icon: posts[index].favLike
                                      ? const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        )
                                      : const Icon(Icons.favorite_outline),
                                  iconSize: 25.0,
                                ),
                                Text(
                                  posts[index].likes,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            verticalSpace(20.0),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PostScreen(post: posts[index]),
                                        ));
                                  },
                                  icon: Icon(Icons.chat),
                                  iconSize: 25.0,
                                ),
                                Text(
                                  posts[index].comments,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                 shape: const RoundedRectangleBorder(
                                   borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(20.0),
                                     topRight: Radius.circular(20.0),
                                   ),
                                 ),
                                    context: context,
                                    builder: (context)=>Container(

                                      height:550,
                                      width: double.infinity,
                                      decoration:  const BoxDecoration(
                                        color:Color(0XFFEDF0F6),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                           const Icon(Icons.horizontal_rule_rounded,size: 45.0,),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 50,
                                                  width: 60,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(20.0),
                                                    image: DecorationImage(
                                                      image: AssetImage(posts[index].imageUrl),
                                                    )
                                                  ),
                                                ),
                                                Expanded(
                                                  child: TextFormField(
                                                    cursorColor: Colors.lightBlueAccent,
                                                    decoration: const InputDecoration(
                                                      hintText: 'Write a message...',
                                                      border: InputBorder.none,
                                                      hintStyle: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                      )

                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            verticalSpace(10.0),
                                            TextField(

                                              decoration: InputDecoration(
                                                isCollapsed: true,
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                filled: true,
                                                fillColor: Colors.grey.shade300,
                                                hintText: 'Search',
                                                hintStyle: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  height: 2.4,
                                                ),
                                                prefixIcon: Icon(Icons.search,size: 25.0,),
                                                suffixIcon: Icon(Icons.person_add_alt_1_outlined,size: 25.0,),
                                              ),
                                            ),
                                          verticalSpace(10.0),
                                          Expanded(
                                            child: ListView.builder(
                                                itemCount:conList.length,
                                                itemBuilder: (context, index)=>ListTile(
                                                  leading: CircleAvatar(
                                                    backgroundImage: AssetImage(conList[index].contactImage),
                                                   radius: 25.0,
                                                  ),
                                                  title: Text(conList[index].contactName),
                                                  subtitle: Text(conList[index].nickName),
                                                  trailing: TextButton(

                                                    onPressed: (){},
                                                    style: ButtonStyle(
                                                   shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                     borderRadius: BorderRadius.circular(10.0),
                                                   )),
                                                      backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                                                    ),
                                                    child: const Text('Send',style: TextStyle(
                                                      color: Colors.white,
                                                    )),

                                                  ),
                                                )
                                            ),
                                          ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  
                                );
                              },
                              icon: const Icon(Icons.send),
                              iconSize: 25.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 62.0),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.bookmark_border),
                                iconSize: 25.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );

  Widget shareBox(
          {
            String iconText = 'Share',
            IconData icon = Icons.share_outlined,
            Color borderColor = Colors.black45,
            Color iconColor = Colors.black,
            Color textColor = Colors.black,
          }) =>
      GestureDetector(
        onTap: (){
          print('Hello');
        },
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0XFFEDF0F6),
                border: Border.all(color: borderColor, width: 2.0),
              ),
              child: Icon(icon, size: 30.0,color: iconColor),
            ),
            verticalSpace(5.0),
            Text(
              iconText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0,color: textColor),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFEDF0F6),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Row(
                    children: [
                      PopupMenuButton(
                        offset: const Offset(-100, 0),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Following',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.people_alt_outlined,
                                )
                              ],
                            ),
                            onTap: () {},
                          ),
                          PopupMenuItem(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Favourites',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.star_border,
                                )
                              ],
                            ),
                            onTap: () {},
                          ),
                        ],
                        child: Row(
                          children: const [
                            Text(
                              'Instagram',
                              style: TextStyle(
                                fontFamily: 'Billabong',
                                fontSize: 28.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(Icons.arrow_drop_down_outlined)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.live_tv),
                      iconSize: 28.0,
                    ),
                    horizontalSpace(16.0),
                    Container(
                      width: 35.0,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'sendPage');
                        },
                        icon: const Icon(Icons.send),
                        iconSize: 28.0,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.0,
            // color: Colors.red,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const SizedBox(
                    width: 10.0,
                  );
                }
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 60.0,
                  height: 60.0,
                  decoration:
                      const BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ]),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        height: 60.0,
                        width: 60.0,
                        image: AssetImage(stories[index - 1]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          buildPost(0),
          buildPost(1),
          buildPost(2),
          buildPost(3),
          buildPost(4),
          buildPost(5),
          buildPost(6),
          buildPost(7),
          buildPost(8),
          buildPost(9),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Icon(
                Icons.home,
                size: 25.0,
                color: Colors.black,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Icon(
                Icons.search,
                size: 25.0,
                color: Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Icon(
                Icons.video_collection,
                size: 25.0,
                color: Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Icon(
                Icons.favorite_border,
                size: 25.0,
                color: Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: CircleAvatar(
                radius: 15.0,
                backgroundImage: AssetImage('images/mypic.jpg'),
              ),
            ),
            label: '',
          )
        ],
      ),
    );
  }
}
