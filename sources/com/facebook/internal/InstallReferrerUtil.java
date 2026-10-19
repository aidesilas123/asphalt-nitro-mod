package com.facebook.internal;

import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: InstallReferrerUtil.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class InstallReferrerUtil {
    public static final InstallReferrerUtil INSTANCE = new InstallReferrerUtil();
    private static final String IS_REFERRER_UPDATED = "is_referrer_updated";

    /* JADX INFO: compiled from: InstallReferrerUtil.kt */
    public interface Callback {
        void onReceiveReferrerUrl(String str);
    }

    private InstallReferrerUtil() {
    }

    private final boolean isUpdated() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        return FacebookSdk.getApplicationContext().getSharedPreferences(FacebookSdk.APP_EVENT_PREFERENCES, 0).getBoolean(IS_REFERRER_UPDATED, false);
    }

    private final void tryConnectReferrerInfo(final Callback callback) {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        final InstallReferrerClient installReferrerClientA = InstallReferrerClient.newBuilder(FacebookSdk.getApplicationContext()).a();
        try {
            installReferrerClientA.c(new InstallReferrerStateListener() { // from class: com.facebook.internal.InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1
                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerServiceDisconnected() {
                }

                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerSetupFinished(int i) {
                    if (CrashShieldHandler.isObjectCrashing(this)) {
                        return;
                    }
                    try {
                        if (i == 0) {
                            try {
                                ReferrerDetails referrerDetailsB = installReferrerClientA.b();
                                Intrinsics.checkNotNullExpressionValue(referrerDetailsB, "{\n                      referrerClient.installReferrer\n                    }");
                                String strA = referrerDetailsB.a();
                                if (strA != null && (StringsKt__StringsKt.contains$default((CharSequence) strA, (CharSequence) "fb", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) strA, (CharSequence) AccessToken.DEFAULT_GRAPH_DOMAIN, false, 2, (Object) null))) {
                                    callback.onReceiveReferrerUrl(strA);
                                }
                                InstallReferrerUtil.INSTANCE.updateReferrer();
                            } catch (RemoteException unused) {
                                return;
                            }
                        } else if (i == 2) {
                            InstallReferrerUtil.INSTANCE.updateReferrer();
                        }
                        try {
                            installReferrerClientA.a();
                        } catch (Exception unused2) {
                        }
                    } catch (Throwable th) {
                        CrashShieldHandler.handleThrowable(th, this);
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    public static final void tryUpdateReferrerInfo(Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        InstallReferrerUtil installReferrerUtil = INSTANCE;
        if (installReferrerUtil.isUpdated()) {
            return;
        }
        installReferrerUtil.tryConnectReferrerInfo(callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateReferrer() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        FacebookSdk.getApplicationContext().getSharedPreferences(FacebookSdk.APP_EVENT_PREFERENCES, 0).edit().putBoolean(IS_REFERRER_UPDATED, true).apply();
    }
}
