package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: compiled from: LazyStringArrayList.java */
/* JADX INFO: loaded from: classes5.dex */
public class g extends AbstractList<String> implements RandomAccess, h {
    public static final h a = new g().getUnmodifiableView();
    private final List<Object> b;

    public g() {
        this.b = new ArrayList();
    }

    public g(h hVar) {
        this.b = new ArrayList(hVar.size());
        addAll(hVar);
    }

    private static ByteString c(Object obj) {
        return obj instanceof ByteString ? (ByteString) obj : obj instanceof String ? ByteString.copyFromUtf8((String) obj) : ByteString.copyFrom((byte[]) obj);
    }

    private static String d(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof ByteString ? ((ByteString) obj).v() : Internal.toStringUtf8((byte[]) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void add(int i, String str) {
        this.b.add(i, str);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends String> collection) {
        if (collection instanceof h) {
            collection = ((h) collection).getUnderlyingElements();
        }
        boolean zAddAll = this.b.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public String get(int i) {
        Object obj = this.b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String strV = byteString.v();
            if (byteString.h()) {
                this.b.set(i, strV);
            }
            return strV;
        }
        byte[] bArr = (byte[]) obj;
        String stringUtf8 = Internal.toStringUtf8(bArr);
        if (Internal.isValidUtf8(bArr)) {
            this.b.set(i, stringUtf8);
        }
        return stringUtf8;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public String remove(int i) {
        Object objRemove = this.b.remove(i);
        ((AbstractList) this).modCount++;
        return d(objRemove);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public String set(int i, String str) {
        return d(this.b.set(i, str));
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.h
    public ByteString getByteString(int i) {
        Object obj = this.b.get(i);
        ByteString byteStringC = c(obj);
        if (byteStringC != obj) {
            this.b.set(i, byteStringC);
        }
        return byteStringC;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.h
    public List<?> getUnderlyingElements() {
        return Collections.unmodifiableList(this.b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.h
    public h getUnmodifiableView() {
        return new q(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.h
    public void p(ByteString byteString) {
        this.b.add(byteString);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.b.size();
    }
}
