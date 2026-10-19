package com.bytedance.sdk.component.a;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.component.a.k;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: compiled from: Environment.java */
/* JADX INFO: loaded from: classes.dex */
public class j {
    WebView a;
    a b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    h f621d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Context f622e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f623f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f624g;
    boolean h;
    m i;
    n j;
    boolean n;
    boolean o;
    k.b p;
    String c = "IESJSBridge";
    String k = "host";
    final Set<String> l = new LinkedHashSet();
    final Set<String> m = new LinkedHashSet();

    j() {
    }

    j(WebView webView) {
        this.a = webView;
    }

    private void c() {
        if ((this.a == null && !this.n && this.b == null) || ((TextUtils.isEmpty(this.c) && this.a != null) || this.f621d == null)) {
            throw new IllegalArgumentException("Requested arguments aren't set properly when building JsBridge.");
        }
    }

    public j a() {
        this.o = true;
        return this;
    }

    public j a(a aVar) {
        this.b = aVar;
        return this;
    }

    public j a(l lVar) {
        this.f621d = h.a(lVar);
        return this;
    }

    public j a(String str) {
        this.c = str;
        return this;
    }

    public j a(boolean z) {
        this.f623f = z;
        return this;
    }

    public j b(boolean z) {
        this.f624g = z;
        return this;
    }

    public r b() {
        c();
        return new r(this);
    }
}
