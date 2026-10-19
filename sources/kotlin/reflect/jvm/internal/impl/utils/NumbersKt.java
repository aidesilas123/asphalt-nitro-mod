package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: numbers.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class NumbersKt {
    public static final b extractRadix(String value) {
        Intrinsics.checkParameterIsNotNull(value, "value");
        if (StringsKt__StringsJVMKt.startsWith$default(value, "0x", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(value, "0X", false, 2, null)) {
            String strSubstring = value.substring(2);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
            return new b(strSubstring, 16);
        }
        if (!StringsKt__StringsJVMKt.startsWith$default(value, "0b", false, 2, null) && !StringsKt__StringsJVMKt.startsWith$default(value, "0B", false, 2, null)) {
            return new b(value, 10);
        }
        String strSubstring2 = value.substring(2);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring2, "(this as java.lang.String).substring(startIndex)");
        return new b(strSubstring2, 2);
    }
}
