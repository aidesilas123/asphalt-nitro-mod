package com.moat.analytics.mobile.glft;

import android.content.Context;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
class h {
    private static final h a = new h();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ScheduledFuture<?> f7652e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ScheduledFuture<?> f7653f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ScheduledExecutorService f7651d = Executors.newScheduledThreadPool(1);
    private final Map<i, String> b = new WeakHashMap();
    private final Map<b, String> c = new WeakHashMap();

    private h() {
    }

    static h a() {
        return a;
    }

    private void a(final Context context) {
        ScheduledFuture<?> scheduledFuture = this.f7653f;
        if (scheduledFuture == null || scheduledFuture.isDone()) {
            n.a(3, "JSUpdateLooper", this, "Starting metadata reporting loop");
            this.f7653f = this.f7651d.scheduleWithFixedDelay(new Runnable() { // from class: com.moat.analytics.mobile.glft.h.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        LocalBroadcastManager.getInstance(context.getApplicationContext()).sendBroadcast(new Intent("UPDATE_METADATA"));
                        if (h.this.b.isEmpty()) {
                            h.this.f7653f.cancel(true);
                        }
                    } catch (Exception e2) {
                        l.a(e2);
                    }
                }
            }, 0L, 50L, TimeUnit.MILLISECONDS);
        }
    }

    private void b(final Context context) {
        ScheduledFuture<?> scheduledFuture = this.f7652e;
        if (scheduledFuture == null || scheduledFuture.isDone()) {
            n.a(3, "JSUpdateLooper", this, "Starting view update loop");
            this.f7652e = this.f7651d.scheduleWithFixedDelay(new Runnable() { // from class: com.moat.analytics.mobile.glft.h.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        LocalBroadcastManager.getInstance(context.getApplicationContext()).sendBroadcast(new Intent("UPDATE_VIEW_INFO"));
                        if (h.this.c.isEmpty()) {
                            n.a(3, "JSUpdateLooper", h.this, "No more active trackers");
                            h.this.f7652e.cancel(true);
                        }
                    } catch (Exception e2) {
                        l.a(e2);
                    }
                }
            }, 0L, u.d().c(), TimeUnit.MILLISECONDS);
        }
    }

    void a(Context context, b bVar) {
        if (bVar != null) {
            n.a(3, "JSUpdateLooper", this, "addActiveTracker" + bVar.hashCode());
            Map<b, String> map = this.c;
            if (map == null || map.containsKey(bVar)) {
                return;
            }
            this.c.put(bVar, "");
            b(context);
        }
    }

    void a(Context context, i iVar) {
        Map<i, String> map = this.b;
        if (map == null || iVar == null) {
            return;
        }
        map.put(iVar, "");
        a(context);
    }

    void a(b bVar) {
        if (bVar != null) {
            n.a(3, "JSUpdateLooper", this, "removeActiveTracker" + bVar.hashCode());
            Map<b, String> map = this.c;
            if (map != null) {
                map.remove(bVar);
            }
        }
    }

    void a(i iVar) {
        if (iVar != null) {
            n.a(3, "JSUpdateLooper", this, "removeSetupNeededBridge" + iVar.hashCode());
            Map<i, String> map = this.b;
            if (map != null) {
                map.remove(iVar);
            }
        }
    }
}
