package com.hyprmx.android.sdk.network;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class g {
    public static final a a(String str) throws JSONException {
        Intrinsics.checkNotNullParameter(str, "<this>");
        JSONObject jSONObject = new JSONObject(str);
        boolean z = jSONObject.getBoolean("followRedirect");
        int i = jSONObject.getInt("readTimeout");
        int i2 = jSONObject.getInt("connectionTimeout");
        JSONObject jSONObject2 = jSONObject.getJSONObject("headers");
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject2.keys();
        Intrinsics.checkNotNullExpressionValue(itKeys, "headers.keys()");
        while (itKeys.hasNext()) {
            String it = itKeys.next();
            Intrinsics.checkNotNullExpressionValue(it, "it");
            String string = jSONObject2.getString(it);
            Intrinsics.checkNotNullExpressionValue(string, "headers.getString(it)");
            map.put(it, string);
        }
        return new a(z, i, i2, map);
    }

    public static final void a(JSONObject jSONObject, Map map) throws JSONException {
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        Intrinsics.checkNotNullParameter("headers", "key");
        Intrinsics.checkNotNullParameter(map, "map");
        JSONObject jSONObject2 = new JSONObject();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (str == null) {
                str = "";
            }
            jSONObject2.put(str, CollectionsKt___CollectionsKt.joinToString$default((Iterable) entry.getValue(), null, null, null, 0, null, null, 63, null));
        }
        jSONObject.put("headers", jSONObject2);
    }
}
