package com.squareup.imagelib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.squareup.imagelib.Picasso;
import com.squareup.imagelib.s;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: RequestCreator.java */
/* JADX INFO: loaded from: classes4.dex */
public class t {
    private static final AtomicInteger a = new AtomicInteger();
    private final Picasso b;
    private final s.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7771d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7772e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f7773f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7774g;
    private int h;
    private int i;
    private int j;
    private Drawable k;
    private Drawable l;
    private Object m;

    t(Picasso picasso, Uri uri, int i) {
        if (picasso.q) {
            throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
        }
        this.b = picasso;
        this.c = new s.b(uri, i, picasso.n);
    }

    private s d(long j) {
        int andIncrement = a.getAndIncrement();
        s sVarA = this.c.a();
        sVarA.b = andIncrement;
        sVarA.c = j;
        boolean z = this.b.p;
        if (z) {
            a0.v("Main", "created", sVarA.g(), sVarA.toString());
        }
        s sVarO = this.b.o(sVarA);
        if (sVarO != sVarA) {
            sVarO.b = andIncrement;
            sVarO.c = j;
            if (z) {
                a0.v("Main", "changed", sVarO.d(), "into " + sVarO);
            }
        }
        return sVarO;
    }

    private Drawable f() {
        return this.f7774g != 0 ? this.b.f7732g.getResources().getDrawable(this.f7774g) : this.k;
    }

    public t a() {
        this.c.b();
        return this;
    }

    public t b() {
        this.c.c();
        return this;
    }

    t c() {
        this.m = null;
        return this;
    }

    public void e(e eVar) {
        long jNanoTime = System.nanoTime();
        if (this.f7772e) {
            throw new IllegalStateException("Fit cannot be used with fetch.");
        }
        if (this.c.d()) {
            if (!this.c.e()) {
                this.c.h(Picasso.Priority.LOW);
            }
            s sVarD = d(jNanoTime);
            String strI = a0.i(sVarD, new StringBuilder());
            if (!MemoryPolicy.f(this.i) || this.b.l(strI) == null) {
                this.b.n(new k(this.b, sVarD, this.i, this.j, this.m, strI, eVar));
                return;
            }
            if (this.b.p) {
                a0.v("Main", "completed", sVarD.g(), "from " + Picasso.LoadedFrom.MEMORY);
            }
            if (eVar != null) {
                eVar.onSuccess();
            }
        }
    }

    public void g(ImageView imageView) {
        h(imageView, null);
    }

    public void h(ImageView imageView, e eVar) {
        Bitmap bitmapL;
        long jNanoTime = System.nanoTime();
        a0.c();
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        }
        if (!this.c.d()) {
            this.b.c(imageView);
            if (this.f7773f) {
                q.d(imageView, f());
                return;
            }
            return;
        }
        if (this.f7772e) {
            if (this.c.f()) {
                throw new IllegalStateException("Fit cannot be used with resize.");
            }
            int width = imageView.getWidth();
            int height = imageView.getHeight();
            if (width == 0 || height == 0) {
                if (this.f7773f) {
                    q.d(imageView, f());
                }
                this.b.e(imageView, new h(this, imageView, eVar));
                return;
            }
            this.c.i(width, height);
        }
        s sVarD = d(jNanoTime);
        String strH = a0.h(sVarD);
        if (!MemoryPolicy.f(this.i) || (bitmapL = this.b.l(strH)) == null) {
            if (this.f7773f) {
                q.d(imageView, f());
            }
            this.b.g(new m(this.b, imageView, sVarD, this.i, this.j, this.h, this.l, strH, this.m, eVar, this.f7771d));
            return;
        }
        this.b.c(imageView);
        Picasso picasso = this.b;
        Context context = picasso.f7732g;
        Picasso.LoadedFrom loadedFrom = Picasso.LoadedFrom.MEMORY;
        q.c(imageView, context, bitmapL, loadedFrom, this.f7771d, picasso.o);
        if (this.b.p) {
            a0.v("Main", "completed", sVarD.g(), "from " + loadedFrom);
        }
        if (eVar != null) {
            eVar.onSuccess();
        }
    }

    public t i() {
        this.f7771d = true;
        return this;
    }

    public t j() {
        this.c.g();
        return this;
    }

    public t k(int i, int i2) {
        this.c.i(i, i2);
        return this;
    }

    public t l(y yVar) {
        this.c.j(yVar);
        return this;
    }

    public t m(List<? extends y> list) {
        this.c.k(list);
        return this;
    }

    t n() {
        this.f7772e = false;
        return this;
    }
}
