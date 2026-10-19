package com.bytedance.sdk.openadsdk.k;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.bytedance.sdk.component.b.a.d;
import com.bytedance.sdk.component.d.u;
import com.bytedance.sdk.component.f.a;
import com.bytedance.sdk.openadsdk.core.model.n;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: TTNetClient.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile c a;
    private final Context b;
    private final com.bytedance.sdk.component.f.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.k.a.c f1807d;

    private c(Context context) {
        this.b = context == null ? o.a() : context.getApplicationContext();
        a.C0118a c0118a = new a.C0118a();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        com.bytedance.sdk.component.f.a aVarA = c0118a.a(10000L, timeUnit).b(10000L, timeUnit).c(10000L, timeUnit).a(true).a();
        this.c = aVarA;
        d dVarA = aVarA.e().a();
        if (dVarA != null) {
            dVarA.a(32);
        }
    }

    public static c a() {
        if (a == null) {
            synchronized (c.class) {
                if (a == null) {
                    a = new c(o.a());
                }
            }
        }
        return a;
    }

    private void d() {
        if (this.f1807d == null) {
            this.f1807d = new com.bytedance.sdk.openadsdk.k.a.c();
        }
    }

    public void a(int i, final ImageView imageView, final q qVar) {
        com.bytedance.sdk.openadsdk.f.d.a(qVar.f()).a(i).b(i).d(ad.d(o.a())).c(ad.c(o.a())).a(u.BITMAP).a(com.bytedance.sdk.openadsdk.f.c.a(qVar, qVar.f(), imageView));
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.k.c.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (imageView.getDrawable() != null) {
                        Intent intent = new Intent();
                        String strG = qVar.g();
                        intent.setAction("android.intent.action.VIEW");
                        intent.setData(Uri.parse(strG));
                        try {
                            com.bytedance.sdk.component.utils.b.a(o.a(), intent, null);
                        } catch (Exception unused) {
                        }
                    }
                }
            });
        }
    }

    public void a(n nVar, ImageView imageView, q qVar) {
        if (nVar == null || TextUtils.isEmpty(nVar.a()) || imageView == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.f.d.a(nVar).a(u.BITMAP).a(com.bytedance.sdk.openadsdk.f.c.a(qVar, nVar.a(), imageView));
    }

    public void a(String str, int i, int i2, ImageView imageView, q qVar) {
        com.bytedance.sdk.openadsdk.f.d.a(str).a(i).b(i2).d(ad.d(o.a())).c(ad.c(o.a())).a(u.BITMAP).a(com.bytedance.sdk.openadsdk.f.c.a(qVar, str, imageView));
    }

    public com.bytedance.sdk.component.f.a b() {
        return this.c;
    }

    public com.bytedance.sdk.openadsdk.k.a.c c() {
        d();
        return this.f1807d;
    }
}
