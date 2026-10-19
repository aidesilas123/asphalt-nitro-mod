package com.fyber.inneractive.sdk.network;

import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.util.IAlog;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class u0 {
    public final WeakReference<Thread> a;
    public final WeakReference<c0> b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Runnable f2130d = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String strA;
            u0 u0Var = u0.this;
            c0 c0Var = (c0) com.fyber.inneractive.sdk.util.q.a(u0Var.b);
            Thread thread = (Thread) com.fyber.inneractive.sdk.util.q.a(u0.this.a);
            if ((c0Var == null || c0Var.p() == q0.DONE || c0Var.p() == q0.RESOLVED) ? false : true) {
                if (u0.a(c0Var)) {
                    if (thread != null) {
                        StackTraceElement[] stackTrace = thread.getStackTrace();
                        Exception exc = new Exception();
                        exc.setStackTrace(stackTrace);
                        strA = com.fyber.inneractive.sdk.util.q.a(exc);
                    } else {
                        strA = "";
                    }
                    String strA2 = c0Var != null ? c0Var.a() : "";
                    s.a aVar = new s.a(r.NETWORK_REQUEST_PASSED_ALLOWED_TIME, c0Var instanceof d0 ? ((d0) c0Var).r : null, c0Var instanceof n0 ? ((n0) c0Var).u : null, (c0Var == null || c0Var.m() == null) ? null : c0Var.m().c());
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("url", strA2);
                    } catch (Exception unused) {
                        IAlog.e("Got exception adding param to json object: %s, %s", "url", strA2);
                    }
                    try {
                        jSONObject.put("stack_trace", strA);
                    } catch (Exception unused2) {
                        IAlog.e("Got exception adding param to json object: %s, %s", "stack_trace", strA);
                    }
                    Integer numValueOf = Integer.valueOf(u0Var.c);
                    try {
                        jSONObject.put("total_time", numValueOf);
                    } catch (Exception unused3) {
                        IAlog.e("Got exception adding param to json object: %s, %s", "total_time", numValueOf);
                    }
                    aVar.f2120f.put(jSONObject);
                    aVar.a((String) null);
                }
                IAlog.a("%s : NetworkWatchdogHolder should cancel by timeout: %d", IAlog.a(u0Var), Integer.valueOf(u0Var.c));
                c0Var.d();
            }
        }
    }

    public u0(c0 c0Var, Thread thread, int i) {
        this.b = new WeakReference<>(c0Var);
        this.a = new WeakReference<>(thread);
        this.c = i;
    }

    public static boolean a(c0<?> c0Var) {
        boolean z = c0Var != null && c0Var.j();
        IAlog.a("%s : NetworkWatchdogHolder : should report: %s", IAlog.a((Class<?>) u0.class), Boolean.valueOf(z));
        return z;
    }
}
