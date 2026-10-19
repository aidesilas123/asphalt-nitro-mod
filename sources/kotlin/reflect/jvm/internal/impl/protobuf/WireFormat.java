package kotlin.reflect.jvm.internal.impl.protobuf;

/* JADX INFO: loaded from: classes5.dex */
public final class WireFormat {
    static final int a = b(1, 3);
    static final int b = b(1, 4);
    static final int c = b(2, 0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int f9697d = b(3, 2);

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'c' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static class FieldType {
        public static final FieldType a;
        public static final FieldType b;
        public static final FieldType c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final FieldType f9698d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldType f9699e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldType f9700f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final FieldType f9701g;
        public static final FieldType h;
        public static final FieldType i;
        public static final FieldType j;
        public static final FieldType k;
        public static final FieldType l;
        public static final FieldType m;
        public static final FieldType n;
        public static final FieldType o;
        public static final FieldType p;
        public static final FieldType q;
        public static final FieldType r;
        private static final /* synthetic */ FieldType[] s;
        private final JavaType t;
        private final int u;

        enum a extends FieldType {
            a(String str, int i, JavaType javaType, int i2) {
                super(str, i, javaType, i2);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.WireFormat.FieldType
            public boolean g() {
                return false;
            }
        }

        enum b extends FieldType {
            b(String str, int i, JavaType javaType, int i2) {
                super(str, i, javaType, i2);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.WireFormat.FieldType
            public boolean g() {
                return false;
            }
        }

        enum c extends FieldType {
            c(String str, int i, JavaType javaType, int i2) {
                super(str, i, javaType, i2);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.WireFormat.FieldType
            public boolean g() {
                return false;
            }
        }

        enum d extends FieldType {
            d(String str, int i, JavaType javaType, int i2) {
                super(str, i, javaType, i2);
            }

            @Override // kotlin.reflect.jvm.internal.impl.protobuf.WireFormat.FieldType
            public boolean g() {
                return false;
            }
        }

        static {
            FieldType fieldType = new FieldType("DOUBLE", 0, JavaType.DOUBLE, 1);
            a = fieldType;
            FieldType fieldType2 = new FieldType("FLOAT", 1, JavaType.FLOAT, 5);
            b = fieldType2;
            JavaType javaType = JavaType.LONG;
            FieldType fieldType3 = new FieldType("INT64", 2, javaType, 0);
            c = fieldType3;
            FieldType fieldType4 = new FieldType("UINT64", 3, javaType, 0);
            f9698d = fieldType4;
            JavaType javaType2 = JavaType.INT;
            FieldType fieldType5 = new FieldType("INT32", 4, javaType2, 0);
            f9699e = fieldType5;
            FieldType fieldType6 = new FieldType("FIXED64", 5, javaType, 1);
            f9700f = fieldType6;
            FieldType fieldType7 = new FieldType("FIXED32", 6, javaType2, 5);
            f9701g = fieldType7;
            FieldType fieldType8 = new FieldType("BOOL", 7, JavaType.BOOLEAN, 0);
            h = fieldType8;
            a aVar = new a("STRING", 8, JavaType.STRING, 2);
            i = aVar;
            JavaType javaType3 = JavaType.MESSAGE;
            b bVar = new b("GROUP", 9, javaType3, 3);
            j = bVar;
            c cVar = new c("MESSAGE", 10, javaType3, 2);
            k = cVar;
            d dVar = new d("BYTES", 11, JavaType.BYTE_STRING, 2);
            l = dVar;
            FieldType fieldType9 = new FieldType("UINT32", 12, javaType2, 0);
            m = fieldType9;
            FieldType fieldType10 = new FieldType("ENUM", 13, JavaType.ENUM, 0);
            n = fieldType10;
            FieldType fieldType11 = new FieldType("SFIXED32", 14, javaType2, 5);
            o = fieldType11;
            FieldType fieldType12 = new FieldType("SFIXED64", 15, javaType, 1);
            p = fieldType12;
            FieldType fieldType13 = new FieldType("SINT32", 16, javaType2, 0);
            q = fieldType13;
            FieldType fieldType14 = new FieldType("SINT64", 17, javaType, 0);
            r = fieldType14;
            s = new FieldType[]{fieldType, fieldType2, fieldType3, fieldType4, fieldType5, fieldType6, fieldType7, fieldType8, aVar, bVar, cVar, dVar, fieldType9, fieldType10, fieldType11, fieldType12, fieldType13, fieldType14};
        }

        private FieldType(String str, int i2, JavaType javaType, int i3) {
            this.t = javaType;
            this.u = i3;
        }

        public static FieldType valueOf(String str) {
            return (FieldType) Enum.valueOf(FieldType.class, str);
        }

        public static FieldType[] values() {
            return (FieldType[]) s.clone();
        }

        public JavaType e() {
            return this.t;
        }

        public int f() {
            return this.u;
        }

        public boolean g() {
            return true;
        }
    }

    public enum JavaType {
        INT(0),
        LONG(0L),
        FLOAT(Float.valueOf(0.0f)),
        DOUBLE(Double.valueOf(0.0d)),
        BOOLEAN(Boolean.FALSE),
        STRING(""),
        BYTE_STRING(ByteString.a),
        ENUM(null),
        MESSAGE(null);

        private final Object k;

        JavaType(Object obj) {
            this.k = obj;
        }
    }

    static int a(int i) {
        return i & 7;
    }

    static int b(int i, int i2) {
        return (i << 3) | i2;
    }

    public static int getTagFieldNumber(int i) {
        return i >>> 3;
    }
}
