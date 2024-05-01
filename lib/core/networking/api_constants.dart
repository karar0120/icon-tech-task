class ApiConstants {
  static const String baseUrl = "https://nottr.app/api/";
  static const String login = "auth/login";
  static const String restaurantBranchesOnMap = "branches";
  static const String restaurantBranchesCategories =
      "branch/{branch_id}/categories";
  static const String restaurantBranchesProduct =
      "branch/{branch_id}/category/{category_id}/products";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
