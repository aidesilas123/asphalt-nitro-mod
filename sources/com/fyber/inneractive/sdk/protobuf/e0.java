package com.fyber.inneractive.sdk.protobuf;

import com.fyber.inneractive.sdk.protobuf.y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class e0 {
    public static final e0 a = new b();
    public static final e0 b = new c();

    public static final class b extends e0 {
        public static final Class<?> c = Collections.unmodifiableList(Collections.emptyList()).getClass();

        public b() {
            super();
        }

        public static <L> List<L> a(Object obj, long j, int i) {
            Object obj2;
            List<L> list = (List) p1.g(obj, j);
            if (list.isEmpty()) {
                List<L> c0Var = list instanceof d0 ? new c0(i) : ((list instanceof x0) && (list instanceof y.j)) ? ((y.j) list).b(i) : new ArrayList<>(i);
                p1.a(obj, j, c0Var);
                return c0Var;
            }
            if (c.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i);
                arrayList.addAll(list);
                p1.a(obj, j, arrayList);
                obj2 = arrayList;
            } else {
                if (!(list instanceof n1)) {
                    if (!(list instanceof x0) || !(list instanceof y.j)) {
                        return list;
                    }
                    y.j jVar = (y.j) list;
                    if (jVar.d()) {
                        return list;
                    }
                    y.j jVarB = jVar.b(list.size() + i);
                    p1.a(obj, j, jVarB);
                    return jVarB;
                }
                c0 c0Var2 = new c0(list.size() + i);
                c0Var2.addAll(c0Var2.b.size(), (n1) list);
                p1.a(obj, j, c0Var2);
                obj2 = c0Var2;
            }
            return (List<L>) obj2;
        }

        @Override // com.fyber.inneractive.sdk.protobuf.e0
        public void a(Object obj, long j) {
            Object objUnmodifiableList;
            List list = (List) p1.g(obj, j);
            if (list instanceof d0) {
                objUnmodifiableList = ((d0) list).a();
            } else {
                if (c.isAssignableFrom(list.getClass())) {
                    return;
                }
                if ((list instanceof x0) && (list instanceof y.j)) {
                    y.j jVar = (y.j) list;
                    if (jVar.d()) {
                        jVar.b();
                        return;
                    }
                    return;
                }
                objUnmodifiableList = Collections.unmodifiableList(list);
            }
            p1.a(obj, j, objUnmodifiableList);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.e0
        public <E> void a(Object obj, Object obj2, long j) {
            List list = (List) p1.g(obj2, j);
            List listA = a(obj, j, list.size());
            int size = listA.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                listA.addAll(list);
            }
            if (size > 0) {
                list = listA;
            }
            p1.a(obj, j, list);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.e0
        public <L> List<L> b(Object obj, long j) {
            return a(obj, j, 10);
        }
    }

    public static final class c extends e0 {
        public c() {
            super();
        }

        @Override // com.fyber.inneractive.sdk.protobuf.e0
        public void a(Object obj, long j) {
            ((y.j) p1.g(obj, j)).b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7 */
        /* JADX WARN: Type inference failed for: r0v8 */
        /* JADX WARN: Type inference failed for: r0v9 */
        /* JADX WARN: Type inference failed for: r6v2, types: [com.fyber.inneractive.sdk.protobuf.y$j, java.util.Collection, java.util.List] */
        /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v4 */
        @Override // com.fyber.inneractive.sdk.protobuf.e0
        public <E> void a(Object obj, Object obj2, long j) {
            y.j jVar = (y.j) p1.g(obj, j);
            ?? r6 = (y.j) p1.g(obj2, j);
            int size = jVar.size();
            int size2 = r6.size();
            ?? r0 = jVar;
            r0 = jVar;
            if (size > 0 && size2 > 0) {
                boolean zD = jVar.d();
                ?? B = jVar;
                if (!zD) {
                    B = jVar.b(size2 + size);
                }
                B.addAll(r6);
                r0 = B;
            }
            if (size > 0) {
                r6 = r0;
            }
            p1.a(obj, j, (Object) r6);
        }

        @Override // com.fyber.inneractive.sdk.protobuf.e0
        public <L> List<L> b(Object obj, long j) {
            y.j jVar = (y.j) p1.g(obj, j);
            if (jVar.d()) {
                return jVar;
            }
            int size = jVar.size();
            y.j jVarB = jVar.b(size == 0 ? 10 : size * 2);
            p1.a(obj, j, jVarB);
            return jVarB;
        }
    }

    public e0() {
    }

    public abstract void a(Object obj, long j);

    public abstract <L> void a(Object obj, Object obj2, long j);

    public abstract <L> List<L> b(Object obj, long j);
}
