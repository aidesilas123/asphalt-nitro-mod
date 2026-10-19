package com.unity3d.scar.adapter.v2000;

import android.content.Context;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.query.QueryInfo;
import com.unity3d.scar.adapter.common.Utils;
import com.unity3d.scar.adapter.common.d;
import com.unity3d.scar.adapter.common.f;
import com.unity3d.scar.adapter.common.i;
import com.unity3d.scar.adapter.common.j;
import com.unity3d.scar.adapter.common.l.g;
import com.unity3d.scar.adapter.v2000.b.e;

/* JADX INFO: compiled from: ScarAdapter.java */
/* JADX INFO: loaded from: classes4.dex */
public class a extends i implements d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g<QueryInfo> f8072e;

    /* JADX INFO: renamed from: com.unity3d.scar.adapter.v2000.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ScarAdapter.java */
    class RunnableC0451a implements Runnable {
        final /* synthetic */ e a;
        final /* synthetic */ com.unity3d.scar.adapter.common.scarads.c b;

        /* JADX INFO: renamed from: com.unity3d.scar.adapter.v2000.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ScarAdapter.java */
        class C0452a implements com.unity3d.scar.adapter.common.scarads.b {
            C0452a() {
            }

            @Override // com.unity3d.scar.adapter.common.scarads.b
            public void onAdLoaded() {
                ((i) a.this).b.put(RunnableC0451a.this.b.c(), RunnableC0451a.this.a);
            }
        }

        RunnableC0451a(e eVar, com.unity3d.scar.adapter.common.scarads.c cVar) {
            this.a = eVar;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(new C0452a());
        }
    }

    /* JADX INFO: compiled from: ScarAdapter.java */
    class b implements Runnable {
        final /* synthetic */ com.unity3d.scar.adapter.v2000.b.g a;
        final /* synthetic */ com.unity3d.scar.adapter.common.scarads.c b;

        /* JADX INFO: renamed from: com.unity3d.scar.adapter.v2000.a$b$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ScarAdapter.java */
        class C0453a implements com.unity3d.scar.adapter.common.scarads.b {
            C0453a() {
            }

            @Override // com.unity3d.scar.adapter.common.scarads.b
            public void onAdLoaded() {
                ((i) a.this).b.put(b.this.b.c(), b.this.a);
            }
        }

        b(com.unity3d.scar.adapter.v2000.b.g gVar, com.unity3d.scar.adapter.common.scarads.c cVar) {
            this.a = gVar;
            this.b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(new C0453a());
        }
    }

    /* JADX INFO: compiled from: ScarAdapter.java */
    class c implements Runnable {
        final /* synthetic */ com.unity3d.scar.adapter.v2000.b.c a;

        c(com.unity3d.scar.adapter.v2000.b.c cVar) {
            this.a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.a(null);
        }
    }

    public a(com.unity3d.scar.adapter.common.b<j> bVar) {
        super(bVar);
        g<QueryInfo> gVar = new g<>();
        this.f8072e = gVar;
        this.a = new com.unity3d.scar.adapter.v2000.c.b(gVar);
    }

    @Override // com.unity3d.scar.adapter.common.d
    public void c(Context context, RelativeLayout relativeLayout, com.unity3d.scar.adapter.common.scarads.c cVar, int i, int i2, com.unity3d.scar.adapter.common.e eVar) {
        Utils.runOnUiThread(new c(new com.unity3d.scar.adapter.v2000.b.c(context, this.f8072e.a(cVar.c()), relativeLayout, cVar, i, i2, this.f8063d, eVar)));
    }

    @Override // com.unity3d.scar.adapter.common.d
    public void e(Context context, com.unity3d.scar.adapter.common.scarads.c cVar, com.unity3d.scar.adapter.common.g gVar) {
        Utils.runOnUiThread(new b(new com.unity3d.scar.adapter.v2000.b.g(context, this.f8072e.a(cVar.c()), cVar, this.f8063d, gVar), cVar));
    }

    @Override // com.unity3d.scar.adapter.common.d
    public void f(Context context, com.unity3d.scar.adapter.common.scarads.c cVar, f fVar) {
        Utils.runOnUiThread(new RunnableC0451a(new e(context, this.f8072e.a(cVar.c()), cVar, this.f8063d, fVar), cVar));
    }
}
