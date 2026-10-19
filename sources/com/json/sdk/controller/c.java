package com.json.sdk.controller;

import android.os.Build;
import android.webkit.JavascriptInterface;
import com.json.sdk.controller.t;
import com.json.sdk.utils.Logger;
import java.lang.reflect.Method;
import java.security.AccessControlException;

/* JADX INFO: loaded from: classes4.dex */
class c {
    private static final String a = "b";
    private final t.u b;

    c(t.u uVar) {
        this.b = uVar;
    }

    void a(String str) {
        t.u uVar = this.b;
        if (uVar != null) {
            uVar.g(str);
        }
    }

    synchronized void b(String str, String str2) throws Exception {
        if (this.b == null) {
            Logger.e(a, "!!! nativeAPI == null !!!");
            return;
        }
        Method declaredMethod = t.u.class.getDeclaredMethod(str, String.class);
        if (Build.VERSION.SDK_INT >= 17 && !declaredMethod.isAnnotationPresent(JavascriptInterface.class)) {
            throw new AccessControlException("Trying to access a private function: " + str);
        }
        declaredMethod.invoke(this.b, str2);
    }
}
