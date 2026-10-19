package com.tapjoy.internal;

import android.app.Activity;
import android.app.Application;
import android.os.Looper;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.io.IOException;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class t1 {
    public static void a(Activity activity) {
        v1 v1Var = v1.a;
        v1Var.getClass();
        if (activity != null) {
            Looper.myLooper();
            Looper.getMainLooper();
            Application application = activity.getApplication();
            synchronized (t.class) {
                if (t.a != application) {
                    t.a = application;
                }
            }
            t.b++;
            t.c.a(activity);
            t.f8001d.add(activity);
            if (v1Var.i() && v1Var.k()) {
                q.a(activity);
            }
        }
    }

    public static void a(String str, String str2, String str3, String str4) {
        v1 v1Var = v1.a;
        if (v1Var.i()) {
            long jQ = 0;
            try {
                k0 k0VarA = b4.a(str);
                k0VarA.I(3);
                String strP = null;
                String strP2 = null;
                String strP3 = null;
                while (k0VarA.e()) {
                    String strO = k0VarA.o();
                    if (InAppPurchaseMetaData.KEY_PRODUCT_ID.equals(strO)) {
                        strP2 = k0VarA.p();
                    } else if ("type".equals(strO)) {
                        k0VarA.p();
                    } else if ("price".equals(strO)) {
                        k0VarA.p();
                    } else if ("title".equals(strO)) {
                        k0VarA.p();
                    } else if ("description".equals(strO)) {
                        k0VarA.p();
                    } else if ("price_currency_code".equals(strO)) {
                        strP3 = k0VarA.p();
                    } else if ("price_amount_micros".equals(strO)) {
                        jQ = k0VarA.Q();
                    } else {
                        k0VarA.u();
                    }
                }
                k0VarA.I(4);
                String strA = u.a(strP2);
                String strA2 = u.a(strP3);
                if (strA == null || strA2 == null || strA2.length() != 3) {
                    return;
                }
                String strA3 = u.a(str2);
                String strA4 = u.a(str3);
                if (strA3 != null && strA4 != null) {
                    try {
                        k0 k0VarA2 = b4.a(strA3);
                        k0VarA2.I(3);
                        String strP4 = null;
                        String strP5 = null;
                        while (k0VarA2.e()) {
                            String strO2 = k0VarA2.o();
                            if ("orderId".equals(strO2)) {
                                strP = k0VarA2.p();
                            } else if (HandleAndroidInvocationsUseCase.KEY_PACKAGE_NAME.equals(strO2)) {
                                strP4 = k0VarA2.p();
                            } else if (InAppPurchaseMetaData.KEY_PRODUCT_ID.equals(strO2)) {
                                strP5 = k0VarA2.p();
                            } else if ("purchaseTime".equals(strO2)) {
                                k0VarA2.Q();
                            } else if ("purchaseState".equals(strO2)) {
                                k0VarA2.k();
                            } else if (SDKConstants.PARAM_DEVELOPER_PAYLOAD.equals(strO2)) {
                                k0VarA2.p();
                            } else if (SDKConstants.PARAM_PURCHASE_TOKEN.equals(strO2)) {
                                k0VarA2.p();
                            } else {
                                k0VarA2.u();
                            }
                        }
                        k0VarA2.I(4);
                        if (!TextUtils.isEmpty(strP) && !TextUtils.isEmpty(strP4)) {
                            TextUtils.isEmpty(strP5);
                        }
                    } catch (IOException unused) {
                    }
                }
                v1Var.i.c(strA, strA2.toUpperCase(Locale.US), jQ / 1000000.0d, strA3, strA4, u.a(str4));
            } catch (IOException unused2) {
            }
        }
    }

    public static void b(Activity activity) {
        v1 v1Var = v1.a;
        v1Var.getClass();
        if (activity != null) {
            Looper.myLooper();
            Looper.getMainLooper();
            t.b--;
            t.c.a = null;
            t.f8001d.remove(activity);
            if (t.b < 0) {
                t.b = 0;
            }
            if (v1Var.i()) {
                if (t.b > 0) {
                    return;
                }
                e9 e9Var = v1Var.j;
                if (e9Var.b.get()) {
                    e9Var.c.run();
                }
            }
        }
    }
}
