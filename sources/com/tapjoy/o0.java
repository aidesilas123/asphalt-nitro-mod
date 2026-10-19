package com.tapjoy;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.internal.b1;
import com.tapjoy.internal.g2;
import com.tapjoy.internal.h9;
import com.tapjoy.internal.k9;
import com.tapjoy.internal.o8;
import com.tapjoy.internal.p6;
import com.tapjoy.internal.t9;
import com.tapjoy.internal.v1;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class o0 extends h9 {
    public boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f8041d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p f8042e = null;

    public final void a(Context context) throws i0 {
        boolean z;
        v1 v1Var = v1.a;
        if (v1Var.f8018g == null) {
            v1Var.g(context);
        }
        try {
            v1Var.f8018g.getClassLoader().loadClass("com.android.installreferrer.api.InstallReferrerStateListener");
            z = true;
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
            z = false;
        }
        if (!z) {
            throw new i0("InstallReferrerClient APIs aren't available in your project. To use activateInstallReferrerClient() API,`com.android.installreferrer:installreferrer` dependency is required to your project level build.gradle file");
        }
        new s().c(context);
    }

    public final boolean b() {
        v1 v1Var = v1.a;
        if (!v1Var.e()) {
            return false;
        }
        Boolean bool = v1Var.h.f7884d.w;
        Boolean bool2 = p6.f7957d;
        if (bool == null) {
            bool2.getClass();
            bool = bool2;
        }
        return bool.booleanValue();
    }

    public synchronized boolean c(Context context, String str, Hashtable hashtable, n nVar) {
        Object obj;
        boolean z = false;
        if (Build.VERSION.SDK_INT < 24) {
            TapjoyLog.e("TapjoyAPI", "Device OS version not supported");
            if (nVar != null) {
                ((b1) nVar).a.d(2, "Device OS version not supported");
                nVar.onConnectFailure();
            }
            return false;
        }
        if (hashtable != null && (obj = hashtable.get("TJC_OPTION_ENABLE_LOGGING")) != null) {
            TapjoyLog.setDebugEnabled("true".equals(obj.toString()));
        }
        TapjoyConnectCore.setSDKType(NotificationCompat.CATEGORY_EVENT);
        if (context == null) {
            TapjoyLog.e("TapjoyAPI", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, "The application context is NULL"));
            if (nVar != null) {
                ((b1) nVar).a.d(1, "The application context is NULL");
                nVar.onConnectFailure();
            }
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            TapjoyLog.e("TapjoyAPI", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, "The SDK key is NULL. A valid SDK key is required to connect successfully to Tapjoy"));
            if (nVar != null) {
                ((b1) nVar).a.d(1, "The SDK key is NULL. A valid SDK key is required to connect successfully to Tapjoy");
                nVar.onConnectFailure();
            }
            return false;
        }
        o8 o8Var = FiveRocksIntegration.a;
        v1 v1Var = v1.a;
        if (!v1Var.f8017f) {
            v1Var.f8017f = true;
        }
        v1Var.o = g2.a(new k9());
        try {
            TapjoyAppSettings.init(context);
            TapjoyConnectCore.requestTapjoyConnect(context, str, hashtable, new t9(this, context, (b1) nVar));
            this.c = true;
            if (hashtable != null && String.valueOf(hashtable.get("TJC_OPTION_DISABLE_AUTOMATIC_SESSION_TRACKING")).equalsIgnoreCase("true")) {
                z = true;
            }
            if (z) {
                TapjoyLog.i("TapjoyAPI", "Automatic session tracking is disabled.");
            } else {
                com.tapjoy.internal.e.a(context);
            }
            return true;
        } catch (i0 e2) {
            TapjoyLog.e("TapjoyAPI", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, e2.getMessage()));
            if (nVar != null) {
                ((b1) nVar).a.d(1, e2.getMessage());
                nVar.onConnectFailure();
            }
            return false;
        } catch (f0 e3) {
            TapjoyLog.e("TapjoyAPI", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, e3.getMessage()));
            if (nVar != null) {
                ((b1) nVar).a.d(1, e3.getMessage());
                nVar.onConnectFailure();
            }
            return false;
        }
    }

    public final boolean d(String str) {
        if (this.b) {
            return true;
        }
        TapjoyLog.w("TapjoyAPI", "Can not call " + str + " because Tapjoy SDK has not successfully connected.");
        return false;
    }

    public final boolean e(String str) {
        if (this.c) {
            return true;
        }
        String str2 = "Can not call " + str + " because Tapjoy SDK is not initialized.";
        this.f8041d = str2;
        TapjoyLog.e("TapjoyAPI", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, str2));
        return false;
    }
}
