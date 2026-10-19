package com.hyprmx.android.sdk.webview;

import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import com.hyprmx.android.sdk.core.a0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public interface v extends d, a0 {
    void C();

    String D();

    WebResourceResponse a(String str, String str2, boolean z);

    void a(PermissionRequest permissionRequest, int i);

    void a(String str, String str2, String str3);

    void a(boolean z, boolean z2, int i, String str, String str2, String str3, ArrayList arrayList);

    boolean a(WebChromeClient.FileChooserParams fileChooserParams);

    boolean a(boolean z, String str, String str2, JsResult jsResult);

    void b(float f2, float f3);

    void d(String str);

    void e(String str);

    boolean k();
}
