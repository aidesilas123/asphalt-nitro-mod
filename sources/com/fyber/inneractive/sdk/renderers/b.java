package com.fyber.inneractive.sdk.renderers;

import android.graphics.Rect;
import android.widget.RelativeLayout;
import com.fyber.inneractive.sdk.util.i;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public final com.fyber.inneractive.sdk.response.e b;
    public final RelativeLayout c;
    public final c j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f2710d = 0.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2711e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f2712f = 0.0f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f2713g = 0;
    public boolean h = false;
    public boolean i = false;
    public final Runnable k = new a();
    public com.fyber.inneractive.sdk.util.i<Rect> a = new com.fyber.inneractive.sdk.util.i<>(4, new C0197b(this));

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a();
        }
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.renderers.b$b, reason: collision with other inner class name */
    public class C0197b implements i.a<Rect> {
        public C0197b(b bVar) {
        }

        @Override // com.fyber.inneractive.sdk.util.i.a
        public Rect a() {
            return new Rect();
        }
    }

    public interface c {
    }

    public b(com.fyber.inneractive.sdk.response.e eVar, RelativeLayout relativeLayout, c cVar) {
        this.b = eVar;
        this.c = relativeLayout;
        this.j = cVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a() {
        /*
            Method dump skipped, instruction units count: 258
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.renderers.b.a():void");
    }

    public void b() {
        if (this.i || this.h || this.f2713g == 0) {
            return;
        }
        this.f2713g = 0L;
        this.h = true;
        a();
    }

    public void c() {
        this.h = false;
        com.fyber.inneractive.sdk.util.m.b.removeCallbacks(this.k);
    }
}
