package kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize;

import java.util.Iterator;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: capitalizeDecapitalize.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class CapitalizeDecapitalizeKt {
    private static final boolean a(String str, int i, boolean z) {
        char cCharAt = str.charAt(i);
        return z ? 'A' <= cCharAt && 'Z' >= cCharAt : Character.isUpperCase(cCharAt);
    }

    private static final String b(String str, boolean z) {
        if (z) {
            return toLowerCaseAsciiOnly(str);
        }
        if (str == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String lowerCase = str.toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase()");
        return lowerCase;
    }

    public static final String capitalizeAsciiOnly(String capitalizeAsciiOnly) {
        char cCharAt;
        Intrinsics.checkParameterIsNotNull(capitalizeAsciiOnly, "$this$capitalizeAsciiOnly");
        if ((capitalizeAsciiOnly.length() == 0) || 'a' > (cCharAt = capitalizeAsciiOnly.charAt(0)) || 'z' < cCharAt) {
            return capitalizeAsciiOnly;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        String strSubstring = capitalizeAsciiOnly.substring(1);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return String.valueOf(upperCase) + strSubstring;
    }

    public static final String decapitalizeAsciiOnly(String decapitalizeAsciiOnly) {
        char cCharAt;
        Intrinsics.checkParameterIsNotNull(decapitalizeAsciiOnly, "$this$decapitalizeAsciiOnly");
        if ((decapitalizeAsciiOnly.length() == 0) || 'A' > (cCharAt = decapitalizeAsciiOnly.charAt(0)) || 'Z' < cCharAt) {
            return decapitalizeAsciiOnly;
        }
        char lowerCase = Character.toLowerCase(cCharAt);
        String strSubstring = decapitalizeAsciiOnly.substring(1);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
        return String.valueOf(lowerCase) + strSubstring;
    }

    public static final String decapitalizeSmartForCompiler(String decapitalizeSmartForCompiler, boolean z) {
        Integer next;
        Intrinsics.checkParameterIsNotNull(decapitalizeSmartForCompiler, "$this$decapitalizeSmartForCompiler");
        if ((decapitalizeSmartForCompiler.length() == 0) || !a(decapitalizeSmartForCompiler, 0, z)) {
            return decapitalizeSmartForCompiler;
        }
        if (decapitalizeSmartForCompiler.length() == 1 || !a(decapitalizeSmartForCompiler, 1, z)) {
            return z ? decapitalizeAsciiOnly(decapitalizeSmartForCompiler) : StringsKt__StringsJVMKt.decapitalize(decapitalizeSmartForCompiler);
        }
        Iterator<Integer> it = StringsKt__StringsKt.getIndices(decapitalizeSmartForCompiler).iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (!a(decapitalizeSmartForCompiler, next.intValue(), z)) {
                break;
            }
        }
        Integer num = next;
        if (num == null) {
            return b(decapitalizeSmartForCompiler, z);
        }
        int iIntValue = num.intValue() - 1;
        StringBuilder sb = new StringBuilder();
        String strSubstring = decapitalizeSmartForCompiler.substring(0, iIntValue);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        sb.append(b(strSubstring, z));
        String strSubstring2 = decapitalizeSmartForCompiler.substring(iIntValue);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring2, "(this as java.lang.String).substring(startIndex)");
        sb.append(strSubstring2);
        return sb.toString();
    }

    public static final String toLowerCaseAsciiOnly(String toLowerCaseAsciiOnly) {
        Intrinsics.checkParameterIsNotNull(toLowerCaseAsciiOnly, "$this$toLowerCaseAsciiOnly");
        StringBuilder sb = new StringBuilder(toLowerCaseAsciiOnly.length());
        int length = toLowerCaseAsciiOnly.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = toLowerCaseAsciiOnly.charAt(i);
            if ('A' <= cCharAt && 'Z' >= cCharAt) {
                cCharAt = Character.toLowerCase(cCharAt);
            }
            sb.append(cCharAt);
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "builder.toString()");
        return string;
    }
}
