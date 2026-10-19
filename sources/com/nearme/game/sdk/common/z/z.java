package com.nearme.game.sdk.common.z;

import android.app.Activity;
import android.app.Instrumentation;
import android.content.Context;
import android.util.Log;
import com.nearme.game.sdk.c.a.a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: HookUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public final class z {
    public static void init(Context context, a aVar) {
        Log.d("GameCenterSDK", "HookUtil::init start.");
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mInstrumentation");
            declaredField.setAccessible(true);
            declaredField.set(objInvoke, new y(context, (Instrumentation) declaredField.get(objInvoke), aVar));
        } catch (Exception e2) {
            Log.d("GameCenterSDK", "HookUtil::init failed ex = " + e2.getMessage());
            e2.printStackTrace();
        }
        try {
            if (context instanceof Activity) {
                Field declaredField2 = Class.forName("android.app.Activity").getDeclaredField("mInstrumentation");
                declaredField2.setAccessible(true);
                declaredField2.set(context, new y(context, (Instrumentation) declaredField2.get(context), aVar));
            }
        } catch (Exception e3) {
            Log.d("GameCenterSDK", "HookUtil::init failed ex = " + e3.getMessage());
            e3.printStackTrace();
        }
        Log.d("GameCenterSDK", "HookUtil::init end.");
    }
}
