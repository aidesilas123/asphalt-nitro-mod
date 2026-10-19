package com.bytedance.sdk.component.d.c;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.widget.ImageView;
import com.bytedance.sdk.component.d.i;
import com.bytedance.sdk.component.d.j;
import com.bytedance.sdk.component.d.k;
import com.bytedance.sdk.component.d.o;
import com.bytedance.sdk.component.d.s;
import com.bytedance.sdk.component.d.t;
import com.bytedance.sdk.component.d.u;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: compiled from: ImageRequest.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements i {
    private int A;
    private boolean B;
    private ExecutorService C;
    private boolean D;
    Future<?> a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f960d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private o f961e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView.ScaleType f962f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Bitmap.Config f963g;
    private int h;
    private int i;
    private com.bytedance.sdk.component.d.h j;
    private u k;
    private WeakReference<ImageView> l;
    private volatile boolean m;
    private boolean n;
    private boolean o;
    private s p;
    private t q;
    private Queue<com.bytedance.sdk.component.d.d.i> r;
    private final Handler s;
    private boolean t;
    private com.bytedance.sdk.component.d.g u;
    private int v;
    private f w;
    private com.bytedance.sdk.component.d.c.a x;
    private com.bytedance.sdk.component.d.b y;
    private int z;

    /* JADX INFO: compiled from: ImageRequest.java */
    private class a implements o {
        private o b;

        public a(o oVar) {
            this.b = oVar;
        }

        private boolean a(ImageView imageView) {
            Object tag;
            return (imageView == null || (tag = imageView.getTag(1094453505)) == null || !tag.equals(c.this.c)) ? false : true;
        }

        @Override // com.bytedance.sdk.component.d.o
        public void a(final int i, final String str, final Throwable th) {
            if (c.this.q == t.MAIN) {
                c.this.s.post(new Runnable() { // from class: com.bytedance.sdk.component.d.c.c.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (a.this.b != null) {
                            a.this.b.a(i, str, th);
                        }
                    }
                });
                return;
            }
            o oVar = this.b;
            if (oVar != null) {
                oVar.a(i, str, th);
            }
        }

        @Override // com.bytedance.sdk.component.d.o
        public void a(final k kVar) {
            Bitmap bitmapA;
            final ImageView imageView = (ImageView) c.this.l.get();
            if (imageView != null && c.this.k != u.RAW && a(imageView) && (kVar.b() instanceof Bitmap)) {
                final Bitmap bitmap = (Bitmap) kVar.b();
                c.this.s.post(new Runnable() { // from class: com.bytedance.sdk.component.d.c.c.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        imageView.setImageBitmap(bitmap);
                    }
                });
            }
            try {
                if (c.this.j != null && (kVar.b() instanceof Bitmap) && (bitmapA = c.this.j.a((Bitmap) kVar.b())) != null) {
                    kVar.a(bitmapA);
                }
            } catch (Throwable unused) {
            }
            if (c.this.q == t.MAIN) {
                c.this.s.postAtFrontOfQueue(new Runnable() { // from class: com.bytedance.sdk.component.d.c.c.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (a.this.b != null) {
                            a.this.b.a(kVar);
                        }
                    }
                });
                return;
            }
            o oVar = this.b;
            if (oVar != null) {
                oVar.a(kVar);
            }
        }
    }

    /* JADX INFO: compiled from: ImageRequest.java */
    public static class b implements j {
        private o a;
        private ImageView b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f965d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ImageView.ScaleType f966e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Bitmap.Config f967f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f968g;
        private int h;
        private u i;
        private t j;
        private s k;
        private boolean l;
        private boolean m;
        private String n;
        private com.bytedance.sdk.component.d.b o;
        private f p;
        private com.bytedance.sdk.component.d.h q;
        private int r;
        private int s;
        private boolean t;
        private ExecutorService u;
        private boolean v;

        public b(f fVar) {
            this.p = fVar;
        }

        @Override // com.bytedance.sdk.component.d.j
        public i a(ImageView imageView) {
            this.b = imageView;
            return new c(this).w();
        }

        @Override // com.bytedance.sdk.component.d.j
        public i a(o oVar) {
            this.a = oVar;
            return new c(this).w();
        }

        @Override // com.bytedance.sdk.component.d.j
        public i a(o oVar, t tVar) {
            this.j = tVar;
            return a(oVar);
        }

        @Override // com.bytedance.sdk.component.d.j
        public j a(int i) {
            this.f968g = i;
            return this;
        }

        @Override // com.bytedance.sdk.component.d.j
        public j a(Bitmap.Config config) {
            this.f967f = config;
            return this;
        }

        @Override // com.bytedance.sdk.component.d.j
        public j a(ImageView.ScaleType scaleType) {
            this.f966e = scaleType;
            return this;
        }

        @Override // com.bytedance.sdk.component.d.j
        public j a(com.bytedance.sdk.component.d.h hVar) {
            this.q = hVar;
            return this;
        }

        @Override // com.bytedance.sdk.component.d.j
        public j a(s sVar) {
            this.k = sVar;
            return this;
        }

        @Override // com.bytedance.sdk.component.d.j
        public j a(u uVar) {
            this.i = uVar;
            return this;
        }

        @Override // com.bytedance.sdk.component.d.j
        public j a(String str) {
            this.c = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.d.j
        public j a(boolean z) {
            this.m = z;
            return this;
        }

        @Override // com.bytedance.sdk.component.d.j
        public j b(int i) {
            this.h = i;
            return this;
        }

        @Override // com.bytedance.sdk.component.d.j
        public j b(String str) {
            this.n = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.d.j
        public j c(int i) {
            this.r = i;
            return this;
        }

        public j c(String str) {
            this.f965d = str;
            return this;
        }

        @Override // com.bytedance.sdk.component.d.j
        public j d(int i) {
            this.s = i;
            return this;
        }
    }

    private c(b bVar) {
        this.r = new LinkedBlockingQueue();
        this.s = new Handler(Looper.getMainLooper());
        this.t = true;
        this.b = bVar.f965d;
        this.f961e = new a(bVar.a);
        this.l = new WeakReference<>(bVar.b);
        this.f962f = bVar.f966e;
        this.f963g = bVar.f967f;
        this.h = bVar.f968g;
        this.i = bVar.h;
        this.k = bVar.i == null ? u.AUTO : bVar.i;
        this.q = bVar.j == null ? t.MAIN : bVar.j;
        this.p = bVar.k;
        this.y = a(bVar);
        if (!TextUtils.isEmpty(bVar.c)) {
            b(bVar.c);
            a(bVar.c);
        }
        this.n = bVar.l;
        this.o = bVar.m;
        this.w = bVar.p;
        this.j = bVar.q;
        this.A = bVar.s;
        this.z = bVar.r;
        this.C = bVar.u;
        this.B = bVar.t;
        this.D = bVar.v;
        this.r.add(new com.bytedance.sdk.component.d.d.c());
    }

    private com.bytedance.sdk.component.d.b a(b bVar) {
        return bVar.o != null ? bVar.o : !TextUtils.isEmpty(bVar.n) ? com.bytedance.sdk.component.d.c.a.a.a(new File(bVar.n)) : com.bytedance.sdk.component.d.c.a.a.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str, Throwable th) {
        new com.bytedance.sdk.component.d.d.h(i, str, th).a(this);
        this.r.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public i w() {
        f fVar;
        try {
            fVar = this.w;
        } catch (Exception e2) {
            Log.e("ImageRequest", e2.getMessage());
        }
        if (fVar == null) {
            o oVar = this.f961e;
            if (oVar != null) {
                oVar.a(1005, "not init !", null);
            }
            return this;
        }
        if (this.C == null) {
            this.C = fVar.f();
        }
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.d.c.c.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.component.d.d.i iVar;
                while (!c.this.m && (iVar = (com.bytedance.sdk.component.d.d.i) c.this.r.poll()) != null) {
                    try {
                        if (c.this.p != null) {
                            c.this.p.a(iVar.a(), c.this);
                        }
                        iVar.a(c.this);
                        if (c.this.p != null) {
                            c.this.p.b(iVar.a(), c.this);
                        }
                    } catch (Throwable th) {
                        c.this.a(2000, th.getMessage(), th);
                        if (c.this.p != null) {
                            c.this.p.b("exception", c.this);
                            return;
                        }
                        return;
                    }
                }
                if (c.this.m) {
                    c.this.a(1003, "canceled", null);
                }
            }
        };
        if (this.D) {
            runnable.run();
        } else {
            ExecutorService executorService = this.C;
            if (executorService != null) {
                this.a = executorService.submit(runnable);
            }
        }
        return this;
    }

    @Override // com.bytedance.sdk.component.d.i
    public String a() {
        return this.b;
    }

    public void a(int i) {
        this.v = i;
    }

    public void a(com.bytedance.sdk.component.d.c.a aVar) {
        this.x = aVar;
    }

    public void a(com.bytedance.sdk.component.d.g gVar) {
        this.u = gVar;
    }

    public void a(String str) {
        this.f960d = str;
    }

    public void a(boolean z) {
        this.t = z;
    }

    public boolean a(com.bytedance.sdk.component.d.d.i iVar) {
        if (this.m) {
            return false;
        }
        return this.r.add(iVar);
    }

    @Override // com.bytedance.sdk.component.d.i
    public int b() {
        return this.h;
    }

    public void b(String str) {
        WeakReference<ImageView> weakReference = this.l;
        if (weakReference != null && weakReference.get() != null) {
            this.l.get().setTag(1094453505, str);
        }
        this.c = str;
    }

    @Override // com.bytedance.sdk.component.d.i
    public int c() {
        return this.i;
    }

    @Override // com.bytedance.sdk.component.d.i
    public ImageView.ScaleType d() {
        return this.f962f;
    }

    @Override // com.bytedance.sdk.component.d.i
    public String e() {
        return this.c;
    }

    @Override // com.bytedance.sdk.component.d.i
    public Bitmap.Config f() {
        return this.f963g;
    }

    public int g() {
        return this.z;
    }

    public int h() {
        return this.A;
    }

    public o i() {
        return this.f961e;
    }

    public String j() {
        return this.f960d;
    }

    public Bitmap.Config k() {
        return this.f963g;
    }

    public u l() {
        return this.k;
    }

    public boolean m() {
        return this.n;
    }

    public boolean n() {
        return this.o;
    }

    public boolean o() {
        return this.t;
    }

    public com.bytedance.sdk.component.d.g p() {
        return this.u;
    }

    public int q() {
        return this.v;
    }

    public com.bytedance.sdk.component.d.c.a r() {
        return this.x;
    }

    public f s() {
        return this.w;
    }

    public com.bytedance.sdk.component.d.b t() {
        return this.y;
    }

    public boolean u() {
        return this.B;
    }

    public String v() {
        return e() + l();
    }
}
