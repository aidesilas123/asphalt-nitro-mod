package com.bytedance.sdk.openadsdk.multipro.aidl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.bytedance.sdk.component.g.h;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.IBinderPool;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.multipro.aidl.a.d;
import com.bytedance.sdk.openadsdk.multipro.aidl.a.e;
import com.bytedance.sdk.openadsdk.multipro.aidl.a.f;
import com.bytedance.sdk.openadsdk.multipro.aidl.a.g;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.bytedance.sdk.openadsdk.utils.ac;

/* JADX INFO: compiled from: BinderPool.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static final a b = new a();
    private IBinderPool a;
    private b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f1835d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ServiceConnection f1836e = new ServiceConnection() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.a.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
            aa.a(new h("onServiceConnected") { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.a.2.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.a = IBinderPool.Stub.asInterface(iBinder);
                    try {
                        a.this.a.asBinder().linkToDeath(a.this.f1837f, 0);
                    } catch (RemoteException e2) {
                        l.c("TTAD.BinderPool", "onServiceConnected throws :", e2);
                    }
                    l.b("TTAD.BinderPool", "onServiceConnected - binderService consume time ：" + (System.currentTimeMillis() - a.this.f1835d));
                    if (a.this.c != null) {
                        a.this.c.onServiceConnected();
                    }
                }
            }, 5);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            l.c("TTAD.BinderPool", "BinderPool......onServiceDisconnected");
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final IBinder.DeathRecipient f1837f = new IBinder.DeathRecipient() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.a.3
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            aa.a(new h("binderDied") { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.a.3.1
                @Override // java.lang.Runnable
                public void run() {
                    l.d("TTAD.BinderPool", "binder died.");
                    a.this.a.asBinder().unlinkToDeath(a.this.f1837f, 0);
                    a.this.a = null;
                    a.this.d();
                }
            }, 5);
        }
    };

    private a() {
        d();
    }

    public static a a() {
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            l.c("TTAD.BinderPool", "BinderPool......connectBinderPoolService");
            c();
        }
    }

    public IBinder a(int i) {
        try {
            if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
                try {
                    IBinderPool iBinderPool = this.a;
                    if (iBinderPool != null) {
                        return iBinderPool.queryBinder(i);
                    }
                    return null;
                } catch (RemoteException e2) {
                    l.e("TTAD.BinderPool", e2.getMessage());
                    ac.h("queryBinder error");
                    return null;
                }
            }
            if (i == 0) {
                return g.a();
            }
            if (i == 1) {
                return e.a();
            }
            if (i == 5) {
                return f.b();
            }
            if (i == 6) {
                return d.a();
            }
            if (i != 7) {
                return null;
            }
            return com.bytedance.sdk.openadsdk.multipro.aidl.a.b.a();
        } catch (Throwable unused) {
            return null;
        }
    }

    public void a(b bVar) {
        this.c = bVar;
        if (this.a != null) {
            aa.a(new h("onServiceConnected2") { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (a.this.c != null) {
                        a.this.c.onServiceConnected();
                    }
                }
            }, 5);
        }
    }

    public void b() {
        try {
            Context contextA = o.a();
            contextA.startService(new Intent(contextA, (Class<?>) BinderPoolService.class));
        } catch (Exception unused) {
        }
    }

    public void c() {
        try {
            Context contextA = o.a();
            contextA.bindService(new Intent(contextA, (Class<?>) BinderPoolService.class), this.f1836e, 1);
            this.f1835d = System.currentTimeMillis();
        } catch (Throwable unused) {
        }
    }
}
