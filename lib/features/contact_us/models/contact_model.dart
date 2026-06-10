import 'package:my_portfolio/core/constants/app_images.dart';

class ContactModel {
  final String icon;
  final String lable;
  final double width;
  final double height;

  const ContactModel({
    required this.icon,
    required this.lable,
    required this.width,
    required this.height,
  });
}

const List<ContactModel> contactList = [
  ContactModel(
    icon: AppImages.mailSvgImage,
    lable: "megauravsharma@gmail.com",
    width: 16,
    height: 16,
  ),
  ContactModel(
    icon: AppImages.githubSvgImage,
    lable: "github.com/namexgaurav",
    width: 16,
    height: 16,
  ),
  ContactModel(
    icon: AppImages.linkedinSvgImage,
    lable: "linkedin.com/in/namexgaurav",
    width: 14,
    height: 14,
  ),
  ContactModel(
    icon: AppImages.instagramSvgImage,
    lable: "instagram.com/_namexgaurav",
    width: 14,
    height: 14,
  ),
  ContactModel(
    icon: AppImages.xSvgImage,
    lable: "x.com/namexgaurav",
    width: 14,
    height: 14,
  ),
];
