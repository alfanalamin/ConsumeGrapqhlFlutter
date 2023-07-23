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
    final graphQLClient = GetIt.I<GraphQLClient>();

    final queryOptions = QueryOptions(
      document: Options$Query$blogPosts().document,
      fetchPolicy: FetchPolicy.networkOnly,
    );

    try {
      final result = await graphQLClient.query(queryOptions);
      if (result.hasException) {
        // Handle GraphQL query exceptions
        throw result.exception!;
      }
      return _parseBlogPostsResponse(result.data);
    } catch (error) {
      // Handle general exceptions
      // ignore: avoid_print
      print('Error: $error');
      return null;
    }
  }

  Query$blogPosts$blogPosts? _parseBlogPostsResponse(
      Map<String, dynamic>? responseData) {
    if (responseData != null) {
      // Check if the 'blogPosts' key exists and is not null in the responseData
      if (responseData['getBlogPosts'] != null) {
        // Assuming Query$blogPosts$blogPosts.fromJson is a generated constructor from the query class.
        return Query$blogPosts$blogPosts.fromJson(responseData['getBlogPosts']);
      } else {
        // Handle the case when 'blogPosts' key is null or missing in the response
        // ignore: avoid_print
        print(
            'Error: blogPosts key is missing or null in the GraphQL response.');
        return null;
      }
    } else {
      // Handle the case when responseData is null
      // ignore: avoid_print
      print('Error: GraphQL response data is null.');
      return null;
    }
  }
}
