package com.squareup.imagelib;

import android.graphics.Bitmap;
import android.net.Uri;
import com.squareup.imagelib.Picasso;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Request.java */
/* JADX INFO: loaded from: classes4.dex */
public final class s {
    private static final long a = TimeUnit.SECONDS.toNanos(5);
    int b;
    long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f7763d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Uri f7764e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f7765f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f7766g;
    public final List<y> h;
    public final int i;
    public final int j;
    public final boolean k;
    public final boolean l;
    public final boolean m;
    public final float n;
    public final float o;
    public final float p;
    public final boolean q;
    public final boolean r;
    public final Bitmap.Config s;
    public final Picasso.Priority t;

    /* JADX INFO: compiled from: Request.java */
    public static final class b {
        private Uri a;
        private int b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f7767d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f7768e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f7769f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f7770g;
        private boolean h;
        private float i;
        private float j;
        private float k;
        private boolean l;
        private boolean m;
        private List<y> n;
        private Bitmap.Config o;
        private Picasso.Priority p;

        b(Uri uri, int i, Bitmap.Config config) {
            this.a = uri;
            this.b = i;
            this.o = config;
        }

        public s a() {
            boolean z = this.f7770g;
            if (z && this.f7769f) {
                throw new IllegalStateException("Center crop and center inside can not be used together.");
            }
            if (this.f7769f && this.f7767d == 0 && this.f7768e == 0) {
                throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
            }
            if (z && this.f7767d == 0 && this.f7768e == 0) {
                throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
            }
            if (this.p == null) {
                this.p = Picasso.Priority.NORMAL;
            }
            return new s(this.a, this.b, this.c, this.n, this.f7767d, this.f7768e, this.f7769f, this.f7770g, this.h, this.i, this.j, this.k, this.l, this.m, this.o, this.p);
        }

        public b b() {
            if (this.f7770g) {
                throw new IllegalStateException("Center crop can not be used after calling centerInside");
            }
            this.f7769f = true;
            return this;
        }

        public b c() {
            if (this.f7769f) {
                throw new IllegalStateException("Center inside can not be used after calling centerCrop");
            }
            this.f7770g = true;
            return this;
        }

        boolean d() {
            return (this.a == null && this.b == 0) ? false : true;
        }

        boolean e() {
            return this.p != null;
        }

        boolean f() {
            return (this.f7767d == 0 && this.f7768e == 0) ? false : true;
        }

        public b g() {
            if (this.f7768e == 0 && this.f7767d == 0) {
                throw new IllegalStateException("onlyScaleDown can not be applied without resize");
            }
            this.h = true;
            return this;
        }

        public b h(Picasso.Priority priority) {
            if (priority == null) {
                throw new IllegalArgumentException("Priority invalid.");
            }
            if (this.p != null) {
                throw new IllegalStateException("Priority already set.");
            }
            this.p = priority;
            return this;
        }

        public b i(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Width must be positive number or 0.");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Height must be positive number or 0.");
            }
            if (i2 == 0 && i == 0) {
                throw new IllegalArgumentException("At least one dimension has to be positive number.");
            }
            this.f7767d = i;
            this.f7768e = i2;
            return this;
        }

        public b j(y yVar) {
            if (yVar == null) {
                throw new IllegalArgumentException("Transformation must not be null.");
            }
            if (yVar.key() == null) {
                throw new IllegalArgumentException("Transformation key must not be null.");
            }
            if (this.n == null) {
                this.n = new ArrayList(2);
            }
            this.n.add(yVar);
            return this;
        }

        public b k(List<? extends y> list) {
            if (list == null) {
                throw new IllegalArgumentException("Transformation list must not be null.");
            }
            int size = list.size();
            for (int i = 0; i < size; i++) {
                j(list.get(i));
            }
            return this;
        }
    }

    private s(Uri uri, int i, String str, List<y> list, int i2, int i3, boolean z, boolean z2, boolean z3, float f2, float f3, float f4, boolean z4, boolean z5, Bitmap.Config config, Picasso.Priority priority) {
        this.f7764e = uri;
        this.f7765f = i;
        this.f7766g = str;
        if (list == null) {
            this.h = null;
        } else {
            this.h = Collections.unmodifiableList(list);
        }
        this.i = i2;
        this.j = i3;
        this.k = z;
        this.l = z2;
        this.m = z3;
        this.n = f2;
        this.o = f3;
        this.p = f4;
        this.q = z4;
        this.r = z5;
        this.s = config;
        this.t = priority;
    }

    String a() {
        Uri uri = this.f7764e;
        return uri != null ? String.valueOf(uri.getPath()) : Integer.toHexString(this.f7765f);
    }

    boolean b() {
        return this.h != null;
    }

    public boolean c() {
        return (this.i == 0 && this.j == 0) ? false : true;
    }

    String d() {
        long jNanoTime = System.nanoTime() - this.c;
        if (jNanoTime > a) {
            return g() + '+' + TimeUnit.NANOSECONDS.toSeconds(jNanoTime) + 's';
        }
        return g() + '+' + TimeUnit.NANOSECONDS.toMillis(jNanoTime) + "ms";
    }

    boolean e() {
        return c() || this.n != 0.0f;
    }

    boolean f() {
        return e() || b();
    }

    String g() {
        return "[R" + this.b + ']';
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        int i = this.f7765f;
        if (i > 0) {
            sb.append(i);
        } else {
            sb.append(this.f7764e);
        }
        List<y> list = this.h;
        if (list != null && !list.isEmpty()) {
            for (y yVar : this.h) {
                sb.append(' ');
                sb.append(yVar.key());
            }
        }
        if (this.f7766g != null) {
            sb.append(" stableKey(");
            sb.append(this.f7766g);
            sb.append(')');
        }
        if (this.i > 0) {
            sb.append(" resize(");
            sb.append(this.i);
            sb.append(',');
            sb.append(this.j);
            sb.append(')');
        }
        if (this.k) {
            sb.append(" centerCrop");
        }
        if (this.l) {
            sb.append(" centerInside");
        }
        if (this.n != 0.0f) {
            sb.append(" rotation(");
            sb.append(this.n);
            if (this.q) {
                sb.append(" @ ");
                sb.append(this.o);
                sb.append(',');
                sb.append(this.p);
            }
            sb.append(')');
        }
        if (this.r) {
            sb.append(" purgeable");
        }
        if (this.s != null) {
            sb.append(' ');
            sb.append(this.s);
        }
        sb.append('}');
        return sb.toString();
    }
}
