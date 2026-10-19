package com.iab.omid.library.jungroup.d;

import android.os.Build;
import com.json.o2;
import com.json.v4;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        b.a(jSONObject, "deviceType", Build.MANUFACTURER + "; " + Build.MODEL);
        b.a(jSONObject, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        b.a(jSONObject, v4.x, o2.f6459e);
        return jSONObject;
    }
}
