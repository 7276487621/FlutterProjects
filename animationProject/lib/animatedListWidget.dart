
import 'package:flutter/material.dart';

class AnimatedListWidget extends StatefulWidget {
  const AnimatedListWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedListWidget> createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem(){
    _items.insert(0, 'Item ${_items.length + 1}');
    _key.currentState!.insertItem(0,
    duration: const Duration(seconds: 1),
    );
  }

  void _removeItem(int index){
    _key.currentState!.removeItem(index, (_, animation){
          return SizeTransition(
              sizeFactor: animation,
            child: const Card(
              margin: EdgeInsets.all(10.0),
              color: Colors.red,
              child: ListTile(
                title: Text('Deleted',style: TextStyle(
                  fontSize: 24.0,
                ),),
              ),
            ),
          );
    },
    duration: const Duration(milliseconds: 300),
    );

    _items.removeAt(index);
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 10.0,),
            IconButton(
                onPressed: _addItem,
              icon: Icon(Icons.add),
            ),
            Expanded(
                child: AnimatedList(
                  key: _key,
                  initialItemCount: 0,
                  padding: const EdgeInsets.all(10.0),
                  itemBuilder: (context, index, animation){
                    return SizeTransition(
                        sizeFactor: animation,
                        key: UniqueKey(),
                        child: Card(
                          margin:  const EdgeInsets.all(10),
                          color: Colors.orangeAccent,
                          child: ListTile(
                            title: Text(_items[index],style: TextStyle(
                              fontSize: 24,
                            ),
                            ),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: (){
                                _removeItem(index);
                              },
                            ),
                          ),
                        ),
                    );
                  },
                )
            )
          ],
    ),
      );
  }
}
