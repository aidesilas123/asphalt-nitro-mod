package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.b;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;
import kotlin.reflect.jvm.internal.impl.protobuf.WireFormat;
import kotlin.reflect.jvm.internal.impl.protobuf.e;
import kotlin.reflect.jvm.internal.impl.protobuf.j;

/* JADX INFO: loaded from: classes5.dex */
final class FieldSet<FieldDescriptorType extends b<FieldDescriptorType>> {
    private static final FieldSet a = new FieldSet(true);
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f9690d = false;
    private final o<FieldDescriptorType, Object> b = o.o(16);

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            b = iArr;
            try {
                iArr[WireFormat.FieldType.a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[WireFormat.FieldType.b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[WireFormat.FieldType.c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[WireFormat.FieldType.f9698d.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[WireFormat.FieldType.f9699e.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[WireFormat.FieldType.f9700f.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[WireFormat.FieldType.f9701g.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                b[WireFormat.FieldType.h.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                b[WireFormat.FieldType.i.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                b[WireFormat.FieldType.l.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                b[WireFormat.FieldType.m.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                b[WireFormat.FieldType.o.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                b[WireFormat.FieldType.p.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                b[WireFormat.FieldType.q.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                b[WireFormat.FieldType.r.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                b[WireFormat.FieldType.j.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                b[WireFormat.FieldType.k.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                b[WireFormat.FieldType.n.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[WireFormat.JavaType.values().length];
            a = iArr2;
            try {
                iArr2[WireFormat.JavaType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                a[WireFormat.JavaType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                a[WireFormat.JavaType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                a[WireFormat.JavaType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                a[WireFormat.JavaType.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                a[WireFormat.JavaType.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                a[WireFormat.JavaType.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                a[WireFormat.JavaType.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                a[WireFormat.JavaType.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public interface b<T extends b<T>> extends Comparable<T> {
        WireFormat.JavaType getLiteJavaType();

        WireFormat.FieldType getLiteType();

        int getNumber();

        boolean isPacked();

        boolean isRepeated();

        j.a r(j.a aVar, j jVar);
    }

    private FieldSet() {
    }

    private FieldSet(boolean z) {
        o();
    }

    private Object c(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static int computeFieldSize(b<?> bVar, Object obj) {
        WireFormat.FieldType liteType = bVar.getLiteType();
        int number = bVar.getNumber();
        if (!bVar.isRepeated()) {
            return d(liteType, number, obj);
        }
        int iD = 0;
        if (bVar.isPacked()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                iD += e(liteType, it.next());
            }
            return CodedOutputStream.computeTagSize(number) + iD + CodedOutputStream.computeRawVarint32Size(iD);
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            iD += d(liteType, number, it2.next());
        }
        return iD;
    }

    private static int d(WireFormat.FieldType fieldType, int i, Object obj) {
        int iComputeTagSize = CodedOutputStream.computeTagSize(i);
        if (fieldType == WireFormat.FieldType.j) {
            iComputeTagSize *= 2;
        }
        return iComputeTagSize + e(fieldType, obj);
    }

    private static int e(WireFormat.FieldType fieldType, Object obj) {
        switch (a.b[fieldType.ordinal()]) {
            case 1:
                return CodedOutputStream.computeDoubleSizeNoTag(((Double) obj).doubleValue());
            case 2:
                return CodedOutputStream.computeFloatSizeNoTag(((Float) obj).floatValue());
            case 3:
                return CodedOutputStream.computeInt64SizeNoTag(((Long) obj).longValue());
            case 4:
                return CodedOutputStream.computeUInt64SizeNoTag(((Long) obj).longValue());
            case 5:
                return CodedOutputStream.computeInt32SizeNoTag(((Integer) obj).intValue());
            case 6:
                return CodedOutputStream.computeFixed64SizeNoTag(((Long) obj).longValue());
            case 7:
                return CodedOutputStream.computeFixed32SizeNoTag(((Integer) obj).intValue());
            case 8:
                return CodedOutputStream.computeBoolSizeNoTag(((Boolean) obj).booleanValue());
            case 9:
                return CodedOutputStream.computeStringSizeNoTag((String) obj);
            case 10:
                return obj instanceof ByteString ? CodedOutputStream.computeBytesSizeNoTag((ByteString) obj) : CodedOutputStream.computeByteArraySizeNoTag((byte[]) obj);
            case 11:
                return CodedOutputStream.computeUInt32SizeNoTag(((Integer) obj).intValue());
            case 12:
                return CodedOutputStream.computeSFixed32SizeNoTag(((Integer) obj).intValue());
            case 13:
                return CodedOutputStream.computeSFixed64SizeNoTag(((Long) obj).longValue());
            case 14:
                return CodedOutputStream.computeSInt32SizeNoTag(((Integer) obj).intValue());
            case 15:
                return CodedOutputStream.computeSInt64SizeNoTag(((Long) obj).longValue());
            case 16:
                return CodedOutputStream.computeGroupSizeNoTag((j) obj);
            case 17:
                return obj instanceof e ? CodedOutputStream.computeLazyFieldSizeNoTag((e) obj) : CodedOutputStream.computeMessageSizeNoTag((j) obj);
            case 18:
                return obj instanceof Internal.a ? CodedOutputStream.computeEnumSizeNoTag(((Internal.a) obj).getNumber()) : CodedOutputStream.computeEnumSizeNoTag(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static <T extends b<T>> FieldSet<T> emptySet() {
        return a;
    }

    static int j(WireFormat.FieldType fieldType, boolean z) {
        if (z) {
            return 2;
        }
        return fieldType.f();
    }

    private boolean m(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.getLiteJavaType() == WireFormat.JavaType.MESSAGE) {
            if (key.isRepeated()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((j) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (!(value instanceof j)) {
                    if (value instanceof e) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((j) value).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    public static <T extends b<T>> FieldSet<T> newFieldSet() {
        return new FieldSet<>();
    }

    private void q(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof e) {
            value = ((e) value).e();
        }
        if (key.isRepeated()) {
            Object objF = f(key);
            if (objF == null) {
                objF = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) objF).add(c(it.next()));
            }
            this.b.p(key, objF);
            return;
        }
        if (key.getLiteJavaType() != WireFormat.JavaType.MESSAGE) {
            this.b.p(key, c(value));
            return;
        }
        Object objF2 = f(key);
        if (objF2 == null) {
            this.b.p(key, c(value));
        } else {
            this.b.p(key, key.r(((j) objF2).toBuilder(), (j) value).build());
        }
    }

    public static Object readPrimitiveField(CodedInputStream codedInputStream, WireFormat.FieldType fieldType, boolean z) throws IOException {
        switch (a.b[fieldType.ordinal()]) {
            case 1:
                return Double.valueOf(codedInputStream.j());
            case 2:
                return Float.valueOf(codedInputStream.n());
            case 3:
                return Long.valueOf(codedInputStream.q());
            case 4:
                return Long.valueOf(codedInputStream.I());
            case 5:
                return Integer.valueOf(codedInputStream.p());
            case 6:
                return Long.valueOf(codedInputStream.m());
            case 7:
                return Integer.valueOf(codedInputStream.l());
            case 8:
                return Boolean.valueOf(codedInputStream.h());
            case 9:
                return z ? codedInputStream.F() : codedInputStream.E();
            case 10:
                return codedInputStream.i();
            case 11:
                return Integer.valueOf(codedInputStream.H());
            case 12:
                return Integer.valueOf(codedInputStream.A());
            case 13:
                return Long.valueOf(codedInputStream.B());
            case 14:
                return Integer.valueOf(codedInputStream.C());
            case 15:
                return Long.valueOf(codedInputStream.D());
            case 16:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 17:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 18:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void s(kotlin.reflect.jvm.internal.impl.protobuf.WireFormat.FieldType r2, java.lang.Object r3) {
        /*
            java.util.Objects.requireNonNull(r3)
            int[] r0 = kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.a.a
            kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$JavaType r2 = r2.e()
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L42;
                case 2: goto L3f;
                case 3: goto L3c;
                case 4: goto L39;
                case 5: goto L36;
                case 6: goto L33;
                case 7: goto L27;
                case 8: goto L1e;
                case 9: goto L15;
                default: goto L14;
            }
        L14:
            goto L44
        L15:
            boolean r2 = r3 instanceof kotlin.reflect.jvm.internal.impl.protobuf.j
            if (r2 != 0) goto L31
            boolean r2 = r3 instanceof kotlin.reflect.jvm.internal.impl.protobuf.e
            if (r2 == 0) goto L30
            goto L31
        L1e:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L31
            boolean r2 = r3 instanceof kotlin.reflect.jvm.internal.impl.protobuf.Internal.a
            if (r2 == 0) goto L30
            goto L31
        L27:
            boolean r2 = r3 instanceof kotlin.reflect.jvm.internal.impl.protobuf.ByteString
            if (r2 != 0) goto L31
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L30
            goto L31
        L30:
            r0 = 0
        L31:
            r1 = r0
            goto L44
        L33:
            boolean r1 = r3 instanceof java.lang.String
            goto L44
        L36:
            boolean r1 = r3 instanceof java.lang.Boolean
            goto L44
        L39:
            boolean r1 = r3 instanceof java.lang.Double
            goto L44
        L3c:
            boolean r1 = r3 instanceof java.lang.Float
            goto L44
        L3f:
            boolean r1 = r3 instanceof java.lang.Long
            goto L44
        L42:
            boolean r1 = r3 instanceof java.lang.Integer
        L44:
            if (r1 == 0) goto L47
            return
        L47:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.FieldSet.s(kotlin.reflect.jvm.internal.impl.protobuf.WireFormat$FieldType, java.lang.Object):void");
    }

    private static void t(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, int i, Object obj) throws IOException {
        if (fieldType == WireFormat.FieldType.j) {
            codedOutputStream.q(i, (j) obj);
        } else {
            codedOutputStream.O(i, j(fieldType, false));
            u(codedOutputStream, fieldType, obj);
        }
    }

    private static void u(CodedOutputStream codedOutputStream, WireFormat.FieldType fieldType, Object obj) throws IOException {
        switch (a.b[fieldType.ordinal()]) {
            case 1:
                codedOutputStream.j(((Double) obj).doubleValue());
                break;
            case 2:
                codedOutputStream.p(((Float) obj).floatValue());
                break;
            case 3:
                codedOutputStream.u(((Long) obj).longValue());
                break;
            case 4:
                codedOutputStream.R(((Long) obj).longValue());
                break;
            case 5:
                codedOutputStream.t(((Integer) obj).intValue());
                break;
            case 6:
                codedOutputStream.n(((Long) obj).longValue());
                break;
            case 7:
                codedOutputStream.m(((Integer) obj).intValue());
                break;
            case 8:
                codedOutputStream.e(((Boolean) obj).booleanValue());
                break;
            case 9:
                codedOutputStream.N((String) obj);
                break;
            case 10:
                if (!(obj instanceof ByteString)) {
                    codedOutputStream.f((byte[]) obj);
                } else {
                    codedOutputStream.h((ByteString) obj);
                }
                break;
            case 11:
                codedOutputStream.Q(((Integer) obj).intValue());
                break;
            case 12:
                codedOutputStream.I(((Integer) obj).intValue());
                break;
            case 13:
                codedOutputStream.J(((Long) obj).longValue());
                break;
            case 14:
                codedOutputStream.K(((Integer) obj).intValue());
                break;
            case 15:
                codedOutputStream.M(((Long) obj).longValue());
                break;
            case 16:
                codedOutputStream.r((j) obj);
                break;
            case 17:
                codedOutputStream.w((j) obj);
                break;
            case 18:
                if (!(obj instanceof Internal.a)) {
                    codedOutputStream.l(((Integer) obj).intValue());
                } else {
                    codedOutputStream.l(((Internal.a) obj).getNumber());
                }
                break;
        }
    }

    public static void writeField(b<?> bVar, Object obj, CodedOutputStream codedOutputStream) throws IOException {
        WireFormat.FieldType liteType = bVar.getLiteType();
        int number = bVar.getNumber();
        if (!bVar.isRepeated()) {
            if (obj instanceof e) {
                t(codedOutputStream, liteType, number, ((e) obj).e());
                return;
            } else {
                t(codedOutputStream, liteType, number, obj);
                return;
            }
        }
        List list = (List) obj;
        if (!bVar.isPacked()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                t(codedOutputStream, liteType, number, it.next());
            }
            return;
        }
        codedOutputStream.O(number, 2);
        int iE = 0;
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            iE += e(liteType, it2.next());
        }
        codedOutputStream.G(iE);
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            u(codedOutputStream, liteType, it3.next());
        }
    }

    public void a(FieldDescriptorType fielddescriptortype, Object obj) {
        List arrayList;
        if (!fielddescriptortype.isRepeated()) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        s(fielddescriptortype.getLiteType(), obj);
        Object objF = f(fielddescriptortype);
        if (objF == null) {
            arrayList = new ArrayList();
            this.b.p(fielddescriptortype, arrayList);
        } else {
            arrayList = (List) objF;
        }
        arrayList.add(obj);
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FieldSet<FieldDescriptorType> clone() {
        FieldSet<FieldDescriptorType> fieldSetNewFieldSet = newFieldSet();
        for (int i = 0; i < this.b.j(); i++) {
            Map.Entry<K, Object> entryI = this.b.i(i);
            fieldSetNewFieldSet.r((b) entryI.getKey(), entryI.getValue());
        }
        Iterator it = this.b.k().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            fieldSetNewFieldSet.r((b) entry.getKey(), entry.getValue());
        }
        fieldSetNewFieldSet.f9690d = this.f9690d;
        return fieldSetNewFieldSet;
    }

    public Object f(FieldDescriptorType fielddescriptortype) {
        Object obj = this.b.get(fielddescriptortype);
        return obj instanceof e ? ((e) obj).e() : obj;
    }

    public Object g(FieldDescriptorType fielddescriptortype, int i) {
        if (!fielddescriptortype.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object objF = f(fielddescriptortype);
        if (objF != null) {
            return ((List) objF).get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public int h(FieldDescriptorType fielddescriptortype) {
        if (!fielddescriptortype.isRepeated()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object objF = f(fielddescriptortype);
        if (objF == null) {
            return 0;
        }
        return ((List) objF).size();
    }

    public int i() {
        int iComputeFieldSize = 0;
        for (int i = 0; i < this.b.j(); i++) {
            Map.Entry<K, Object> entryI = this.b.i(i);
            iComputeFieldSize += computeFieldSize((b) entryI.getKey(), entryI.getValue());
        }
        Iterator it = this.b.k().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            iComputeFieldSize += computeFieldSize((b) entry.getKey(), entry.getValue());
        }
        return iComputeFieldSize;
    }

    public boolean k(FieldDescriptorType fielddescriptortype) {
        if (fielddescriptortype.isRepeated()) {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        return this.b.get(fielddescriptortype) != null;
    }

    public boolean l() {
        for (int i = 0; i < this.b.j(); i++) {
            if (!m(this.b.i(i))) {
                return false;
            }
        }
        Iterator it = this.b.k().iterator();
        while (it.hasNext()) {
            if (!m((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public Iterator<Map.Entry<FieldDescriptorType, Object>> n() {
        return this.f9690d ? new e.c(this.b.entrySet().iterator()) : this.b.entrySet().iterator();
    }

    public void o() {
        if (this.c) {
            return;
        }
        this.b.n();
        this.c = true;
    }

    public void p(FieldSet<FieldDescriptorType> fieldSet) {
        for (int i = 0; i < fieldSet.b.j(); i++) {
            q(fieldSet.b.i(i));
        }
        Iterator it = fieldSet.b.k().iterator();
        while (it.hasNext()) {
            q((Map.Entry) it.next());
        }
    }

    public void r(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.isRepeated()) {
            s(fielddescriptortype.getLiteType(), obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                s(fielddescriptortype.getLiteType(), it.next());
            }
            obj = arrayList;
        }
        if (obj instanceof e) {
            this.f9690d = true;
        }
        this.b.p(fielddescriptortype, obj);
    }
}
