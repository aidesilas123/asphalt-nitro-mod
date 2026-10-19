package com.applovin.impl.sdk;

import android.os.Handler;
import android.os.HandlerThread;
import com.applovin.impl.sdk.r;
import com.applovin.sdk.AppLovinSdkUtils;
import com.facebook.share.internal.ShareConstants;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public class g {
    private static final g azq = new g();
    private Handler azh;
    private Handler azj;
    private Thread azm;
    private long azn;
    private long azo;
    private long azp;
    private n sdk;
    private final AtomicLong azg = new AtomicLong(0);
    private final HandlerThread azi = new HandlerThread("AppLovinSdk:anr_detector");
    private final AtomicBoolean azk = new AtomicBoolean();
    private final AtomicBoolean azl = new AtomicBoolean();

    private class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            if (g.this.azk.get()) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - g.this.azg.get();
            if (jCurrentTimeMillis < 0 || jCurrentTimeMillis > g.this.azn) {
                g.this.X();
                if (g.this.azm == null || g.this.azm.getStackTrace().length <= 0) {
                    str = "None";
                } else {
                    StackTraceElement stackTraceElement = g.this.azm.getStackTrace()[0];
                    str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
                }
                long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - n.CH());
                HashMap map = new HashMap(3);
                map.put("top_main_method", str);
                map.put(ShareConstants.FEED_SOURCE_PARAM, g.this.sdk.BL() ? "non_first_session" : "first_session");
                map.put("details", "seconds_since_app_launch=" + seconds);
                g.this.sdk.Cs().a(r.a.ANR, map);
            }
            g.this.azj.postDelayed(this, g.this.azp);
        }
    }

    private class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.this.azk.get()) {
                return;
            }
            g.this.azg.set(System.currentTimeMillis());
            g.this.azh.postDelayed(this, g.this.azo);
        }
    }

    private g() {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.azn = timeUnit.toMillis(4L);
        this.azo = timeUnit.toMillis(3L);
        this.azp = timeUnit.toMillis(3L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void AR() {
        this.azm = Thread.currentThread();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X() {
        if (this.azl.get()) {
            this.azk.set(true);
        }
    }

    private void n(n nVar) {
        if (this.azl.compareAndSet(false, true)) {
            this.sdk = nVar;
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.s0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.AR();
                }
            });
            this.azn = ((Long) nVar.a(com.applovin.impl.sdk.c.b.aQw)).longValue();
            this.azo = ((Long) nVar.a(com.applovin.impl.sdk.c.b.aQx)).longValue();
            this.azp = ((Long) nVar.a(com.applovin.impl.sdk.c.b.aQy)).longValue();
            this.azh = new Handler(n.getApplicationContext().getMainLooper());
            this.azi.start();
            this.azh.post(new b());
            Handler handler = new Handler(this.azi.getLooper());
            this.azj = handler;
            handler.postDelayed(new a(), this.azp / 2);
        }
    }

    public static void o(n nVar) {
        if (nVar != null) {
            if (!((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aQv)).booleanValue() || com.applovin.impl.sdk.utils.u.b(n.getApplicationContext(), nVar)) {
                azq.X();
            } else {
                azq.n(nVar);
            }
        }
    }
}
