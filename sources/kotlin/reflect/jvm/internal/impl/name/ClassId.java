package kotlin.reflect.jvm.internal.impl.name;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class ClassId {
    private final FqName a;
    private final FqName b;
    private final boolean c;

    public ClassId(FqName fqName, FqName fqName2, boolean z) {
        if (fqName == null) {
            a(1);
        }
        if (fqName2 == null) {
            a(2);
        }
        this.a = fqName;
        this.b = fqName2;
        this.c = z;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ClassId(FqName fqName, Name name) {
        this(fqName, FqName.topLevel(name), false);
        if (fqName == null) {
            a(3);
        }
        if (name == null) {
            a(4);
        }
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 5 || i == 6 || i == 7 || i == 9 || i == 13 || i == 14) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 5 || i == 6 || i == 7 || i == 9 || i == 13 || i == 14) ? 2 : 3];
        switch (i) {
            case 1:
            case 3:
                objArr[0] = "packageFqName";
                break;
            case 2:
                objArr[0] = "relativeClassName";
                break;
            case 4:
                objArr[0] = "topLevelName";
                break;
            case 5:
            case 6:
            case 7:
            case 9:
            case 13:
            case 14:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/name/ClassId";
                break;
            case 8:
                objArr[0] = "name";
                break;
            case 10:
                objArr[0] = "segment";
                break;
            case 11:
            case 12:
                objArr[0] = TypedValues.Custom.S_STRING;
                break;
            default:
                objArr[0] = "topLevelFqName";
                break;
        }
        if (i == 5) {
            objArr[1] = "getPackageFqName";
        } else if (i == 6) {
            objArr[1] = "getRelativeClassName";
        } else if (i == 7) {
            objArr[1] = "getShortClassName";
        } else if (i == 9) {
            objArr[1] = "asSingleFqName";
        } else if (i == 13 || i == 14) {
            objArr[1] = "asString";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/ClassId";
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                objArr[2] = "<init>";
                break;
            case 5:
            case 6:
            case 7:
            case 9:
            case 13:
            case 14:
                break;
            case 8:
                objArr[2] = "createNestedClassId";
                break;
            case 10:
                objArr[2] = "startsWith";
                break;
            case 11:
            case 12:
                objArr[2] = "fromString";
                break;
            default:
                objArr[2] = "topLevel";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 5 && i != 6 && i != 7 && i != 9 && i != 13 && i != 14) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static ClassId fromString(String str) {
        if (str == null) {
            a(11);
        }
        return fromString(str, false);
    }

    public static ClassId fromString(String str, boolean z) {
        if (str == null) {
            a(12);
        }
        return new ClassId(new FqName(StringsKt__StringsKt.substringBeforeLast(str, '/', "").replace('/', '.')), new FqName(StringsKt__StringsKt.substringAfterLast(str, '/', str)), z);
    }

    public static ClassId topLevel(FqName fqName) {
        if (fqName == null) {
            a(0);
        }
        return new ClassId(fqName.e(), fqName.g());
    }

    public FqName b() {
        if (this.a.d()) {
            FqName fqName = this.b;
            if (fqName == null) {
                a(9);
            }
            return fqName;
        }
        return new FqName(this.a.b() + "." + this.b.b());
    }

    public String c() {
        if (this.a.d()) {
            String strB = this.b.b();
            if (strB == null) {
                a(13);
            }
            return strB;
        }
        String str = this.a.b().replace('.', '/') + "/" + this.b.b();
        if (str == null) {
            a(14);
        }
        return str;
    }

    public ClassId d(Name name) {
        if (name == null) {
            a(8);
        }
        return new ClassId(f(), this.b.c(name), this.c);
    }

    public ClassId e() {
        FqName fqNameE = this.b.e();
        if (fqNameE.d()) {
            return null;
        }
        return new ClassId(f(), fqNameE, this.c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ClassId.class != obj.getClass()) {
            return false;
        }
        ClassId classId = (ClassId) obj;
        return this.a.equals(classId.a) && this.b.equals(classId.b) && this.c == classId.c;
    }

    public FqName f() {
        FqName fqName = this.a;
        if (fqName == null) {
            a(5);
        }
        return fqName;
    }

    public FqName g() {
        FqName fqName = this.b;
        if (fqName == null) {
            a(6);
        }
        return fqName;
    }

    public Name h() {
        Name nameG = this.b.g();
        if (nameG == null) {
            a(7);
        }
        return nameG;
    }

    public int hashCode() {
        return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + Boolean.valueOf(this.c).hashCode();
    }

    public boolean i() {
        return this.c;
    }

    public boolean j() {
        return !this.b.e().d();
    }

    public String toString() {
        if (!this.a.d()) {
            return c();
        }
        return "/" + c();
    }
}
