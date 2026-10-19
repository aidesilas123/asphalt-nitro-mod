package com.hyprmx.android.sdk.preferences;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements c, SharedPreferences.OnSharedPreferenceChangeListener, CoroutineScope {
    public final com.hyprmx.android.sdk.core.js.a a;
    public final ThreadAssert b;
    public final /* synthetic */ CoroutineScope c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Lazy f4615d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f4616e;

    @DebugMetadata(c = "com.hyprmx.android.sdk.preferences.PreferencesController$1", f = "PreferencesController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return b.this.new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            b.this.b().registerOnSharedPreferenceChangeListener(b.this);
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.preferences.b$b, reason: collision with other inner class name */
    public static final class C0297b extends Lambda implements Function0<SharedPreferences> {
        public final /* synthetic */ Context a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0297b(Context context) {
            super(0);
            this.a = context;
        }

        @Override // kotlin.jvm.functions.Function0
        public final SharedPreferences invoke() {
            if (Build.VERSION.SDK_INT >= 24) {
                Context context = this.a;
                return context.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(context), 0);
            }
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.a);
            Intrinsics.checkNotNull(defaultSharedPreferences, "null cannot be cast to non-null type android.content.SharedPreferences");
            return defaultSharedPreferences;
        }
    }

    public b(Context appContext, com.hyprmx.android.sdk.core.js.a jsEngine, CoroutineScope scope, ThreadAssert threadAssert) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(threadAssert, "assert");
        this.a = jsEngine;
        this.b = threadAssert;
        this.c = CoroutineScopeKt.plus(scope, new CoroutineName("PreferencesController"));
        this.f4615d = LazyKt__LazyJVMKt.lazy(new C0297b(appContext));
        this.f4616e = new HashMap();
        jsEngine.a("HYPRSharedDataController", this);
        BuildersKt__Builders_commonKt.launch$default(this, Dispatchers.getIO(), null, new a(null), 2, null);
    }

    @Override // com.hyprmx.android.sdk.preferences.c
    public final void a() {
        this.f4616e.clear();
        b().unregisterOnSharedPreferenceChangeListener(this);
    }

    public final SharedPreferences b() {
        Object value = this.f4615d.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-preferences>(...)");
        return (SharedPreferences) value;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.c.getCoroutineContext();
    }

    @RetainMethodSignature
    public String getSharedValue(String key) throws JSONException {
        Intrinsics.checkNotNullParameter(key, "key");
        JSONObject jSONObject = new JSONObject();
        Object obj = b().getAll().get(key);
        jSONObject.put("value", obj instanceof Boolean ? Boolean.valueOf(b().getBoolean(key, false)) : obj instanceof String ? b().getString(key, "") : obj instanceof Integer ? Integer.valueOf(b().getInt(key, 0)) : obj instanceof Float ? Float.valueOf(b().getFloat(key, 0.0f)) : obj instanceof Long ? Long.valueOf(b().getLong(key, 0L)) : null);
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "jsonObject.toString()");
        return string;
    }

    @RetainMethodSignature
    public void monitorSharedValue(String listener, String key) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(key, "key");
        this.f4616e.put(key, listener);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) throws JSONException {
        if (!this.f4616e.containsKey(str) || sharedPreferences == null) {
            return;
        }
        Object obj = sharedPreferences.getAll().get(str);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("key", str);
        jSONObject.put("value", obj);
        String string = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(string, "jsonObject.toString()");
        this.a.c(((String) this.f4616e.get(str)) + ".onValueChanged(" + string + ");");
    }
}
