package com.facebook.gamingservices.model;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: CustomUpdateContent.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CustomUpdateLocalizedText {

    /* JADX INFO: renamed from: default, reason: not valid java name */
    private final String f14default;
    private final HashMap<String, String> localizations;

    public CustomUpdateLocalizedText(String str, HashMap<String, String> map) {
        Intrinsics.checkNotNullParameter(str, "default");
        this.f14default = str;
        this.localizations = map;
    }

    public /* synthetic */ CustomUpdateLocalizedText(String str, HashMap map, int i, n nVar) {
        this(str, (i & 2) != 0 ? null : map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CustomUpdateLocalizedText copy$default(CustomUpdateLocalizedText customUpdateLocalizedText, String str, HashMap map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = customUpdateLocalizedText.f14default;
        }
        if ((i & 2) != 0) {
            map = customUpdateLocalizedText.localizations;
        }
        return customUpdateLocalizedText.copy(str, map);
    }

    public final String component1() {
        return this.f14default;
    }

    public final HashMap<String, String> component2() {
        return this.localizations;
    }

    public final CustomUpdateLocalizedText copy(String str, HashMap<String, String> map) {
        Intrinsics.checkNotNullParameter(str, "default");
        return new CustomUpdateLocalizedText(str, map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomUpdateLocalizedText)) {
            return false;
        }
        CustomUpdateLocalizedText customUpdateLocalizedText = (CustomUpdateLocalizedText) obj;
        return Intrinsics.areEqual(this.f14default, customUpdateLocalizedText.f14default) && Intrinsics.areEqual(this.localizations, customUpdateLocalizedText.localizations);
    }

    public final String getDefault() {
        return this.f14default;
    }

    public final HashMap<String, String> getLocalizations() {
        return this.localizations;
    }

    public int hashCode() {
        int iHashCode = this.f14default.hashCode() * 31;
        HashMap<String, String> map = this.localizations;
        return iHashCode + (map == null ? 0 : map.hashCode());
    }

    public final JSONObject toJSONObject() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("default", this.f14default);
        HashMap<String, String> map = this.localizations;
        if (map != null) {
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jSONObject2.put(entry.getKey(), entry.getValue());
            }
            jSONObject.put("localizations", jSONObject2);
        }
        return jSONObject;
    }

    public String toString() {
        return "CustomUpdateLocalizedText(default=" + this.f14default + ", localizations=" + this.localizations + ')';
    }
}
