import 'package:either_dart/either.dart';
import 'package:flutter_application_1/common/graphql/query/blogPosts.graphql.dart';
import 'package:flutter_application_1/domain/repository/post_blogpost_repository.dart';
import 'package:flutter_application_1/common/failure.dart';


class GetPostBlog {
  final PostBlogRepository repository;

  GetPostBlog(this.repository);

  Future<Either<Failure, Query$blogPosts$blogPosts?>> execute() async {
    return await repository.getBlogPosts();
  }
}
