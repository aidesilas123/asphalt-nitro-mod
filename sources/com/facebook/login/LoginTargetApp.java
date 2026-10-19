package com.facebook.login;

import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoginTargetApp.kt */
/* JADX INFO: loaded from: classes2.dex */
public enum LoginTargetApp {
    FACEBOOK(AccessToken.DEFAULT_GRAPH_DOMAIN),
    INSTAGRAM(FacebookSdk.INSTAGRAM);

    public static final Companion Companion = new Companion(null);
    private final String targetApp;

    /* JADX INFO: compiled from: LoginTargetApp.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final LoginTargetApp fromString(String str) {
            LoginTargetApp[] loginTargetAppArrValuesCustom = LoginTargetApp.valuesCustom();
            int length = loginTargetAppArrValuesCustom.length;
            int i = 0;
            while (i < length) {
                LoginTargetApp loginTargetApp = loginTargetAppArrValuesCustom[i];
                i++;
                if (Intrinsics.areEqual(loginTargetApp.toString(), str)) {
                    return loginTargetApp;
                }
            }
            return LoginTargetApp.FACEBOOK;
        }
    }

    LoginTargetApp(String str) {
        this.targetApp = str;
    }

    public static final LoginTargetApp fromString(String str) {
        return Companion.fromString(str);
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static LoginTargetApp[] valuesCustom() {
        LoginTargetApp[] loginTargetAppArrValuesCustom = values();
        return (LoginTargetApp[]) Arrays.copyOf(loginTargetAppArrValuesCustom, loginTargetAppArrValuesCustom.length);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.targetApp;
    }
}
