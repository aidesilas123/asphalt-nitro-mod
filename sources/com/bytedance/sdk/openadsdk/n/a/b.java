package com.bytedance.sdk.openadsdk.n.a;

import android.view.View;
import androidx.core.view.InputDeviceCompat;
import com.bytedance.sdk.openadsdk.core.model.q;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: PAGBaseMrcTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    protected WeakReference<View> a;
    protected q b;
    protected final AtomicBoolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicLong f1845d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f1846e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f1847f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Integer f1848g;
    private volatile boolean h = false;
    private final int i;

    public b(Integer num, View view, q qVar, int i, int i2) {
        this.f1848g = num;
        this.f1847f = i;
        this.b = qVar;
        this.i = i2;
        a(view);
        this.c = new AtomicBoolean(false);
        this.f1845d = new AtomicLong(-1L);
        this.f1846e = new AtomicBoolean(false);
    }

    public static b a(boolean z, Integer num, View view, q qVar, int i) {
        return z ? new h(num, view, qVar, i) : new c(num, view, qVar, i);
    }

    public void a() {
        if (this.c.compareAndSet(false, true)) {
            g.a(this);
        }
    }

    public void a(int i) {
        if (i == 4) {
            a();
            return;
        }
        if (i == 8) {
            m();
        } else if (i == 9) {
            d();
        } else {
            b(i);
        }
    }

    public void a(View view) {
        if (view != null) {
            view.setTag(InputDeviceCompat.SOURCE_HDMI, k());
        }
        this.a = new WeakReference<>(view);
    }

    public int b() {
        if (i()) {
            return 1;
        }
        WeakReference<View> weakReference = this.a;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null || this.h) {
            return 3;
        }
        if (k().equals(view.getTag(InputDeviceCompat.SOURCE_HDMI))) {
            return k().equals(view.getTag(InputDeviceCompat.SOURCE_HDMI)) && c() ? 1 : 2;
        }
        j();
        e.b(k());
        return 3;
    }

    protected abstract void b(int i);

    protected abstract boolean c();

    protected void d() {
        if (this.f1846e.compareAndSet(false, true)) {
            d.a(this.b, e(), this.i);
        }
    }

    protected a e() {
        WeakReference<View> weakReference = this.a;
        if (weakReference == null) {
            return new a(-1, -1, -1.0f);
        }
        View view = weakReference.get();
        return view == null ? new a(0, 0, 0.0f) : new a(view.getWidth(), view.getHeight(), view.getAlpha());
    }

    public abstract int f();

    public void g() {
        if (i()) {
            return;
        }
        if (!this.c.get()) {
            h();
        } else if (!this.f1845d.compareAndSet(-1L, System.currentTimeMillis()) && System.currentTimeMillis() - this.f1845d.get() >= this.f1847f) {
            d();
        }
    }

    public void h() {
        this.f1845d.set(-1L);
    }

    public boolean i() {
        return this.f1846e.get();
    }

    public void j() {
        this.h = true;
        g.b(this);
    }

    public Integer k() {
        return this.f1848g;
    }

    public boolean l() {
        return this.c.get();
    }

    public void m() {
        this.c.set(false);
        h();
    }
}
