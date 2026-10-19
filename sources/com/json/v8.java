package com.json;

import android.text.TextUtils;
import com.json.mediationsdk.LoadWhileShowSupportState;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.impressionData.ImpressionData;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.r;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class v8 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private r f6691d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<String> f6692e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f6693f;
    ConcurrentHashMap<String, CopyOnWriteArrayList<r>> a = new ConcurrentHashMap<>();
    private String b = "";
    private String c = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Timer f6694g = new Timer();
    ConcurrentHashMap<String, AdInfo> h = new ConcurrentHashMap<>();

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
                v8.this.a.remove(this.a);
                ironLog.verbose("waterfall size is currently " + v8.this.a.size());
                ironLog.verbose("removing adInfo with id " + this.a + " from memory");
                v8.this.h.remove(this.a);
                ironLog.verbose("adInfo size is currently " + v8.this.h.size());
            } finally {
                cancel();
            }
        }
    }

    public v8(List<String> list, int i) {
        this.f6692e = list;
        this.f6693f = i;
    }

    private void b() {
        for (r rVar : c()) {
            if (!rVar.equals(this.f6691d)) {
                rVar.q();
            }
        }
    }

    public AdInfo a(String str) {
        if (this.h.containsKey(str)) {
            return this.h.get(str);
        }
        return null;
    }

    public synchronized void a(r rVar) {
        IronLog.INTERNAL.verbose();
        r rVar2 = this.f6691d;
        if (rVar2 != null && !rVar2.equals(rVar)) {
            this.f6691d.q();
        }
        this.f6691d = rVar;
    }

    public void a(String str, ImpressionData impressionData) {
        if (TextUtils.isEmpty(str) || impressionData == null) {
            return;
        }
        this.h.put(str, new AdInfo(impressionData));
    }

    public void a(CopyOnWriteArrayList<r> copyOnWriteArrayList, String str) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose("updating new waterfall with id " + str);
        b();
        this.a.put(str, copyOnWriteArrayList);
        if (!TextUtils.isEmpty(this.c)) {
            if (g()) {
                ironLog.verbose("ad from previous waterfall " + this.c + " is still showing - the current waterfall " + this.b + " will be deleted instead");
                String str2 = this.b;
                this.b = this.c;
                this.c = str2;
            }
            this.f6694g.schedule(new a(this.c), this.f6693f);
        }
        this.c = this.b;
        this.b = str;
    }

    public boolean a() {
        return this.a.size() > 5;
    }

    public synchronized boolean b(r rVar) {
        boolean z;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        z = false;
        if (rVar == null || rVar.o() || (this.f6691d != null && ((rVar.w() == LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_NETWORK && this.f6691d.c().equals(rVar.c())) || ((rVar.w() == LoadWhileShowSupportState.NONE || this.f6692e.contains(rVar.j())) && this.f6691d.j().equals(rVar.j()))))) {
            z = true;
        }
        if (z && rVar != null) {
            ironLog.verbose(rVar.c() + " will not be added to the auction request");
        }
        return !z;
    }

    public CopyOnWriteArrayList<r> c() {
        CopyOnWriteArrayList<r> copyOnWriteArrayList = this.a.get(this.b);
        return copyOnWriteArrayList == null ? new CopyOnWriteArrayList<>() : copyOnWriteArrayList;
    }

    public String d() {
        return this.b;
    }

    public int e() {
        return this.a.size();
    }

    public r f() {
        return this.f6691d;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean g() {
        /*
            r2 = this;
            monitor-enter(r2)
            com.ironsource.mediationsdk.r r0 = r2.f6691d     // Catch: java.lang.Throwable -> L16
            if (r0 == 0) goto L13
            java.lang.String r0 = r0.u()     // Catch: java.lang.Throwable -> L16
            java.lang.String r1 = r2.c     // Catch: java.lang.Throwable -> L16
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L16
            if (r0 == 0) goto L13
            r0 = 1
            goto L14
        L13:
            r0 = 0
        L14:
            monitor-exit(r2)
            return r0
        L16:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.v8.g():boolean");
    }
}
