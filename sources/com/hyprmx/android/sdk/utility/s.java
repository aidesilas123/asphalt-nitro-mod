package com.hyprmx.android.sdk.utility;

/* JADX INFO: loaded from: classes2.dex */
public enum s {
    HYPRErrorTypeFailureToLoad(0),
    /* JADX INFO: Fake field, exist only in values array */
    HYPRErrorTypeFailureToLoadImage(1),
    HYPRErrorTypeVastCachingAssetError(2),
    HYPRErrorTypeVastPlayerError(3),
    /* JADX INFO: Fake field, exist only in values array */
    HYPRErrorTypeUnspecified(4),
    HYPRErrorTypeSDKInternalError(5),
    /* JADX INFO: Fake field, exist only in values array */
    HYPRErrorTypePostOfferQuestionsNotSupported(6),
    HYPRErrorTypeJSONParsingFailure(7),
    /* JADX INFO: Fake field, exist only in values array */
    HYPRErrorTypeWebTrafficEmptyResponse(8),
    HYPRErrorTypeShouldNeverHappen(9),
    /* JADX INFO: Fake field, exist only in values array */
    HYPRErrorTypeJsonValidation(10),
    /* JADX INFO: Fake field, exist only in values array */
    HYPRErrorCollectionTypeJavaScriptEvaluation(11),
    HYPRErrorAdDisplay(12),
    HYPRErrorExitingAd(13),
    HYPRErrorTypeCacheJournal(14),
    HYPRErrorInvalidEndpoint(15),
    /* JADX INFO: Fake field, exist only in values array */
    HYPRErrorInvalidURL(16);

    public final String a;

    s(int i) {
        this.a = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
