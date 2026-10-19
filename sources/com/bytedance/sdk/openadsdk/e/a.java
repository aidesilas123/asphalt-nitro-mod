package com.bytedance.sdk.openadsdk.e;

import android.util.SparseArray;
import com.bytedance.sdk.component.utils.l;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: BaseHook.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements c {
    private final SparseArray<Method> a;
    private Object b;

    @Override // com.bytedance.sdk.openadsdk.e.c
    public <T> T a(int i, Object... objArr) {
        Object obj;
        Method method = this.a.get(i);
        if (method == null || (obj = this.b) == null) {
            l.d(a(), "call method " + i + " failed for null ");
            return null;
        }
        try {
            return obj instanceof Class ? (T) method.invoke(null, objArr) : (T) method.invoke(obj, objArr);
        } catch (Throwable th) {
            l.d(a(), "call method " + i + " failed: " + th.getMessage());
            return null;
        }
    }

    public abstract String a();
}
