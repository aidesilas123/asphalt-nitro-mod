package com.bytedance.sdk.openadsdk.utils;

import android.content.SharedPreferences;

/* JADX INFO: compiled from: PropSwitchUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class s {
    public static boolean a = a();

    public static void a(int i) {
        try {
            SharedPreferences.Editor editorEdit = com.bytedance.sdk.openadsdk.core.o.a().getSharedPreferences("pag_sp_prop_switch", 0).edit();
            editorEdit.putInt("perf_con_use_prop", i);
            editorEdit.apply();
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.d(th.getMessage());
        }
    }

    private static boolean a() {
        SharedPreferences sharedPreferences;
        try {
            if (com.bytedance.sdk.openadsdk.core.o.a() != null && (sharedPreferences = com.bytedance.sdk.openadsdk.core.o.a().getSharedPreferences("pag_sp_prop_switch", 0)) != null) {
                return sharedPreferences.getInt("perf_con_use_prop", 1) == 1;
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.d(th.getMessage());
        }
        return true;
    }
}
