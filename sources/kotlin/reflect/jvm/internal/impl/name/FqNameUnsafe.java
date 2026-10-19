package kotlin.reflect.jvm.internal.impl.name;

import com.json.qc;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes5.dex */
public final class FqNameUnsafe {
    private static final Name a = Name.special("<root>");
    private static final Pattern b = Pattern.compile("\\.");
    private static final Function1<String, Name> c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f9674d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient FqName f9675e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient FqNameUnsafe f9676f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient Name f9677g;

    static class a implements Function1<String, Name> {
        a() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Name invoke(String str) {
            return Name.guessByFirstCharacter(str);
        }
    }

    public FqNameUnsafe(String str) {
        if (str == null) {
            a(2);
        }
        this.f9674d = str;
    }

    FqNameUnsafe(String str, FqName fqName) {
        if (str == null) {
            a(0);
        }
        if (fqName == null) {
            a(1);
        }
        this.f9674d = str;
        this.f9675e = fqName;
    }

    private FqNameUnsafe(String str, FqNameUnsafe fqNameUnsafe, Name name) {
        if (str == null) {
            a(3);
        }
        this.f9674d = str;
        this.f9676f = fqNameUnsafe;
        this.f9677g = name;
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 15:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                i2 = 2;
                break;
            case 9:
            case 15:
            case 16:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        if (i != 1) {
            switch (i) {
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 17:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                    break;
                case 9:
                    objArr[0] = "name";
                    break;
                case 15:
                    objArr[0] = "segment";
                    break;
                case 16:
                    objArr[0] = "shortName";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
        } else {
            objArr[0] = "safe";
        }
        switch (i) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
            case 6:
                objArr[1] = "toSafe";
                break;
            case 7:
            case 8:
                objArr[1] = "parent";
                break;
            case 9:
            case 15:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                break;
            case 10:
            case 11:
                objArr[1] = "shortName";
                break;
            case 12:
            case 13:
                objArr[1] = "shortNameOrSpecial";
                break;
            case 14:
                objArr[1] = "pathSegments";
                break;
            case 17:
                objArr[1] = "toString";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                break;
            case 9:
                objArr[2] = "child";
                break;
            case 15:
                objArr[2] = "startsWith";
                break;
            case 16:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                throw new IllegalStateException(str2);
            case 9:
            case 15:
            case 16:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    private void d() {
        int iLastIndexOf = this.f9674d.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            this.f9677g = Name.guessByFirstCharacter(this.f9674d.substring(iLastIndexOf + 1));
            this.f9676f = new FqNameUnsafe(this.f9674d.substring(0, iLastIndexOf));
        } else {
            this.f9677g = Name.guessByFirstCharacter(this.f9674d);
            this.f9676f = FqName.a.j();
        }
    }

    public static FqNameUnsafe topLevel(Name name) {
        if (name == null) {
            a(16);
        }
        return new FqNameUnsafe(name.e(), FqName.a.j(), name);
    }

    public String b() {
        String str = this.f9674d;
        if (str == null) {
            a(4);
        }
        return str;
    }

    public FqNameUnsafe c(Name name) {
        String strE;
        if (name == null) {
            a(9);
        }
        if (e()) {
            strE = name.e();
        } else {
            strE = this.f9674d + "." + name.e();
        }
        return new FqNameUnsafe(strE, this, name);
    }

    public boolean e() {
        return this.f9674d.isEmpty();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FqNameUnsafe) && this.f9674d.equals(((FqNameUnsafe) obj).f9674d);
    }

    public boolean f() {
        return this.f9675e != null || b().indexOf(60) < 0;
    }

    public FqNameUnsafe g() {
        FqNameUnsafe fqNameUnsafe = this.f9676f;
        if (fqNameUnsafe != null) {
            if (fqNameUnsafe == null) {
                a(7);
            }
            return fqNameUnsafe;
        }
        if (e()) {
            throw new IllegalStateException(qc.y);
        }
        d();
        FqNameUnsafe fqNameUnsafe2 = this.f9676f;
        if (fqNameUnsafe2 == null) {
            a(8);
        }
        return fqNameUnsafe2;
    }

    public List<Name> h() {
        List<Name> listEmptyList = e() ? Collections.emptyList() : ArraysKt___ArraysKt.map(b.split(this.f9674d), c);
        if (listEmptyList == null) {
            a(14);
        }
        return listEmptyList;
    }

    public int hashCode() {
        return this.f9674d.hashCode();
    }

    public Name i() {
        Name name = this.f9677g;
        if (name != null) {
            if (name == null) {
                a(10);
            }
            return name;
        }
        if (e()) {
            throw new IllegalStateException(qc.y);
        }
        d();
        Name name2 = this.f9677g;
        if (name2 == null) {
            a(11);
        }
        return name2;
    }

    public Name j() {
        if (e()) {
            Name name = a;
            if (name == null) {
                a(12);
            }
            return name;
        }
        Name nameI = i();
        if (nameI == null) {
            a(13);
        }
        return nameI;
    }

    public boolean k(Name name) {
        if (name == null) {
            a(15);
        }
        if (e()) {
            return false;
        }
        int iIndexOf = this.f9674d.indexOf(46);
        String str = this.f9674d;
        String strE = name.e();
        if (iIndexOf == -1) {
            iIndexOf = this.f9674d.length();
        }
        return str.regionMatches(0, strE, 0, iIndexOf);
    }

    public FqName l() {
        FqName fqName = this.f9675e;
        if (fqName != null) {
            if (fqName == null) {
                a(5);
            }
            return fqName;
        }
        FqName fqName2 = new FqName(this);
        this.f9675e = fqName2;
        if (fqName2 == null) {
            a(6);
        }
        return fqName2;
    }

    public String toString() {
        String strE = e() ? a.e() : this.f9674d;
        if (strE == null) {
            a(17);
        }
        return strE;
    }
}
