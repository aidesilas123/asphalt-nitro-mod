package com.hyprmx.android.sdk.preferences;

import android.content.Context;
import android.content.SharedPreferences;
import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public final Lazy a;

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.preferences.a$a, reason: collision with other inner class name */
    public static final class C0296a extends Lambda implements Function0<SharedPreferences> {
        public final /* synthetic */ Context a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0296a(Context context) {
            super(0);
            this.a = context;
        }

        @Override // kotlin.jvm.functions.Function0
        public final SharedPreferences invoke() {
            return this.a.getSharedPreferences("hyprmx_prefs_internal", 0);
        }
    }

    public a(Context appContext, com.hyprmx.android.sdk.core.js.a jsEngine) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        this.a = LazyKt__LazyJVMKt.lazy(new C0296a(appContext));
        jsEngine.a("hyprMXLocalStorage", this);
    }

    @RetainMethodSignature
    public final String getItem(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (Intrinsics.areEqual(key, "ad_id_opted_out")) {
            Object value = this.a.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-preferences>(...)");
            return ((SharedPreferences) value).getString(key, "false");
        }
        Object value2 = this.a.getValue();
        Intrinsics.checkNotNullExpressionValue(value2, "<get-preferences>(...)");
        return ((SharedPreferences) value2).getString(key, null);
    }

    @RetainMethodSignature
    public final void setItem(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        Object value2 = this.a.getValue();
        Intrinsics.checkNotNullExpressionValue(value2, "<get-preferences>(...)");
        ((SharedPreferences) value2).edit().putString(key, value).apply();
    }
}
