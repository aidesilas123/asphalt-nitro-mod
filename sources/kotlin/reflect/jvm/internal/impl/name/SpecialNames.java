package kotlin.reflect.jvm.internal.impl.name;

/* JADX INFO: loaded from: classes5.dex */
public class SpecialNames {
    public static final Name a = Name.special("<no name provided>");
    public static final Name b = Name.special("<root package>");
    public static final Name c = Name.identifier("Companion");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Name f9678d = Name.identifier("no_name_in_PSI_3d19d79d_1ba9_4cd0_b7f5_b46aa3cd5d40");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Name f9679e = Name.special("<anonymous>");

    private static /* synthetic */ void a(int i) {
        String str = i != 1 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[i != 1 ? 2 : 3];
        if (i != 1) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/name/SpecialNames";
        } else {
            objArr[0] = "name";
        }
        if (i != 1) {
            objArr[1] = "safeIdentifier";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/SpecialNames";
        }
        if (i == 1) {
            objArr[2] = "isSafeIdentifier";
        }
        String str2 = String.format(str, objArr);
        if (i == 1) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static boolean isSafeIdentifier(Name name) {
        if (name == null) {
            a(1);
        }
        return (name.e().isEmpty() || name.h()) ? false : true;
    }

    public static Name safeIdentifier(Name name) {
        if (name == null || name.h()) {
            name = f9678d;
        }
        if (name == null) {
            a(0);
        }
        return name;
    }
}
