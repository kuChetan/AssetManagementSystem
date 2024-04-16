import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_management/Screens/Dashboard/config/routes/app_pages.dart';
import 'package:inventory_management/Screens/Dashboard/constans/app_constants.dart';

class UserProfileData {
  final ImageProvider image;
  final String name;
  final String jobDesk;

  const UserProfileData({
    required this.image,
    required this.name,
    required this.jobDesk,
  });
}

class UserProfile extends StatelessWidget {
  const UserProfile({
    required this.data,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final UserProfileData data;
  final Function() onPressed;
  void logout(){
    Get.toNamed(Routes.login);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(kBorderRadius),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              _buildImage(),
              
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildName(),
                    _buildJobdesk(),
                  ],
                ),
              ),
              _buildLogout(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return CircleAvatar(
      radius: 25,
      backgroundImage: data.image,
    );
  }

  Widget _buildName() {
    return Text(
      data.name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: kFontColorPallets[0],
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildJobdesk() {
    return Text(
      data.jobDesk,
      style: TextStyle(
        fontWeight: FontWeight.w300,
        color: kFontColorPallets[1],
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
  
  Widget _buildLogout() {
    return IconButton(icon: Icon(Icons.logout_rounded),
    onPressed: logout,);
  }
}
