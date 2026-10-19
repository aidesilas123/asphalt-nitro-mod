package com.google.protobuf;

import com.google.protobuf.Internal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: ListFieldSchema.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class i0 {
    private static final i0 FULL_INSTANCE;
    private static final i0 LITE_INSTANCE;

    /* JADX INFO: compiled from: ListFieldSchema.java */
    private static final class b extends i0 {
        private static final Class<?> UNMODIFIABLE_LIST_CLASS = Collections.unmodifiableList(Collections.emptyList()).getClass();

        private b() {
            super();
        }

        static <E> List<E> getList(Object obj, long j) {
            return (List) b2.getObject(obj, j);
        }

        private static <L> List<L> mutableListAt(Object obj, long j, int i) {
            Object obj2;
            List<L> list = getList(obj, j);
            if (list.isEmpty()) {
                List<L> g0Var = list instanceof h0 ? new g0(i) : ((list instanceof h1) && (list instanceof Internal.j)) ? ((Internal.j) list).mutableCopyWithCapacity(i) : new ArrayList<>(i);
                b2.putObject(obj, j, g0Var);
                return g0Var;
            }
            if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i);
                arrayList.addAll(list);
                b2.putObject(obj, j, arrayList);
                obj2 = arrayList;
            } else {
                if (!(list instanceof a2)) {
                    if (!(list instanceof h1) || !(list instanceof Internal.j)) {
                        return list;
                    }
                    Internal.j jVar = (Internal.j) list;
                    if (jVar.isModifiable()) {
                        return list;
                    }
                    Internal.j jVarMutableCopyWithCapacity = jVar.mutableCopyWithCapacity(list.size() + i);
                    b2.putObject(obj, j, jVarMutableCopyWithCapacity);
                    return jVarMutableCopyWithCapacity;
                }
                g0 g0Var2 = new g0(list.size() + i);
                g0Var2.addAll((a2) list);
                b2.putObject(obj, j, g0Var2);
                obj2 = g0Var2;
            }
            return (List<L>) obj2;
        }

        @Override // com.google.protobuf.i0
        void makeImmutableListAt(Object obj, long j) {
            Object objUnmodifiableList;
            List list = (List) b2.getObject(obj, j);
            if (list instanceof h0) {
                objUnmodifiableList = ((h0) list).getUnmodifiableView();
            } else {
                if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof h1) && (list instanceof Internal.j)) {
                    Internal.j jVar = (Internal.j) list;
                    if (jVar.isModifiable()) {
                        jVar.makeImmutable();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            b2.putObject(obj, j, objUnmodifiableList);
        }

        @Override // com.google.protobuf.i0
        <E> void mergeListsAt(Object obj, Object obj2, long j) {
            List list = getList(obj2, j);
            List listMutableListAt = mutableListAt(obj, j, list.size());
            int size = listMutableListAt.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                listMutableListAt.addAll(list);
            }
            if (size > 0) {
                list = listMutableListAt;
            }
            b2.putObject(obj, j, list);
        }

        @Override // com.google.protobuf.i0
        <L> List<L> mutableListAt(Object obj, long j) {
            return mutableListAt(obj, j, 10);
        }
    }

    /* JADX INFO: compiled from: ListFieldSchema.java */
    private static final class c extends i0 {
        private c() {
            super();
        }

        static <E> Internal.j<E> getProtobufList(Object obj, long j) {
            return (Internal.j) b2.getObject(obj, j);
        }

        @Override // com.google.protobuf.i0
        void makeImmutableListAt(Object obj, long j) {
            getProtobufList(obj, j).makeImmutable();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1 */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7 */
        /* JADX WARN: Type inference failed for: r0v8 */
        /* JADX WARN: Type inference failed for: r6v1, types: [com.google.protobuf.Internal$j, java.util.Collection, java.util.List] */
        /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v3 */
        @Override // com.google.protobuf.i0
        <E> void mergeListsAt(Object obj, Object obj2, long j) {
            Internal.j protobufList = getProtobufList(obj, j);
            ?? protobufList2 = getProtobufList(obj2, j);
            int size = protobufList.size();
            int size2 = protobufList2.size();
            ?? r0 = protobufList;
            r0 = protobufList;
            if (size > 0 && size2 > 0) {
                boolean zIsModifiable = protobufList.isModifiable();
                ?? MutableCopyWithCapacity = protobufList;
                if (!zIsModifiable) {
                    MutableCopyWithCapacity = protobufList.mutableCopyWithCapacity(size2 + size);
                }
                MutableCopyWithCapacity.addAll(protobufList2);
                r0 = MutableCopyWithCapacity;
            }
            if (size > 0) {
                protobufList2 = r0;
            }
            b2.putObject(obj, j, (Object) protobufList2);
        }

        @Override // com.google.protobuf.i0
        <L> List<L> mutableListAt(Object obj, long j) {
            Internal.j protobufList = getProtobufList(obj, j);
            if (protobufList.isModifiable()) {
                return protobufList;
            }
            int size = protobufList.size();
            Internal.j jVarMutableCopyWithCapacity = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            b2.putObject(obj, j, jVarMutableCopyWithCapacity);
            return jVarMutableCopyWithCapacity;
        }
    }

    static {
        FULL_INSTANCE = new b();
        LITE_INSTANCE = new c();
    }

    private i0() {
    }

    static i0 full() {
        return FULL_INSTANCE;
    }

    static i0 lite() {
        return LITE_INSTANCE;
    }

    abstract void makeImmutableListAt(Object obj, long j);

    abstract <L> void mergeListsAt(Object obj, Object obj2, long j);

    abstract <L> List<L> mutableListAt(Object obj, long j);
}
