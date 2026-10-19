package com.mbridge.msdk.foundation.tools;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: JsonUtils.java */
/* JADX INFO: loaded from: classes4.dex */
public final class o {
    public static String a(int i, int i2, int i3, int i4, int i5) {
        JSONObject jSONObject = new JSONObject();
        try {
            try {
                jSONObject.put("code", 0);
                jSONObject.put("message", "Sucess");
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("rotateAngle", i);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("left", i2);
                jSONObject3.put(TtmlNode.RIGHT, i3);
                jSONObject3.put(ViewHierarchyConstants.DIMENSION_TOP_KEY, i4);
                jSONObject3.put("bottom", i5);
                jSONObject2.put("cutoutInfo", jSONObject3);
                jSONObject.put("data", jSONObject2);
            } catch (Exception e2) {
                aa.d("JSONUtils", e2.getMessage());
            }
        } catch (Throwable th) {
            aa.d("JSONUtils", th.getMessage());
            try {
                jSONObject.put("code", 1);
                jSONObject.put("message", "Fail");
            } catch (JSONException e3) {
                aa.d("JSONUtils", e3.getMessage());
            }
        }
        return jSONObject.toString();
    }

    public static ArrayList<String> a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int length = jSONArray.length();
        ArrayList<String> arrayList = new ArrayList<>(length);
        for (int i = 0; i < length; i++) {
            arrayList.add(jSONArray.optString(i));
        }
        return arrayList;
    }
}
