///
enum SheinErrorType {
  notFoundEntity,
  notFoundAlgoliaEntities,
  custom,
  networkTimedOut,
  notFoundFirebaseUser,
  emptyFirebaseUid,
  signupUserNameAlreadyInUse,
  userNameAlreadyInUseError,
  failedUpdateReviewScore,
  failedCreateUser,
  failedDeleteUserRequiresRecentLogin,
  failedUpdateUserProfile,
  failedResizeUploadImage,
  failedConvertUploadImage,
  gmsNotFoundPlaces,
  gmsInvalidURL,
  gmsInvalidRequest
}

class CustomError extends Error {
  ///
  CustomError({
    required this.errorType,
    this.commentMessage,
  });

  late SheinErrorType errorType;
  String? commentMessage;

  String get errMessage {
    switch (errorType) {
      case SheinErrorType.notFoundEntity:
        return 'Shein custom error: $commentMessage is not found.';
      case SheinErrorType.notFoundAlgoliaEntities:
        return 'Shein custom error: Documents in Algolia are not found.';
      case SheinErrorType.custom:
        return 'Shein custom error: $commentMessage';
      case SheinErrorType.networkTimedOut:
        return 'Shein custom error: Network timed out.';
      case SheinErrorType.notFoundFirebaseUser:
        return 'Shein custom error: Firebase user is not found.';
      case SheinErrorType.emptyFirebaseUid:
        return 'Shein custom error: Firebase uid is empty.';
      case SheinErrorType.signupUserNameAlreadyInUse:
        return 'Shein custom error: Firebase signup user name is already in use.';
      case SheinErrorType.userNameAlreadyInUseError:
        return 'Shein custom error: Firebase signup user name checking error.';
      case SheinErrorType.failedUpdateReviewScore:
        return 'Shein custom error: Firestore review score update is failed.';
      case SheinErrorType.failedCreateUser:
        return 'Shein custom error: Firestore user create is failed.';
      case SheinErrorType.failedDeleteUserRequiresRecentLogin:
        return 'Shein custom error: Firebase user delete is failed.';
      case SheinErrorType.failedUpdateUserProfile:
        return 'Shein custom error: Firestore user profile update is failed.';
      case SheinErrorType.failedResizeUploadImage:
        return 'Shein custom error: Upload image resizing is failed.';
      case SheinErrorType.failedConvertUploadImage:
        return 'Shein custom error: Upload image converting is failed.';
      case SheinErrorType.gmsNotFoundPlaces:
        return 'Shein custom error: Google Places places are not found.';
      case SheinErrorType.gmsInvalidURL:
        return 'Shein custom error: Google Places url is invalid.';
      case SheinErrorType.gmsInvalidRequest:
        return 'Shein custom error: Google Places request is invalid.';
    }
  }

  @override
  String toString() {
    return errMessage;
  }
}
