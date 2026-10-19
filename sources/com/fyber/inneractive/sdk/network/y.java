package com.fyber.inneractive.sdk.network;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.Comparator;
import java.util.Locale;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class y {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ThreadFactory f2132g = new a();
    public BlockingQueue<c0<?>> a = new PriorityBlockingQueue(100, new d(null));
    public volatile boolean b = false;
    public final Handler c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ThreadPoolExecutor f2133d = new ThreadPoolExecutor(6, 6, 1000, TimeUnit.SECONDS, new LinkedBlockingQueue(100), f2132g);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Runnable f2134e = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public r0 f2135f = new r0();

    public class a implements ThreadFactory {
        public final AtomicInteger a = new AtomicInteger(100);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format(Locale.ENGLISH, "FyberMarketplace-Network-%02d", Integer.valueOf(this.a.getAndIncrement())));
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            c0<?> c0VarTake;
            b0 b0VarA;
            Throwable th;
            y yVar = y.this;
            yVar.getClass();
            Process.setThreadPriority(10);
            while (yVar.b) {
                b0 b0Var = null;
                try {
                    c0VarTake = yVar.a.take();
                } catch (InterruptedException unused) {
                    if (!yVar.b) {
                        Thread.currentThread().interrupt();
                    }
                    c0VarTake = null;
                }
                if (c0VarTake != null && !c0VarTake.g()) {
                    c0VarTake.a(q0.RUNNING);
                    if (yVar.e(c0VarTake)) {
                        r0 r0Var = yVar.f2135f;
                        Thread threadCurrentThread = Thread.currentThread();
                        r0Var.getClass();
                        IAlog.a("%s : NetworkRequestWatchdog : register request: %s", IAlog.a(r0Var), c0VarTake.f());
                        int iH = c0VarTake.h();
                        t0 t0VarN = c0VarTake.n();
                        u0 u0Var = new u0(c0VarTake, threadCurrentThread, t0VarN.a + t0VarN.b + iH);
                        r0Var.a.putIfAbsent(c0VarTake.f(), u0Var);
                        com.fyber.inneractive.sdk.util.m.b.postDelayed(u0Var.f2130d, u0Var.c);
                    }
                    try {
                    } catch (Exception e2) {
                        IAlog.a("failed fetching cache data", e2, new Object[0]);
                        if (!c0VarTake.g()) {
                            c0VarTake.a((Object) null, e2, true);
                        }
                    }
                    com.fyber.inneractive.sdk.network.a<?> aVarK = (c0VarTake.g() || c0VarTake.c() == null) ? null : c0VarTake.k();
                    if (aVarK != null && aVarK.b != 0 && !c0VarTake.g()) {
                        c0VarTake.a(aVarK.b, (Exception) null, true);
                    }
                    try {
                        j jVarA = yVar.a(c0VarTake, aVarK);
                        b0VarA = yVar.a(c0VarTake, jVarA);
                        try {
                            try {
                                yVar.a(c0VarTake, jVarA, b0VarA);
                                yVar.a(c0VarTake, b0VarA);
                                yVar.a(c0VarTake);
                                yVar.c(c0VarTake);
                            } catch (Throwable th2) {
                                th = th2;
                                yVar.a(c0VarTake, b0VarA);
                                yVar.a(c0VarTake);
                                yVar.c(c0VarTake);
                                throw th;
                            }
                        } catch (z0 unused2) {
                            b0Var = b0VarA;
                            b0VarA = b0Var;
                            yVar.a(c0VarTake, b0VarA);
                            yVar.a(c0VarTake);
                            yVar.c(c0VarTake);
                        } catch (Exception e3) {
                            e = e3;
                            if (!c0VarTake.g()) {
                                c0VarTake.a((Object) null, e, false);
                            }
                            yVar.a(c0VarTake, b0VarA);
                            yVar.a(c0VarTake);
                            yVar.c(c0VarTake);
                        }
                    } catch (z0 unused3) {
                    } catch (Exception e4) {
                        e = e4;
                        b0VarA = null;
                    } catch (Throwable th3) {
                        b0VarA = null;
                        th = th3;
                    }
                }
            }
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ c0 a;

        public c(c0 c0Var) {
            this.a = c0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.getClass().getName();
            y.this.b(this.a);
        }
    }

    public static class d implements Comparator<c0> {
        public d() {
        }

        public /* synthetic */ d(a aVar) {
            this();
        }

        @Override // java.util.Comparator
        public int compare(c0 c0Var, c0 c0Var2) {
            return c0Var.i().ordinal() - c0Var2.i().ordinal();
        }
    }

    public final <T> b0 a(c0<T> c0Var, j jVar) throws Exception {
        b0 b0VarA = null;
        if (jVar != null) {
            try {
                if (!c0Var.g()) {
                    int i = jVar.a;
                    if (i == 200 || (i >= 300 && i < 304)) {
                        b0VarA = c0Var.a(jVar, jVar.f2111d, i);
                    } else if (i == 304) {
                        c0Var.a((Object) null, (Exception) new f(), false);
                    } else {
                        c0Var.a((Object) null, (Exception) new s0(jVar.a, jVar.b), false);
                    }
                }
            } catch (z0 e2) {
                IAlog.a("failed parsing network request but will retry", e2, new Object[0]);
                if (d(c0Var)) {
                    throw e2;
                }
                throw new y0(e2);
            } catch (Exception e3) {
                IAlog.a("failed parsing network request", e3, new Object[0]);
                throw e3;
            }
        }
        return b0VarA;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.fyber.inneractive.sdk.network.j a(com.fyber.inneractive.sdk.network.c0<?> r4, com.fyber.inneractive.sdk.network.a<?> r5) throws java.lang.Exception {
        /*
            r3 = this;
            java.lang.String r0 = "failed sending network request"
            r1 = 0
            boolean r2 = r4.g()     // Catch: java.lang.Exception -> L1a java.net.SocketTimeoutException -> L21 com.fyber.inneractive.sdk.network.b -> L23 java.net.UnknownHostException -> L25 com.fyber.inneractive.sdk.network.z0 -> L3d
            if (r2 != 0) goto L18
            if (r5 == 0) goto Le
            java.lang.String r5 = r5.a     // Catch: java.lang.Exception -> L1a java.net.SocketTimeoutException -> L21 com.fyber.inneractive.sdk.network.b -> L23 java.net.UnknownHostException -> L25 com.fyber.inneractive.sdk.network.z0 -> L3d
            goto L10
        Le:
            java.lang.String r5 = ""
        L10:
            r3.a()     // Catch: java.lang.Exception -> L1a java.net.SocketTimeoutException -> L21 com.fyber.inneractive.sdk.network.b -> L23 java.net.UnknownHostException -> L25 com.fyber.inneractive.sdk.network.z0 -> L3d
            com.fyber.inneractive.sdk.network.j r4 = r4.a(r5)     // Catch: java.lang.Exception -> L1a java.net.SocketTimeoutException -> L21 com.fyber.inneractive.sdk.network.b -> L23 java.net.UnknownHostException -> L25 com.fyber.inneractive.sdk.network.z0 -> L3d
            goto L19
        L18:
            r4 = 0
        L19:
            return r4
        L1a:
            r4 = move-exception
            java.lang.Object[] r5 = new java.lang.Object[r1]
            com.fyber.inneractive.sdk.util.IAlog.a(r0, r4, r5)
            throw r4
        L21:
            r5 = move-exception
            goto L26
        L23:
            r5 = move-exception
            goto L26
        L25:
            r5 = move-exception
        L26:
            java.lang.Object[] r1 = new java.lang.Object[r1]
            com.fyber.inneractive.sdk.util.IAlog.a(r0, r5, r1)
            boolean r4 = r3.d(r4)
            if (r4 == 0) goto L37
            com.fyber.inneractive.sdk.network.z0 r4 = new com.fyber.inneractive.sdk.network.z0
            r4.<init>(r5)
            throw r4
        L37:
            com.fyber.inneractive.sdk.network.y0 r4 = new com.fyber.inneractive.sdk.network.y0
            r4.<init>(r5)
            throw r4
        L3d:
            r5 = move-exception
            java.lang.Object[] r0 = new java.lang.Object[r1]
            java.lang.String r1 = "failed sending network request but will retry"
            com.fyber.inneractive.sdk.util.IAlog.a(r1, r5, r0)
            boolean r4 = r3.d(r4)
            if (r4 == 0) goto L4c
            throw r5
        L4c:
            com.fyber.inneractive.sdk.network.y0 r4 = new com.fyber.inneractive.sdk.network.y0
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.network.y.a(com.fyber.inneractive.sdk.network.c0, com.fyber.inneractive.sdk.network.a):com.fyber.inneractive.sdk.network.j");
    }

    public final void a() throws com.fyber.inneractive.sdk.network.b {
        NetworkInfo activeNetworkInfo;
        boolean z = false;
        if (((com.fyber.inneractive.sdk.config.global.features.k) IAConfigManager.M.L.a(com.fyber.inneractive.sdk.config.global.features.k.class)).a("should_use_is_network_connected", false)) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) com.fyber.inneractive.sdk.util.l.a.getSystemService("connectivity");
                activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            } catch (Throwable unused) {
                IAlog.b("Error retrieved when trying to get the network state - Perhaps you forgot to declare android.permission.ACCESS_NETWORK_STATE in your Android manifest file.", new Object[0]);
            }
            if (com.fyber.inneractive.sdk.util.l.b("android.permission.ACCESS_NETWORK_STATE") && activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnectedOrConnecting()) {
                    z = true;
                }
            }
            if (!z) {
                throw new com.fyber.inneractive.sdk.network.b("No network connection");
            }
        }
    }

    public final void a(c0<?> c0Var) {
        try {
            c0Var.b();
        } catch (Exception unused) {
        }
        c0Var.a(q0.DONE);
    }

    public final <T> void a(c0<T> c0Var, b0 b0Var) {
        try {
            if (c0Var.g() || b0Var == null) {
                return;
            }
            c0Var.a((Object) b0Var.a, (Exception) null, false);
        } catch (Exception e2) {
            IAlog.a("failed notifying the listener request complete", e2, new Object[0]);
            if (c0Var.g()) {
                return;
            }
            c0Var.a((Object) null, e2, false);
        }
    }

    public final <T> void a(c0<T> c0Var, j jVar, b0 b0Var) {
        try {
            if (c0Var.g() || c0Var.c() == null || b0Var == null || jVar == null || jVar.a != 200) {
                return;
            }
            c0Var.a(b0Var, c0Var.c(), jVar.f2112e);
        } catch (Exception e2) {
            IAlog.a("Failed cache network response data", e2, new Object[0]);
        }
    }

    public void b(c0<?> c0Var) {
        this.a.offer(c0Var);
        c0Var.a(q0.QUEUED);
    }

    public final <T> void c(c0<T> c0Var) {
        r0 r0Var = this.f2135f;
        r0Var.getClass();
        String strF = c0Var.f();
        IAlog.a("%s : NetworkRequestWatchdog : finalize request: %s", IAlog.a(r0Var), strF);
        u0 u0Var = r0Var.a.get(strF);
        if (u0Var != null) {
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(u0Var.f2130d);
        }
        r0Var.a.remove(strF);
    }

    public boolean d(c0<?> c0Var) {
        if (!c0Var.o()) {
            return false;
        }
        c0Var.a(q0.QUEUED_FOR_RETRY);
        long jV = c0Var.v();
        c0Var.getClass().getName();
        this.c.postDelayed(new c(c0Var), jV);
        return true;
    }

    public final <T> boolean e(c0<T> c0Var) {
        boolean z = c0Var.s() || c0Var.j();
        IAlog.a("%s : NetworkExecutorImpl : should enabled watchdog : %s", IAlog.a(this), Boolean.valueOf(z));
        return z;
    }
}
