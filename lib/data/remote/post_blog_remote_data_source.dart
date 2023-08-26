import 'package:flutter_application_1/common/graphql/graphql_util.dart';
import 'package:flutter_application_1/common/graphql/query/blogPosts.graphql.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql/client.dart';

abstract class PostBlogRemoteDataSource {
  Future<Query$blogPosts$blogPosts?> getBlogPosts();
}

class PostBlogRemoteDataSourceImpl implements PostBlogRemoteDataSource {
  PostBlogRemoteDataSourceImpl();

  @override
  Future<Query$blogPosts$blogPosts?> getBlogPosts() async {
    final result = await GetIt.I<GraphQLClient>().query(
      QueryOptions(
        document: Options$Query$blogPosts().document,
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );
      checkError(result);
      // print(result.data);
      return result.data != null
      ? Query$blogPosts$blogPosts.fromJson(result.data!['blogPosts'])
      : null;
  }
}