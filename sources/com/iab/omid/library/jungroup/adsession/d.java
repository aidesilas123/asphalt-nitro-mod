package com.iab.omid.library.jungroup.adsession;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class d {
    public final j a;
    public final WebView b;
    public final ArrayList c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f4944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f4945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f4946f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f4947g;
    public final e h;

    public d(j jVar, WebView webView, String str, ArrayList arrayList, String str2, e eVar) {
        ArrayList arrayList2 = new ArrayList();
        this.c = arrayList2;
        this.f4944d = new HashMap();
        this.a = jVar;
        this.b = webView;
        this.f4945e = str;
        this.h = eVar;
        if (arrayList != null) {
            arrayList2.addAll(arrayList);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                k kVar = (k) it.next();
                this.f4944d.put(UUID.randomUUID().toString(), kVar);
            }
        }
        this.f4947g = null;
        this.f4946f = str2;
    }

    public final e a() {
        return this.h;
    }

    public final Map<String, k> b() {
        return Collections.unmodifiableMap(this.f4944d);
    }

    public final String c() {
        return this.f4945e;
    }

    public final WebView d() {
        return this.b;
    }
}
