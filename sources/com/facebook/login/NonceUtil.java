package com.facebook.login;

import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: NonceUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class NonceUtil {
    public static final NonceUtil INSTANCE = new NonceUtil();

    private NonceUtil() {
    }

    public static final boolean isValidNonce(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return !(StringsKt__StringsKt.indexOf$default((CharSequence) str, ' ', 0, false, 6, (Object) null) >= 0);
    }
}
