const String apiUrl = "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/";
const String apiKey = "BisceeAxB5FxtzYkFdNgbAYt0eQpVABm";

String getApiKeyPath() {
  return "?api-key=$apiKey";
}

String getArticlePath(int period) {
  return "all-sections/${period.toString()}.json${getApiKeyPath()}";
}