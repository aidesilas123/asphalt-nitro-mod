package com.applovin.exoplayer2.l;

import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    @Nullable
    private static Method abI;

    @Nullable
    public static IBinder a(Bundle bundle, @Nullable String str) {
        return ai.acV >= 18 ? bundle.getBinder(str) : b(bundle, str);
    }

    @Nullable
    private static IBinder b(Bundle bundle, @Nullable String str) {
        Method method = abI;
        if (method == null) {
            try {
                Method method2 = Bundle.class.getMethod("getIBinder", String.class);
                abI = method2;
                method2.setAccessible(true);
                method = abI;
            } catch (NoSuchMethodException e2) {
                q.a("BundleUtil", "Failed to retrieve getIBinder method", e2);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e3) {
            q.a("BundleUtil", "Failed to invoke getIBinder via reflection", e3);
            return null;
        }
    }
}
