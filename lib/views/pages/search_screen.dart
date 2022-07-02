import 'package:flutter/material.dart';
import 'package:google_clone/services/api_services.dart';
import 'package:google_clone/shared/config/app_colors.dart';
import 'package:google_clone/views/widgets/search_tabs.dart';
import 'package:google_clone/views/widgets/search_footer.dart';
import 'package:google_clone/views/widgets/search_header.dart';
import 'package:google_clone/views/widgets/search_result_component.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const SearchScreen(
      {super.key, required this.searchQuery, required this.start});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Title(
      title: searchQuery,
      color: Colors.blue,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                const ShearchHeader(),
                // Tabs for search
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width <= 768 ? 10 : 150,
                  ),
                  child: const SearchTabs(),
                ),
                const Divider(
                  height: 0,
                  thickness: 1,
                ),
                const SizedBox(
                  width: 20,
                ),
                // Search results
                FutureBuilder(
                  future:
                      ApiService().fetchData(query: searchQuery, start: start),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: size.width <= 768 ? 10 : 150,
                              top: 12,
                            ),
                            child: Text(
                              'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results ${snapshot.data?['searchInformation']['formattedSearchTime']} seconds',
                              style: const TextStyle(
                                fontSize: 15,
                                color: Color(0xFF70757a),
                              ),
                            ),
                          ),
                          ListView.builder(
                            itemCount: snapshot.data?['items'].length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  left: size.width <= 768 ? 10 : 150,
                                  top: 12,
                                ),
                                child: SearchResultComponent(
                                  //imageUrl: snapshot.data?['items'][index]['metatags']['og:image'],
                                  linkToGo: snapshot.data?['items'][index]
                                      ['link'],
                                  link: snapshot.data?['items'][index]
                                      ['displayLink'],
                                  text: snapshot.data?['items'][index]['title'],
                                  desc: snapshot.data?['items'][index]
                                      ['snippet'],
                                ),
                              );
                            },
                          ),
                          // pagination for search results
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    if (start != '0') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SearchScreen(
                                            searchQuery: searchQuery,
                                            start: (int.parse(start) - 10)
                                                .toString(),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                  child: const Text(
                                    '< Prev',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.blueColor),
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SearchScreen(
                                          searchQuery: searchQuery,
                                          start: (int.parse(start) + 10)
                                              .toString(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Next >',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.blueColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const SearchFooter(),
                        ],
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
