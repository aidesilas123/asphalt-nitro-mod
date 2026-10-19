package com.hyprmx.android.sdk.utility;

import com.hyprmx.android.sdk.utility.j0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class s0 {
    public static final j0 a(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("decision");
            String strA = i0.a("url", jSONObject);
            if (string != null) {
                int iHashCode = string.hashCode();
                if (iHashCode != -143967231) {
                    if (iHashCode != -73272186) {
                        if (iHashCode == 100390493) {
                            string.equals("NAVIGATION_ALLOWED");
                        } else if (iHashCode == 990295713 && string.equals("NAVIGATION_BLOCKED")) {
                            return j0.b.b;
                        }
                    } else if (string.equals("NAVIGATION_REDIRECTED") && strA != null) {
                        return new j0.d(strA);
                    }
                } else if (string.equals("OPEN_OUTSIDE_APPLICATION")) {
                    return j0.c.b;
                }
            }
            return j0.a.b;
        } catch (JSONException unused) {
            return j0.a.b;
        }
    }
}
