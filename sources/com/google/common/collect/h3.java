package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableTable;
import com.google.common.collect.l3;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: SparseImmutableTable.java */
/* JADX INFO: loaded from: classes3.dex */
final class h3<R, C, V> extends u2<R, C, V> {
    static final ImmutableTable<Object, Object, Object> c = new h3(ImmutableList.of(), ImmutableSet.of(), ImmutableSet.of());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ImmutableMap<R, ImmutableMap<C, V>> f3770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ImmutableMap<C, ImmutableMap<R, V>> f3771e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int[] f3772f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f3773g;

    /* JADX WARN: Multi-variable type inference failed */
    h3(ImmutableList<l3.a<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        ImmutableMap immutableMapR = Maps.r(immutableSet);
        LinkedHashMap linkedHashMapNewLinkedHashMap = Maps.newLinkedHashMap();
        o3<R> it = immutableSet.iterator();
        while (it.hasNext()) {
            linkedHashMapNewLinkedHashMap.put(it.next(), new LinkedHashMap());
        }
        LinkedHashMap linkedHashMapNewLinkedHashMap2 = Maps.newLinkedHashMap();
        o3<C> it2 = immutableSet2.iterator();
        while (it2.hasNext()) {
            linkedHashMapNewLinkedHashMap2.put(it2.next(), new LinkedHashMap());
        }
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i = 0; i < immutableList.size(); i++) {
            l3.a<R, C, V> aVar = immutableList.get(i);
            R rC = aVar.c();
            C cD = aVar.d();
            V value = aVar.getValue();
            Integer num = (Integer) immutableMapR.get(rC);
            Objects.requireNonNull(num);
            iArr[i] = num.intValue();
            Map map = (Map) linkedHashMapNewLinkedHashMap.get(rC);
            Objects.requireNonNull(map);
            Map map2 = map;
            iArr2[i] = map2.size();
            E(rC, cD, map2.put(cD, value), value);
            Map map3 = (Map) linkedHashMapNewLinkedHashMap2.get(cD);
            Objects.requireNonNull(map3);
            map3.put(rC, value);
        }
        this.f3772f = iArr;
        this.f3773g = iArr2;
        ImmutableMap.b bVar = new ImmutableMap.b(linkedHashMapNewLinkedHashMap.size());
        for (Map.Entry entry : linkedHashMapNewLinkedHashMap.entrySet()) {
            bVar.g(entry.getKey(), ImmutableMap.copyOf((Map) entry.getValue()));
        }
        this.f3770d = bVar.d();
        ImmutableMap.b bVar2 = new ImmutableMap.b(linkedHashMapNewLinkedHashMap2.size());
        for (Map.Entry entry2 : linkedHashMapNewLinkedHashMap2.entrySet()) {
            bVar2.g(entry2.getKey(), ImmutableMap.copyOf((Map) entry2.getValue()));
        }
        this.f3771e = bVar2.d();
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.l3
    /* JADX INFO: renamed from: C */
    public ImmutableMap<R, Map<C, V>> j() {
        return ImmutableMap.copyOf((Map) this.f3770d);
    }

    @Override // com.google.common.collect.u2
    l3.a<R, C, V> I(int i) {
        Map.Entry<R, ImmutableMap<C, V>> entry = this.f3770d.entrySet().e().get(this.f3772f[i]);
        ImmutableMap<C, V> value = entry.getValue();
        Map.Entry<C, V> entry2 = value.entrySet().e().get(this.f3773g[i]);
        return ImmutableTable.q(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    @Override // com.google.common.collect.u2
    V J(int i) {
        ImmutableMap<C, V> immutableMap = this.f3770d.values().e().get(this.f3772f[i]);
        return immutableMap.values().e().get(this.f3773g[i]);
    }

    @Override // com.google.common.collect.l3
    public int size() {
        return this.f3772f.length;
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.l3
    /* JADX INFO: renamed from: u */
    public ImmutableMap<C, Map<R, V>> n() {
        return ImmutableMap.copyOf((Map) this.f3771e);
    }

    @Override // com.google.common.collect.ImmutableTable
    ImmutableTable.b y() {
        ImmutableMap immutableMapR = Maps.r(z());
        int[] iArr = new int[t().size()];
        o3<l3.a<R, C, V>> it = t().iterator();
        int i = 0;
        while (it.hasNext()) {
            Integer num = (Integer) immutableMapR.get(it.next().d());
            Objects.requireNonNull(num);
            iArr[i] = num.intValue();
            i++;
        }
        return ImmutableTable.b.a(this, this.f3772f, iArr);
    }
}
