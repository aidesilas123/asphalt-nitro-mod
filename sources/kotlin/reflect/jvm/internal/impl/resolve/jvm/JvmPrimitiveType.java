package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes5.dex */
public enum JvmPrimitiveType {
    BOOLEAN(PrimitiveType.BOOLEAN, TypedValues.Custom.S_BOOLEAN, "Z", "java.lang.Boolean"),
    CHAR(PrimitiveType.CHAR, "char", "C", "java.lang.Character"),
    BYTE(PrimitiveType.BYTE, "byte", "B", "java.lang.Byte"),
    SHORT(PrimitiveType.SHORT, "short", "S", "java.lang.Short"),
    INT(PrimitiveType.INT, "int", "I", "java.lang.Integer"),
    FLOAT(PrimitiveType.FLOAT, TypedValues.Custom.S_FLOAT, "F", "java.lang.Float"),
    LONG(PrimitiveType.LONG, "long", "J", "java.lang.Long"),
    DOUBLE(PrimitiveType.DOUBLE, "double", "D", "java.lang.Double");

    private static final Set<FqName> i = new HashSet();
    private static final Map<String, JvmPrimitiveType> j = new HashMap();
    private static final Map<PrimitiveType, JvmPrimitiveType> k = new EnumMap(PrimitiveType.class);
    private static final Map<String, JvmPrimitiveType> l = new HashMap();
    private final PrimitiveType n;
    private final String o;
    private final String p;
    private final FqName q;

    static {
        for (JvmPrimitiveType jvmPrimitiveType : values()) {
            i.add(jvmPrimitiveType.h());
            j.put(jvmPrimitiveType.f(), jvmPrimitiveType);
            k.put(jvmPrimitiveType.g(), jvmPrimitiveType);
            l.put(jvmPrimitiveType.e(), jvmPrimitiveType);
        }
    }

    JvmPrimitiveType(PrimitiveType primitiveType, String str, String str2, String str3) {
        if (primitiveType == null) {
            a(6);
        }
        if (str == null) {
            a(7);
        }
        if (str2 == null) {
            a(8);
        }
        if (str3 == null) {
            a(9);
        }
        this.n = primitiveType;
        this.o = str;
        this.p = str2;
        this.q = new FqName(str3);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static /* synthetic */ void a(int r7) {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType.a(int):void");
    }

    public static JvmPrimitiveType get(String str) {
        if (str == null) {
            a(1);
        }
        JvmPrimitiveType jvmPrimitiveType = j.get(str);
        if (jvmPrimitiveType != null) {
            return jvmPrimitiveType;
        }
        throw new AssertionError("Non-primitive type name passed: " + str);
    }

    public static JvmPrimitiveType get(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            a(3);
        }
        JvmPrimitiveType jvmPrimitiveType = k.get(primitiveType);
        if (jvmPrimitiveType == null) {
            a(4);
        }
        return jvmPrimitiveType;
    }

    public String e() {
        String str = this.p;
        if (str == null) {
            a(12);
        }
        return str;
    }

    public String f() {
        String str = this.o;
        if (str == null) {
            a(11);
        }
        return str;
    }

    public PrimitiveType g() {
        PrimitiveType primitiveType = this.n;
        if (primitiveType == null) {
            a(10);
        }
        return primitiveType;
    }

    public FqName h() {
        FqName fqName = this.q;
        if (fqName == null) {
            a(13);
        }
        return fqName;
    }
}
