package com.json.mediationsdk;

import com.json.environment.thread.IronSourceThreadManager;
import com.json.f1;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.va;
import com.json.x5;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class n {
    private static final n a = new n();
    private final Map<String, Long> b = new HashMap();
    private final Map<String, Boolean> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6357d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6359f;

    class a implements Runnable {
        final /* synthetic */ IronSource.AD_UNIT a;
        final /* synthetic */ IronSourceError b;
        final /* synthetic */ boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f6360d;

        a(IronSource.AD_UNIT ad_unit, IronSourceError ironSourceError, boolean z, String str) {
            this.a = ad_unit;
            this.b = ironSourceError;
            this.c = z;
            this.f6360d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            IronLog.INTERNAL.verbose("onAdLoadFailed - invokeCallback after delaying");
            n.this.c(this.a, this.b, this.c);
            n.this.c.put(this.f6360d, Boolean.FALSE);
        }
    }

    private n() {
    }

    private int a(IronSource.AD_UNIT ad_unit) {
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            return this.f6358e;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            return this.f6357d;
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            return this.f6359f;
        }
        IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit);
        return 0;
    }

    public static synchronized n a() {
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(IronSource.AD_UNIT ad_unit, IronSourceError ironSourceError, boolean z) {
        this.b.put(ad_unit.toString(), Long.valueOf(System.currentTimeMillis()));
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            va.a().a(ironSourceError);
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            x5.a().a(ironSourceError);
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            f1.a().a(ironSourceError, z);
            return;
        }
        IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit);
    }

    public void a(IronSource.AD_UNIT ad_unit, int i) {
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            this.f6358e = i;
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            this.f6357d = i;
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            this.f6359f = i;
            return;
        }
        IronLog.INTERNAL.warning("ad unit not supported - " + ad_unit);
    }

    public synchronized void a(IronSource.AD_UNIT ad_unit, IronSourceError ironSourceError) {
        b(ad_unit, ironSourceError, false);
    }

    public synchronized void b(IronSource.AD_UNIT ad_unit, IronSourceError ironSourceError, boolean z) {
        if (b(ad_unit)) {
            return;
        }
        String string = ad_unit.toString();
        if (!this.b.containsKey(string)) {
            c(ad_unit, ironSourceError, z);
            return;
        }
        long jA = ((long) a(ad_unit)) * 1000;
        long jCurrentTimeMillis = System.currentTimeMillis() - this.b.get(string).longValue();
        if (jCurrentTimeMillis > jA) {
            c(ad_unit, ironSourceError, z);
            return;
        }
        this.c.put(string, Boolean.TRUE);
        long j = jA - jCurrentTimeMillis;
        IronLog.INTERNAL.verbose("delaying callback by " + j);
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(ad_unit, ironSourceError, z, string), j);
    }

    public synchronized boolean b(IronSource.AD_UNIT ad_unit) {
        if (!this.c.containsKey(ad_unit.toString())) {
            return false;
        }
        return this.c.get(ad_unit.toString()).booleanValue();
    }
}
