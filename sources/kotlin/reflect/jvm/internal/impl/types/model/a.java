package kotlin.reflect.jvm.internal.impl.types.model;

import java.util.ArrayList;

/* JADX INFO: compiled from: TypeSystemContext.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a extends ArrayList<i> implements h {
    public a(int i) {
        super(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof i) {
            return d((i) obj);
        }
        return false;
    }

    public /* bridge */ boolean d(i iVar) {
        return super.contains(iVar);
    }

    public /* bridge */ int e() {
        return super.size();
    }

    public /* bridge */ int f(i iVar) {
        return super.indexOf(iVar);
    }

    public /* bridge */ int g(i iVar) {
        return super.lastIndexOf(iVar);
    }

    public /* bridge */ boolean h(i iVar) {
        return super.remove(iVar);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof i) {
            return f((i) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof i) {
            return g((i) obj);
        }
        return -1;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof i) {
            return h((i) obj);
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return e();
    }
}
