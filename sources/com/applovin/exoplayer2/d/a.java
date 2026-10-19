package com.applovin.exoplayer2.d;

import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class a {
    public static byte[] l(byte[] bArr) {
        return ai.acV >= 27 ? bArr : ai.bk(y(ai.J(bArr)));
    }

    public static byte[] m(byte[] bArr) {
        if (ai.acV >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(ai.J(bArr));
            StringBuilder sb = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i = 0; i < jSONArray.length(); i++) {
                if (i != 0) {
                    sb.append(",");
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                sb.append("{\"k\":\"");
                sb.append(z(jSONObject2.getString(CampaignEx.JSON_KEY_AD_K)));
                sb.append("\",\"kid\":\"");
                sb.append(z(jSONObject2.getString("kid")));
                sb.append("\",\"kty\":\"");
                sb.append(jSONObject2.getString("kty"));
                sb.append("\"}");
            }
            sb.append("]}");
            return ai.bk(sb.toString());
        } catch (JSONException e2) {
            com.applovin.exoplayer2.l.q.c("ClearKeyUtil", "Failed to adjust response data: " + ai.J(bArr), e2);
            return bArr;
        }
    }

    private static String y(String str) {
        return str.replace('+', '-').replace('/', '_');
    }

    private static String z(String str) {
        return str.replace('-', '+').replace('_', '/');
    }
}
