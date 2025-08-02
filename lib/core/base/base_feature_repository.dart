abstract class BaseFeatureRepository<T> {
  T? get model;
  void update(T? model);
}
