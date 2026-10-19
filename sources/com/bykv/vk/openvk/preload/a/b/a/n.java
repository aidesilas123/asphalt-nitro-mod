package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.t;
import com.bykv.vk.openvk.preload.a.u;
import com.json.o2;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* JADX INFO: compiled from: TypeAdapters.java */
/* JADX INFO: loaded from: classes.dex */
public final class n {
    public static final t<String> A;
    public static final t<BigDecimal> B;
    public static final t<BigInteger> C;
    public static final u D;
    public static final t<StringBuilder> E;
    public static final u F;
    public static final t<StringBuffer> G;
    public static final u H;
    public static final t<URL> I;
    public static final u J;
    public static final t<URI> K;
    public static final u L;
    public static final t<InetAddress> M;
    public static final u N;
    public static final t<UUID> O;
    public static final u P;
    public static final t<Currency> Q;
    public static final u R;
    public static final u S;
    public static final t<Calendar> T;
    public static final u U;
    public static final t<Locale> V;
    public static final u W;
    public static final t<com.bykv.vk.openvk.preload.a.k> X;
    public static final u Y;
    public static final u Z;
    public static final t<Class> a;
    public static final u b;
    public static final t<BitSet> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final u f498d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final t<Boolean> f499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final t<Boolean> f500f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final u f501g;
    public static final t<Number> h;
    public static final u i;
    public static final t<Number> j;
    public static final u k;
    public static final t<Number> l;
    public static final u m;
    public static final t<AtomicInteger> n;
    public static final u o;
    public static final t<AtomicBoolean> p;
    public static final u q;
    public static final t<AtomicIntegerArray> r;
    public static final u s;
    public static final t<Number> t;
    public static final t<Number> u;
    public static final t<Number> v;
    public static final t<Number> w;
    public static final u x;
    public static final t<Character> y;
    public static final u z;

