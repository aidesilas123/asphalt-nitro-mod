package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize.CapitalizeDecapitalizeKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: propertiesConventionUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class PropertiesConventionUtilKt {
    private static final Name a(Name name, String str, boolean z, String str2) {
        if (name.h()) {
            return null;
        }
        String strG = name.g();
        Intrinsics.checkExpressionValueIsNotNull(strG, "methodName.identifier");
        if (!StringsKt__StringsJVMKt.startsWith$default(strG, str, false, 2, null) || strG.length() == str.length()) {
            return null;
        }
        char cCharAt = strG.charAt(str.length());
        if ('a' <= cCharAt && 'z' >= cCharAt) {
            return null;
        }
        if (str2 != null) {
            return Name.identifier(str2 + StringsKt__StringsKt.removePrefix(strG, (CharSequence) str));
        }
        if (!z) {
            return name;
        }
        String strDecapitalizeSmartForCompiler = CapitalizeDecapitalizeKt.decapitalizeSmartForCompiler(StringsKt__StringsKt.removePrefix(strG, (CharSequence) str), true);
        if (Name.isValidIdentifier(strDecapitalizeSmartForCompiler)) {
            return Name.identifier(strDecapitalizeSmartForCompiler);
        }
        return null;
    }

    static /* synthetic */ Name b(Name name, String str, boolean z, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        return a(name, str, z, str2);
    }

    public static final List<Name> getPropertyNamesCandidatesByAccessorName(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        String strE = name.e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "name.asString()");
        return JvmAbi.isGetterName(strE) ? CollectionsKt__CollectionsKt.listOfNotNull(propertyNameByGetMethodName(name)) : JvmAbi.isSetterName(strE) ? propertyNamesBySetMethodName(name) : a.f9194e.b(name);
    }

    public static final Name propertyNameByGetMethodName(Name methodName) {
        Intrinsics.checkParameterIsNotNull(methodName, "methodName");
        Name nameB = b(methodName, "get", false, null, 12, null);
        return nameB != null ? nameB : b(methodName, "is", false, null, 8, null);
    }

    public static final Name propertyNameBySetMethodName(Name methodName, boolean z) {
        Intrinsics.checkParameterIsNotNull(methodName, "methodName");
        return b(methodName, "set", false, z ? "is" : null, 4, null);
    }

    public static final List<Name> propertyNamesBySetMethodName(Name methodName) {
        Intrinsics.checkParameterIsNotNull(methodName, "methodName");
        return CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new Name[]{propertyNameBySetMethodName(methodName, false), propertyNameBySetMethodName(methodName, true)});
    }
}
