import 'package:flutter_application_1/common/app_shared_preferences.dart';
import 'package:flutter_application_1/common/configs.dart';
import 'package:flutter_application_1/common/dio.dart';
import 'package:flutter_application_1/common/graphql/graphql_configuration.dart';
import 'package:flutter_application_1/data/remote/post_blog_remote_data_source.dart';
import 'package:flutter_application_1/domain/repository/post_blogpost_repository.dart';
import 'package:flutter_application_1/domain/usecase/home/get_post_blog.dart';
import 'package:flutter_application_1/providers/blog_post_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

final locator = GetIt.instance;
late String _flavor;

void init(String flavor) {
  _flavor = flavor;
  locator.allowReassignment = true;

  // Register SharedPreferences
  locator.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );
  locator.registerLazySingleton<AppSharedPreferences>(
    () => AppSharedPreferences(preferences: locator()),
  );

  // Provider
  locator.registerFactory(() => BlogPostProvider(getPost: locator()));

  // Usecase
  locator
      .registerLazySingleton(() => GetPostBlog(locator<PostBlogRepository>()));

  // Repository
  locator
      .registerLazySingleton<PostBlogRepository> (() => PostBlogRepositoryImpl(
              postBlogRemoteDataSource: locator<PostBlogRemoteDataSource>(),
      ));

  // Data Source
  locator.registerLazySingleton<PostBlogRemoteDataSource>(
      () => PostBlogRemoteDataSourceImpl());

  // External - Wait for GraphQLClient initialization
  locator.registerSingletonAsync<GraphQLClient>(
      () => GraphQLConfiguration().getClient(flavor));
  locator.registerSingletonAsync<Dio>(() => DioClient().client(flavor));
  locator.registerLazySingleton(() => Configs(flavor));
}

void resetExternal() {
  locator.registerSingletonAsync<Dio>(() => DioClient().client(_flavor));
  locator.registerSingletonAsync<GraphQLClient>(
      () => GraphQLConfiguration().getClient(_flavor));
}
