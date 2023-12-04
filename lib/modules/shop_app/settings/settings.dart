import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/models/shop_app/shop_contactUs_model.dart';
import 'package:shop_app/modules/shop_app/FAQs/FAQs.dart';
import 'package:shop_app/modules/shop_app/complaints/complaint.dart';
import 'package:shop_app/modules/shop_app/notifications/notifications.dart';
import 'package:shop_app/modules/shop_app/settings/cubit/cubit.dart';
import 'package:shop_app/modules/shop_app/settings/cubit/states.dart';
import 'package:shop_app/modules/shop_app/update_profile/update_profile_screen.dart';
import 'package:shop_app/shared/components/components.dart';

class ShopSettingScreen extends StatelessWidget {
  const ShopSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsCubit, SettingsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        List<String> contactName = ["Facebook", "Instagram", "Twitter", "Email", "Phone", "WhatsApp",
          "Snapchat", "YouTube", "Website"];

        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  navigateToPage(context, const NotificationsScreen());
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    // decoration: BoxDecoration(
                    //   borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    //   color: SettingsCubit.get(context).isSelected
                    //       ? Colors.grey[300]
                    //       : Colors.white,
                    // ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_none,
                          ),
                          SizedBox(width: 20.0,),
                          Text(
                            "Notifications",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0,),
              GestureDetector(
                onTap: () {
                  navigateToPage(context, ShopUpdateProfileScreen());
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    // decoration: BoxDecoration(
                    //   borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    //   color: SettingsCubit.get(context).isSelected
                    //       ? Colors.grey[300]
                    //       : Colors.white,
                    // ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.update,
                          ),
                          SizedBox(width: 20.0,),
                          Text(
                            "Update Profile",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0,),
              GestureDetector(
                onTap: () {
                  navigateToPage(context, const FAQsScreen());
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    // decoration: BoxDecoration(
                    //   borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    //   color: SettingsCubit.get(context).isSelected
                    //       ? Colors.grey[300]
                    //       : Colors.white,
                    // ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.question_answer_outlined,
                          ),
                          SizedBox(width: 20.0,),
                          Text(
                            "FAQ",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0,),
              GestureDetector(
                onTap: () {
                  navigateToPage(context, ComplaintsScreen());
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    // decoration: BoxDecoration(
                    //   borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    //   color: SettingsCubit.get(context).isSelected
                    //       ? Colors.grey[300]
                    //       : Colors.white,
                    // ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.report_outlined,
                          ),
                          SizedBox(width: 20.0,),
                          Text(
                            "Complaints",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0,),
              GestureDetector(
                // Contact US
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          const Padding(
                            padding: EdgeInsetsDirectional.only(
                              start: 15.0,
                              top: 15.0,
                              end: 15.0,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Contact US",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Terms of Service",
                                  style: TextStyle(
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(width: 10.0,),
                                Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 5.0,),
                          Container(
                            height: 350.0,
                            decoration: BoxDecoration(
                              color: Colors.white, // Background color
                              border: Border.all(
                                color: Colors.white, // Border color
                                // width: 2.0, // Border width
                              ),
                            ),
                            child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) => Row(
                                    children: [
                                      buildContactUSItem(SettingsCubit.get(context).contactUsModel!.data!.data[index], context),
                                      const SizedBox(width: 8.0,),
                                      Text(
                                        '$contactName[index]',
                                        style: const TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                              separatorBuilder: (context, index) => const SizedBox(width: 1.0,),
                              itemCount: SettingsCubit.get(context).contactUsModel!.data!.data.length,
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.contact_support_outlined,
                          ),
                          SizedBox(width: 20.0,),
                          Text(
                            "Contact US",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }

  Widget buildContactUSItem(DetailedData detailedData, context) => Padding(
    padding: const EdgeInsetsDirectional.only(
      top: 10.0,
      start: 10.0,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: (){
              navigateToURL(
                url: detailedData.value,
              );
            },
            icon: Image(
              color: Colors.black.withOpacity(0.6),
              width: 50.0,
              height: 50.0,
              image: NetworkImage(
                detailedData.image,
              ),
            ),
        ),
      ],
    ),
  );
}
