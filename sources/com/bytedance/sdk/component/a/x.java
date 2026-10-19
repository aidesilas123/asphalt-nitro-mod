package com.bytedance.sdk.component.a;

import android.text.TextUtils;

/* JADX INFO: compiled from: PermissionGroup.java */
/* JADX INFO: loaded from: classes.dex */
public enum x {
    PUBLIC,
    PROTECTED,
    PRIVATE;

    static x a(String str) {
        if (TextUtils.isEmpty(str)) {
            return PUBLIC;
        }
        String lowerCase = str.toLowerCase();
        return TextUtils.equals("protected", lowerCase) ? PROTECTED : TextUtils.equals("private", lowerCase) ? PRIVATE : PUBLIC;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this == PRIVATE ? "private" : this == PROTECTED ? "protected" : "public";
    }
}
