package com.fyber.inneractive.sdk.model.vast;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes2.dex */
public class b implements com.fyber.inneractive.sdk.response.i {
    public String a;
    public String b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public PriorityQueue<o> f2073d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public l f2075f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public PriorityQueue<c> f2076g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<com.fyber.inneractive.sdk.measurement.f> f2074e = new ArrayList();
    public c h = null;
    public int i = 0;
    public int j = 0;
    public final List<o> k = new ArrayList();
    public final List<c> l = new ArrayList();
    public final List<d> m = new ArrayList();
    public Map<t, List<String>> c = new HashMap();

    public b(Comparator<o> comparator, Comparator<c> comparator2) {
        this.f2073d = new PriorityQueue<>(1, comparator);
        this.f2076g = new PriorityQueue<>(1, comparator2);
    }

    public int a() {
        return this.f2073d.size();
    }

    @Override // com.fyber.inneractive.sdk.response.i
    public List<String> a(t tVar) {
        Map<t, List<String>> map = this.c;
        if (map == null) {
            return null;
        }
        return map.get(tVar);
    }

    public void a(t tVar, String str) {
        List<String> arrayList = this.c.get(tVar);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.c.put(tVar, arrayList);
        }
        arrayList.add(str);
    }

    public List<o> b() {
        return new ArrayList(this.f2073d);
    }

    public List<com.fyber.inneractive.sdk.measurement.f> c() {
        return this.f2074e;
    }
}
