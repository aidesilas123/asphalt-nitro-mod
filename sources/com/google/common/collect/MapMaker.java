package com.google.common.collect;

import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMakerInternalMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes3.dex */
public final class MapMaker {
    boolean a;
    int b = -1;
    int c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    MapMakerInternalMap.Strength f3635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    MapMakerInternalMap.Strength f3636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Equivalence<Object> f3637f;

    enum Dummy {
        VALUE
    }

    public MapMaker a(int i) {
        int i2 = this.c;
        Preconditions.checkState(i2 == -1, "concurrency level was already set to %s", i2);
        Preconditions.checkArgument(i > 0);
        this.c = i;
        return this;
    }

    int b() {
        int i = this.c;
        if (i == -1) {
            return 4;
        }
        return i;
    }

    int c() {
        int i = this.b;
        if (i == -1) {
            return 16;
        }
        return i;
    }

    Equivalence<Object> d() {
        return (Equivalence) MoreObjects.firstNonNull(this.f3637f, e().f());
    }

    MapMakerInternalMap.Strength e() {
        return (MapMakerInternalMap.Strength) MoreObjects.firstNonNull(this.f3635d, MapMakerInternalMap.Strength.a);
    }

    MapMakerInternalMap.Strength f() {
        return (MapMakerInternalMap.Strength) MoreObjects.firstNonNull(this.f3636e, MapMakerInternalMap.Strength.a);
    }

    public MapMaker g(int i) {
        int i2 = this.b;
        Preconditions.checkState(i2 == -1, "initial capacity was already set to %s", i2);
        Preconditions.checkArgument(i >= 0);
        this.b = i;
        return this;
    }

    MapMaker h(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.f3637f;
        Preconditions.checkState(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.f3637f = (Equivalence) Preconditions.checkNotNull(equivalence);
        this.a = true;
        return this;
    }

    public <K, V> ConcurrentMap<K, V> i() {
        return !this.a ? new ConcurrentHashMap(c(), 0.75f, b()) : MapMakerInternalMap.b(this);
    }

    MapMaker j(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.f3635d;
        Preconditions.checkState(strength2 == null, "Key strength was already set to %s", strength2);
        this.f3635d = (MapMakerInternalMap.Strength) Preconditions.checkNotNull(strength);
        if (strength != MapMakerInternalMap.Strength.a) {
            this.a = true;
        }
        return this;
    }

    MapMaker k(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.f3636e;
        Preconditions.checkState(strength2 == null, "Value strength was already set to %s", strength2);
        this.f3636e = (MapMakerInternalMap.Strength) Preconditions.checkNotNull(strength);
        if (strength != MapMakerInternalMap.Strength.a) {
            this.a = true;
        }
        return this;
    }

    public MapMaker l() {
        return j(MapMakerInternalMap.Strength.b);
    }

    public MapMaker m() {
        return k(MapMakerInternalMap.Strength.b);
    }

    public String toString() {
        MoreObjects.b stringHelper = MoreObjects.toStringHelper(this);
        int i = this.b;
        if (i != -1) {
            stringHelper.b("initialCapacity", i);
        }
        int i2 = this.c;
        if (i2 != -1) {
            stringHelper.b("concurrencyLevel", i2);
        }
        MapMakerInternalMap.Strength strength = this.f3635d;
        if (strength != null) {
            stringHelper.d("keyStrength", Ascii.toLowerCase(strength.toString()));
        }
        MapMakerInternalMap.Strength strength2 = this.f3636e;
        if (strength2 != null) {
            stringHelper.d("valueStrength", Ascii.toLowerCase(strength2.toString()));
        }
        if (this.f3637f != null) {
            stringHelper.j("keyEquivalence");
        }
        return stringHelper.toString();
    }
}
