package com.squareup.imagelib;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import android.os.Build;
import com.squareup.imagelib.Picasso;
import com.squareup.imagelib.j;
import com.squareup.imagelib.p;
import com.squareup.imagelib.u;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: BitmapHunter.java */
/* JADX INFO: loaded from: classes4.dex */
class c implements Runnable {
    private static final Object a = new Object();
    private static final ThreadLocal<StringBuilder> b = new a();
    private static final AtomicInteger c = new AtomicInteger();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final u f7744d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f7745e = c.incrementAndGet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Picasso f7746f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final i f7747g;
    final com.squareup.imagelib.d h;
    final w i;
    final String j;
    final s k;
    final int l;
    int m;
    final u n;
    com.squareup.imagelib.a o;
    List<com.squareup.imagelib.a> p;
    Bitmap q;
    Future<?> r;
    Picasso.LoadedFrom s;
    Exception t;
    int u;
    int v;
    Picasso.Priority w;

    /* JADX INFO: compiled from: BitmapHunter.java */
    class a extends ThreadLocal<StringBuilder> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    }

    /* JADX INFO: compiled from: BitmapHunter.java */
    class b extends u {
        b() {
        }

        @Override // com.squareup.imagelib.u
        public boolean c(s sVar) {
            return true;
        }

        @Override // com.squareup.imagelib.u
        public u.a f(s sVar, int i) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: " + sVar);
        }
    }

    /* JADX INFO: renamed from: com.squareup.imagelib.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BitmapHunter.java */
    class RunnableC0443c implements Runnable {
        final /* synthetic */ y a;
        final /* synthetic */ RuntimeException b;

        RunnableC0443c(y yVar, RuntimeException runtimeException) {
            this.a = yVar;
            this.b = runtimeException;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new RuntimeException("Transformation " + this.a.key() + " crashed with exception.", this.b);
        }
    }

    /* JADX INFO: compiled from: BitmapHunter.java */
    class d implements Runnable {
        final /* synthetic */ StringBuilder a;

        d(StringBuilder sb) {
            this.a = sb;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new NullPointerException(this.a.toString());
        }
    }

    /* JADX INFO: compiled from: BitmapHunter.java */
    class e implements Runnable {
        final /* synthetic */ y a;

        e(y yVar) {
            this.a = yVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.a.key() + " returned input Bitmap but recycled it.");
        }
    }

    /* JADX INFO: compiled from: BitmapHunter.java */
    class f implements Runnable {
        final /* synthetic */ y a;

        f(y yVar) {
            this.a = yVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            throw new IllegalStateException("Transformation " + this.a.key() + " mutated input Bitmap but failed to recycle the original.");
        }
    }

    c(Picasso picasso, i iVar, com.squareup.imagelib.d dVar, w wVar, com.squareup.imagelib.a aVar, u uVar) {
        this.f7746f = picasso;
        this.f7747g = iVar;
        this.h = dVar;
        this.i = wVar;
        this.o = aVar;
        this.j = aVar.d();
        this.k = aVar.i();
        this.w = aVar.h();
        this.l = aVar.e();
        this.m = aVar.f();
        this.n = uVar;
        this.v = uVar.e();
    }

    static Bitmap a(List<y> list, Bitmap bitmap) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            y yVar = list.get(i);
            try {
                Bitmap bitmapTransform = yVar.transform(bitmap);
                if (bitmapTransform == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Transformation ");
                    sb.append(yVar.key());
                    sb.append(" returned null after ");
                    sb.append(i);
                    sb.append(" previous transformation(s).\n\nTransformation list:\n");
                    Iterator<y> it = list.iterator();
                    while (it.hasNext()) {
                        sb.append(it.next().key());
                        sb.append('\n');
                    }
                    Picasso.a.post(new d(sb));
                    return null;
                }
                if (bitmapTransform == bitmap && bitmap.isRecycled()) {
                    Picasso.a.post(new e(yVar));
                    return null;
                }
                if (bitmapTransform != bitmap && !bitmap.isRecycled()) {
                    Picasso.a.post(new f(yVar));
                    return null;
                }
                i++;
                bitmap = bitmapTransform;
            } catch (RuntimeException e2) {
                Picasso.a.post(new RunnableC0443c(yVar, e2));
                return null;
            }
        }
        return bitmap;
    }

    private Picasso.Priority d() {
        Picasso.Priority priorityH = Picasso.Priority.LOW;
        List<com.squareup.imagelib.a> list = this.p;
        boolean z = true;
        boolean z2 = (list == null || list.isEmpty()) ? false : true;
        com.squareup.imagelib.a aVar = this.o;
        if (aVar == null && !z2) {
            z = false;
        }
        if (!z) {
            return priorityH;
        }
        if (aVar != null) {
            priorityH = aVar.h();
        }
        if (z2) {
            int size = this.p.size();
            for (int i = 0; i < size; i++) {
                Picasso.Priority priorityH2 = this.p.get(i).h();
                if (priorityH2.ordinal() > priorityH.ordinal()) {
                    priorityH = priorityH2;
                }
            }
        }
        return priorityH;
    }

    static Bitmap e(InputStream inputStream, s sVar) throws IOException {
        o oVar = new o(inputStream);
        long jB = oVar.b(65536);
        BitmapFactory.Options optionsD = u.d(sVar);
        boolean zG = u.g(optionsD);
        boolean zT = a0.t(oVar);
        boolean z = sVar.r && Build.VERSION.SDK_INT < 21;
        oVar.a(jB);
        if (zT || z) {
            byte[] bArrX = a0.x(oVar);
            if (zG) {
                BitmapFactory.decodeByteArray(bArrX, 0, bArrX.length, optionsD);
                u.b(sVar.i, sVar.j, optionsD, sVar);
            }
            return BitmapFactory.decodeByteArray(bArrX, 0, bArrX.length, optionsD);
        }
        if (zG) {
            BitmapFactory.decodeStream(oVar, null, optionsD);
            u.b(sVar.i, sVar.j, optionsD, sVar);
            oVar.a(jB);
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(oVar, null, optionsD);
        if (bitmapDecodeStream != null) {
            return bitmapDecodeStream;
        }
        throw new IOException("Failed to decode stream.");
    }

    static c g(Picasso picasso, i iVar, com.squareup.imagelib.d dVar, w wVar, com.squareup.imagelib.a aVar) {
        s sVarI = aVar.i();
        List<u> listH = picasso.h();
        int size = listH.size();
        for (int i = 0; i < size; i++) {
            u uVar = listH.get(i);
            if (uVar.c(sVarI)) {
                return new c(picasso, iVar, dVar, wVar, aVar, uVar);
            }
        }
        return new c(picasso, iVar, dVar, wVar, aVar, f7744d);
    }

    static int l(int i) {
        switch (i) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    static int m(int i) {
        return (i == 2 || i == 7 || i == 4 || i == 5) ? -1 : 1;
    }

    private static boolean v(boolean z, int i, int i2, int i3, int i4) {
        return !z || i > i3 || i2 > i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0243  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static android.graphics.Bitmap y(com.squareup.imagelib.s r26, android.graphics.Bitmap r27, int r28) {
        /*
            Method dump skipped, instruction units count: 581
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.imagelib.c.y(com.squareup.imagelib.s, android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    static void z(s sVar) {
        String strA = sVar.a();
        StringBuilder sb = b.get();
        sb.ensureCapacity(strA.length() + 8);
        sb.replace(8, sb.length(), strA);
        Thread.currentThread().setName(sb.toString());
    }

    void b(com.squareup.imagelib.a aVar) {
        boolean z = this.f7746f.p;
        s sVar = aVar.b;
        if (this.o == null) {
            this.o = aVar;
            if (z) {
                List<com.squareup.imagelib.a> list = this.p;
                if (list == null || list.isEmpty()) {
                    a0.v("Hunter", "joined", sVar.d(), "to empty hunter");
                    return;
                } else {
                    a0.v("Hunter", "joined", sVar.d(), a0.m(this, "to "));
                    return;
                }
            }
            return;
        }
        if (this.p == null) {
            this.p = new ArrayList(3);
        }
        this.p.add(aVar);
        if (z) {
            a0.v("Hunter", "joined", sVar.d(), a0.m(this, "to "));
        }
        Picasso.Priority priorityH = aVar.h();
        if (priorityH.ordinal() > this.w.ordinal()) {
            this.w = priorityH;
        }
    }

    boolean c() {
        Future<?> future;
        if (this.o != null) {
            return false;
        }
        List<com.squareup.imagelib.a> list = this.p;
        return (list == null || list.isEmpty()) && (future = this.r) != null && future.cancel(false);
    }

    void f(com.squareup.imagelib.a aVar) {
        boolean zRemove;
        if (this.o == aVar) {
            this.o = null;
            zRemove = true;
        } else {
            List<com.squareup.imagelib.a> list = this.p;
            zRemove = list != null ? list.remove(aVar) : false;
        }
        if (zRemove && aVar.h() == this.w) {
            this.w = d();
        }
        if (this.f7746f.p) {
            a0.v("Hunter", "removed", aVar.b.d(), a0.m(this, "from "));
        }
    }

    com.squareup.imagelib.a h() {
        return this.o;
    }

    List<com.squareup.imagelib.a> i() {
        return this.p;
    }

    s j() {
        return this.k;
    }

    Exception k() {
        return this.t;
    }

    String n() {
        return this.j;
    }

    Picasso.LoadedFrom o() {
        return this.s;
    }

    int p() {
        return this.l;
    }

    Picasso q() {
        return this.f7746f;
    }

    Picasso.Priority r() {
        return this.w;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        z(this.k);
                        if (this.f7746f.p) {
                            a0.u("Hunter", "executing", a0.l(this));
                        }
                        Bitmap bitmapT = t();
                        this.q = bitmapT;
                        if (bitmapT == null) {
                            this.f7747g.e(this);
                        } else {
                            this.f7747g.d(this);
                        }
                    } catch (IOException e2) {
                        this.t = e2;
                        this.f7747g.g(this);
                    }
                } catch (p.a e3) {
                    this.t = e3;
                    this.f7747g.g(this);
                } catch (Exception e4) {
                    this.t = e4;
                    this.f7747g.e(this);
                }
            } catch (j.b e5) {
                if (!e5.a || e5.b != 504) {
                    this.t = e5;
                }
                this.f7747g.e(this);
            } catch (OutOfMemoryError e6) {
                StringWriter stringWriter = new StringWriter();
                this.i.a().a(new PrintWriter(stringWriter));
                this.t = new RuntimeException(stringWriter.toString(), e6);
                this.f7747g.e(this);
            }
        } finally {
            Thread.currentThread().setName("Picasso-Idle");
        }
    }

    Bitmap s() {
        return this.q;
    }

    Bitmap t() throws IOException {
        Bitmap bitmapY;
        if (MemoryPolicy.f(this.l)) {
            bitmapY = this.h.get(this.j);
            if (bitmapY != null) {
                this.i.d();
                this.s = Picasso.LoadedFrom.MEMORY;
                if (this.f7746f.p) {
                    a0.v("Hunter", "decoded", this.k.d(), "from cache");
                }
                return bitmapY;
            }
        } else {
            bitmapY = null;
        }
        s sVar = this.k;
        sVar.f7763d = this.v == 0 ? NetworkPolicy.OFFLINE.f7728e : this.m;
        u.a aVarF = this.n.f(sVar, this.m);
        if (aVarF != null) {
            this.s = aVarF.c();
            this.u = aVarF.b();
            bitmapY = aVarF.a();
            if (bitmapY == null) {
                InputStream inputStreamD = aVarF.d();
                try {
                    Bitmap bitmapE = e(inputStreamD, this.k);
                    a0.e(inputStreamD);
                    bitmapY = bitmapE;
                } catch (Throwable th) {
                    a0.e(inputStreamD);
                    throw th;
                }
            }
        }
        if (bitmapY != null) {
            if (this.f7746f.p) {
                a0.u("Hunter", "decoded", this.k.d());
            }
            this.i.b(bitmapY);
            if (this.k.f() || this.u != 0) {
                synchronized (a) {
                    if (this.k.e() || this.u != 0) {
                        bitmapY = y(this.k, bitmapY, this.u);
                        if (this.f7746f.p) {
                            a0.u("Hunter", "transformed", this.k.d());
                        }
                    }
                    if (this.k.b()) {
                        bitmapY = a(this.k.h, bitmapY);
                        if (this.f7746f.p) {
                            a0.v("Hunter", "transformed", this.k.d(), "from custom transformations");
                        }
                    }
                }
                if (bitmapY != null) {
                    this.i.c(bitmapY);
                }
            }
        }
        return bitmapY;
    }

    boolean u() {
        Future<?> future = this.r;
        return future != null && future.isCancelled();
    }

    boolean w(boolean z, NetworkInfo networkInfo) {
        int i = this.v;
        if (!(i > 0)) {
            return false;
        }
        this.v = i - 1;
        return this.n.h(z, networkInfo);
    }

    boolean x() {
        return this.n.i();
    }
}
