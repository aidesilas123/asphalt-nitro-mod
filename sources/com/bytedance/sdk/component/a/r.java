package com.bytedance.sdk.component.a;

import android.webkit.WebView;
import com.bytedance.component.sdk.annotation.UiThread;
import com.bytedance.sdk.component.a.d;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: JsBridge2.java */
/* JADX INFO: loaded from: classes.dex */
public class r {
    static w a;
    private final a b;
    private final WebView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j f633d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<n> f634e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o f635f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f636g;

    r(j jVar) {
        w wVar;
        ArrayList arrayList = new ArrayList();
        this.f634e = arrayList;
        this.f636g = false;
        this.f633d = jVar;
        v vVarA = (!jVar.h || (wVar = a) == null) ? null : wVar.a(jVar.k);
        if (jVar.a != null) {
            a aVar = jVar.b;
            if (aVar == null) {
                this.b = new z();
            } else {
                this.b = aVar;
            }
        } else {
            this.b = jVar.b;
        }
        this.b.a(jVar, vVarA);
        this.c = jVar.a;
        arrayList.add(jVar.j);
        i.a(jVar.f623f);
        y.a(jVar.f624g);
    }

    public static j a(WebView webView) {
        return new j(webView);
    }

    private void b() {
        if (this.f636g) {
            i.a(new IllegalStateException("JsBridge2 is already released!!!"));
        }
    }

    public r a(String str, d.b bVar) {
        return a(str, (String) null, bVar);
    }

    public r a(String str, e<?, ?> eVar) {
        return a(str, (String) null, eVar);
    }

    @UiThread
    public r a(String str, String str2, d.b bVar) {
        b();
        this.b.f615g.a(str, bVar);
        o oVar = this.f635f;
        if (oVar != null) {
            oVar.a(str);
        }
        return this;
    }

    @UiThread
    public r a(String str, String str2, e<?, ?> eVar) {
        b();
        this.b.f615g.a(str, eVar);
        o oVar = this.f635f;
        if (oVar != null) {
            oVar.a(str);
        }
        return this;
    }

    public void a() {
        if (this.f636g) {
            return;
        }
        this.b.b();
        this.f636g = true;
        for (n nVar : this.f634e) {
            if (nVar != null) {
                nVar.a();
            }
        }
    }
}
