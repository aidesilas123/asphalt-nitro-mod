package com.pgl.ssdk.ces;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static native Object meta(int i, Context context, Object obj);

    public static Object njss(int i, Object obj) {
        try {
            e eVarC = e.c();
            if (eVarC != null) {
                return eVarC.a(i, obj);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
