import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../main.dart';
import '../components/BMFloatingActionComponent.dart';
import '../utils/BMColors.dart';
import 'BMPurchaseMoreScreen.dart';

class BMTopOffersScreen extends StatefulWidget {
  const BMTopOffersScreen({Key? key}) : super(key: key);

  @override
  State<BMTopOffersScreen> createState() => _BMTopOffersScreenState();
}

class _BMTopOffersScreenState extends State<BMTopOffersScreen> {
  @override
  void initState() {
    setStatusBarColor(
      appStore.isDarkModeOn
          ? appStore.scaffoldBackground!
          : bmLightScaffoldBackgroundColor,
    );
    super.initState();
  }

  @override
  void dispose() {
    setStatusBarColor(bmSpecialColor);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appStore.isDarkModeOn
          ? appStore.scaffoldBackground!
          : bmLightScaffoldBackgroundColor,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: bmPrimaryColor, size: 28),
          onPressed: () => finish(context),
        ),
        title: Text('Top Offers', style: boldTextStyle(size: 20)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: bmPrimaryColor),
            onPressed: () {
              PurchaseMoreScreen(enableAppbar: false).launch(context);
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _headerSection(),
            24.height,
            _offerList(),
          ],
        ),
      ),

      floatingActionButton: BMFloatingActionComponent(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _headerSection() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: radius(24),
        gradient: LinearGradient(
          colors: [
            bmPrimaryColor,
            bmPrimaryColor.withOpacity(0.7),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Exclusive Deals',
              style: boldTextStyle(color: Colors.white, size: 22)),
          8.height,
          Text(
            'Grab the best beauty services at special prices',
            style: secondaryTextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }

  Widget _offerList() {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: context.cardColor,
            borderRadius: radius(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  color: bmPrimaryColor.withOpacity(0.1),
                  borderRadius: radius(16),
                ),
                child: Icon(Icons.local_offer,
                    color: bmPrimaryColor, size: 30),
              ),
              16.width,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Premium Salon Package',
                        style: boldTextStyle()),
                    6.height,
                    Text(
                      'Flat 30% off on all services',
                      style: secondaryTextStyle(),
                    ),
                  ],
                ),
              ),
              8.width,
              AppButton(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shapeBorder: RoundedRectangleBorder(
                  borderRadius: radius(20),
                ),
                color: bmPrimaryColor,
                child:
                Text('Book', style: boldTextStyle(color: Colors.white)),
                onTap: () {
                  PurchaseMoreScreen().launch(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
