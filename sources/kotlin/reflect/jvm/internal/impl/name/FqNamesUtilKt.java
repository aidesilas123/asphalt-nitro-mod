package kotlin.reflect.jvm.internal.impl.name;

import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: FqNamesUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class FqNamesUtilKt {
    private static final boolean a(String str, String str2) {
        return StringsKt__StringsJVMKt.startsWith$default(str, str2, false, 2, null) && str.charAt(str2.length()) == '.';
    }

    public static final boolean isSubpackageOf(FqName isSubpackageOf, FqName packageName) {
        Intrinsics.checkParameterIsNotNull(isSubpackageOf, "$this$isSubpackageOf");
        Intrinsics.checkParameterIsNotNull(packageName, "packageName");
        if (Intrinsics.areEqual(isSubpackageOf, packageName) || packageName.d()) {
            return true;
        }
        String strB = isSubpackageOf.b();
        Intrinsics.checkExpressionValueIsNotNull(strB, "this.asString()");
        String strB2 = packageName.b();
        Intrinsics.checkExpressionValueIsNotNull(strB2, "packageName.asString()");
        return a(strB, strB2);
    }

    public static final boolean isValidJavaFqName(String str) {
        if (str == null) {
            return false;
        }
        State state = State.BEGINNING;
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            int i2 = a.a[state.ordinal()];
            if (i2 == 1 || i2 == 2) {
                if (!Character.isJavaIdentifierPart(cCharAt)) {
                    return false;
                }
                state = State.MIDDLE;
            } else if (i2 != 3) {
                continue;
            } else if (cCharAt == '.') {
                state = State.AFTER_DOT;
            } else if (!Character.isJavaIdentifierPart(cCharAt)) {
                return false;
            }
        }
        return state != State.AFTER_DOT;
    }

    public static final FqName tail(FqName tail, FqName prefix) {
        Intrinsics.checkParameterIsNotNull(tail, "$this$tail");
        Intrinsics.checkParameterIsNotNull(prefix, "prefix");
        if (!isSubpackageOf(tail, prefix) || prefix.d()) {
            return tail;
        }
        if (Intrinsics.areEqual(tail, prefix)) {
            FqName fqName = FqName.a;
            Intrinsics.checkExpressionValueIsNotNull(fqName, "FqName.ROOT");
            return fqName;
        }
        String strB = tail.b();
        Intrinsics.checkExpressionValueIsNotNull(strB, "asString()");
        int length = prefix.b().length() + 1;
        if (strB == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String strSubstring = strB.substring(length);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return new FqName(strSubstring);
    }
}
