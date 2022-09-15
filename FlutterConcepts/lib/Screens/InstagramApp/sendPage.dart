import 'dart:io';

import 'package:flutter/material.dart';
import 'package:projec/Screens/InstagramApp/postdata.dart';
import 'package:projec/Screens/registration/space.dart';

class SendPage extends StatefulWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  State<SendPage> createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFEDF0F6),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: GestureDetector(
          onTap: () {
            showModalBottomSheet(
                backgroundColor: const Color(0XFFEDF0F6),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                context: context,
                builder: (context) => Container(
                      height: 180,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.horizontal_rule_rounded,
                            size: 40.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage:
                                          AssetImage(posts[0].authorImageUrl),
                                    ),
                                    horizontalSpace(10.0),
                                    const Text(
                                      'gardi_sachin',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Spacer(),
                                    const Icon(
                                      Icons.radio_button_checked,
                                      color: Colors.lightBlue,
                                    ),
                                    horizontalSpace(10.0),
                                  ],
                                ),
                                verticalSpace(10.0),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                    showModalBottomSheet(
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                          ),
                                        ),
                                        backgroundColor:
                                            const Color(0XFFEDF0F6),
                                        context: context,
                                        builder: (context) => Container(
                                              height: 180,
                                              width: double.infinity,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(20.0),
                                                  topRight:
                                                      Radius.circular(20.0),
                                                ),
                                              ),
                                              child: Column(
                                                children: [
                                                  const Icon(
                                                    Icons
                                                        .horizontal_rule_rounded,
                                                    size: 40.0,
                                                  ),
                                                  const Text(
                                                    'Add account',
                                                    style: TextStyle(
                                                        fontSize: 21.0,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const Divider(
                                                    height: 20.0,
                                                    thickness: 1.0,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 15.0),
                                                    child: Container(
                                                      height: 40,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.blueAccent
                                                            .shade700,
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .all(
                                                                Radius.circular(
                                                                    10.0)),
                                                      ),
                                                      child: TextButton(
                                                        onPressed: () {},
                                                        child: const Text(
                                                          'Log in to Existing Account',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 17.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  TextButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Create New Account',
                                                        style: TextStyle(
                                                          color: Colors
                                                              .blueAccent
                                                              .shade400,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16.0,
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ));
                                  },
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 30.0,
                                        child: Icon(
                                          Icons.add,
                                          size: 40.0,
                                        ),
                                      ),
                                      horizontalSpace(10.0),
                                      const Text(
                                        'Add account',
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ));
          },
          child: Row(
            children: const [
              Text(
                'gardi_sachin',
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                Icons.arrow_drop_down_sharp,
                color: Colors.black,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call_outlined,
              size: 30.0,
            ),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 30.0,
            ),
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
            child: TextField(
              decoration: InputDecoration(
                  isCollapsed: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0XFFEDF0F6),
                      )),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 27.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color(0XFFEDF0F6))),
                  filled: true,
                  fillColor: Colors.black12,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      height: 2.1,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600)),
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.0,
            // color: Colors.red,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const SizedBox(
                    width: 10.0,
                  );
                }
                return Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      width: 60.0,
                      height: 60.0,
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
                            height: 60.0,
                            width: 60.0,
                            image: AssetImage(stories[index - 1]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 53.0,
                        top: 60.0,
                      ),
                      width: 14.0,
                      height: 14.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0XFFEDF0F6),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0, 2),
                              blurRadius: 6.0,
                            ),
                          ]),
                      child: const CircleAvatar(
                        radius: 14.0,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
