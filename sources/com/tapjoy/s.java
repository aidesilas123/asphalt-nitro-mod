package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class s implements InvocationHandler {
    public final String a = "Tapjoy";
    public Object b;
    public Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SharedPreferences f8047d;

    /* JADX WARN: Removed duplicated region for block: B:42:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cf A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a() {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.s.a():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(Class cls, Object obj) {
        if (this.b != null) {
            Log.e(this.a, "startConnection");
            try {
                try {
                    Object obj2 = this.b;
                    Class[] clsArr = {cls};
                    Object[] objArr = {obj};
                    try {
                        try {
                            Method method = obj2.getClass().getMethod("startConnection", clsArr);
                            if (method != null) {
                                method.invoke(obj2, objArr);
                            }
                        } catch (Exception e2) {
                            Log.e("Tapjoy", e2.getMessage());
                        }
                    } catch (Exception e3) {
                        Log.e("Tapjoy", e3.getMessage());
                    }
                } catch (NoClassDefFoundError e4) {
                    Log.e(this.a, e4.getMessage());
                }
            } catch (Exception e5) {
                Log.e(this.a, e5.getMessage());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038 A[Catch: Exception -> 0x005e, NoClassDefFoundError -> 0x0069, TRY_LEAVE, TryCatch #0 {Exception -> 0x005e, blocks: (B:5:0x000e, B:16:0x0038, B:27:0x0056, B:12:0x002d), top: B:62:0x000e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c(android.content.Context r10) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.s.c(android.content.Context):void");
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        Context context;
        if (method == null) {
            Log.e(this.a, "Failed to invoke null method");
            return null;
        }
        String name = method.getName();
        if (name == null) {
            Log.e(this.a, "Failed to invoke null method name");
            return null;
        }
        if (objArr == null) {
            Log.e(this.a, "Invoking method with null args");
            objArr = new Object[0];
        }
        if (name.equals("onInstallReferrerSetupFinished")) {
            if (objArr.length != 1) {
                Log.e(this.a, "Invalid args");
                return null;
            }
            Object obj2 = objArr[0];
            if (!(obj2 instanceof Integer)) {
                Log.e(this.a, "Invalid args type.");
                return null;
            }
            Integer num = (Integer) obj2;
            if (num == null) {
                Log.e(this.a, "onInstallReferrerSetupFinished response code can't be null");
                return null;
            }
            int iIntValue = num.intValue();
            if (iIntValue == 0) {
                try {
                    a();
                    Object obj3 = this.b;
                    if (obj3 != null) {
                        try {
                            Object[] objArr2 = new Object[0];
                            try {
                                try {
                                    Method method2 = obj3.getClass().getMethod("endConnection", null);
                                    if (method2 != null) {
                                        method2.invoke(obj3, objArr2);
                                    }
                                } catch (Exception e2) {
                                    Log.e("Tapjoy", e2.getMessage());
                                }
                            } catch (Exception e3) {
                                Log.e("Tapjoy", e3.getMessage());
                            }
                        } catch (Exception e4) {
                            Log.e(this.a, e4.getMessage());
                        }
                    }
                } catch (Exception e5) {
                    Log.e(this.a, e5.getMessage());
                }
            } else if (iIntValue == 1 || iIntValue != 2) {
                Log.e(this.a, "Install referrer service isn't available");
            } else {
                Log.e(this.a, "Install referrer isn't supported on the current Play Store app.");
            }
        } else if (name.equals("onInstallReferrerServiceDisconnected") && (context = this.c) != null) {
            c(context);
        }
        return null;
    }
}
