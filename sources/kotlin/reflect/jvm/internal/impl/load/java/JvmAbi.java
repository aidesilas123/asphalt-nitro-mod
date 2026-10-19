package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize.CapitalizeDecapitalizeKt;

/* JADX INFO: loaded from: classes5.dex */
public final class JvmAbi {
    public static final FqName a = new FqName("kotlin.jvm.JvmField");
    public static final ClassId b = ClassId.topLevel(new FqName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl"));

    private static /* synthetic */ void a(int i) {
        String str = (i == 1 || i == 3 || i == 7 || i == 9) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 3 || i == 7 || i == 9) ? 2 : 3];
        switch (i) {
            case 1:
            case 3:
            case 7:
            case 9:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/JvmAbi";
                break;
            case 2:
                objArr[0] = "typeAliasName";
                break;
            case 4:
            case 5:
                objArr[0] = "name";
                break;
            case 6:
            case 8:
                objArr[0] = "propertyName";
                break;
            case 10:
                objArr[0] = "propertyDescriptor";
                break;
            case 11:
            case 12:
                objArr[0] = "companionObject";
                break;
            case 13:
                objArr[0] = "memberDescriptor";
                break;
            default:
                objArr[0] = "baseName";
                break;
        }
        if (i == 1) {
            objArr[1] = "getSyntheticMethodNameForAnnotatedProperty";
        } else if (i == 3) {
            objArr[1] = "getSyntheticMethodNameForAnnotatedTypeAlias";
        } else if (i == 7) {
            objArr[1] = "getterName";
        } else if (i != 9) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JvmAbi";
        } else {
            objArr[1] = "setterName";
        }
        switch (i) {
            case 1:
            case 3:
            case 7:
            case 9:
                break;
            case 2:
                objArr[2] = "getSyntheticMethodNameForAnnotatedTypeAlias";
                break;
            case 4:
                objArr[2] = "isGetterName";
                break;
            case 5:
                objArr[2] = "isSetterName";
                break;
            case 6:
                objArr[2] = "getterName";
                break;
            case 8:
                objArr[2] = "setterName";
                break;
            case 10:
                objArr[2] = "isPropertyWithBackingFieldInOuterClass";
                break;
            case 11:
                objArr[2] = "isClassCompanionObjectWithBackingFieldsInOuter";
                break;
            case 12:
                objArr[2] = "isMappedIntrinsicCompanionObject";
                break;
            case 13:
                objArr[2] = "hasJvmFieldAnnotation";
                break;
            default:
                objArr[2] = "getSyntheticMethodNameForAnnotatedProperty";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 3 && i != 7 && i != 9) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static String getterName(String str) {
        if (str == null) {
            a(6);
        }
        if (!startsWithIsPrefix(str)) {
            str = "get" + CapitalizeDecapitalizeKt.capitalizeAsciiOnly(str);
        }
        if (str == null) {
            a(7);
        }
        return str;
    }

    public static boolean hasJvmFieldAnnotation(CallableMemberDescriptor callableMemberDescriptor) {
        kotlin.reflect.jvm.internal.impl.descriptors.n nVarR0;
        if (callableMemberDescriptor == null) {
            a(13);
        }
        if ((callableMemberDescriptor instanceof y) && (nVarR0 = ((y) callableMemberDescriptor).r0()) != null && nVarR0.getAnnotations().N(a)) {
            return true;
        }
        return callableMemberDescriptor.getAnnotations().N(a);
    }

    public static boolean isClassCompanionObjectWithBackingFieldsInOuter(kotlin.reflect.jvm.internal.impl.descriptors.i iVar) {
        if (iVar == null) {
            a(11);
        }
        return DescriptorUtils.isCompanionObject(iVar) && DescriptorUtils.isClassOrEnumClass(iVar.b()) && !isMappedIntrinsicCompanionObject((kotlin.reflect.jvm.internal.impl.descriptors.d) iVar);
    }

    public static boolean isGetterName(String str) {
        if (str == null) {
            a(4);
        }
        return str.startsWith("get") || str.startsWith("is");
    }

    public static boolean isMappedIntrinsicCompanionObject(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar == null) {
            a(12);
        }
        return kotlin.reflect.jvm.internal.impl.builtins.c.b.b(dVar);
    }

    public static boolean isPropertyWithBackingFieldInOuterClass(y yVar) {
        if (yVar == null) {
            a(10);
        }
        if (yVar.getKind() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            return false;
        }
        if (isClassCompanionObjectWithBackingFieldsInOuter(yVar.b())) {
            return true;
        }
        return DescriptorUtils.isCompanionObject(yVar.b()) && hasJvmFieldAnnotation(yVar);
    }

    public static boolean isSetterName(String str) {
        if (str == null) {
            a(5);
        }
        return str.startsWith("set");
    }

    public static String setterName(String str) {
        if (str == null) {
            a(8);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("set");
        sb.append(startsWithIsPrefix(str) ? str.substring(2) : CapitalizeDecapitalizeKt.capitalizeAsciiOnly(str));
        String string = sb.toString();
        if (string == null) {
            a(9);
        }
        return string;
    }

    public static boolean startsWithIsPrefix(String str) {
        if (!str.startsWith("is") || str.length() == 2) {
            return false;
        }
        char cCharAt = str.charAt(2);
        return 'a' > cCharAt || cCharAt > 'z';
    }
}
