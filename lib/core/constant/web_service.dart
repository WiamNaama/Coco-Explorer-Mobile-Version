/// Server Url.
const String baseUrl =
    "https://us-central1-open-images-dataset.cloudfunctions.net";

/// Status codes.
const int badRequest = 400;
const int unAuthorized = 401;
const int forbidden = 403;
const int notFound = 404;
const int requestTimeout = 408;
const int conflict = 409;
const int unprocessableEntity = 422;
const int internalServerError = 500;
const int serviceUnavailable = 503;

/// Error messages.
const String cancelMessage = "The request is canceled please try again.";
const String connectTimeoutMessage =
    "Your connection is lost please try again.";
const String otherMessage = "An error occurred please try again.";
const String receiveTimeoutMessage =
    "An error occurred when communicating with the server.";
const String sendTimeoutMessage =
    "An error occurred when communicating with the server.";

const String badRequestMessage = "Perhaps required fields are missing.";
const String unAuthorizedMessage = "Authentication is required.";
const String forbiddenMessage = "Access forbidden.";
const String notFoundMessage = "No data found.";
const String requestTimeoutMessage =
    "There was a problem with your request please try again.";
const String internalServerErrorMessage =
    "An error occurred on the server please try again.";
const String serviceUnavailableMessage =
    "Server is down for maintenance or is overloaded";
const String defaultErrorMessage =
    "An error occurred when communicating with the server.";

const String socketExceptionMessage = "Please, check your internet connection.";
const String formatExceptionMessage =
    "An error occurred when decoding data from the server.";
const String unableToProcessMessage = "Oops unable to process the data.";
const String unexpectedErrorMessage =
    "Unexpected error happend please try again.";
