import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import '../core/keys/env.dart';
import '../features/auth/data/data_source/events_api_services.dart';
import '../features/auth/data/data_source/attraction_api_services.dart';
import '../features/auth/data/data_source/venues_api_services.dart';

GetIt locator = GetIt.instance;

Future<void> setuplocator() async {
  final dio = await getDio();
  locator.registerSingleton<Dio>(dio);

  locator.registerLazySingleton<AttractionApiServices>(
      () => AttractionApiServices(locator()));
  locator.registerLazySingleton<ApiServices>(() => ApiServices(locator()));
  locator.registerLazySingleton<VenuesApiServices>(() => VenuesApiServices(locator()));
  // locator.registerLazySingleton<SuperheroRepository>(() => SuperheroRepository());
}

Future<Dio> getDio() async {

  String apiKey = Env.tmdbApiKey;
  var cacheOptions = await getCacheOptions();
  // Dio with logging interceptor and cache interceptor
  return Dio(BaseOptions(baseUrl: 'https://app.ticketmaster.com/discovery/v2/'))
    ..interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      logPrint: (object) {
        print(object);

      },
    ))
    ..interceptors.add(DioCacheInterceptor(options: cacheOptions))
    ..interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Add the API key to the query parameters
        options.queryParameters['apikey'] = apiKey;
        return handler.next(options);
      },
    ),);
}
Future<HiveCacheStore> getHiveCacheStore() async {
  var cacheDir = await getTemporaryDirectory();
  String cacheKey = 'TicketBox';
  return HiveCacheStore(
    cacheDir.path,
    hiveBoxName: cacheKey,
  );
}

Future<CacheOptions> getCacheOptions() async {
  var hive = await getHiveCacheStore();
  return CacheOptions(
    store: hive,
    policy: CachePolicy.forceCache,
    priority: CachePriority.high,
    maxStale: const Duration(minutes: 5),
    hitCacheOnErrorExcept: [401, 404],
    keyBuilder: (request) {
      return request.uri.toString();
    },
    allowPostMethod: false,
  );
}
