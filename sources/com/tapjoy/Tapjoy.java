package com.tapjoy;

import android.app.Activity;
import android.content.Context;
import android.opengl.GLSurfaceView;
import android.text.TextUtils;
import android.util.Log;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.internal.ba;
import com.tapjoy.internal.d3;
import com.tapjoy.internal.e2;
import com.tapjoy.internal.e9;
import com.tapjoy.internal.h9;
import com.tapjoy.internal.i5;
import com.tapjoy.internal.j2;
import com.tapjoy.internal.m8;
import com.tapjoy.internal.r1;
import com.tapjoy.internal.r9;
import com.tapjoy.internal.t1;
import com.tapjoy.internal.v1;
import com.tapjoy.internal.w8;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class Tapjoy {
    public static void actionComplete(String str) {
        if (h9.a.d("actionComplete")) {
            TapjoyConnectCore.getInstance().b(str);
        }
    }

    @Deprecated
    public static void activateInstallReferrerClient(Context context) {
        try {
            h9.a.a(context);
        } catch (i0 e2) {
            Log.w("Tapjoy", e2.getMessage());
        }
    }

    public static void addUserTag(String str) {
        HashSet hashSet;
        HashSet hashSet2;
        h9.a.getClass();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        v1 v1Var = v1.a;
        if (v1Var.e()) {
            d3 d3Var = v1Var.h;
            synchronized (d3Var) {
                hashSet = new HashSet(d3Var.f7884d.v);
            }
            hashSet2 = hashSet;
        } else {
            hashSet2 = new HashSet();
        }
        if (hashSet2.add(str)) {
            v1Var.d(hashSet2);
        }
    }

    public static void awardCurrency(int i, TJAwardCurrencyListener tJAwardCurrencyListener) {
        ba baVar = h9.a;
        if (!baVar.d("awardCurrency")) {
            if (tJAwardCurrencyListener != null) {
                tJAwardCurrencyListener.onAwardCurrencyResponseFailure("Tapjoy SDK is not connected");
            }
        } else {
            p pVar = baVar.f8042e;
            if (pVar != null) {
                pVar.b(i, tJAwardCurrencyListener);
            }
        }
    }

    public static void clearUserTags() {
        h9.a.getClass();
        v1.a.d(null);
    }

    public static boolean connect(Context context, String str) {
        ba baVar = h9.a;
        baVar.getClass();
        return baVar.f7873f.f(context, str, null, null);
    }

    public static boolean connect(Context context, String str, Hashtable<String, ?> hashtable) {
        return h9.a.f7873f.f(context, str, hashtable, null);
    }

    public static synchronized boolean connect(Context context, String str, Hashtable<String, ?> hashtable, n nVar) {
        return h9.a.f7873f.f(context, str, hashtable, nVar);
    }

    public static void endSession() {
        if (h9.a.e("endSession")) {
            com.tapjoy.internal.e.a();
            v1 v1Var = v1.a;
            v1Var.m = false;
            TapjoyConnectCore.getInstance().d();
            if (v1Var.i()) {
                e9 e9Var = v1Var.j;
                if (e9Var.b.get()) {
                    e9Var.c.run();
                }
            }
        }
    }

    public static void getCurrencyBalance(TJGetCurrencyBalanceListener tJGetCurrencyBalanceListener) {
        ba baVar = h9.a;
        if (!baVar.d("getCurrencyBalance")) {
            if (tJGetCurrencyBalanceListener != null) {
                tJGetCurrencyBalanceListener.onGetCurrencyBalanceResponseFailure("Tapjoy SDK is not connected");
            }
        } else {
            p pVar = baVar.f8042e;
            if (pVar != null) {
                pVar.c(tJGetCurrencyBalanceListener);
            }
        }
    }

    public static String getCustomParameter() {
        h9.a.getClass();
        return TapjoyConnectCore.getCustomParameter();
    }

    @Deprecated
    public static TJPlacement getLimitedPlacement(String str, TJPlacementListener tJPlacementListener) {
        return null;
    }

    public static int getMaxLevel() {
        h9.a.getClass();
        return TJUserParameters.getInstance().d();
    }

    public static TJPlacement getPlacement(String str, TJPlacementListener tJPlacementListener) {
        TJPlacement tJPlacement;
        h9.a.getClass();
        synchronized (TJPlacementManager.a) {
            tJPlacement = new TJPlacement(TJPlacementManager.a(str, "", "", false), tJPlacementListener);
        }
        return tJPlacement;
    }

    public static TJPrivacyPolicy getPrivacyPolicy() {
        h9.a.getClass();
        return TJPrivacyPolicy.getInstance();
    }

    public static String getSupportURL() {
        if (h9.a.d("getSupportURL")) {
            return TapjoyConnectCore.getSupportURL(null);
        }
        return null;
    }

    public static String getSupportURL(String str) {
        if (h9.a.d("getSupportURL")) {
            return TapjoyConnectCore.getSupportURL(str);
        }
        return null;
    }

    public static TJSegment getUserSegment() {
        h9.a.getClass();
        return TJUserParameters.getInstance().e();
    }

    public static Set<String> getUserTags() {
        HashSet hashSet;
        h9.a.getClass();
        v1 v1Var = v1.a;
        if (!v1Var.e()) {
            return new HashSet();
        }
        d3 d3Var = v1Var.h;
        synchronized (d3Var) {
            hashSet = new HashSet(d3Var.f7884d.v);
        }
        return hashSet;
    }

    @Deprecated
    public static String getUserToken() {
        h9.a.getClass();
        return TapjoyConnectCore.getUserToken();
    }

    public static String getVersion() {
        h9.a.getClass();
        return "13.3.0";
    }

    public static boolean isConnected() {
        return h9.a.b;
    }

    @Deprecated
    public static boolean isLimitedConnected() {
        return false;
    }

    @Deprecated
    public static boolean isPushNotificationDisabled() {
        return h9.a.b();
    }

    @Deprecated
    public static synchronized boolean limitedConnect(Context context, String str, n nVar) {
        nVar.onConnectFailure(1, "The interface is no longer operational.");
        return false;
    }

    public static void loadSharedLibrary() {
        try {
            System.loadLibrary("tapjoy");
        } catch (UnsatisfiedLinkError unused) {
        }
    }

    public static void onActivityStart(Activity activity) {
        TapjoyUtil.runOnMainThread(new m8(activity));
    }

    public static void onActivityStop(Activity activity) {
        TapjoyUtil.runOnMainThread(new w8(activity));
    }

    public static void optOutAdvertisingID(Context context, boolean z) {
        h9.a.getClass();
        TapjoyConnectCore.optOutAdvertisingID(context, z);
    }

    public static void removeUserTag(String str) {
        HashSet hashSet;
        HashSet hashSet2;
        h9.a.getClass();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        v1 v1Var = v1.a;
        if (v1Var.e()) {
            d3 d3Var = v1Var.h;
            synchronized (d3Var) {
                hashSet = new HashSet(d3Var.f7884d.v);
            }
            hashSet2 = hashSet;
        } else {
            hashSet2 = new HashSet();
        }
        if (hashSet2.remove(str)) {
            v1Var.d(hashSet2);
        }
    }

    public static void setActivity(Activity activity) {
        h9.a.getClass();
        if (activity != null) {
            com.tapjoy.internal.t.c.a(activity);
        } else {
            TapjoyLog.e("TapjoyAPI", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.f7835d, "Cannot set activity to NULL"));
        }
    }

    public static void setCustomParameter(String str) {
        h9.a.getClass();
        TapjoyConnectCore.setCustomParameter(str);
    }

    public static void setDebugEnabled(boolean z) {
        h9.a.getClass();
        TapjoyLog.setDebugEnabled(z);
    }

    @Deprecated
    public static void setDeviceToken(String str) {
        String str2;
        h9.a.getClass();
        v1 v1Var = v1.a;
        synchronized (v1Var) {
            if (v1Var.l) {
                if (str == null && (str2 = v1Var.n) != null) {
                    str = str2;
                }
                v1Var.n = null;
                if (str != null) {
                    v1Var.c(str);
                }
            } else if (str != null) {
                v1Var.n = str;
            }
        }
    }

    public static void setEarnedCurrencyListener(TJEarnedCurrencyListener tJEarnedCurrencyListener) {
        ba baVar = h9.a;
        if (baVar.f8042e == null || !baVar.d("setEarnedCurrencyListener")) {
            return;
        }
        baVar.f8042e.f(tJEarnedCurrencyListener);
    }

    public static void setGLSurfaceView(GLSurfaceView gLSurfaceView) {
        h9.a.getClass();
        v1.a.getClass();
        if (gLSurfaceView != null) {
            com.tapjoy.internal.h.a(gLSurfaceView);
        }
    }

    @Deprecated
    public static void setInstallReferrer(Context context, String str) {
        String strC;
        h9.a.getClass();
        v1 v1Var = v1.a;
        if (v1Var.f8018g == null) {
            v1Var.g(context);
        }
        Context context2 = v1Var.f8018g;
        if (str != null) {
            v1Var.g(context2);
            d3 d3Var = v1Var.h;
            synchronized (d3Var) {
                strC = d3Var.f7886f.f7906d.c();
            }
            if (TextUtils.isEmpty(strC)) {
                v1Var.h.f(str);
                if (str.length() > 0) {
                    i5 i5Var = v1Var.i;
                    i5Var.getClass();
                    i5Var.b(i5Var.a(r1.APP, "referrer"));
                }
            }
        }
    }

    public static void setMaxLevel(int i) {
        h9.a.getClass();
        TJUserParameters.getInstance().g(i);
    }

    @Deprecated
    public static void setPushNotificationDisabled(boolean z) {
        j2 j2Var;
        h9.a.getClass();
        v1 v1Var = v1.a;
        if (v1Var.e() && v1Var.h.h(z) && v1Var.l) {
            String strA = null;
            if (TextUtils.isEmpty(null)) {
                return;
            }
            if (v1Var.n == null) {
                Context context = v1Var.f8018g;
                synchronized (j2.class) {
                    if (j2.c == null) {
                        j2.c = new j2(context);
                    }
                    j2Var = j2.c;
                }
                e2 e2Var = j2Var.b;
                Context context2 = j2Var.a;
                e2Var.getClass();
                strA = r9.a(context2.getApplicationContext().getSharedPreferences("fiverocks", 0).getString("gcm.regId", ""));
            }
            v1Var.h(strA);
        }
    }

    @Deprecated
    public static void setReceiveRemoteNotification(Context context, Map<String, String> map) {
        j2 j2Var;
        h9.a.getClass();
        v1 v1Var = v1.a;
        if (v1Var.f8018g == null) {
            v1Var.g(context);
        }
        Context context2 = v1Var.f8018g;
        synchronized (j2.class) {
            if (j2.c == null) {
                j2.c = new j2(context2);
            }
            j2Var = j2.c;
        }
        Context context3 = v1Var.f8018g;
        j2Var.getClass();
        j2.a(context3, map);
    }

    @Deprecated
    public static void setUserCohortVariable(int i, String str) {
    }

    @Deprecated
    public static void setUserFriendCount(int i) {
    }

    @Deprecated
    public static void setUserID(String str) {
        setUserID(str, null);
    }

    public static void setUserID(String str, TJSetUserIDListener tJSetUserIDListener) {
        String strTrim;
        ba baVar = h9.a;
        if (!baVar.e("setUserID")) {
            if (tJSetUserIDListener != null) {
                tJSetUserIDListener.onSetUserIDFailure(baVar.f8041d);
                return;
            }
            return;
        }
        TapjoyConnectCore.setUserID(str, tJSetUserIDListener);
        v1 v1Var = v1.a;
        if (v1Var.e()) {
            if (str == null || str.length() == 0 || (strTrim = str.trim()) == null || strTrim.length() == 0) {
                strTrim = null;
            }
            v1Var.h.j(strTrim);
        }
    }

    public static void setUserLevel(int i) {
        h9.a.getClass();
        v1 v1Var = v1.a;
        if (v1Var.e()) {
            v1Var.h.e(i > -1 ? Integer.valueOf(i) : null);
        }
    }

    public static void setUserSegment(TJSegment tJSegment) {
        h9.a.getClass();
        TJUserParameters.getInstance().h(tJSegment);
    }

    public static void setUserTags(Set<String> set) {
        h9.a.getClass();
        v1.a.d(set);
    }

    @Deprecated
    public static void setVideoListener(TJVideoListener tJVideoListener) {
        if (h9.a.e("setVideoListener")) {
            TJAdUnit.a = tJVideoListener;
        }
    }

    public static void spendCurrency(int i, TJSpendCurrencyListener tJSpendCurrencyListener) {
        ba baVar = h9.a;
        if (!baVar.d("spendCurrency")) {
            if (tJSpendCurrencyListener != null) {
                tJSpendCurrencyListener.onSpendCurrencyResponseFailure("Tapjoy SDK is not connected");
            }
        } else {
            p pVar = baVar.f8042e;
            if (pVar != null) {
                pVar.g(i, tJSpendCurrencyListener);
            }
        }
    }

    public static void startSession() {
        if (h9.a.e("startSession")) {
            com.tapjoy.internal.e.a();
            TapjoyConnectCore.getInstance().h();
            v1 v1Var = v1.a;
            if (v1Var.i() && v1Var.k()) {
                com.tapjoy.internal.q.a(null);
            }
        }
    }

    @Deprecated
    public static void trackEvent(String str) {
    }

    @Deprecated
    public static void trackEvent(String str, long j) {
    }

    @Deprecated
    public static void trackEvent(String str, String str2, long j) {
    }

    @Deprecated
    public static void trackEvent(String str, String str2, String str3, String str4) {
    }

    @Deprecated
    public static void trackEvent(String str, String str2, String str3, String str4, long j) {
    }

    @Deprecated
    public static void trackEvent(String str, String str2, String str3, String str4, String str5, long j) {
    }

    @Deprecated
    public static void trackEvent(String str, String str2, String str3, String str4, String str5, long j, String str6, long j2) {
    }

    @Deprecated
    public static void trackEvent(String str, String str2, String str3, String str4, String str5, long j, String str6, long j2, String str7, long j3) {
    }

    @Deprecated
    public static void trackEvent(String str, String str2, String str3, String str4, Map<String, Long> map) {
    }

    @Deprecated
    public static void trackPurchase(String str, String str2) {
        h9.a.getClass();
        t1.a(str, null, null, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void trackPurchase(java.lang.String r11, java.lang.String r12, double r13, java.lang.String r15) {
        /*
            com.tapjoy.internal.ba r0 = com.tapjoy.internal.h9.a
            r0.getClass()
            com.tapjoy.internal.v1 r0 = com.tapjoy.internal.v1.a
            boolean r1 = r0.i()
            if (r1 != 0) goto Le
            goto L5c
        Le:
            r1 = 0
            if (r11 != 0) goto L12
            goto L23
        L12:
            int r2 = r11.length()
            if (r2 != 0) goto L19
            goto L23
        L19:
            java.lang.String r11 = r11.trim()
            int r2 = r11.length()
            if (r2 != 0) goto L25
        L23:
            r4 = r1
            goto L26
        L25:
            r4 = r11
        L26:
            if (r4 != 0) goto L29
            goto L5c
        L29:
            if (r12 != 0) goto L2c
            goto L3f
        L2c:
            int r11 = r12.length()
            if (r11 != 0) goto L33
            goto L3f
        L33:
            java.lang.String r11 = r12.trim()
            int r12 = r11.length()
            if (r12 != 0) goto L3e
            goto L3f
        L3e:
            r1 = r11
        L3f:
            if (r1 != 0) goto L42
            goto L5c
        L42:
            int r11 = r1.length()
            r12 = 3
            if (r11 == r12) goto L4a
            goto L5c
        L4a:
            java.util.Locale r11 = java.util.Locale.US
            java.lang.String r5 = r1.toUpperCase(r11)
            java.lang.String r10 = com.tapjoy.internal.u.a(r15)
            com.tapjoy.internal.i5 r3 = r0.i
            r8 = 0
            r9 = 0
            r6 = r13
            r3.c(r4, r5, r6, r8, r9, r10)
        L5c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.Tapjoy.trackPurchase(java.lang.String, java.lang.String, double, java.lang.String):void");
    }

    public static void trackPurchase(String str, String str2, String str3, String str4) {
        h9.a.getClass();
        t1.a(str, str2, str3, str4);
    }
}
