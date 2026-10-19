package com.fyber.inneractive.sdk.protobuf;

import com.fyber.inneractive.sdk.protobuf.y;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public class c0 extends c<String> implements d0, RandomAccess {
    public final List<Object> b;

    static {
        new c0(10).a = false;
    }

    public c0(int i) {
        this((ArrayList<Object>) new ArrayList(i));
    }

    public c0(ArrayList<Object> arrayList) {
        this.b = arrayList;
    }

    public static String a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof i ? ((i) obj).i() : new String((byte[]) obj, y.a);
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d0
    public d0 a() {
        return this.a ? new n1(this) : this;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d0
    public Object a(int i) {
        return this.b.get(i);
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d0
    public void a(i iVar) {
        e();
        this.b.add(iVar);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        e();
        this.b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.c, java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends String> collection) {
        e();
        if (collection instanceof d0) {
            collection = ((d0) collection).c();
        }
        boolean zAddAll = this.b.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(this.b.size(), collection);
    }

    @Override // com.fyber.inneractive.sdk.protobuf.y.j
    public y.j b(int i) {
        if (i < this.b.size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.b);
        return new c0((ArrayList<Object>) arrayList);
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d0
    public List<?> c() {
        return Collections.unmodifiableList(this.b);
    }

    @Override // com.fyber.inneractive.sdk.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        e();
        this.b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        String str;
        Object obj = this.b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            str = iVar.i();
            if (iVar.e()) {
                this.b.set(i, str);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            str = new String(bArr, y.a);
            if (q1.a(bArr)) {
                this.b.set(i, str);
            }
        }
        return str;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.c, java.util.AbstractList, java.util.List
    public Object remove(int i) {
        e();
        Object objRemove = this.b.remove(i);
        ((AbstractList) this).modCount++;
        return a(objRemove);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        e();
        return a(this.b.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.b.size();
    }
}
