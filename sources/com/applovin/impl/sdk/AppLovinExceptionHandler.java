package com.applovin.impl.sdk;

import android.os.Process;
import com.applovin.impl.sdk.r;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.json.o2;
import java.lang.Thread;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final AppLovinExceptionHandler azQ = new AppLovinExceptionHandler();
    private Thread.UncaughtExceptionHandler azS;
    private final Set<n> azR = new HashSet(2);
    private final AtomicBoolean ams = new AtomicBoolean();

    public static AppLovinExceptionHandler shared() {
        return azQ;
    }

    public void addSdk(n nVar) {
        this.azR.add(nVar);
    }

    public void enable() {
        if (this.ams.compareAndSet(false, true)) {
            this.azS = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        long jLongValue = 500;
        for (n nVar : this.azR) {
            if (!nVar.Bq()) {
                nVar.BN();
                if (x.Fn()) {
                    nVar.BN().f("AppLovinExceptionHandler", "Detected unhandled exception");
                }
                nVar.Cs().a(r.a.CRASH, CollectionUtils.map("top_main_method", th.toString()));
                nVar.BF().trackEventSynchronously(o2.h.f0);
                jLongValue = ((Long) nVar.a(com.applovin.impl.sdk.c.b.aOg)).longValue();
            }
        }
        try {
            Thread.sleep(jLongValue);
        } catch (InterruptedException unused) {
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.azS;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            Process.killProcess(Process.myPid());
            System.exit(1);
        }
    }
}
