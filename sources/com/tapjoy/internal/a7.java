package com.tapjoy.internal;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a7 {
    public static void a(SharedPreferences sharedPreferences, boolean z) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putBoolean("gcm.onServer", z);
        editorEdit.apply();
    }
}
