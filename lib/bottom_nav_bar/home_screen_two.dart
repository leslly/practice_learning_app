import 'package:flutter/material.dart';
import 'package:practice_learning_app/course/course_info.dart';
import 'package:practice_learning_app/course/course_screen.dart';
import 'package:practice_learning_app/course/index_provider.dart';
import 'package:practice_learning_app/search/search_not_found.dart';
import 'package:provider/provider.dart';
import '../config/config.dart';
import '../utils/category_labels.dart';
import '../utils/global_colours.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({Key? key}) : super(key: key);

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {

  /*
  * class _InviteUserViewState extends State<InviteUserView> {
    final TextEditingController _searchTextController = TextEditingController();
    String _searchText = '';

    @override
    void initState() {
      _searchTextController.addListener(() {
        setState(() {
          _searchText = _searchTextController.text.trim();
        });
      });
      super.initState();
  }
  * */


  // List<IndexProvider> displayList = List.from(mainCourseList);
  //
  // // static List<IndexProvider> mainCourseList = IndexProvider() as List<IndexProvider>;
  //
  // //static List<IndexProvider> mainCourseList = IndexProvider() as List<IndexProvider>;
  //
  // // this brought out an error that index provider cannot belong to index provider list which
  // // now looking at was dumb
  // // so i then initialised it to a copy of th actual list but it said the course inside cannot belong to index provider list
  // // try to change the name from index provider to index provider model low key abandoning the original index provider but that didn't work either
  // // try ussing course class but all elements of it is rewuired so they all came ou
  //
  // void updateList(String value) {
  //
  //   setState(() {
  //     displayList = mainCourseList.where((element) => element.courses.contains(value.toLowerCase())).toList();
  //     // how do i element.courses.tile here ?
  //   });
  // }

// go to bottom where our fake list builder should be
  /*
  // Creating the list to display and filter
  List<CourseModel> display_list = List.from(main_course_list);

  creating a dummy list of courses
  *
  * static List<CourseModel> main_course_list = [

  * // mine is in another file

  * // what he puts in here is actually the provider class
  *
  * ]
  *
  * void updateList(String value {
  * // this is the function to filter the list
    // Now let's write our search function
    setState(() {
    display_list = main_course_list.where((element) => element.course_title!.toLowerCase().contains(value.toLowerCase())).toList();
    }); // setState

  * })
  */

  @override
  void initState() {
    searchController.addListener(() {
      setState(() {
        _searchText = searchController.text.trim();
      });
    });
    super.initState();
  }

  String _searchText = '';

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Consumer<IndexProvider>(builder: (context, provider, child){

      final courses = _searchText.isEmpty ? provider.courses : provider.courses.isEmpty
          ? [] : provider.courses.where((e) => e.title.toLowerCase().contains(_searchText.toLowerCase())).toList();
      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              'Hello,',
                              style: TextStyle(
                                color: GlobalColors.bigTextColorBlack,
                                fontSize: 16,
                                fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf',
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              username,
                              style: TextStyle(
                                color: GlobalColors.bigTextColorBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                fontFamily: 'assets/blush_fonts/Rubik/Rubik-Bold.ttf',
                              ),
                            ),
                          ],
                        ),

                      ),
                      // NOTIFICATION
                      Container(
                        alignment: Alignment.center,
                        height: 48,
                        width: 48,
                        decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all( color: GlobalColors.borderGrey),
                        ),
                        child: Image.asset(
                          'assets/blush_icons/Notification.png',
                          color: GlobalColors.bigTextColorBlack,
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  // FAKE SEARCH BAR
                  /* TextFiled(
                  onChanged:(value) => updateList(value),
                  )
                  * */

                  // SEARCH BAR
                  Container(
                    height: 56,
                    width: 399,
                    padding: const EdgeInsets.only(top: 16, left: 16, bottom: 16, right: 16),
                    decoration: BoxDecoration(
                      color: GlobalColors.profileBackground,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: GlobalColors.borderGrey,
                        width: 1,
                      ),
                    ),
                    child: TextFormField(
                      controller: searchController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search course',
                        hintStyle: const TextStyle(
                          height: 1,
                          fontSize: 14,
                          fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf',
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            ////search for course
                          },
                          child: Image.asset(
                            'assets/blush_icons/search_icon.png',
                            color: GlobalColors.bigTextColorBlack,
                            height: 24,
                            width: 24,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                  /*
                  InputField(
                              prefix: Row(
                                children: [
                                  SvgPicture.asset(
                                    AppAssets.search,
                                    // ignore: deprecated_member_use
                                    color: AppColors.stroke,
                                  ),
                                  const Gap(22),
                                ],
                              ),

                         // IMPORTANT PART
                              controller: _searchTextController,
                              placeholder: 'Search friends..',
                            ),
                            */
                  const SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        // ROW OF CATEGORY
                        Text(
                          'Category:',
                          style: TextStyle(
                            fontFamily: 'assets/blush_fonts/Rubik/Rubik-Regular.ttf',
                            fontSize: 14,
                            color: GlobalColors.bigTextColorBlack
                          ),
                        ),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#CSS'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#UX'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#Swift'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#Flutter'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#UI'),
                         const SizedBox(width: 12),
                        const CategoryLabels(text: '#Python'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#SQL'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#Kotlin'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#CSS'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#JS'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#Java'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#C.programming'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#C++'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#React'),
                        const SizedBox(width: 12),
                        const CategoryLabels(text: '#Node.JS'),

                      ],
                    ),
                  ),
                 
                        const SizedBox(height: 20),

                        if(courses.isEmpty)
                          SearchNotFound()
                        else

                        //LIST OF COURSES
                          ListView.separated(
                            shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                              itemBuilder: (context, index){
                                final course = courses[index];
                                return CourseScreen(course: course, callback: (course){
                                  //Navigate to your next screen using the course object
                                  if(mounted) {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => CourseInfo(course: course)));
                                  }
                                });
                              },
                              separatorBuilder: (context, index){
                                return const SizedBox(height: 14);
                              },
                              itemCount: courses.length
                          )
                

              /**
               * child: SingleChildScrollView(
                  child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _followingList.length,
                  itemBuilder: (context, int index) {
                  final FollowingModel item =
                  _followingList[index];
               */

              // FAKE LIST BUILDER
                  /* Expanded(

                  // now lets create a function to display in case we don't get results

                  child: display_list.length == 0 ? Center(child: Text("Tet display when there is no result")), : ListView.builder(
                  itemCount: display_list.length,
                  itembuilder: (context, index) => ListTile(
                  title: Text(display_list[index].course_title,
                  style: TextStyle(color: Colors.white),
                  ), // Text
                  ), // listTile
                  ), // listviewBuilder
                  ), // expanded
                  */
                ]
            ),
          ),
        ),
      );
    });
  }

}
