// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/state_enum.dart';
import 'package:flutter_application_1/presentation/pages/categories_home.dart';
import 'package:flutter_application_1/providers/blog_post_provider.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Jobcard extends StatefulWidget {
  final String searchQuery;

  const Jobcard({Key? key, required this.searchQuery}) : super(key: key);

  @override
  _JobcardState createState() => _JobcardState();
}

class _JobcardState extends State<Jobcard> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.microtask(() {
        Provider.of<BlogPostProvider>(context, listen: false)
            .doGetPost()
            .then((value) {
          context.read<BlogPostProvider>().postsData?.items.forEach((element) {
            // print(element.title);
            // print(element.thumbnailSrc?.md);
          });
        });
      });
    });
  }

  void _onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    if (mounted) {
      setState(() {
        _refreshController.refreshCompleted();
      });
    }
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
        final filteredData = widget.searchQuery.isEmpty
            ? provider.postsData?.items
            : provider.postsData?.items
                .where((element) => element.title!
                    .toLowerCase()
                    .contains(widget.searchQuery.toLowerCase()))
                .toList();

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
              return SizedBox(
                height: MediaQuery.of(context).size.height - 150,
                child: SmartRefresher(
                  controller: _refreshController,
                  onRefresh: _onRefresh,
                  onLoading: _onLoading,
                  child: ListView.builder(
                    itemCount: filteredData?.length ?? 0,
                    itemBuilder: (context, index) {
                      final post = filteredData![index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoriesHome(
                                post: post,
                              ),
                            ),
                          );
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
                                      (post.thumbnailSrc?.md ?? ''),
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                (post.title ?? ''),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
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
