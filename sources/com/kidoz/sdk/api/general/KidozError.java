package com.kidoz.sdk.api.general;

/* JADX INFO: loaded from: classes4.dex */
public class KidozError extends Throwable {
    public static final int GENERAL_ERROR = 100;
    public static final int INSTANCE_ALREADY_LOADING = 10414;
    public static final int LOAD_ERROR = 10400;
    public static final int LOAD_FAILED_BAD_RESPONSE = 10403;
    public static final int LOAD_FAILED_WEB_VIEW_INIT = 10405;
    public static final int NETWORK_ERROR = 101;
    public static final int NO_FILL = 10404;
    public static final int SHOW_ERROR = 10500;
    private int mErrorCode;
    private String mMessage;

    public enum Type {
        general("General error", 100),
        network("Network error", 101),
        loadFailed("Load failed", KidozError.LOAD_ERROR),
        loadFailedBadResponse("Load failed", KidozError.LOAD_FAILED_BAD_RESPONSE),
        loadFailedWebViewInit("Failed to init WebView", KidozError.LOAD_FAILED_WEB_VIEW_INIT),
        noOffer("No fill", KidozError.NO_FILL),
        showFailed("Show failed", KidozError.SHOW_ERROR),
        instanceAlreadyLoading("Instance already loading", KidozError.INSTANCE_ALREADY_LOADING);

        int code;
        String message;

        Type(String str, int i) {
            this.message = str;
            this.code = i;
        }
    }

    public KidozError(int i, String str) {
        this.mErrorCode = i;
        this.mMessage = str;
    }

    public KidozError(Type type) {
        this.mMessage = type.message;
        this.mErrorCode = type.code;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.mMessage;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "errorCode::" + this.mErrorCode + ",message::" + this.mMessage;
    }
}
