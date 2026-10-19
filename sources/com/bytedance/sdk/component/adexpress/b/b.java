package com.bytedance.sdk.component.adexpress.b;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.b.j;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;

/* JADX INFO: compiled from: DynamicRenderInterceptor.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements j {
    private Context a;
    private com.bytedance.sdk.component.adexpress.dynamic.a.a b;
    private ThemeStatusBroadcastReceiver c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f666d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private m f667e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f668f;

    public b(Context context, m mVar, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z, com.bytedance.sdk.component.adexpress.dynamic.c.g gVar, h hVar, com.bytedance.sdk.component.adexpress.dynamic.d.a aVar, com.bytedance.sdk.component.adexpress.dynamic.a.a aVar2) {
        this.a = context;
        this.f667e = mVar;
        this.c = themeStatusBroadcastReceiver;
        this.f666d = hVar;
        if (aVar2 != null) {
            this.b = aVar2;
        } else {
            this.b = new com.bytedance.sdk.component.adexpress.dynamic.a.a(context, themeStatusBroadcastReceiver, z, gVar, mVar, aVar);
        }
        this.b.a(this.f666d);
        if (gVar instanceof com.bytedance.sdk.component.adexpress.dynamic.c.f) {
            this.f668f = 3;
        } else {
            this.f668f = 2;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j
    public void a() {
        com.bytedance.sdk.component.adexpress.dynamic.a.a aVar = this.b;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j
    public boolean a(final j.a aVar) {
        this.f667e.e().b(this.f668f);
        this.b.a(new g() { // from class: com.bytedance.sdk.component.adexpress.b.b.1
            @Override // com.bytedance.sdk.component.adexpress.b.g
            public void a(int i) {
                b.this.f667e.e().a(b.this.f668f, i, aVar.b(b.this));
                if (aVar.b(b.this)) {
                    aVar.a(b.this);
                    return;
                }
                o oVarB = aVar.b();
                if (oVarB == null) {
                    return;
                }
                oVarB.a_(i);
            }

            @Override // com.bytedance.sdk.component.adexpress.b.g
            public void a(View view, n nVar) {
                if (aVar.c()) {
                    return;
                }
                b.this.f667e.e().f(b.this.f668f);
                b.this.f667e.e().g(b.this.f668f);
                b.this.f667e.e().h();
                o oVarB = aVar.b();
                if (oVarB == null) {
                    return;
                }
                oVarB.a(b.this.b, nVar);
                aVar.a(true);
            }
        });
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j
    public void b() {
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j
    public void c() {
    }

    public com.bytedance.sdk.component.adexpress.dynamic.d d() {
        com.bytedance.sdk.component.adexpress.dynamic.a.a aVar = this.b;
        if (aVar != null) {
            return aVar.d();
        }
        return null;
    }
}
