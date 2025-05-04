import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: Color(0xffffcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
                'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 12),
              child: Text(
                  'Build you career with code build you career',
                style: TextStyle(
                    color: Colors.black.withAlpha(400),
                  fontSize: 18
                ),
              ),
            ),
            trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.delete, color: Colors.black,size: 30,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May21 , 2022',
              style: TextStyle(
                  color: Colors.black.withAlpha(400),
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
