import 'package:final_task/core/utils/app_styles.dart';
import 'package:final_task/core/utils/assets.dart';
import 'package:final_task/features/home/data/models/course_model.dart';
import 'package:final_task/features/home/presentation/views/widgets/auto_slidable_cards.dart';
import 'package:final_task/features/home/presentation/views/widgets/custom_tab_bar_widget.dart';
import 'package:flutter/material.dart';

import 'custom_course_container.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  late TabController tabController;
  final List<String> tabsHeader = [
    'English',
    'Italy',
    'Germany',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(
      length: 3,
      vsync: this,
    );
    tabController.addListener(() {
      setState(() {
        currentIndex = tabController.index.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: Image.asset(
              Assets.imagesAvatar,
            ),
            trailing: const Icon(
              Icons.waving_hand_rounded,
              color: Colors.amber,
            ),
            title: const Text('Welcome back'),
          ),
        ),
        const SliverToBoxAdapter(
          child: AutoSlidableCards(),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            height: 40,
            child: TabBar(
                unselectedLabelStyle: const TextStyle(
                  height: 1,
                ),
                tabAlignment: TabAlignment.fill,
                labelStyle: AppStyles.styleRegularInter17(context),
                isScrollable: false,
                controller: tabController,
                overlayColor: const WidgetStatePropertyAll(Colors.transparent),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                onTap: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                labelPadding: const EdgeInsets.all(0),
                tabs: List.generate(
                  3,
                  (index) => CustomTapBarWidget(
                      text: tabsHeader[index],
                      color: currentIndex == index
                          ? const Color(0xffF39200)
                          : const Color(0xffF1FAEE)),
                )),
          ),
        ),
        SliverFillRemaining(
          child: TabBarView(
            controller: tabController,
            children: [
              TabBarCoursesView(
                header: 'English Coursers',
                courses: english,
              ),
              TabBarCoursesView(
                header: 'Italy Coursers',
                courses: italy,
              ),
              TabBarCoursesView(
                header: 'Germany Coursers',
                courses: germany,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TabBarCoursesView extends StatelessWidget {
  const TabBarCoursesView({
    super.key,
    required this.courses,
    required this.header,
  });
  final List<CourseModel> courses;
  final String header;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: AppStyles.styleMediumInter18(context),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              // physics: const NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return CustomCourseContainer(
                  course: courses[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
