package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'a' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: UnsignedType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class UnsignedType {
    public static final UnsignedType a;
    public static final UnsignedType b;
    public static final UnsignedType c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final UnsignedType f9056d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ UnsignedType[] f9057e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Name f9058f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ClassId f9059g;
    private final ClassId h;

    static {
        ClassId classIdFromString = ClassId.fromString("kotlin/UByte");
        Intrinsics.checkExpressionValueIsNotNull(classIdFromString, "ClassId.fromString(\"kotlin/UByte\")");
        UnsignedType unsignedType = new UnsignedType("UBYTE", 0, classIdFromString);
        a = unsignedType;
        ClassId classIdFromString2 = ClassId.fromString("kotlin/UShort");
        Intrinsics.checkExpressionValueIsNotNull(classIdFromString2, "ClassId.fromString(\"kotlin/UShort\")");
        UnsignedType unsignedType2 = new UnsignedType("USHORT", 1, classIdFromString2);
        b = unsignedType2;
        ClassId classIdFromString3 = ClassId.fromString("kotlin/UInt");
        Intrinsics.checkExpressionValueIsNotNull(classIdFromString3, "ClassId.fromString(\"kotlin/UInt\")");
        UnsignedType unsignedType3 = new UnsignedType("UINT", 2, classIdFromString3);
        c = unsignedType3;
        ClassId classIdFromString4 = ClassId.fromString("kotlin/ULong");
        Intrinsics.checkExpressionValueIsNotNull(classIdFromString4, "ClassId.fromString(\"kotlin/ULong\")");
        UnsignedType unsignedType4 = new UnsignedType("ULONG", 3, classIdFromString4);
        f9056d = unsignedType4;
        f9057e = new UnsignedType[]{unsignedType, unsignedType2, unsignedType3, unsignedType4};
    }

    private UnsignedType(String str, int i, ClassId classId) {
        this.h = classId;
        Name nameH = classId.h();
        Intrinsics.checkExpressionValueIsNotNull(nameH, "classId.shortClassName");
        this.f9058f = nameH;
        this.f9059g = new ClassId(classId.f(), Name.identifier(nameH.e() + "Array"));
    }

    public static UnsignedType valueOf(String str) {
        return (UnsignedType) Enum.valueOf(UnsignedType.class, str);
    }

    public static UnsignedType[] values() {
        return (UnsignedType[]) f9057e.clone();
    }

    public final ClassId e() {
        return this.f9059g;
    }

    public final ClassId f() {
        return this.h;
    }

    public final Name g() {
        return this.f9058f;
    }
}
