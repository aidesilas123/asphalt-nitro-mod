package com.hyprmx.android.sdk.webview;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;

/* JADX INFO: loaded from: classes2.dex */
public interface t {
    @RetainMethodSignature
    void addJavascriptInterface();

    @RetainMethodSignature
    void imageCaptured(String str);

    @RetainMethodSignature
    void navigateBack();

    @RetainMethodSignature
    void navigateForward();

    @RetainMethodSignature
    void pauseJSExecution();

    @RetainMethodSignature
    void permissionResponse(String str);

    @RetainMethodSignature
    void postUrl(String str, String str2);

    @RetainMethodSignature
    void removeJavascriptInterface();

    @RetainMethodSignature
    void resumeJSExecution();

    @RetainMethodSignature
    void runScript(String str);

    @RetainMethodSignature
    void setAdHtml(String str);

    @RetainMethodSignature
    void setCatalogFramePost(String str);

    @RetainMethodSignature
    void setUrl(String str);

    @RetainMethodSignature
    void updateWebViewConfiguration(String str);
}
