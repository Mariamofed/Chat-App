import 'package:chat_app/constants/app_colors.dart';
import 'package:chat_app/models/user_model.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.model});

  final UserModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: AppColors.brightGreen
                        ),
                        shape: BoxShape.circle
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/047/733/682/non_2x/grey-avatar-icon-user-avatar-photo-icon-social-media-user-icon-vector.jpg"),
                        
                      ),
                    ),
                    Text(model.userName[0].toUpperCase(),style: TextStyle(fontSize: 20, color: AppColors.appBarBackground, fontWeight: FontWeight.bold),),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Icon(Icons.circle, size: 15,color: Colors.green,)
                      )
                  ],
                ),
                const SizedBox(width: 12,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.userName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Row(
                      spacing: 4,
                      children: [
                        Icon(Icons.email_outlined,color: Colors.grey.shade600, size: 17,),
                        Text(model.email,style: TextStyle(color: Colors.grey.shade600),),
                      ],
                    ),
                    Row(
                      spacing: 4,
                          children: [
                            Icon(Icons.circle, size: 10,color: Colors.green,),
                            Text("Available to chat",style: TextStyle(fontStyle: FontStyle.italic,color: Colors.grey.shade600,fontSize: 14),)
                          ],
                      ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                   Text("now",style: TextStyle(color: Colors.black54),),
                   Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: Icon(Icons.messenger_outline_rounded,color: Colors.white,size: 20,)
                    )
                  ],
                )
              ],
            ),
          );
  }
}