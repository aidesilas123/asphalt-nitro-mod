package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes5.dex */
public enum PrimitiveType {
    BOOLEAN("Boolean"),
    CHAR("Char"),
    BYTE("Byte"),
    SHORT("Short"),
    INT("Int"),
    FLOAT("Float"),
    LONG("Long"),
    DOUBLE("Double");

    public static final Set<PrimitiveType> i = Collections.unmodifiableSet(EnumSet.of(CHAR, BYTE, SHORT, INT, FLOAT, LONG, DOUBLE));
    private final Name k;
    private final Name l;
    private FqName m = null;
    private FqName n = null;

    PrimitiveType(String str) {
        this.k = Name.identifier(str);
        this.l = Name.identifier(str + "Array");
    }

    private static /* synthetic */ void a(int i2) {
        Object[] objArr = new Object[2];
        objArr[0] = "kotlin/reflect/jvm/internal/impl/builtins/PrimitiveType";
        if (i2 == 1 || i2 == 2) {
            objArr[1] = "getTypeFqName";
        } else if (i2 == 3) {
            objArr[1] = "getArrayTypeName";
        } else if (i2 == 4 || i2 == 5) {
            objArr[1] = "getArrayTypeFqName";
        } else {
            objArr[1] = "getTypeName";
        }
        throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", objArr));
    }

    public FqName e() {
        FqName fqName = this.n;
        if (fqName != null) {
            if (fqName == null) {
                a(4);
            }
            return fqName;
        }
        FqName fqNameC = KotlinBuiltIns.b.c(this.l);
        this.n = fqNameC;
        if (fqNameC == null) {
            a(5);
        }
        return fqNameC;
    }

    public Name f() {
        Name name = this.l;
        if (name == null) {
            a(3);
        }
        return name;
    }

    public FqName g() {
        FqName fqName = this.m;
        if (fqName != null) {
            if (fqName == null) {
                a(1);
            }
            return fqName;
        }
        FqName fqNameC = KotlinBuiltIns.b.c(this.k);
        this.m = fqNameC;
        if (fqNameC == null) {
            a(2);
        }
        return fqNameC;
    }

    public Name h() {
        Name name = this.k;
        if (name == null) {
            a(0);
        }
        return name;
    }
}
