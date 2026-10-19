package com.tapjoy.internal;

import android.webkit.WebView;
import com.tapjoy.TapjoyLog;

/* JADX INFO: loaded from: classes4.dex */
public final class p3 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        TapjoyLog.d("TapjoyLog", "Enabling WebView debugging");
        WebView.setWebContentsDebuggingEnabled(true);
    }
}
