package com.fyber.inneractive.sdk.util;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.json.v4;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class s0 {
    public volatile String a = null;
    public Context b = null;
    public AtomicBoolean c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Runnable f2743d = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s0.this.e();
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ String a;

        public b(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            s0.this.b.getSharedPreferences("fyber.ua", 0).edit().putString(v4.R, this.a).apply();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s0 s0Var = s0.this;
            Context context = s0Var.b;
            if (context != null) {
                String defaultUserAgent = null;
                try {
                    defaultUserAgent = WebSettings.getDefaultUserAgent(context);
                } catch (Throwable unused) {
                }
                if (TextUtils.isEmpty(defaultUserAgent)) {
                    return;
                }
                s0Var.a(defaultUserAgent);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s0.this.b();
        }
    }

    public String a() {
        if (!TextUtils.isEmpty(this.a)) {
            return this.a;
        }
        Runnable runnable = this.f2743d;
        if (runnable != null) {
            Handler handler = m.b;
            handler.removeCallbacks(runnable);
            handler.postDelayed(this.f2743d, 50L);
        }
        return System.getProperty("http.agent");
    }

    public final void a(String str) {
        this.a = str;
        if (!TextUtils.isEmpty(this.a)) {
            IAlog.a("UserAgentProvider | populated user agent form updateUserAgentIfPossible", new Object[0]);
            this.c.compareAndSet(false, true);
        }
        m.a(new b(str));
    }

    public final void b() {
        WebView webView;
        String userAgentString = null;
        try {
            webView = new WebView(this.b);
            try {
                userAgentString = webView.getSettings().getUserAgentString();
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            webView = null;
        }
        if (!TextUtils.isEmpty(userAgentString)) {
            a(userAgentString);
        }
        if (webView != null) {
            webView.destroy();
        }
    }

    public final void c() {
        if (this.b == null || !TextUtils.isEmpty(this.a)) {
            return;
        }
        this.a = this.b.getSharedPreferences("fyber.ua", 0).getString(v4.R, null);
        if (!TextUtils.isEmpty(this.a)) {
            IAlog.a("UserAgentProvider | populated user agent from shared prefs", new Object[0]);
            this.c.compareAndSet(false, true);
        }
        e();
    }

    public void d() {
        Context context;
        c();
        if (this.c.get() || Build.VERSION.SDK_INT < 17 || (context = this.b) == null) {
            return;
        }
        String defaultUserAgent = null;
        try {
            defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(defaultUserAgent)) {
            return;
        }
        a(defaultUserAgent);
    }

    public final void e() {
        if (Build.VERSION.SDK_INT >= 17) {
            m.a(new c());
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            b();
        } else {
            m.b.post(new d());
        }
    }
}
