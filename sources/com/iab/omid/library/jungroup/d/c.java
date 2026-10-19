package com.iab.omid.library.jungroup.d;

import android.text.TextUtils;
import android.util.Log;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public static void a(String str, JSONException jSONException) {
        if (com.iab.omid.library.jungroup.b.a.booleanValue()) {
            TextUtils.isEmpty(str);
        }
        Log.e("OMIDLIB", str, jSONException);
    }
}
