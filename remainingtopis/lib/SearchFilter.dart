
import 'package:flutter/material.dart';
import 'package:remainingtopis/books.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({Key? key}) : super(key: key);

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  final controller = TextEditingController();
  List<Book> books = allBook;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       elevation: 0.0,
        title: Row(
          children: const [
            Icon(Icons.menu_book_sharp),
            SizedBox(width: 30.0,),
            Text('Search & Filter'),
          ],
        ),

        centerTitle: true,
      ),

      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(8, 16, 16, 16),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.lightBlueAccent.shade100,
                isCollapsed: true,
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Book',
                hintStyle: const TextStyle(
                  fontFamily: 'Billabong',
                  fontSize: 20.0,
                  fontWeight:FontWeight.bold,
                  height: 2.2,
                ),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(20.0),
                //
                // ),

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    style: BorderStyle.none
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        style: BorderStyle.none
                    )
                ),
              ),
              onChanged: searchBook,
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: books.length,
                  itemBuilder: (context, index) {
                    final book = books[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap:(){
                                      Navigator.pushNamed(context, 'SelectedBook',arguments: {
                                        'bookUrl':book.urlImage,
                                        'bookTitle':book.title,
                                      });
                                    },
                                    child: Container(
                                      height: 190,
                                      width: double.infinity,

                                      decoration: BoxDecoration(
                                      border: Border.all(width: 2.0,),

                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.white,
                                            blurStyle: BlurStyle.outer,
                                          ),

                                        ]
                                      ),
                                      child: Row(
                                    children: [
                                        Image.network(
                                        book.urlImage,
                                        fit: BoxFit.cover,
                                        width: 120,
                                        height: 190,

                                      ),
                                        const SizedBox(width: 10.0,),
                                        Text(book.title,style: const TextStyle(
                                            fontFamily: 'Billabong',
                                            fontSize: 25.0
                                        ),
                                        ),
                                    ],

                                    ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
              ),
          )
        ],
      ),
    );

  }
  void searchBook(String query){
    final suggestions = allBook.where((book){
      final bookTitle = book.title.toLowerCase();
      final input = query.toLowerCase();
      return bookTitle.contains(input);
    }).toList();
    setState(() {
      books = suggestions;
    });
  }
}

