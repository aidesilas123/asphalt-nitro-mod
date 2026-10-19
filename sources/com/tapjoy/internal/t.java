package com.tapjoy.internal;

import android.app.Activity;
import android.app.Application;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class t {
    public static Application a;
    public static int b;
    public static final c8 c = new c8();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Set f8001d = Collections.synchronizedSet(new v7(new WeakHashMap()));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c8 f8002e = new c8();

    public static Activity a() {
        WeakReference weakReference = c.a;
        Activity activity = (Activity) (weakReference != null ? weakReference.get() : null);
        if (activity != null) {
            return activity;
        }
        Set set = f8001d;
        synchronized (set) {
            if (set.iterator().hasNext()) {
                return (Activity) set.iterator().next();
            }
            return null;
        }
    }
}
