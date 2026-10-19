package com.tapjoy.internal;

import android.app.Application;
import android.content.Context;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes4.dex */
public final class aa {
    public final ReentrantLock a;
    public final Condition b;
    public volatile int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedList f7858d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public x2 f7859e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f7860f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o1 f7861g;
    public o1 h;
    public final /* synthetic */ ba i;

    public aa(ba baVar) {
        this.i = baVar;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.a = reentrantLock;
        this.b = reentrantLock.newCondition();
        this.c = 1;
        this.f7858d = new LinkedList();
        this.f7860f = 1000L;
    }

    public static Context a(Context context) {
        Context applicationContext = context != null ? context instanceof Application ? context : context.getApplicationContext() : null;
        return applicationContext != null ? applicationContext : context;
    }

    public final void b() {
        this.a.lock();
        try {
            if (this.f7858d.size() == 0) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f7858d);
            this.f7858d.clear();
            this.a.unlock();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((com.tapjoy.n) it.next()).onConnectSuccess();
            }
        } finally {
            this.a.unlock();
        }
    }

    public final void c(int i) {
        this.a.lock();
        try {
            this.c = i;
        } finally {
            this.a.unlock();
        }
    }

    public final void d(int i, String str) {
        this.a.lock();
        try {
            if (this.f7858d.size() == 0) {
                return;
            }
            ArrayList<com.tapjoy.n> arrayList = new ArrayList(this.f7858d);
            this.f7858d.clear();
            this.a.unlock();
            for (com.tapjoy.n nVar : arrayList) {
                nVar.onConnectFailure(i, str);
                nVar.onConnectFailure();
            }
        } finally {
            this.a.unlock();
        }
    }

    public final void e(long j) {
        this.a.lock();
        try {
            c(4);
            if (this.b.await(j, TimeUnit.MILLISECONDS)) {
                this.f7860f = 1000L;
            }
        } catch (InterruptedException unused) {
        } finally {
            c(3);
            this.a.unlock();
        }
    }

    public final boolean f(Context context, String str, Hashtable hashtable, com.tapjoy.n nVar) {
        this.a.lock();
        if (nVar != null) {
            try {
                this.f7858d.addLast(nVar);
            } catch (Throwable th) {
                throw th;
            } finally {
                this.a.unlock();
            }
        }
        o1 o1Var = new o1(this, context, str, hashtable);
        int iB = k.b(this.c);
        if (iB == 0) {
            this.f7861g = o1Var;
            a3.b.addObserver(new t0(this));
            if (super/*com.tapjoy.o0*/.c(o1Var.a, o1Var.b, o1Var.c, new b1(this))) {
                c(2);
                return true;
            }
            this.f7858d.clear();
            this.a.unlock();
            return false;
        }
        if (iB == 1 || iB == 2) {
            this.h = o1Var;
        } else if (iB == 3) {
            this.h = o1Var;
            this.a.lock();
            this.f7860f = 1000L;
            this.b.signal();
            this.a.unlock();
        } else {
            if (iB != 4) {
                c(1);
                this.a.unlock();
                return false;
            }
            b();
        }
        return true;
    }
}
