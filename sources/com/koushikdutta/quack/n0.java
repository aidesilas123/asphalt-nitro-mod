package com.koushikdutta.quack;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n0 {
    public static boolean a(QuackReadonlyObject quackReadonlyObject, int i, Object obj) {
        return quackReadonlyObject.set(Integer.valueOf(i), obj);
    }

    public static boolean b(QuackReadonlyObject quackReadonlyObject, Object obj, Object obj2) {
        throw new UnsupportedOperationException("can not set property on a JavaObject");
    }

    public static boolean c(QuackReadonlyObject quackReadonlyObject, String str, Object obj) {
        return quackReadonlyObject.set((Object) str, obj);
    }
}
