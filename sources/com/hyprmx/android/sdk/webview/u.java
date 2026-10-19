package com.hyprmx.android.sdk.webview;

import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.ArrayList;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class u implements v {
    public final com.hyprmx.android.sdk.presentation.h a;

    public u(com.hyprmx.android.sdk.presentation.h eventPublisher) {
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        this.a = eventPublisher;
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final void C() {
        this.a.a("onLoadData", null);
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final String D() {
        Object objA = this.a.a("getWebViewConfigurationString", null);
        Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type kotlin.String");
        return (String) objA;
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final WebResourceResponse a(String url, String str, boolean z) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a.a("shouldInterceptRequest", MapsKt__MapsKt.mapOf(TuplesKt.to("url", url), TuplesKt.to("isMainFrame", Boolean.valueOf(z)), TuplesKt.to("scheme", str)));
        return null;
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final String a() {
        return this.a.a();
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final void a(PermissionRequest request, int i) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.a.a("permissionRequest", MapsKt__MapsKt.mapOf(TuplesKt.to("permissions", request.getResources()), TuplesKt.to("permissionId", Integer.valueOf(i))));
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final void a(String description, String errorCode, String url) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(url, "url");
        this.a.a("onReceivedError", MapsKt__MapsKt.mapOf(TuplesKt.to("errorMessage", description), TuplesKt.to(IronSourceConstants.EVENTS_ERROR_CODE, errorCode), TuplesKt.to("url", url)));
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final void a(boolean z, boolean z2, int i, String str, String str2, String str3, ArrayList history) {
        Intrinsics.checkNotNullParameter(history, "history");
        com.hyprmx.android.sdk.presentation.h hVar = this.a;
        Object[] array = history.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        hVar.a("onHistoryChanged", MapsKt__MapsKt.mapOf(TuplesKt.to("canNavigateBack", Boolean.valueOf(z)), TuplesKt.to("canNavigateForward", Boolean.valueOf(z2)), TuplesKt.to("currentIndex", Integer.valueOf(i)), TuplesKt.to("currentUrl", str), TuplesKt.to("currentHost", str2), TuplesKt.to("currentTitle", str3), TuplesKt.to("history", array)));
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final boolean a(WebChromeClient.FileChooserParams fileChooserParams) {
        Intrinsics.checkNotNullParameter(fileChooserParams, "fileChooserParams");
        Object objA = this.a.a("openFileChooser", MapsKt__MapsJVMKt.mapOf(TuplesKt.to("acceptTypes", fileChooserParams.getAcceptTypes())));
        Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objA).booleanValue();
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final boolean a(boolean z, String url, String message, JsResult jsResult) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(jsResult, "jsResult");
        Object objA = this.a.a("javaScriptAlertAttempt", MapsKt__MapsKt.mapOf(TuplesKt.to("url", url), TuplesKt.to("message", message), TuplesKt.to("showCancel", Boolean.valueOf(z))));
        Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objA).booleanValue();
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final void b(float f2, float f3) {
        this.a.a("webViewSizeChange", MapsKt__MapsKt.mapOf(TuplesKt.to("height", Float.valueOf(f3)), TuplesKt.to("width", Float.valueOf(f2))));
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void b(Object nativeObject) {
        Intrinsics.checkNotNullParameter(nativeObject, "nativeObject");
        this.a.a(nativeObject);
    }

    @Override // com.hyprmx.android.sdk.webview.d
    public final void b(String methodName, String str) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        HyprMXLog.d("onJSMessage(" + methodName + ", " + str);
        this.a.a("onJSMessage", MapsKt__MapsKt.mapOf(TuplesKt.to("name", methodName), TuplesKt.to("body", str)));
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void c(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.a.c(value);
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final void d(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a.a("onPageStarted", MapsKt__MapsJVMKt.mapOf(TuplesKt.to("url", url)));
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final void e(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.a.a("onPageFinished", MapsKt__MapsJVMKt.mapOf(TuplesKt.to("url", url)));
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final boolean k() {
        Object objA = this.a.a("onWebViewCrash", null);
        Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objA).booleanValue();
    }
}