    /* JADX INFO: renamed from: com.bykv.vk.openvk.preload.a.b.a.n$30, reason: invalid class name */
    /* JADX INFO: compiled from: TypeAdapters.java */
    static /* synthetic */ class AnonymousClass30 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[com.bykv.vk.openvk.preload.a.d.b.values().length];
            a = iArr;
            try {
                iArr[com.bykv.vk.openvk.preload.a.d.b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[com.bykv.vk.openvk.preload.a.d.b.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[com.bykv.vk.openvk.preload.a.d.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[com.bykv.vk.openvk.preload.a.d.b.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[com.bykv.vk.openvk.preload.a.d.b.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[com.bykv.vk.openvk.preload.a.d.b.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[com.bykv.vk.openvk.preload.a.d.b.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[com.bykv.vk.openvk.preload.a.d.b.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[com.bykv.vk.openvk.preload.a.d.b.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[com.bykv.vk.openvk.preload.a.d.b.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    static final class a<T extends Enum<T>> extends t<T> {
        private final Map<String, T> a = new HashMap();
        private final Map<T, String> b = new HashMap();

        public a(Class<T> cls) {
            try {
                for (T t : cls.getEnumConstants()) {
                    String strName = t.name();
                    com.bykv.vk.openvk.preload.a.a.c cVar = (com.bykv.vk.openvk.preload.a.a.c) cls.getField(strName).getAnnotation(com.bykv.vk.openvk.preload.a.a.c.class);
                    if (cVar != null) {
                        strName = cVar.a();
                        for (String str : cVar.b()) {
                            this.a.put(str, t);
                        }
                    }
                    this.a.put(strName, t);
                    this.b.put(t, strName);
                }
            } catch (NoSuchFieldException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.bykv.vk.openvk.preload.a.t
        public final /* synthetic */ Object a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                return this.a.get(aVar.i());
            }
            aVar.k();
            return null;
        }

        @Override // com.bykv.vk.openvk.preload.a.t
        public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Object obj) throws IOException {
            Enum r3 = (Enum) obj;
            cVar.b(r3 == null ? null : this.b.get(r3));
        }
    }

    static {
        t<Class> tVarA = new t<Class>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.1
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Class a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Class cls) throws IOException {
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
            }
        }.a();
        a = tVarA;
        b = a(Class.class, tVarA);
        t<BitSet> tVarA2 = new t<BitSet>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.12
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            private static java.util.BitSet b(com.bykv.vk.openvk.preload.a.d.a r7) throws java.io.IOException {
                /*
                    java.util.BitSet r0 = new java.util.BitSet
                    r0.<init>()
                    r7.a()
                    com.bykv.vk.openvk.preload.a.d.b r1 = r7.f()
                    r2 = 0
                    r3 = 0
                Le:
                    com.bykv.vk.openvk.preload.a.d.b r4 = com.bykv.vk.openvk.preload.a.d.b.END_ARRAY
                    if (r1 == r4) goto L67
                    int[] r4 = com.bykv.vk.openvk.preload.a.b.a.n.AnonymousClass30.a
                    int r5 = r1.ordinal()
                    r4 = r4[r5]
                    r5 = 1
                    if (r4 == r5) goto L55
                    r6 = 2
                    if (r4 == r6) goto L50
                    r6 = 3
                    if (r4 != r6) goto L40
                    java.lang.String r1 = r7.i()
                    int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.NumberFormatException -> L30
                    if (r1 == 0) goto L2e
                    goto L5b
                L2e:
                    r5 = 0
                    goto L5b
                L30:
                    com.bykv.vk.openvk.preload.a.r r7 = new com.bykv.vk.openvk.preload.a.r
                    java.lang.String r0 = java.lang.String.valueOf(r1)
                    java.lang.String r1 = "Error: Expecting: bitset number value (1, 0), Found: "
                    java.lang.String r0 = r1.concat(r0)
                    r7.<init>(r0)
                    throw r7
                L40:
                    com.bykv.vk.openvk.preload.a.r r7 = new com.bykv.vk.openvk.preload.a.r
                    java.lang.String r0 = java.lang.String.valueOf(r1)
                    java.lang.String r1 = "Invalid bitset value type: "
                    java.lang.String r0 = r1.concat(r0)
                    r7.<init>(r0)
                    throw r7
                L50:
                    boolean r5 = r7.j()
                    goto L5b
                L55:
                    int r1 = r7.n()
                    if (r1 == 0) goto L2e
                L5b:
                    if (r5 == 0) goto L60
                    r0.set(r3)
                L60:
                    int r3 = r3 + 1
                    com.bykv.vk.openvk.preload.a.d.b r1 = r7.f()
                    goto Le
                L67:
                    r7.b()
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.preload.a.b.a.n.AnonymousClass12.b(com.bykv.vk.openvk.preload.a.d.a):java.util.BitSet");
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ BitSet a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, BitSet bitSet) throws IOException {
                BitSet bitSet2 = bitSet;
                cVar.a();
                int length = bitSet2.length();
                for (int i2 = 0; i2 < length; i2++) {
                    cVar.a(bitSet2.get(i2) ? 1L : 0L);
                }
                cVar.b();
            }
        }.a();
        c = tVarA2;
        f498d = a(BitSet.class, tVarA2);
        t<Boolean> tVar = new t<Boolean>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.23
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Boolean a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
                if (bVarF != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return bVarF == com.bykv.vk.openvk.preload.a.d.b.STRING ? Boolean.valueOf(Boolean.parseBoolean(aVar.i())) : Boolean.valueOf(aVar.j());
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Boolean bool) throws IOException {
                cVar.a(bool);
            }
        };
        f499e = tVar;
        f500f = new t<Boolean>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.31
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Boolean a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return Boolean.valueOf(aVar.i());
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Boolean bool) throws IOException {
                Boolean bool2 = bool;
                cVar.b(bool2 == null ? "null" : bool2.toString());
            }
        };
        f501g = a(Boolean.TYPE, Boolean.class, tVar);
        t<Number> tVar2 = new t<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.32
            private static Number b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.k();
                    return null;
                }
                try {
                    return Byte.valueOf((byte) aVar.n());
                } catch (NumberFormatException e2) {
                    throw new r(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        h = tVar2;
        i = a(Byte.TYPE, Byte.class, tVar2);
        t<Number> tVar3 = new t<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.33
            private static Number b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.k();
                    return null;
                }
                try {
                    return Short.valueOf((short) aVar.n());
                } catch (NumberFormatException e2) {
                    throw new r(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        j = tVar3;
        k = a(Short.TYPE, Short.class, tVar3);
        t<Number> tVar4 = new t<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.34
            private static Number b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.k();
                    return null;
                }
                try {
                    return Integer.valueOf(aVar.n());
                } catch (NumberFormatException e2) {
                    throw new r(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        l = tVar4;
        m = a(Integer.TYPE, Integer.class, tVar4);
        t<AtomicInteger> tVarA3 = new t<AtomicInteger>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.35
            private static AtomicInteger b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                try {
                    return new AtomicInteger(aVar.n());
                } catch (NumberFormatException e2) {
                    throw new r(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ AtomicInteger a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, AtomicInteger atomicInteger) throws IOException {
                cVar.a(atomicInteger.get());
            }
        }.a();
        n = tVarA3;
        o = a(AtomicInteger.class, tVarA3);
        t<AtomicBoolean> tVarA4 = new t<AtomicBoolean>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.36
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ AtomicBoolean a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return new AtomicBoolean(aVar.j());
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, AtomicBoolean atomicBoolean) throws IOException {
                cVar.a(atomicBoolean.get());
            }
        }.a();
        p = tVarA4;
        q = a(AtomicBoolean.class, tVarA4);
        t<AtomicIntegerArray> tVarA5 = new t<AtomicIntegerArray>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.2
            private static AtomicIntegerArray b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    try {
                        arrayList.add(Integer.valueOf(aVar.n()));
                    } catch (NumberFormatException e2) {
                        throw new r(e2);
                    }
                }
                aVar.b();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
                }
                return atomicIntegerArray;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ AtomicIntegerArray a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
                cVar.a();
                int length = atomicIntegerArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    cVar.a(r6.get(i2));
                }
                cVar.b();
            }
        }.a();
        r = tVarA5;
        s = a(AtomicIntegerArray.class, tVarA5);
        t = new t<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.3
            private static Number b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.k();
                    return null;
                }
                try {
                    return Long.valueOf(aVar.m());
                } catch (NumberFormatException e2) {
                    throw new r(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        u = new t<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.4
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return Float.valueOf((float) aVar.l());
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        v = new t<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.5
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return Double.valueOf(aVar.l());
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        t<Number> tVar5 = new t<Number>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.6
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Number a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
                int i2 = AnonymousClass30.a[bVarF.ordinal()];
                if (i2 == 1 || i2 == 3) {
                    return new com.bykv.vk.openvk.preload.a.b.g(aVar.i());
                }
                if (i2 != 4) {
                    throw new r("Expecting number, got: ".concat(String.valueOf(bVarF)));
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        w = tVar5;
        x = a(Number.class, tVar5);
        t<Character> tVar6 = new t<Character>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.7
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Character a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.k();
                    return null;
                }
                String strI = aVar.i();
                if (strI.length() == 1) {
                    return Character.valueOf(strI.charAt(0));
                }
                throw new r("Expecting character, got: ".concat(strI));
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Character ch) throws IOException {
                Character ch2 = ch;
                cVar.b(ch2 == null ? null : String.valueOf(ch2));
            }
        };
        y = tVar6;
        z = a(Character.TYPE, Character.class, tVar6);
        t<String> tVar7 = new t<String>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.8
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ String a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                com.bykv.vk.openvk.preload.a.d.b bVarF = aVar.f();
                if (bVarF != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return bVarF == com.bykv.vk.openvk.preload.a.d.b.BOOLEAN ? Boolean.toString(aVar.j()) : aVar.i();
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, String str) throws IOException {
                cVar.b(str);
            }
        };
        A = tVar7;
        B = new t<BigDecimal>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.9
            private static BigDecimal b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.k();
                    return null;
                }
                try {
                    return new BigDecimal(aVar.i());
                } catch (NumberFormatException e2) {
                    throw new r(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ BigDecimal a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, BigDecimal bigDecimal) throws IOException {
                cVar.a(bigDecimal);
            }
        };
        C = new t<BigInteger>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.10
            private static BigInteger b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.k();
                    return null;
                }
                try {
                    return new BigInteger(aVar.i());
                } catch (NumberFormatException e2) {
                    throw new r(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ BigInteger a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, BigInteger bigInteger) throws IOException {
                cVar.a(bigInteger);
            }
        };
        D = a(String.class, tVar7);
        t<StringBuilder> tVar8 = new t<StringBuilder>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.11
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ StringBuilder a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return new StringBuilder(aVar.i());
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, StringBuilder sb) throws IOException {
                StringBuilder sb2 = sb;
                cVar.b(sb2 == null ? null : sb2.toString());
            }
        };
        E = tVar8;
        F = a(StringBuilder.class, tVar8);
        t<StringBuffer> tVar9 = new t<StringBuffer>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.13
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ StringBuffer a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return new StringBuffer(aVar.i());
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, StringBuffer stringBuffer) throws IOException {
                StringBuffer stringBuffer2 = stringBuffer;
                cVar.b(stringBuffer2 == null ? null : stringBuffer2.toString());
            }
        };
        G = tVar9;
        H = a(StringBuffer.class, tVar9);
        t<URL> tVar10 = new t<URL>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.14
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ URL a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.k();
                    return null;
                }
                String strI = aVar.i();
                if ("null".equals(strI)) {
                    return null;
                }
                return new URL(strI);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, URL url) throws IOException {
                URL url2 = url;
                cVar.b(url2 == null ? null : url2.toExternalForm());
            }
        };
        I = tVar10;
        J = a(URL.class, tVar10);
        t<URI> tVar11 = new t<URI>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.15
            private static URI b(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.k();
                    return null;
                }
                try {
                    String strI = aVar.i();
                    if ("null".equals(strI)) {
                        return null;
                    }
                    return new URI(strI);
                } catch (URISyntaxException e2) {
                    throw new com.bykv.vk.openvk.preload.a.l(e2);
                }
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ URI a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return b(aVar);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, URI uri) throws IOException {
                URI uri2 = uri;
                cVar.b(uri2 == null ? null : uri2.toASCIIString());
            }
        };
        K = tVar11;
        L = a(URI.class, tVar11);
        t<InetAddress> tVar12 = new t<InetAddress>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.16
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ InetAddress a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return InetAddress.getByName(aVar.i());
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, InetAddress inetAddress) throws IOException {
                InetAddress inetAddress2 = inetAddress;
                cVar.b(inetAddress2 == null ? null : inetAddress2.getHostAddress());
            }
        };
        M = tVar12;
        N = b(InetAddress.class, tVar12);
        t<UUID> tVar13 = new t<UUID>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.17
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ UUID a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    return UUID.fromString(aVar.i());
                }
                aVar.k();
                return null;
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, UUID uuid) throws IOException {
                UUID uuid2 = uuid;
                cVar.b(uuid2 == null ? null : uuid2.toString());
            }
        };
        O = tVar13;
        P = a(UUID.class, tVar13);
        t<Currency> tVarA6 = new t<Currency>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.18
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Currency a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                return Currency.getInstance(aVar.i());
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Currency currency) throws IOException {
                cVar.b(currency.getCurrencyCode());
            }
        }.a();
        Q = tVarA6;
        R = a(Currency.class, tVarA6);
        S = new u() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.19
            @Override // com.bykv.vk.openvk.preload.a.u
            public final <T> t<T> a(com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                if (aVar.b != Timestamp.class) {
                    return null;
                }
                final t<T> tVarA7 = fVar.a((Class) Date.class);
                return (t<T>) new t<Timestamp>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.19.1
                    @Override // com.bykv.vk.openvk.preload.a.t
                    public final /* synthetic */ Timestamp a(com.bykv.vk.openvk.preload.a.d.a aVar2) throws IOException {
                        Date date = (Date) tVarA7.a(aVar2);
                        if (date != null) {
                            return new Timestamp(date.getTime());
                        }
                        return null;
                    }

                    @Override // com.bykv.vk.openvk.preload.a.t
                    public final /* bridge */ /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Timestamp timestamp) throws IOException {
                        tVarA7.a(cVar, timestamp);
                    }
                };
            }
        };
        final t<Calendar> tVar14 = new t<Calendar>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.20
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Calendar a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.k();
                    return null;
                }
                aVar.c();
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (aVar.f() != com.bykv.vk.openvk.preload.a.d.b.END_OBJECT) {
                    String strH = aVar.h();
                    int iN = aVar.n();
                    if ("year".equals(strH)) {
                        i2 = iN;
                    } else if ("month".equals(strH)) {
                        i3 = iN;
                    } else if ("dayOfMonth".equals(strH)) {
                        i4 = iN;
                    } else if ("hourOfDay".equals(strH)) {
                        i5 = iN;
                    } else if ("minute".equals(strH)) {
                        i6 = iN;
                    } else if ("second".equals(strH)) {
                        i7 = iN;
                    }
                }
                aVar.d();
                return new GregorianCalendar(i2, i3, i4, i5, i6, i7);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Calendar calendar) throws IOException {
                if (calendar == null) {
                    cVar.e();
                    return;
                }
                cVar.c();
                cVar.a("year");
                cVar.a(r4.get(1));
                cVar.a("month");
                cVar.a(r4.get(2));
                cVar.a("dayOfMonth");
                cVar.a(r4.get(5));
                cVar.a("hourOfDay");
                cVar.a(r4.get(11));
                cVar.a("minute");
                cVar.a(r4.get(12));
                cVar.a("second");
                cVar.a(r4.get(13));
                cVar.d();
            }
        };
        T = tVar14;
        final Class<Calendar> cls = Calendar.class;
        final Class<GregorianCalendar> cls2 = GregorianCalendar.class;
        U = new u() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.28
            @Override // com.bykv.vk.openvk.preload.a.u
            public final <T> t<T> a(com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                Class<? super T> cls3 = aVar.b;
                if (cls3 == cls || cls3 == cls2) {
                    return tVar14;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + tVar14 + o2.i.f6491e;
            }
        };
        t<Locale> tVar15 = new t<Locale>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.21
            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ Locale a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
                    aVar.k();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(aVar.i(), "_");
                String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                return (strNextToken2 == null && strNextToken3 == null) ? new Locale(strNextToken) : strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
            }

            @Override // com.bykv.vk.openvk.preload.a.t
            public final /* synthetic */ void a(com.bykv.vk.openvk.preload.a.d.c cVar, Locale locale) throws IOException {
                Locale locale2 = locale;
                cVar.b(locale2 == null ? null : locale2.toString());
            }
        };
        V = tVar15;
        W = a(Locale.class, tVar15);
        t<com.bykv.vk.openvk.preload.a.k> tVar16 = new t<com.bykv.vk.openvk.preload.a.k>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.22
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.bykv.vk.openvk.preload.a.t
            public void a(com.bykv.vk.openvk.preload.a.d.c cVar, com.bykv.vk.openvk.preload.a.k kVar) throws IOException {
                if (kVar == null || (kVar instanceof com.bykv.vk.openvk.preload.a.m)) {
                    cVar.e();
                    return;
                }
                if (kVar instanceof p) {
                    p pVarG = kVar.g();
                    Object obj = pVarG.a;
                    if (obj instanceof Number) {
                        cVar.a(pVarG.a());
                        return;
                    } else if (obj instanceof Boolean) {
                        cVar.a(pVarG.f());
                        return;
                    } else {
                        cVar.b(pVarG.b());
                        return;
                    }
                }
                boolean z2 = kVar instanceof com.bykv.vk.openvk.preload.a.i;
                if (z2) {
                    cVar.a();
                    if (!z2) {
                        throw new IllegalStateException("Not a JSON Array: ".concat(String.valueOf(kVar)));
                    }
                    Iterator<com.bykv.vk.openvk.preload.a.k> it = ((com.bykv.vk.openvk.preload.a.i) kVar).iterator();
                    while (it.hasNext()) {
                        a(cVar, it.next());
                    }
                    cVar.b();
                    return;
                }
                boolean z3 = kVar instanceof com.bykv.vk.openvk.preload.a.n;
                if (!z3) {
                    throw new IllegalArgumentException("Couldn't write " + kVar.getClass());
                }
                cVar.c();
                if (!z3) {
                    throw new IllegalStateException("Not a JSON Object: ".concat(String.valueOf(kVar)));
                }
                for (Map.Entry<String, com.bykv.vk.openvk.preload.a.k> entry : ((com.bykv.vk.openvk.preload.a.n) kVar).a.entrySet()) {
                    cVar.a(entry.getKey());
                    a(cVar, entry.getValue());
                }
                cVar.d();
            }

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.bykv.vk.openvk.preload.a.t
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public com.bykv.vk.openvk.preload.a.k a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
                switch (AnonymousClass30.a[aVar.f().ordinal()]) {
                    case 1:
                        return new p(new com.bykv.vk.openvk.preload.a.b.g(aVar.i()));
                    case 2:
                        return new p(Boolean.valueOf(aVar.j()));
                    case 3:
                        return new p(aVar.i());
                    case 4:
                        aVar.k();
                        return com.bykv.vk.openvk.preload.a.m.a;
                    case 5:
                        com.bykv.vk.openvk.preload.a.i iVar = new com.bykv.vk.openvk.preload.a.i();
                        aVar.a();
                        while (aVar.e()) {
                            iVar.a(a(aVar));
                        }
                        aVar.b();
                        return iVar;
                    case 6:
                        com.bykv.vk.openvk.preload.a.n nVar = new com.bykv.vk.openvk.preload.a.n();
                        aVar.c();
                        while (aVar.e()) {
                            nVar.a(aVar.h(), a(aVar));
                        }
                        aVar.d();
                        return nVar;
                    default:
                        throw new IllegalArgumentException();
                }
            }
        };
        X = tVar16;
        Y = b(com.bykv.vk.openvk.preload.a.k.class, tVar16);
        Z = new u() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.24
            @Override // com.bykv.vk.openvk.preload.a.u
            public final <T> t<T> a(com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                Class<? super T> superclass = aVar.b;
                if (!Enum.class.isAssignableFrom(superclass) || superclass == Enum.class) {
                    return null;
                }
                if (!superclass.isEnum()) {
                    superclass = superclass.getSuperclass();
                }
                return new a(superclass);
            }
        };
    }

    public static <TT> u a(final com.bykv.vk.openvk.preload.a.c.a<TT> aVar, final t<TT> tVar) {
        return new u() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.25
            @Override // com.bykv.vk.openvk.preload.a.u
            public final <T> t<T> a(com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar2) {
                if (aVar2.equals(aVar)) {
                    return tVar;
                }
                return null;
            }
        };
    }

    public static <TT> u a(final Class<TT> cls, final t<TT> tVar) {
        return new u() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.26
            @Override // com.bykv.vk.openvk.preload.a.u
            public final <T> t<T> a(com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                if (aVar.b == cls) {
                    return tVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + tVar + o2.i.f6491e;
            }
        };
    }

    public static <TT> u a(final Class<TT> cls, final Class<TT> cls2, final t<? super TT> tVar) {
        return new u() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.27
            @Override // com.bykv.vk.openvk.preload.a.u
            public final <T> t<T> a(com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
                Class<? super T> cls3 = aVar.b;
                if (cls3 == cls || cls3 == cls2) {
                    return tVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + tVar + o2.i.f6491e;
            }
        };
    }

    private static <T1> u b(final Class<T1> cls, final t<T1> tVar) {
        return new u() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.29
            @Override // com.bykv.vk.openvk.preload.a.u
            public final <T2> t<T2> a(com.bykv.vk.openvk.preload.a.f fVar, com.bykv.vk.openvk.preload.a.c.a<T2> aVar) {
                final Class<? super T2> cls2 = aVar.b;
                if (cls.isAssignableFrom(cls2)) {
                    return (t<T2>) new t<T1>() { // from class: com.bykv.vk.openvk.preload.a.b.a.n.29.1
                        @Override // com.bykv.vk.openvk.preload.a.t
                        public final T1 a(com.bykv.vk.openvk.preload.a.d.a aVar2) throws IOException {
                            T1 t1 = (T1) tVar.a(aVar2);
                            if (t1 == null || cls2.isInstance(t1)) {
                                return t1;
                            }
                            throw new r("Expected a " + cls2.getName() + " but was " + t1.getClass().getName());
                        }

                        @Override // com.bykv.vk.openvk.preload.a.t
                        public final void a(com.bykv.vk.openvk.preload.a.d.c cVar, T1 t1) throws IOException {
                            tVar.a(cVar, t1);
                        }
                    };
                }
                return null;
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + tVar + o2.i.f6491e;
            }
        };
    }
}
