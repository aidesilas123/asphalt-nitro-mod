package com.hyprmx.android.sdk.presentation;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements h {
    public final com.hyprmx.android.sdk.core.js.a a;
    public String b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f4682d;

    public e(com.hyprmx.android.sdk.core.js.a jsEngine, String viewModelIdentifier, String str) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        this.a = jsEngine;
        this.b = viewModelIdentifier;
        this.c = str;
        this.f4682d = "";
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final Object a(String str) {
        String str2;
        Intrinsics.checkNotNullParameter("unknownErrorOccurred", "method");
        if (str != null) {
            str2 = "ViewModelController.getViewModel('" + this.b + "').unknownErrorOccurred('" + str + "');";
        } else {
            str2 = "ViewModelController.getViewModel('" + this.b + "').unknownErrorOccurred();";
        }
        return this.a.a(str2);
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final Object a(String eventName, Map<String, ? extends Object> map) {
        LinkedHashMap linkedHashMap;
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        if (map != null) {
            linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
                if (entry.getValue() != null) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
        } else {
            linkedHashMap = null;
        }
        String string = linkedHashMap != null ? new JSONArray().put(new JSONObject(linkedHashMap)).toString() : "[]";
        Intrinsics.checkNotNullExpressionValue(string, "if (filteredMap != null)…} else {\n      \"[]\"\n    }");
        return this.a.a("ViewModelController.publishEvent('" + this.b + "', '" + eventName + "', " + string + ");");
    }

    @Override // com.hyprmx.android.sdk.presentation.k, com.hyprmx.android.sdk.core.a0
    public final String a() {
        return this.b;
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final void a(Object nativeObject) {
        Intrinsics.checkNotNullParameter(nativeObject, "nativeObject");
        String str = "HyprMXNative" + nativeObject.hashCode();
        this.f4682d = str;
        this.a.a(str, nativeObject);
        this.a.a("ViewModelController.getViewModel('" + this.b + "').setWebViewPresenter(" + this.f4682d + ");");
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final void a(CoroutineScope nativeObject) {
        Intrinsics.checkNotNullParameter(nativeObject, "nativeObject");
        String str = "HyprMXNative" + nativeObject.hashCode();
        this.f4682d = str;
        this.a.a(str, nativeObject);
        this.a.a("ViewModelController.getViewModel('" + this.b + "').setPresenter(" + this.f4682d + ");");
    }

    @Override // com.hyprmx.android.sdk.presentation.k
    public final void c(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.b = str;
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final void destroy() {
        this.a.e(this.f4682d);
        if (this.c != null) {
            this.a.a(this.c + "('" + this.b + "');");
        }
    }

    @Override // com.hyprmx.android.sdk.presentation.h
    public final <T> T getProperty(String property) {
        Intrinsics.checkNotNullParameter(property, "property");
        return (T) this.a.a("ViewModelController.getViewModel('" + this.b + "')." + property + ';');
    }
}
