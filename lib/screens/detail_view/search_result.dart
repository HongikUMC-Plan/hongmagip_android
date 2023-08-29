import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utilities/blogsearch.dart';

class SearchResult extends StatelessWidget {
  final String searchKeyword;

  SearchResult({super.key, required this.searchKeyword});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: getBlogSearchResults(searchKeyword), // 검색어를 동적으로 처리
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // 데이터 로딩 중일 때 표시할 위젯
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          // 데이터 로딩 중 오류 발생 시 표시할 위젯
          return Center(
            child: Text('오류가 발생했습니다.'),
          );
        } else if (snapshot.hasData) {
          // 데이터 로딩이 완료되었을 때 표시할 위젯
          final List<Map<String, dynamic>> results = snapshot.data!;

          // 상위 5개의 검색 결과만 가져오기
          final topResults = results.take(5).toList();

          return ListView.builder(
            itemCount: topResults.length,
            itemBuilder: (context, index) {
              final result = topResults[index];
              final String title = result['title'];
              final String description = result['description'];
              final String link = result['link'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: InkWell(
                      onTap: () {
                        launchUrl(
                          Uri.parse(
                              link,
                          ),
                        );
                      },
                      child: Container(
                        width: 320,
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              blurRadius: 4,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(18, 15, 18, 9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  letterSpacing: -2,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                description,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  letterSpacing: -1,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        } else {
          // 데이터 로딩 중에도 에러가 없고 데이터도 없을 때 표시할 위젯
          return Center(
            child: Text('검색 결과가 없습니다.'),
          );
        }
      },
    );
  }
}
