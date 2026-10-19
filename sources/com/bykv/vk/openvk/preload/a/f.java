package com.bykv.vk.openvk.preload.a;

import java.io.EOFException;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: compiled from: Gson.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {
    private static final com.bykv.vk.openvk.preload.a.c.a<?> r = com.bykv.vk.openvk.preload.a.c.a.a(Object.class);
    final List<u> a;
    final com.bykv.vk.openvk.preload.a.b.d b;
    final e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Map<Type, h<?>> f537d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f538e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final boolean f539f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final boolean f540g;
    final boolean h;
    final boolean i;
    public final boolean j;
    final boolean k;
    final String l;
    final int m;
    final int n;
    final s o;
    final List<u> p;
    final List<u> q;
    private final ThreadLocal<Map<com.bykv.vk.openvk.preload.a.c.a<?>, a<?>>> s;
    private final Map<com.bykv.vk.openvk.preload.a.c.a<?>, t<?>> t;
    private final com.bykv.vk.openvk.preload.a.b.c u;
    private final com.bykv.vk.openvk.preload.a.b.a.d v;

    /* JADX INFO: compiled from: Gson.java */
    static class a<T> extends t<T> {
        t<T> a;

        a() {
        }

        @Override // com.bykv.vk.openvk.preload.a.t
        public final T a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            t<T> tVar = this.a;
            if (tVar != null) {
                return tVar.a(aVar);
            }
            throw new IllegalStateException();
        }

        @Override // com.bykv.vk.openvk.preload.a.t
        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T t) throws IOException {
            t<T> tVar = this.a;
            if (tVar == null) {
                throw new IllegalStateException();
            }
            tVar.a(cVar, t);
        }
    }

    public f() {
        this(com.bykv.vk.openvk.preload.a.b.d.a, d.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, s.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    public f(com.bykv.vk.openvk.preload.a.b.d dVar, e eVar, Map<Type, h<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, s sVar, String str, int i, int i2, List<u> list, List<u> list2, List<u> list3) {
        this.s = new ThreadLocal<>();
        this.t = new ConcurrentHashMap();
        this.b = dVar;
        this.c = eVar;
        this.f537d = map;
        com.bykv.vk.openvk.preload.a.b.c cVar = new com.bykv.vk.openvk.preload.a.b.c(map);
        this.u = cVar;
        this.f538e = z;
        this.f539f = z2;
        this.f540g = z3;
        this.h = z4;
        this.i = z5;
        this.j = z6;
        this.k = z7;
        this.o = sVar;
        this.l = str;
        this.m = i;
        this.n = i2;
        this.p = list;
        this.q = list2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.Y);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.h.a);
        arrayList.add(dVar);
        arrayList.addAll(list3);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.D);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.m);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.f501g);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.i);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.k);
        final t<Number> tVar = sVar == s.DEFAULT ? com.bykv.vk.openvk.preload.a.b.a.n.t : new t<Number>() { // from class: com.bykv.vk.openvk.preload.a.f.3
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return Long.valueOf(aVar.m());
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar2, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    cVar2.e();
                } else {
                    cVar2.b(number2.toString());
                }
            }
        };
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.a(Long.TYPE, Long.class, tVar));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.a(Double.TYPE, Double.class, z7 ? com.bykv.vk.openvk.preload.a.b.a.n.v : new t<Number>() { // from class: com.bykv.vk.openvk.preload.a.f.1
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return Double.valueOf(aVar.l());
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar2, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    cVar2.e();
                } else {
                    f.a(number2.doubleValue());
                    cVar2.a(number2);
                }
            }
        }));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.a(Float.TYPE, Float.class, z7 ? com.bykv.vk.openvk.preload.a.b.a.n.u : new t<Number>() { // from class: com.bykv.vk.openvk.preload.a.f.2
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return Float.valueOf((float) aVar.l());
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar2, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    cVar2.e();
                } else {
                    f.a(number2.floatValue());
                    cVar2.a(number2);
                }
            }
        }));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.x);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.o);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.q);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.a(AtomicLong.class, new t<AtomicLong>() { // from class: com.bykv.vk.openvk.preload.a.f.4
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ AtomicLong a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return new AtomicLong(((Number) tVar.a(aVar)).longValue());
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar2, AtomicLong atomicLong) throws IOException {
                tVar.a(cVar2, Long.valueOf(atomicLong.get()));
            }
        }.a()));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.a(AtomicLongArray.class, new t<AtomicLongArray>() { // from class: com.bykv.vk.openvk.preload.a.f.5
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ AtomicLongArray a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                ArrayList arrayList2 = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList2.add(Long.valueOf(((Number) tVar.a(aVar)).longValue()));
                }
                aVar.b();
                int size = arrayList2.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i3 = 0; i3 < size; i3++) {
                    atomicLongArray.set(i3, ((Long) arrayList2.get(i3)).longValue());
                }
                return atomicLongArray;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar2, AtomicLongArray atomicLongArray) throws IOException {
                AtomicLongArray atomicLongArray2 = atomicLongArray;
                cVar2.a();
                int length = atomicLongArray2.length();
                for (int i3 = 0; i3 < length; i3++) {
                    tVar.a(cVar2, Long.valueOf(atomicLongArray2.get(i3)));
                }
                cVar2.b();
            }
        }.a()));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.s);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.z);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.F);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.H);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.a(BigDecimal.class, com.bykv.vk.openvk.preload.a.b.a.n.B));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.a(BigInteger.class, com.bykv.vk.openvk.preload.a.b.a.n.C));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.J);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.L);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.P);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.R);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.W);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.N);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.f498d);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.c.a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.U);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.k.a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.j.a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.S);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.a.a);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.b);
        arrayList.add(new com.bykv.vk.openvk.preload.a.b.a.b(cVar));
        arrayList.add(new com.bykv.vk.openvk.preload.a.b.a.g(cVar, z2));
        com.bykv.vk.openvk.preload.a.b.a.d dVar2 = new com.bykv.vk.openvk.preload.a.b.a.d(cVar);
        this.v = dVar2;
        arrayList.add(dVar2);
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.n.Z);
        arrayList.add(new com.bykv.vk.openvk.preload.a.b.a.i(cVar, eVar, dVar, dVar2));
        this.a = Collections.unmodifiableList(arrayList);
    }

    private com.bykv.vk.openvk.preload.a.d.c a(Writer writer) throws IOException {
        if (this.f540g) {
            writer.write(")]}'\n");
        }
        com.bykv.vk.openvk.preload.a.d.c cVar = new com.bykv.vk.openvk.preload.a.d.c(writer);
        if (this.i) {
            cVar.c("  ");
        }
        cVar.f534e = this.f538e;
        return cVar;
    }

    private String a(k kVar) {
        StringWriter stringWriter = new StringWriter();
        a(kVar, stringWriter);
        return stringWriter.toString();
    }

    private String a(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private void a(k kVar, com.bykv.vk.openvk.preload.a.d.c cVar) throws l {
        boolean z = cVar.c;
        cVar.c = true;
        boolean z2 = cVar.f533d;
        cVar.f533d = this.h;
        boolean z3 = cVar.f534e;
        cVar.f534e = this.f538e;
        try {
            try {
                com.bykv.vk.openvk.preload.a.b.k.a(kVar, cVar);
            } catch (IOException e2) {
                throw new l(e2);
            } catch (AssertionError e3) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e3.getMessage());
                assertionError.initCause(e3);
                throw assertionError;
            }
        } finally {
            cVar.c = z;
            cVar.f533d = z2;
            cVar.f534e = z3;
        }
    }

    private void a(k kVar, Appendable appendable) throws l {
        try {
            a(kVar, a(com.bykv.vk.openvk.preload.a.b.k.a(appendable)));
        } catch (IOException e2) {
            throw new l(e2);
        }
    }

    public static void a(Object obj, com.bykv.vk.openvk.preload.a.d.a aVar) {
        if (obj != null) {
            try {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.END_DOCUMENT) {
                } else {
                    throw new l("JSON document was not fully consumed.");
                }
            } catch (com.bykv.vk.openvk.preload.a.d.d e2) {
                throw new r(e2);
            } catch (IOException e3) {
                throw new l(e3);
            }
        }
    }

    private void a(Object obj, Type type, com.bykv.vk.openvk.preload.a.d.c cVar) throws l {
        t tVarA = a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type));
        boolean z = cVar.c;
        cVar.c = true;
        boolean z2 = cVar.f533d;
        cVar.f533d = this.h;
        boolean z3 = cVar.f534e;
        cVar.f534e = this.f538e;
        try {
            try {
                try {
                    tVarA.a(cVar, obj);
                } catch (IOException e2) {
                    throw new l(e2);
                }
            } catch (AssertionError e3) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e3.getMessage());
                assertionError.initCause(e3);
                throw assertionError;
            }
        } finally {
            cVar.c = z;
            cVar.f533d = z2;
            cVar.f534e = z3;
        }
    }

    private void a(Object obj, Type type, Appendable appendable) throws l {
        try {
            a(obj, type, a(com.bykv.vk.openvk.preload.a.b.k.a(appendable)));
        } catch (IOException e2) {
            throw new l(e2);
        }
    }

    public final <T> t<T> a(com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        t<T> tVar = (t) this.t.get(aVar == null ? r : aVar);
        if (tVar != null) {
            return tVar;
        }
        Map<com.bykv.vk.openvk.preload.a.c.a<?>, a<?>> map = this.s.get();
        boolean z = false;
        if (map == null) {
            map = new HashMap<>();
            this.s.set(map);
            z = true;
        }
        a<?> aVar2 = map.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a<?> aVar3 = new a<>();
            map.put(aVar, aVar3);
            Iterator<u> it = this.a.iterator();
            while (it.hasNext()) {
                t<T> tVarA = it.next().a(this, aVar);
                if (tVarA != null) {
                    if (aVar3.a != null) {
                        throw new AssertionError();
                    }
                    aVar3.a = tVarA;
                    this.t.put(aVar, tVarA);
                    return tVarA;
                }
            }
            throw new IllegalArgumentException("GSON (pangle-v3200) cannot handle ".concat(String.valueOf(aVar)));
        } finally {
            map.remove(aVar);
            if (z) {
                this.s.remove();
            }
        }
    }

    public final <T> t<T> a(u uVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
        if (!this.a.contains(uVar)) {
            uVar = this.v;
        }
        boolean z = false;
        for (u uVar2 : this.a) {
            if (z) {
                t<T> tVarA = uVar2.a(this, aVar);
                if (tVarA != null) {
                    return tVarA;
                }
            } else if (uVar2 == uVar) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(aVar)));
    }

    public final <T> t<T> a(Class<T> cls) {
        return a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a((Class) cls));
    }

    public final <T> T a(com.bykv.vk.openvk.preload.a.d.a aVar, Type type) throws l, r {
        boolean z = aVar.a;
        boolean z2 = true;
        aVar.a = true;
        try {
            try {
                try {
                    aVar.f();
                    z2 = false;
                    return a((com.bykv.vk.openvk.preload.a.c.a) com.bykv.vk.openvk.preload.a.c.a.a(type)).a(aVar);
                } catch (EOFException e2) {
                    if (!z2) {
                        throw new r(e2);
                    }
                    aVar.a = z;
                    return null;
                } catch (AssertionError e3) {
                    AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e3.getMessage());
                    assertionError.initCause(e3);
                    throw assertionError;
                }
            } catch (IOException e4) {
                throw new r(e4);
            } catch (IllegalStateException e5) {
                throw new r(e5);
            }
        } finally {
            aVar.a = z;
        }
    }

    public final String a(Object obj) {
        return obj == null ? a((k) m.a) : a(obj, obj.getClass());
    }

    public final String toString() {
        return "{serializeNulls:" + this.f538e + ",factories:" + this.a + ",instanceCreators:" + this.u + "}";
    }
}
