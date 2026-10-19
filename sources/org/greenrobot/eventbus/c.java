package org.greenrobot.eventbus;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.greenrobot.eventbus.Logger;
import org.greenrobot.eventbus.android.AndroidComponents;

/* JADX INFO: compiled from: EventBusBuilder.java */
/* JADX INFO: loaded from: classes5.dex */
public class c {
    private static final ExecutorService a = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f10939f;
    boolean h;
    boolean i;
    List<org.greenrobot.eventbus.p.b> k;
    Logger l;
    f m;
    boolean b = true;
    boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f10937d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f10938e = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f10940g = true;
    ExecutorService j = a;

    c() {
    }

    Logger a() {
        Logger logger = this.l;
        return logger != null ? logger : Logger.Default.get();
    }

    f b() {
        f fVar = this.m;
        if (fVar != null) {
            return fVar;
        }
        if (AndroidComponents.areAvailable()) {
            return AndroidComponents.get().c;
        }
        return null;
    }
}
