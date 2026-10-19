package com.json.mediationsdk;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.gameloft.adsmanager.JavaUtils;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.m1;
import com.json.mediationsdk.logger.IronLog;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
public class l {
    public static final String a = "BANNER";
    public static final String b = "LARGE";
    public static final String c = "RECTANGLE";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f6335d = "LEADERBOARD";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f6336e = "SMART";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f6337f = "CUSTOM";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f6338g = "bannerAdSize";
    public static final int h = 1;
    public static final int i = 2;
    public static final int j = 3;
    public static final int k = 5;
    public static final int l = 6;
    public static final String m = "Adaptive=true";

    class a implements Runnable {
        final /* synthetic */ IronSourceBannerLayout a;
        final /* synthetic */ View b;
        final /* synthetic */ FrameLayout.LayoutParams c;

        a(IronSourceBannerLayout ironSourceBannerLayout, View view, FrameLayout.LayoutParams layoutParams) {
            this.a = ironSourceBannerLayout;
            this.b = view;
            this.c = layoutParams;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.removeAllViews();
            ViewParent parent = this.b.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.b);
            }
            this.a.addView(this.b, 0, this.c);
        }
    }

    interface b {
        void a();

        void a(String str);
    }

    static long a(long j2, long j3) {
        return j3 - (new Date().getTime() - j2);
    }

    public static ISBannerSize a() {
        return new ISBannerSize(f6335d, JavaUtils.Constants.TABLET_WIDTH_DP, 90);
    }

    public static ISBannerSize a(String str, int i2, int i3) {
        return new ISBannerSize(str, i2, i3);
    }

    public static void a(IronSourceBannerLayout ironSourceBannerLayout) {
        if (ironSourceBannerLayout != null) {
            ironSourceBannerLayout.a();
        }
    }

    public static void a(IronSourceBannerLayout ironSourceBannerLayout, View view, FrameLayout.LayoutParams layoutParams) {
        if (ironSourceBannerLayout == null || view == null || layoutParams == null) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(ironSourceBannerLayout, view, layoutParams));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0098 A[Catch: Exception -> 0x00bc, TRY_LEAVE, TryCatch #0 {Exception -> 0x00bc, blocks: (B:4:0x0004, B:5:0x0011, B:30:0x0054, B:31:0x0079, B:36:0x0092, B:38:0x0098, B:41:0x00a0, B:42:0x00b8, B:32:0x007d, B:33:0x0083, B:34:0x0088, B:35:0x008d, B:7:0x0015, B:10:0x001f, B:13:0x0029, B:16:0x0033, B:19:0x003d), top: B:47:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(java.util.Map<java.lang.String, java.lang.Object> r8, com.json.mediationsdk.ISBannerSize r9) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.mediationsdk.l.a(java.util.Map, com.ironsource.mediationsdk.ISBannerSize):void");
    }

    static void b(IronSourceBannerLayout ironSourceBannerLayout, m1 m1Var, b bVar) {
        String str;
        if (d(ironSourceBannerLayout)) {
            str = null;
        } else {
            Object[] objArr = new Object[1];
            objArr[0] = ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed";
            str = String.format("can't load banner - %s", objArr);
        }
        if (m1Var == null || TextUtils.isEmpty(m1Var.getPlacementName())) {
            Object[] objArr2 = new Object[1];
            objArr2[0] = m1Var == null ? "placement is null" : "placement name is empty";
            str = String.format("can't load banner - %s", objArr2);
        }
        if (TextUtils.isEmpty(str)) {
            bVar.a();
        } else {
            IronLog.INTERNAL.error(str);
            bVar.a(str);
        }
    }

    static void c(IronSourceBannerLayout ironSourceBannerLayout, b bVar) {
        if (ironSourceBannerLayout != null && !ironSourceBannerLayout.isDestroyed()) {
            bVar.a();
            return;
        }
        Object[] objArr = new Object[1];
        objArr[0] = ironSourceBannerLayout == null ? "banner is null" : "banner is destroyed";
        bVar.a(String.format("can't destroy banner - %s", objArr));
    }

    static boolean d(IronSourceBannerLayout ironSourceBannerLayout) {
        return (ironSourceBannerLayout == null || ironSourceBannerLayout.isDestroyed()) ? false : true;
    }
}
