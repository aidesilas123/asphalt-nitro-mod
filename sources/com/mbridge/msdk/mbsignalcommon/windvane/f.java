package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: compiled from: WindVaneApiManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class f {
    private static HashMap<String, Class> a = new HashMap<>();
    private Context b;
    private Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WindVaneWebView f7329d;

    public f(Context context, WindVaneWebView windVaneWebView) {
        this.b = context;
        this.f7329d = windVaneWebView;
        try {
            a(com.mbridge.msdk.mbsignalcommon.base.e.a, Class.forName("com.mbridge.msdk.interstitial.signalcommon.interstitial"));
        } catch (ClassNotFoundException unused) {
        }
        try {
            a(com.mbridge.msdk.mbsignalcommon.base.e.b, Class.forName("com.mbridge.msdk.video.signal.communication.RewardSignal"));
        } catch (ClassNotFoundException unused2) {
        }
        try {
            a(com.mbridge.msdk.mbsignalcommon.base.e.c, Class.forName("com.mbridge.msdk.video.signal.communication.VideoCommunication"));
        } catch (ClassNotFoundException unused3) {
        }
        try {
            a(com.mbridge.msdk.mbsignalcommon.base.e.f7304d, Class.forName("com.mbridge.msdk.interactiveads.signalcommon.Interactive"));
        } catch (ClassNotFoundException unused4) {
        }
        try {
            a(com.mbridge.msdk.mbsignalcommon.base.e.f7305e, Class.forName("com.mbridge.msdk.mbsignalcommon.mraid.MraidSignalCommunication"));
        } catch (ClassNotFoundException unused5) {
        }
        try {
            a(com.mbridge.msdk.mbsignalcommon.base.e.f7306f, Class.forName("com.mbridge.msdk.mbsignalcommon.communication.BannerSignalPlugin"));
        } catch (ClassNotFoundException unused6) {
        }
        try {
            a(com.mbridge.msdk.mbsignalcommon.base.e.f7307g, Class.forName("com.mbridge.msdk.splash.signal.SplashSignal"));
        } catch (ClassNotFoundException unused7) {
        }
        try {
            a(com.mbridge.msdk.mbsignalcommon.base.e.h, Class.forName("com.mbridge.msdk.mbsignalcommon.webEnvCheck.WebGLCheckSignal"));
        } catch (ClassNotFoundException unused8) {
        }
    }

    private Object a(String str, WindVaneWebView windVaneWebView, Context context) {
        Class cls = a.get(str);
        if (cls == null) {
            return null;
        }
        try {
            if (!h.class.isAssignableFrom(cls)) {
                return null;
            }
            h hVar = (h) cls.newInstance();
            hVar.initialize(context, windVaneWebView);
            hVar.initialize(this.c, windVaneWebView);
            return hVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final Object a(String str) {
        if (a == null) {
            a = new HashMap<>();
        }
        return a(str, this.f7329d, this.b);
    }

    public final void a(Context context) {
        this.b = context;
    }

    public final void a(Object obj) {
        this.c = obj;
    }

    public final void a(String str, Class cls) {
        if (a == null) {
            a = new HashMap<>();
        }
        a.put(str, cls);
    }
}
