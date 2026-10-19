package com.unity3d.scar.adapter.v2100;

import android.content.Context;
import android.widget.RelativeLayout;
import com.unity3d.scar.adapter.common.Utils;
import com.unity3d.scar.adapter.common.d;
import com.unity3d.scar.adapter.common.f;
import com.unity3d.scar.adapter.common.i;
import com.unity3d.scar.adapter.common.j;
import com.unity3d.scar.adapter.v2100.c.e;
import com.unity3d.scar.adapter.v2100.c.g;

/* JADX INFO: compiled from: ScarAdapter.java */
/* JADX INFO: loaded from: classes4.dex */
public class a extends i implements d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.unity3d.scar.adapter.v2100.b.a f8087e;

    /* JADX INFO: renamed from: com.unity3d.scar.adapter.v2100.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ScarAdapter.java */
    class RunnableC0454a implements Runnable {
        final /* synthetic */ e a;
        final /* synthetic */ com.unity3d.scar.adapter.common.scarads.c b;

        /* JADX INFO: renamed from: com.unity3d.scar.adapter.v2100.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ScarAdapter.java */
        class C0455a implements com.unity3d.scar.adapter.common.scarads.b {
            C0455a() {
            }

            @Override // com.unity3d.scar.adapter.common.scarads.b
            public void onAdLoaded() {
                ((i) a.this).b.put(RunnableC0454a.this.b.c(), RunnableC0454a.this.a);
            }
        }

        RunnableC0454a(e eVar, com.unity3d.scar.adapter.common.scarads.c cVar) {
            this.a = eVar;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(new C0455a());
        }
    }

    /* JADX INFO: compiled from: ScarAdapter.java */
    class b implements Runnable {
        final /* synthetic */ g a;
        final /* synthetic */ com.unity3d.scar.adapter.common.scarads.c b;

        /* JADX INFO: renamed from: com.unity3d.scar.adapter.v2100.a$b$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ScarAdapter.java */
        class C0456a implements com.unity3d.scar.adapter.common.scarads.b {
            C0456a() {
            }

            @Override // com.unity3d.scar.adapter.common.scarads.b
            public void onAdLoaded() {
                ((i) a.this).b.put(b.this.b.c(), b.this.a);
            }
        }

        b(g gVar, com.unity3d.scar.adapter.common.scarads.c cVar) {
            this.a = gVar;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(new C0456a());
        }
    }

    /* JADX INFO: compiled from: ScarAdapter.java */
    class c implements Runnable {
        final /* synthetic */ com.unity3d.scar.adapter.v2100.c.c a;

        c(com.unity3d.scar.adapter.v2100.c.c cVar) {
            this.a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(null);
        }
    }

    public a(com.unity3d.scar.adapter.common.b<j> bVar, String str) {
        super(bVar);
        com.unity3d.scar.adapter.v2100.b.a aVar = new com.unity3d.scar.adapter.v2100.b.a(new com.unity3d.scar.adapter.common.k.a(str));
        this.f8087e = aVar;
        this.a = new com.unity3d.scar.adapter.v2100.d.b(aVar);
    }

    @Override // com.unity3d.scar.adapter.common.d
    public void c(Context context, RelativeLayout relativeLayout, com.unity3d.scar.adapter.common.scarads.c cVar, int i, int i2, com.unity3d.scar.adapter.common.e eVar) {
        Utils.runOnUiThread(new c(new com.unity3d.scar.adapter.v2100.c.c(context, relativeLayout, this.f8087e, cVar, i, i2, this.f8063d, eVar)));
    }

    @Override // com.unity3d.scar.adapter.common.d
    public void e(Context context, com.unity3d.scar.adapter.common.scarads.c cVar, com.unity3d.scar.adapter.common.g gVar) {
        Utils.runOnUiThread(new b(new g(context, this.f8087e, cVar, this.f8063d, gVar), cVar));
    }

    @Override // com.unity3d.scar.adapter.common.d
    public void f(Context context, com.unity3d.scar.adapter.common.scarads.c cVar, f fVar) {
        Utils.runOnUiThread(new RunnableC0454a(new e(context, this.f8087e, cVar, this.f8063d, fVar), cVar));
    }
}
