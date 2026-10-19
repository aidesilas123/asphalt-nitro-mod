package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.aa;

/* JADX INFO: compiled from: DynamicViewRender.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends com.bytedance.sdk.component.adexpress.dynamic.a.a {
    private final com.bytedance.sdk.component.adexpress.b.m a;
    private com.bytedance.sdk.component.adexpress.b.g b;
    private final com.bytedance.sdk.component.g.h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f1637d;

    public d(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z, com.bytedance.sdk.component.adexpress.dynamic.c.g gVar, com.bytedance.sdk.component.adexpress.b.m mVar, com.bytedance.sdk.component.adexpress.dynamic.d.a aVar) {
        super(context, themeStatusBroadcastReceiver, z, gVar, mVar, aVar);
        this.c = new com.bytedance.sdk.component.g.h("dynamic_render_template") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.d.1
            @Override // java.lang.Runnable
            public void run() {
                d.this.a.c();
                com.bytedance.sdk.openadsdk.core.l.c().post(d.this.f1637d);
            }
        };
        this.f1637d = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.d.2
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.b != null) {
                    d dVar = d.this;
                    d.super.a(dVar.b);
                }
            }
        };
        this.a = mVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.a.a, com.bytedance.sdk.component.adexpress.b.d
    public void a(com.bytedance.sdk.component.adexpress.b.g gVar) {
        this.b = gVar;
        aa.b(this.c);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.a.a
    public void b() {
        super.b();
        com.bytedance.sdk.openadsdk.core.l.c().removeCallbacks(this.f1637d);
    }
}
