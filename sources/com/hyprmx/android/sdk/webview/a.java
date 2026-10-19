package com.hyprmx.android.sdk.webview;

import android.content.Context;
import androidx.webkit.WebViewCompat;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements o {
    @Override // com.hyprmx.android.sdk.webview.o
    public final boolean a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return WebViewCompat.getCurrentWebViewPackage(context) != null;
    }
}
