package com.bytedance.sdk.component.adexpress.b;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.b.j;

/* JADX INFO: compiled from: NativeRenderInterceptor.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements j {
    private Context a;
    private a b;
    private m c;

    public f(Context context, m mVar, a aVar) {
        this.a = context;
        this.b = aVar;
        this.c = mVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j
    public void a() {
    }

    public void a(c cVar) {
        this.b.a(cVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.b.j
    public boolean a(final j.a aVar) {
        this.c.e().d();
        this.b.a(new g() { // from class: com.bytedance.sdk.component.adexpress.b.f.1
            @Override // com.bytedance.sdk.component.adexpress.b.g
            public void a(int i) {
                o oVarB = aVar.b();
                if (oVarB != null) {
                    oVarB.a_(i);
                }
            }

            @Override // com.bytedance.sdk.component.adexpress.b.g
            public void a(View view, n nVar) {
                if (aVar.c()) {
                    return;
                }
                o oVarB = aVar.b();
                if (oVarB != null) {
                    oVarB.a(f.this.b, nVar);
                }
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
}
