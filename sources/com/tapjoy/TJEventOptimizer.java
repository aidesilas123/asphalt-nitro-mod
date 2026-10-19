package com.tapjoy;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebView;
import com.tapjoy.internal.g9;
import com.tapjoy.internal.k8;
import com.tapjoy.internal.u8;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"SetJavaScriptEnabled"})
public class TJEventOptimizer extends WebView {
    public static TJEventOptimizer a;
    public static CountDownLatch b;
    public final Context c;

    public TJEventOptimizer(Context context) {
        super(context);
        this.c = context;
        new k(new u8(this));
        try {
            getSettings().setJavaScriptEnabled(true);
            setWebViewClient(new u());
            setWebChromeClient(new g9());
            loadUrl(TapjoyConnectCore.getHostURL() + "events/proxy?" + TapjoyUtil.convertURLParams(TapjoyConnectCore.getGenericURLParams(), true));
        } catch (Exception e2) {
            TapjoyLog.w("TJEventOptimizer", e2.getMessage());
        }
    }

    public static TJEventOptimizer getInstance() {
        return a;
    }

    public static void init(Context context) throws InterruptedException {
        TapjoyLog.d("TJEventOptimizer", "Initializing event optimizer");
        b = new CountDownLatch(1);
        TapjoyUtil.runOnMainThread(new k8(context));
        b.await();
        if (a == null) {
            throw new RuntimeException("Failed to init TJEventOptimizer");
        }
    }
}
