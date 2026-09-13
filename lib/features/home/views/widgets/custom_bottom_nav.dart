import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_ghar_demo/features/home/enum/home_nav_enum.dart';
import 'package:physio_ghar_demo/features/home/providers/selected_nav_provider.dart';
import 'package:physio_ghar_demo/features/shared/extensions/number_extension.dart';
import 'package:physio_ghar_demo/features/shared/extensions/widget_extension.dart';
import 'package:physio_ghar_demo/features/shared/utils/app_colors.dart';

class CustomBottomNav extends ConsumerStatefulWidget {
  final PageController controller;

  const CustomBottomNav({super.key, required this.controller});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomBottomNavState();
}

class _CustomBottomNavState extends ConsumerState<CustomBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final selectedNav = ref.watch(providerOfSelectedHomeNav);

        return Container(
          width: double.infinity,

          // Main bottom navigation background
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.spMin),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...HomeNavEnum.values.map(
                (item) => _animatedIcon(
                  value: item,
                  selectedNav: selectedNav.selectedNav,
                  onTap: () {
                    ref
                        .read(providerOfSelectedHomeNav.notifier)
                        .changeNav(value: item);

                    widget.controller.animateToPage(
                      item.index,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ),
            ],
          ).pXY(8.spMin, 8.spMin),
        );
      },
    );
  }

  Widget _animatedIcon({
    required HomeNavEnum value,
    required HomeNavEnum selectedNav,
    required Function() onTap,
  }) {
    final bool isSelected = selectedNav == value;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),

      decoration: BoxDecoration(
        color: isSelected ? AppColors.lightBg : Colors.transparent,

        borderRadius: BorderRadius.circular(20.spMin),
      ),

      child: Material(
        color: Colors.transparent,

        child: InkWell(
          borderRadius: BorderRadius.circular(20.spMin),
          onTap: onTap,

          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isSelected ? 12.spMin : 10.spMin,
              vertical: 9.spMin,
            ),

            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Navigation icon
                Icon(
                  value.icon,
                  size: 21.spMin,

                  color: isSelected
                      ? AppColors.primary
                      : AppColors.secondaryText,
                ),

                // Show title only for selected item
                if (isSelected) ...[
                  6.wSizedBox,

                  Text(
                    value.title,
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 12.spMin,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
