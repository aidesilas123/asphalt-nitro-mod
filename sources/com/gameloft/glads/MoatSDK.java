package com.gameloft.glads;

import android.os.Build;
import android.webkit.WebView;
import com.moat.analytics.mobile.glft.MoatAnalytics;
import com.moat.analytics.mobile.glft.MoatFactory;
import com.moat.analytics.mobile.glft.WebAdTracker;

/* JADX INFO: loaded from: classes2.dex */
public class MoatSDK {
    static boolean hasAdvertisingIdClient = true;
    long parent;
    WebAdTracker tracker = null;

    class a implements Runnable {
        final /* synthetic */ Object a;

        a(Object obj) {
            this.a = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoatSDK.this.HandleStopTracking();
            WebView webViewGetWebView = ((AndroidWebView) this.a).GetWebView();
            try {
                MoatSDK.this.tracker = MoatFactory.create().createWebAdTracker(webViewGetWebView);
                MoatSDK.this.tracker.setActivity(Utils.GetActivity());
                MoatSDK.this.tracker.startTracking();
            } catch (Exception unused) {
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MoatSDK.this.HandleStopTracking();
        }
    }

    public MoatSDK(long j) {
        this.parent = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void HandleStopTracking() {
        WebAdTracker webAdTracker = this.tracker;
        if (webAdTracker != null) {
            try {
                webAdTracker.stopTracking();
            } catch (Exception unused) {
            }
            this.tracker = null;
        }
    }

    public static void StartAnalytics() {
        hasAdvertisingIdClient = Utils.ClassExists("com.google.android.gms.ads.identifier.AdvertisingIdClient");
        if (Build.VERSION.SDK_INT < 16 || !hasAdvertisingIdClient) {
            return;
        }
        try {
            MoatAnalytics.getInstance().start(Utils.GetActivity().getApplication());
        } catch (Exception unused) {
        }
    }

    public void OnStartTracking(Object obj) {
        if (Build.VERSION.SDK_INT < 16 || !hasAdvertisingIdClient) {
            return;
        }
        Utils.RunOnMainThread(new a(obj));
    }

    public void StopTracking() {
        if (Build.VERSION.SDK_INT < 16 || !hasAdvertisingIdClient) {
            return;
        }
        Utils.RunOnMainThread(new b());
    }
}
