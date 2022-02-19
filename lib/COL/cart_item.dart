import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key, this.onDecressed, this.onIncressed, this.onRemoved, required this.value, this.isMaxed:false, this.isMin:false}) : super(key: key);
  /// reduce cart item count
  final Function()? onDecressed;
  /// increase cart item count
  final Function()? onIncressed;
  /// remove cart item
  final Function()? onRemoved;
  /// value: item count
  final int value;
  /// is cart item maxed out (you can't add anymore)
  final bool isMaxed;
  /// cart item is at the minimum item count (you can't reduce anymore)
  final bool isMin;
  @override
  Widget build(BuildContext context) {
    return
      Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 100,
                width:100,
                color: Colors.black,
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text("RB Organics Bread Oil"),
                    const SizedBox(height: 2,),

                    const   Text("ITSP01234"),
                    // Spacer(),
                    const SizedBox(height: 20),
                    const Text("N5,000"),
                    Row(
                      children: [
                        InkWell(
                          onTap: onRemoved,
                          child: Row(
                            children:const [
                              Icon(Icons.delete_outline,size: 20,),
                              Text("Remove"),
                            ],
                          ),
                        ),
                        Spacer(),

                        InkWell(

                          onTap:isMin?null: onDecressed,
                          child: CircleAvatar(
                            backgroundColor: isMin?Colors.grey:Colors.amber,
                            radius: 8,
                            child: Icon(Icons.remove,size: 10,
                              color: isMaxed?Colors.black:Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:5.0),
                          child: Text("$value"),
                        ),
                        InkWell(
                          onTap:isMaxed? null:onIncressed,
                          child: CircleAvatar(
                            backgroundColor: isMaxed?Colors.grey:Colors.amber,
                            radius: 8,
                            child: Icon(Icons.add,size: 10,
                              color: isMaxed?Colors.black:Colors.white,
                            ),
                          ),
                        )

                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    ;
  }
}