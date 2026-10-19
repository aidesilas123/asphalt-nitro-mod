package com.fyber.inneractive.sdk.protobuf;

import com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite;
import com.fyber.inneractive.sdk.protobuf.a0;
import com.fyber.inneractive.sdk.protobuf.o0;
import com.fyber.inneractive.sdk.protobuf.r1;
import com.fyber.inneractive.sdk.protobuf.u.b;
import com.fyber.inneractive.sdk.protobuf.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class u<T extends b<T>> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final u f2706d;
    public final g1<T, Object> a;
    public boolean b;
    public boolean c;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[r1.b.values().length];
            b = iArr;
            try {
                iArr[r1.b.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[r1.b.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[r1.b.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[r1.b.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[r1.b.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[r1.b.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[r1.b.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                b[r1.b.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                b[r1.b.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                b[r1.b.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                b[r1.b.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                b[r1.b.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                b[r1.b.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                b[r1.b.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                b[r1.b.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                b[r1.b.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                b[r1.b.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                b[r1.b.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[r1.c.values().length];
            a = iArr2;
            try {
                iArr2[r1.c.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                a[r1.c.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                a[r1.c.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                a[r1.c.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                a[r1.c.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                a[r1.c.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                a[r1.c.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                a[r1.c.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                a[r1.c.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public interface b<T extends b<T>> extends Comparable<T> {
        int a();

        o0.a a(o0.a aVar, o0 o0Var);

        boolean b();

        r1.b c();

        r1.c d();

        boolean isPacked();
    }

    static {
        u uVar = new u(g1.b(0));
        uVar.g();
        f2706d = uVar;
    }

    public u() {
        this.a = g1.b(16);
    }

    public u(g1<T, Object> g1Var) {
        this.a = g1Var;
        g();
    }

    public static int a(r1.b bVar, int i, Object obj) {
        int iB = l.b(i);
        if (bVar == r1.b.GROUP) {
            iB *= 2;
        }
        return iB + a(bVar, obj);
    }

    public static int a(r1.b bVar, Object obj) {
        int serializedSize;
        int iC;
        switch (a.b[bVar.ordinal()]) {
            case 1:
                ((Double) obj).doubleValue();
                Logger logger = l.b;
                return 8;
            case 2:
                ((Float) obj).floatValue();
                Logger logger2 = l.b;
                return 4;
            case 3:
                return l.a(((Long) obj).longValue());
            case 4:
                return l.a(((Long) obj).longValue());
            case 5:
                return l.a(((Integer) obj).intValue());
            case 6:
                ((Long) obj).longValue();
                Logger logger3 = l.b;
                return 8;
            case 7:
                ((Integer) obj).intValue();
                Logger logger4 = l.b;
                return 4;
            case 8:
                ((Boolean) obj).booleanValue();
                Logger logger5 = l.b;
                return 1;
            case 9:
                Logger logger6 = l.b;
                return ((o0) obj).getSerializedSize();
            case 10:
                if (obj instanceof a0) {
                    return l.a((a0) obj);
                }
                Logger logger7 = l.b;
                serializedSize = ((o0) obj).getSerializedSize();
                iC = l.c(serializedSize);
                break;
            case 11:
                return obj instanceof i ? l.a((i) obj) : l.a((String) obj);
            case 12:
                if (obj instanceof i) {
                    return l.a((i) obj);
                }
                Logger logger8 = l.b;
                serializedSize = ((byte[]) obj).length;
                iC = l.c(serializedSize);
                break;
            case 13:
                return l.c(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                Logger logger9 = l.b;
                return 4;
            case 15:
                ((Long) obj).longValue();
                Logger logger10 = l.b;
                return 8;
            case 16:
                return l.c(l.d(((Integer) obj).intValue()));
            case 17:
                return l.a(l.b(((Long) obj).longValue()));
            case 18:
                return obj instanceof y.c ? l.a(((y.c) obj).a()) : l.a(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return iC + serializedSize;
    }

    public static int a(r1.b bVar, boolean z) {
        if (z) {
            return 2;
        }
        return bVar.f();
    }

    public static Object a(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static int b(b<?> bVar, Object obj) {
        r1.b bVarC = bVar.c();
        int iA = bVar.a();
        if (!bVar.b()) {
            return a(bVarC, iA, obj);
        }
        int iA2 = 0;
        if (bVar.isPacked()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iA2 += a(bVarC, it.next());
            }
            return l.b(iA) + iA2 + l.c(iA2);
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iA2 += a(bVarC, iA, it2.next());
        }
        return iA2;
    }

    public static <T extends b<T>> u<T> b() {
        return f2706d;
    }

    public static <T extends b<T>> boolean b(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.d() == r1.c.MESSAGE) {
            if (key.b()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((o0) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (!(value instanceof o0)) {
                    if (value instanceof a0) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((o0) value).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    public final int a(Map.Entry<T, Object> entry) {
        int iB;
        int iC;
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.d() != r1.c.MESSAGE || key.b() || key.isPacked()) {
            return b(key, value);
        }
        if (value instanceof a0) {
            iB = (l.b(1) * 2) + l.f(2, entry.getKey().a());
            iC = l.b(3) + l.a((a0) value);
        } else {
            iB = (l.b(1) * 2) + l.f(2, entry.getKey().a());
            int iB2 = l.b(3);
            int serializedSize = ((o0) value).getSerializedSize();
            iC = iB2 + l.c(serializedSize) + serializedSize;
        }
        return iB + iC;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public u<T> clone() {
        u<T> uVar = new u<>();
        for (int i = 0; i < this.a.b.size(); i++) {
            Map.Entry<K, Object> entryA = this.a.a(i);
            uVar.c((b) entryA.getKey(), entryA.getValue());
        }
        Iterator it = this.a.b().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            uVar.c((b) entry.getKey(), entry.getValue());
        }
        uVar.c = this.c;
        return uVar;
    }

    public Object a(T t) {
        Object obj = this.a.get(t);
        return obj instanceof a0 ? ((a0) obj).a(null) : obj;
    }

    public void a(T t, Object obj) {
        List arrayList;
        if (!((GeneratedMessageLite.d) t).f2654d) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        d(t, obj);
        Object objA = a((b) t);
        if (objA == null) {
            arrayList = new ArrayList();
            this.a.put(t, arrayList);
        } else {
            arrayList = (List) objA;
        }
        arrayList.add(obj);
    }

    public void a(u<T> uVar) {
        for (int i = 0; i < uVar.a.b.size(); i++) {
            c(uVar.a.a(i));
        }
        Iterator it = uVar.a.b().iterator();
        while (it.hasNext()) {
            c((Map.Entry) it.next());
        }
    }

    public int c() {
        int iA = 0;
        for (int i = 0; i < this.a.b.size(); i++) {
            iA += a((Map.Entry) this.a.a(i));
        }
        Iterator it = this.a.b().iterator();
        while (it.hasNext()) {
            iA += a((Map.Entry) it.next());
        }
        return iA;
    }

    public void c(T t, Object obj) {
        if (!t.b()) {
            d(t, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                d(t, it.next());
            }
            obj = arrayList;
        }
        if (obj instanceof a0) {
            this.c = true;
        }
        this.a.put(t, obj);
    }

    public final void c(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof a0) {
            value = ((a0) value).a(null);
        }
        if (key.b()) {
            Object objA = a((b) key);
            if (objA == null) {
                objA = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objA).add(a(it.next()));
            }
            this.a.put(key, objA);
            return;
        }
        if (key.d() != r1.c.MESSAGE) {
            this.a.put(key, a(value));
            return;
        }
        Object objA2 = a((b) key);
        if (objA2 == null) {
            this.a.put(key, a(value));
        } else {
            this.a.put(key, ((GeneratedMessageLite.b) key.a(((o0) objA2).toBuilder(), (o0) value)).a());
        }
    }

    public int d() {
        int iB = 0;
        for (int i = 0; i < this.a.b.size(); i++) {
            Map.Entry<K, Object> entryA = this.a.a(i);
            iB += b((b) entryA.getKey(), entryA.getValue());
        }
        Iterator it = this.a.b().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            iB += b((b) entry.getKey(), entry.getValue());
        }
        return iB;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void d(T r6, java.lang.Object r7) {
        /*
            r5 = this;
            com.fyber.inneractive.sdk.protobuf.r1$b r0 = r6.c()
            java.nio.charset.Charset r1 = com.fyber.inneractive.sdk.protobuf.y.a
            r7.getClass()
            int[] r1 = com.fyber.inneractive.sdk.protobuf.u.a.a
            com.fyber.inneractive.sdk.protobuf.r1$c r0 = r0.e()
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 0
            r2 = 1
            switch(r0) {
                case 1: goto L46;
                case 2: goto L43;
                case 3: goto L40;
                case 4: goto L3d;
                case 5: goto L3a;
                case 6: goto L37;
                case 7: goto L2d;
                case 8: goto L24;
                case 9: goto L1b;
                default: goto L1a;
            }
        L1a:
            goto L49
        L1b:
            boolean r0 = r7 instanceof com.fyber.inneractive.sdk.protobuf.o0
            if (r0 != 0) goto L35
            boolean r0 = r7 instanceof com.fyber.inneractive.sdk.protobuf.a0
            if (r0 == 0) goto L49
            goto L35
        L24:
            boolean r0 = r7 instanceof java.lang.Integer
            if (r0 != 0) goto L35
            boolean r0 = r7 instanceof com.fyber.inneractive.sdk.protobuf.y.c
            if (r0 == 0) goto L49
            goto L35
        L2d:
            boolean r0 = r7 instanceof com.fyber.inneractive.sdk.protobuf.i
            if (r0 != 0) goto L35
            boolean r0 = r7 instanceof byte[]
            if (r0 == 0) goto L49
        L35:
            r0 = 1
            goto L4a
        L37:
            boolean r0 = r7 instanceof java.lang.String
            goto L4a
        L3a:
            boolean r0 = r7 instanceof java.lang.Boolean
            goto L4a
        L3d:
            boolean r0 = r7 instanceof java.lang.Double
            goto L4a
        L40:
            boolean r0 = r7 instanceof java.lang.Float
            goto L4a
        L43:
            boolean r0 = r7 instanceof java.lang.Long
            goto L4a
        L46:
            boolean r0 = r7 instanceof java.lang.Integer
            goto L4a
        L49:
            r0 = 0
        L4a:
            if (r0 == 0) goto L4d
            return
        L4d:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            int r4 = r6.a()
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r3[r1] = r4
            com.fyber.inneractive.sdk.protobuf.r1$b r6 = r6.c()
            com.fyber.inneractive.sdk.protobuf.r1$c r6 = r6.e()
            r3[r2] = r6
            java.lang.Class r6 = r7.getClass()
            java.lang.String r6 = r6.getName()
            r7 = 2
            r3[r7] = r6
            java.lang.String r6 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            java.lang.String r6 = java.lang.String.format(r6, r3)
            r0.<init>(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.u.d(com.fyber.inneractive.sdk.protobuf.u$b, java.lang.Object):void");
    }

    public boolean e() {
        for (int i = 0; i < this.a.b.size(); i++) {
            if (!b(this.a.a(i))) {
                return false;
            }
        }
        Iterator it = this.a.b().iterator();
        while (it.hasNext()) {
            if (!b((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof u) {
            return this.a.equals(((u) obj).a);
        }
        return false;
    }

    public Iterator<Map.Entry<T, Object>> f() {
        return this.c ? new a0.b(this.a.entrySet().iterator()) : this.a.entrySet().iterator();
    }

    public void g() {
        if (this.b) {
            return;
        }
        this.a.d();
        this.b = true;
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
