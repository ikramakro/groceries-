import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/presentation/utils/app_colors.dart';
import 'package:nectar/presentation/utils/assets.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + 35,
            bottom: 25,
          ),
          child: Column(
            children: [
              const Row(
                children: [
                  SizedBox(width: 25),
                  // image
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://gweb-research-imagen.web.app/compositional/An%20oil%20painting%20of%20a%20British%20Shorthair%20cat%20wearing%20a%20cowboy%20hat%20and%20red%20shirt%20skateboarding%20on%20a%20beach./1_.jpeg',
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // name
                        Text(
                          'John Doe',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // email
                        Text(
                          'johndoe@example.com',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // list of orders
              const Divider(height: 1),
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                leading: SvgPicture.asset(
                  SvgAssets.orders,
                ),
                title: const Text('Orders'),
                onTap: () {
                  // navigate to orders page
                  Navigator.of(context).pushNamed('/orders');
                },
              ),
              const Divider(height: 1),
              // my details
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                leading: SvgPicture.asset(
                  SvgAssets.myDetails,
                ),
                title: const Text('My Details'),
                onTap: () {
                  // navigate to details page
                  Navigator.of(context).pushNamed('/my-details');
                },
              ),
              const Divider(height: 1),
              // delivery address
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                leading: SvgPicture.asset(
                  SvgAssets.deliveryAddress,
                ),
                title: const Text('Delivery Address'),
                onTap: () {
                  // navigate to address page
                  Navigator.of(context).pushNamed('/delivery-address');
                },
              ),
              const Divider(height: 1),
              // payment methods
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                leading: SvgPicture.asset(
                  SvgAssets.payment,
                ),
                title: const Text('Payment Methods'),
                onTap: () {
                  // navigate to payment methods page
                  Navigator.of(context).pushNamed('/payment-methods');
                },
              ),
              const Divider(height: 1),
              // promo codes
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                leading: SvgPicture.asset(
                  SvgAssets.promoCode,
                ),
                title: const Text('Promo Codes'),
                onTap: () {
                  // navigate to promo codes page
                  Navigator.of(context).pushNamed('/promo-codes');
                },
              ),
              const Divider(height: 1),
              // notifications
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                leading: SvgPicture.asset(
                  SvgAssets.notification,
                ),
                title: const Text('Notifications'),
                onTap: () {
                  // navigate to notifications page
                  Navigator.of(context).pushNamed('/notifications');
                },
              ),
              const Divider(height: 1),
              // help
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                leading: SvgPicture.asset(
                  SvgAssets.help,
                ),
                title: const Text('Help'),
                onTap: () {
                  // navigate to help page
                  Navigator.of(context).pushNamed('/help');
                },
              ),
              const Divider(height: 1),
              // about
              ListTile(
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                leading: SvgPicture.asset(
                  SvgAssets.about,
                ),
                title: const Text('About'),
                onTap: () {
                  // navigate to about page
                  Navigator.of(context).pushNamed('/about');
                },
              ),
              const Divider(height: 1),
              const SizedBox(height: 50),
              // logout
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: const LogoutButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.grayishLimeGreen,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.logout,
                color: AppColors.primary,
              ),
              Expanded(
                child: Text(
                  'Logout',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}