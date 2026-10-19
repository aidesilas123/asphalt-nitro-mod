package com.json;

import android.text.TextUtils;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.LoadWhileShowSupportState;
import com.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import com.json.mediationsdk.logger.IronLog;
import com.json.t1;
import com.json.y;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class gd<Smash extends t1<?>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private t1<?> f6122d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<String> f6123e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f6124f;
    hd h;
    ConcurrentHashMap<String, CopyOnWriteArrayList<Smash>> a = new ConcurrentHashMap<>();
    private String b = "";
    private String c = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Timer f6125g = new Timer();
    private final int i = 5;

    class a extends TimerTask {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.verbose("removing waterfall with id " + this.a + " from memory");
                gd.this.a.remove(this.a);
                ironLog.verbose("waterfall size is currently " + gd.this.a.size());
                ironLog.verbose("removing adInfo with id " + this.a + " from memory");
            } finally {
                cancel();
            }
        }
    }

    public gd(List<String> list, int i, hd hdVar) {
        this.f6123e = list;
        this.f6124f = i;
        this.h = hdVar;
    }

    private void a() {
        for (Smash smash : b()) {
            if (!smash.equals(this.f6122d)) {
                smash.L();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized boolean e() {
        /*
            r2 = this;
            monitor-enter(r2)
            com.ironsource.t1<?> r0 = r2.f6122d     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L1b
            boolean r0 = r0.B()     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L1b
            com.ironsource.t1<?> r0 = r2.f6122d     // Catch: java.lang.Throwable -> L1e
            java.lang.String r0 = r0.h()     // Catch: java.lang.Throwable -> L1e
            java.lang.String r1 = r2.c     // Catch: java.lang.Throwable -> L1e
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L1b
            r0 = 1
            goto L1c
        L1b:
            r0 = 0
        L1c:
            monitor-exit(r2)
            return r0
        L1e:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.gd.e():boolean");
    }

    private synchronized void f() {
        t1<?> t1Var = this.f6122d;
        if (t1Var != null) {
            t1Var.L();
        }
    }

    public synchronized void a(t1<?> t1Var) {
        IronLog.INTERNAL.verbose();
        t1<?> t1Var2 = this.f6122d;
        if (t1Var2 != null && !t1Var2.equals(t1Var)) {
            f();
        }
        this.f6122d = t1Var;
    }

    public void a(y.a aVar, CopyOnWriteArrayList<Smash> copyOnWriteArrayList, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("updating new waterfall with id " + str);
        a();
        if (aVar == y.a.AUTOMATIC_LOAD_WHILE_SHOW) {
            this.a.put(str, copyOnWriteArrayList);
            if (!TextUtils.isEmpty(this.c)) {
                if (e()) {
                    ironLog.verbose("ad from previous waterfall " + this.c + " is still showing - the current waterfall " + this.b + " will be deleted instead");
                    String str2 = this.b;
                    this.b = this.c;
                    this.c = str2;
                }
                this.f6125g.schedule(new a(this.c), this.f6124f);
            }
        } else {
            this.a.clear();
            this.a.put(str, copyOnWriteArrayList);
        }
        this.c = this.b;
        this.b = str;
        if (this.a.size() > 5) {
            this.h.a(this.a.size());
        }
    }

    public boolean a(AdapterBaseInterface adapterBaseInterface, IronSource.AD_UNIT ad_unit, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        if (ContextProvider.getInstance().getCurrentActiveActivity() != null || !(adapterBaseInterface instanceof AdapterSettingsInterface) || !((AdapterSettingsInterface) adapterBaseInterface).isUsingActivityBeforeImpression(ad_unit)) {
            return false;
        }
        ironLog.verbose(str + " - is using activity before impression and activity is null");
        return true;
    }

    public synchronized boolean a(y.a aVar, String str, String str2, LoadWhileShowSupportState loadWhileShowSupportState, AdapterBaseInterface adapterBaseInterface, IronSource.AD_UNIT ad_unit) {
        boolean z;
        t1<?> t1Var;
        boolean zA = a(adapterBaseInterface, ad_unit, str);
        z = true;
        if (zA || (aVar == y.a.AUTOMATIC_LOAD_WHILE_SHOW && (t1Var = this.f6122d) != null && t1Var.B() && ((loadWhileShowSupportState == LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_NETWORK && this.f6122d.c().equals(str)) || ((loadWhileShowSupportState == LoadWhileShowSupportState.NONE || this.f6123e.contains(str2)) && this.f6122d.n().equals(str2))))) {
            z = false;
        }
        if (!z) {
            IronLog.INTERNAL.verbose(str + " will not be added to the auction request");
        }
        return z;
    }

    public List<Smash> b() {
        CopyOnWriteArrayList<Smash> copyOnWriteArrayList = this.a.get(this.b);
        return copyOnWriteArrayList == null ? new CopyOnWriteArrayList() : copyOnWriteArrayList;
    }

    public String c() {
        return this.b;
    }

    public t1<?> d() {
        return this.f6122d;
    }
}
