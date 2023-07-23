import 'package:flutter_application_1/common/graphql/query/blogPosts.graphql.dart';
import 'package:flutter_application_1/data/remote/post_blog_remote_data_source.dart';
import 'package:flutter_application_1/common/failure.dart';
import 'package:either_dart/either.dart';

abstract class PostBlogRepository {
  Future<Either<Failure, Query$blogPosts$blogPosts?>> getBlogPosts();
}

class PostBlogRepositoryImpl implements PostBlogRepository {
  final PostBlogRemoteDataSource postBlogRemoteDataSource;

  PostBlogRepositoryImpl({
    required this.postBlogRemoteDataSource
  });

  @override
  Future<Either<Failure, Query$blogPosts$blogPosts?>> getBlogPosts() async {
  try {
        final result = await postBlogRemoteDataSource.getBlogPosts();
        return Right(result);
      } on RequestFailure catch (it) {
        return Left(it);
      }
  }
}
