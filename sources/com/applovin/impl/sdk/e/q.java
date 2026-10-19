package com.applovin.impl.sdk.e;

import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class q {
    private static final ExecutorService aTt = Executors.newFixedThreadPool(4);
    private final ScheduledThreadPoolExecutor aUl;
    private final ScheduledThreadPoolExecutor aUm;
    private final List<d> aUn = new ArrayList(5);
    private final Object aUo = new Object();
    private boolean aUp;
    private final com.applovin.impl.sdk.x logger;
    private final com.applovin.impl.sdk.n sdk;

    private class a implements ThreadFactory {
        private final AtomicInteger aUq = new AtomicInteger(1);
        private final String name;

        a(String str) {
            this.name = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AppLovinSdk:" + this.name + "-" + this.aUq.getAndIncrement());
            thread.setDaemon(true);
            thread.setPriority(((Integer) q.this.sdk.a(com.applovin.impl.sdk.c.b.aQJ)).intValue());
            thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.applovin.impl.sdk.e.q.a.1
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread2, Throwable th) {
                    q.this.sdk.BN();
                    if (com.applovin.impl.sdk.x.Fn()) {
                        q.this.sdk.BN().c("TaskManager", "Caught unhandled exception", th);
                    }
                }
            });
            return thread;
        }
    }

    public enum b {
        MAIN,
        TIMEOUT,
        BACKGROUND,
        ADVERTISING_INFO_COLLECTION,
        POSTBACKS,
        CACHING_INTERSTITIAL,
        CACHING_INCENTIVIZED,
        CACHING_NATIVE,
        CACHING_OTHER,
        REWARD,
        MEDIATION_MAIN,
        MEDIATION_TIMEOUT,
        MEDIATION_BACKGROUND,
        MEDIATION_POSTBACKS,
        MEDIATION_BANNER,
        MEDIATION_INTERSTITIAL,
        MEDIATION_APP_OPEN,
        MEDIATION_INCENTIVIZED,
        MEDIATION_REWARDED_INTERSTITIAL,
        MEDIATION_REWARD
    }

    private class c implements ThreadFactory {
        private final String name;

        c(String str) {
            this.name = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AppLovinSdk:" + this.name);
            thread.setDaemon(true);
            thread.setPriority(((Integer) q.this.sdk.a(com.applovin.impl.sdk.c.b.aQJ)).intValue());
            thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.applovin.impl.sdk.e.q.c.1
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread2, Throwable th) {
                    com.applovin.impl.sdk.x unused = q.this.logger;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        q.this.logger.c("TaskManager", "Caught unhandled exception", th);
                    }
                }
            });
            return thread;
        }
    }

    private static class d implements Runnable {
        private final com.applovin.impl.sdk.e.d aUP;
        private final b aUQ;
        private final com.applovin.impl.sdk.x logger;
        private final com.applovin.impl.sdk.n sdk;
        private final String tag;

        public d(com.applovin.impl.sdk.n nVar, com.applovin.impl.sdk.e.d dVar, b bVar) {
            this.sdk = nVar;
            this.logger = nVar.BN();
            this.tag = dVar.Kg();
            this.aUP = dVar;
            this.aUQ = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.applovin.impl.sdk.x xVar;
            String str;
            StringBuilder sb;
            try {
                com.applovin.impl.sdk.utils.h.KU();
                if (!this.sdk.Bp() || this.aUP.Kh()) {
                    this.aUP.run();
                } else {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.g(this.tag, "Task re-scheduled...");
                    }
                    this.sdk.BO().a(this.aUP, this.aUQ, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
                }
            } catch (Throwable th) {
                try {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.c(this.tag, "Task failed execution", th);
                    }
                    this.aUP.q(th);
                    if (!com.applovin.impl.sdk.x.Fn()) {
                        return;
                    }
                    xVar = this.logger;
                    str = this.tag;
                    sb = new StringBuilder();
                } catch (Throwable th2) {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.g(this.tag, this.aUQ + " queue finished task " + this.aUP.Kg());
                    }
                    throw th2;
                }
            }
            if (com.applovin.impl.sdk.x.Fn()) {
                xVar = this.logger;
                str = this.tag;
                sb = new StringBuilder();
                sb.append(this.aUQ);
                sb.append(" queue finished task ");
                sb.append(this.aUP.Kg());
                xVar.g(str, sb.toString());
            }
        }
    }

    public q(com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        this.aUl = g("auxiliary_operations", ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aMN)).intValue());
        this.aUm = g("shared_thread_pool", ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aKz)).intValue());
    }

    private void a(final Runnable runnable, long j, boolean z) {
        if (j <= 0) {
            this.aUm.submit(runnable);
        } else if (z) {
            com.applovin.impl.sdk.utils.f.a(j, this.sdk, new Runnable() { // from class: com.applovin.impl.sdk.e.d0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.i(runnable);
                }
            });
        } else {
            this.aUm.schedule(runnable, j, TimeUnit.MILLISECONDS);
        }
    }

    private boolean a(d dVar) {
        if (dVar.aUP.Kh()) {
            return false;
        }
        synchronized (this.aUo) {
            if (this.aUp) {
                return false;
            }
            this.aUn.add(dVar);
            return true;
        }
    }

    private ScheduledThreadPoolExecutor g(String str, int i) {
        return new ScheduledThreadPoolExecutor(i, new c(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(Runnable runnable) {
        this.aUm.execute(runnable);
    }

    public Executor KI() {
        return this.aUm;
    }

    public ExecutorService KJ() {
        return aTt;
    }

    public ExecutorService KK() {
        return this.aUl;
    }

    public void KL() {
        synchronized (this.aUo) {
            this.aUp = false;
        }
    }

    public void KM() {
        synchronized (this.aUo) {
            this.aUp = true;
            for (d dVar : this.aUn) {
                a(dVar.aUP, dVar.aUQ);
            }
            this.aUn.clear();
        }
    }

    public List<Future<Boolean>> a(List<com.applovin.impl.sdk.e.a> list, ExecutorService executorService) {
        try {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("TaskManager", "Awaiting " + list.size() + " tasks...");
            }
            return executorService.invokeAll(list);
        } catch (Throwable th) {
            if (!com.applovin.impl.sdk.x.Fn()) {
                return null;
            }
            this.logger.c("TaskManager", "Awaiting tasks were interrupted", th);
            return null;
        }
    }

    public void a(com.applovin.impl.sdk.e.d dVar, b bVar) {
        a(dVar, bVar, 0L);
    }

    public void a(com.applovin.impl.sdk.e.d dVar, b bVar, long j) {
        a(dVar, bVar, j, false);
    }

    public void a(com.applovin.impl.sdk.e.d dVar, b bVar, long j, boolean z) {
        if (dVar == null) {
            throw new IllegalArgumentException("No task specified");
        }
        if (j < 0) {
            throw new IllegalArgumentException("Invalid delay (millis) specified: " + j);
        }
        d dVar2 = new d(this.sdk, dVar, bVar);
        if (!a(dVar2)) {
            a(dVar2, j, z);
        } else if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g(dVar.Kg(), "Task execution delayed until after init");
        }
    }

    public void b(com.applovin.impl.sdk.e.d dVar) {
        if (dVar == null) {
            throw new IllegalArgumentException("No task specified");
        }
        try {
            if (com.applovin.impl.sdk.utils.u.Lx()) {
                this.aUm.submit(new d(this.sdk, dVar, b.MAIN));
            } else {
                dVar.run();
            }
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c(dVar.Kg(), "Task failed execution", th);
            }
            dVar.q(th);
        }
    }

    public ExecutorService f(String str, int i) {
        return Executors.newFixedThreadPool(i, new a(str));
    }

    public void h(Runnable runnable) {
        this.aUl.submit(runnable);
    }

    public boolean isInitialized() {
        return this.aUp;
    }
}
