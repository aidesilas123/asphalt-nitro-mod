package com.hyprmx.android.sdk.webview;

import android.webkit.JsResult;

/* JADX INFO: loaded from: classes2.dex */
public interface l extends com.hyprmx.android.sdk.core.d, c, j {
    void a();

    void a(String str);

    void a(String str, String str2);

    void a(String str, String str2, String str3, String str4);

    void a(String str, byte[] bArr);

    void a(boolean z, String str, JsResult jsResult);

    void a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, String str, String str2, boolean z12);

    void b();

    void b(boolean z);

    void navigateBack();

    void navigateForward();

    void pauseJSExecution();

    void resumeJSExecution();
}
