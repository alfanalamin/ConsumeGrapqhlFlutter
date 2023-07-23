import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/state_enum.dart';
import 'package:flutter_application_1/providers/blog_post_provider.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Jobcard extends StatefulWidget {
  const Jobcard({Key? key}) : super(key: key);

  @override
  State<Jobcard> createState() => _JobcardState();
}

class _JobcardState extends State<Jobcard> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Provider.of<BlogPostProvider>(context, listen: false).doGetPost();
    });
  }

  void _onRefresh() async {
    // Your refresh logic
  }

  void _onLoading() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    if (mounted) {
      setState(() {
        _refreshController.loadComplete();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BlogPostProvider>(
      builder: (context, provider, _) {
        switch (provider.postState) {
          case RequestState.Empty:
            return const Center(
              child: Text('No Data'),
            );
          case RequestState.Loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case RequestState.Loaded:
            if (provider.postsData != null) {
              // Display the fetched data using ListView.builder
              return SmartRefresher(
                controller: _refreshController,
                onRefresh: _onRefresh,
                onLoading: _onLoading,
                child: ListView.builder(
                  itemCount: provider.postsData!.items.length,
                  itemBuilder: (context, index) {
                    final post = provider.postsData!.items[index];
                    return InkWell(
                      onTap: () {
                        // Implement the onTap functionality here
                      },
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    post.thumbnailSrc?.original ?? '',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              post.title ?? '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            } else {
              return const Center(
                child: Text('No Data'),
              );
            }
          case RequestState.Error:
            return const Center(
              child: Text('Error occurred'),
            );
          default:
            return const Center(
              child: Text('Unknown state'),
            );
        }
      },
    );
  }
}
