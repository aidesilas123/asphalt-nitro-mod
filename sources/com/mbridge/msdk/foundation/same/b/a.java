package com.mbridge.msdk.foundation.same.b;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: Directory.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private c a;
    private String b;
    private a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<a> f7100d;

    private void a(a aVar) {
        if (this.f7100d == null) {
            this.f7100d = new ArrayList();
        }
        aVar.c = this;
        this.f7100d.add(aVar);
    }

    public final c a() {
        return this.a;
    }

    public final void a(c cVar) {
        this.a = cVar;
    }

    public final void a(c cVar, String str) {
        a aVar = new a();
        aVar.a = cVar;
        aVar.b = str;
        a(aVar);
    }

    public final void a(String str) {
        this.b = str;
    }

    public final void a(List<a> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<a> it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public final String b() {
        return this.b;
    }

    public final a c() {
        return this.c;
    }

    public final List<a> d() {
        return this.f7100d;
    }
}
