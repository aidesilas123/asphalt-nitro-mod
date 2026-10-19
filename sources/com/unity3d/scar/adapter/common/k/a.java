package com.unity3d.scar.adapter.common.k;

import android.os.Bundle;

/* JADX INFO: compiled from: RequestExtras.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static String a = "query_info_type";
    public static String b = "requester_type_5";
    public static String c = "UnityScar";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8064d;

    public a(String str) {
        this.f8064d = c + str;
    }

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString(a, b);
        return bundle;
    }

    public String b() {
        return this.f8064d;
    }
}
