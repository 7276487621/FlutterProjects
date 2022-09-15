
import 'package:flutter/material.dart';
import 'package:projec/Screens/InstagramApp/postdata.dart';
import 'package:projec/utils/colors.dart';
import 'commentdata.dart';
import 'instagram_screen.dart';
import '../registration/space.dart';

class PostScreen extends StatefulWidget {

 final Post post;

 PostScreen({ required this.post,});
 @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  Widget commentBuild(int index)=> Padding(
    padding:  EdgeInsets.all(10.0),
    child: ListTile(
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
              image: AssetImage(comments[index].authorImageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      title: Text(
        comments[index].authorName,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle:Text(
          comments[index].text
      ) ,
      trailing: IconButton(
        icon: comments[index].like?Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border),
        color: Colors.grey,
        onPressed: (){
          setState(() {
            comments[index].like =  comments[index].like;
          });
        },
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDF0F6),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 520.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back),
                              iconSize: 25.0,
                              color: Colors.black,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: ListTile(
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
                                        image: AssetImage(widget.post.authorImageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text(
                                  widget.post.authorName,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(widget.post.timeAgo),
                                trailing: IconButton(
                                  icon: const Icon(Icons.more_horiz),
                                  color: Colors.black,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onDoubleTap: () => {},
                          onTap: () {
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
                                  image: AssetImage(widget.post.imageUrl),
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
                                      onPressed: () {},
                                      icon:Icon(Icons.favorite_border),
                                      iconSize: 25.0,
                                    ),
                                    Text(
                                      widget.post.likes,
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

                                      },
                                      icon: Icon(Icons.chat),
                                      iconSize: 25.0,
                                    ),
                                    Text(
                                      widget.post.comments,
                                      style: const TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.send),
                                  iconSize: 25.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 62.0),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.bookmark_border),
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
            verticalSpace(10.0),
            Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0)
                    ,topRight: Radius.circular(25.0)
                ),
              ),
              child: Column(
                children: [
                  commentBuild(0,),
                  commentBuild(1,),
                  commentBuild(2,),
                  commentBuild(3,),
                ],
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0.0,-1 * MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: 100.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset:Offset(0,-2),
              blurRadius: 6.0,
            ),
          ],
          color: Colors.white,
        ),
          child: Padding(
            padding:  EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                contentPadding: EdgeInsets.all(18.0),
                hintText: 'Add a comment',
                prefixIcon: Container(
                  margin: EdgeInsets.all(4.0),
                  width: 45.0,
                  height: 45.0,
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
                        height: 45.0,
                        width: 45.0,
                        image: AssetImage(widget.post.authorImageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                suffixIcon: Container(
                  margin: EdgeInsets.only(right: 4.0),
                  width: 70.0,
                  height: 45.0,
                  child: FloatingActionButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    backgroundColor: Color(0XFF23866F),
                    onPressed: (){},
                    child: const Icon(
                      Icons.send,
                      size: 25.0,
                    ),
                  ),
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
