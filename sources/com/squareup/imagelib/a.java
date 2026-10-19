package com.squareup.imagelib;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.imagelib.Picasso;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: Action.java */
/* JADX INFO: loaded from: classes4.dex */
abstract class a<T> {
    final Picasso a;
    final s b;
    final WeakReference<T> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final boolean f7740d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f7741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int f7742f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final int f7743g;
    final Drawable h;
    final String i;
    final Object j;
    boolean k;
    boolean l;

    /* JADX INFO: renamed from: com.squareup.imagelib.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Action.java */
    static class C0442a<M> extends WeakReference<M> {
        final a a;

        public C0442a(a aVar, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.a = aVar;
        }
    }

    a(Picasso picasso, T t, s sVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, boolean z) {
        this.a = picasso;
        this.b = sVar;
        this.c = t == null ? null : new C0442a(this, t, picasso.m);
        this.f7741e = i;
        this.f7742f = i2;
        this.f7740d = z;
        this.f7743g = i3;
        this.h = drawable;
        this.i = str;
        this.j = obj == null ? this : obj;
    }

    void a() {
        this.l = true;
    }

    abstract void b(Bitmap bitmap, Picasso.LoadedFrom loadedFrom);

    abstract void c();

    String d() {
        return this.i;
    }

    int e() {
        return this.f7741e;
    }

    int f() {
        return this.f7742f;
    }

    Picasso g() {
        return this.a;
    }

    Picasso.Priority h() {
        return this.b.t;
    }

    s i() {
        return this.b;
    }

    Object j() {
        return this.j;
    }

    T k() {
        WeakReference<T> weakReference = this.c;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    boolean l() {
        return this.l;
    }

    boolean m() {
        return this.k;
    }
}
