package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.Intent;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ik {
    private static Map<String, Object> a = null;
    private static Map<String, Integer> b = null;
    private static Map<String, Integer> c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char[] f5771d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static char f5772e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5773f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5774g = 1;

    static {
        a();
        a = new HashMap();
        b = new HashMap();
        c = new HashMap();
        int i = f5774g + 61;
        f5773f = i % 128;
        int i2 = i % 2;
    }

    static void a() {
        f5772e = (char) 1;
        f5771d = new char[]{':'};
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m841(Context context, String str, JSONObject jSONObject, Object... objArr) {
        id.m828(context).m829(new Intent(str).putExtra(ib.f76, jSONObject.toString()));
        int i = f5773f + 13;
        f5774g = i % 128;
        int i2 = i % 2;
    }
}
