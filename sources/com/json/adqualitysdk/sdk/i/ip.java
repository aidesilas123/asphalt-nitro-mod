package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ip {
    private String a;
    private c b;
    private long c;

    public static class c {
        private int a;
        private String b;

        public c(int i, String str) {
            this.a = i;
            this.b = str;
        }

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final String m846() {
            return this.b;
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final int m847() {
            return this.a;
        }
    }

    public ip(String str, int i, String str2, long j) {
        this.a = str;
        this.c = j;
        this.b = new c(i, str2);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final JSONObject m842() throws JSONException {
        return !TextUtils.isEmpty(this.a) ? new JSONObject(this.a) : new JSONObject();
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final c m843() {
        return this.b;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m844() {
        return this.a;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final long m845() {
        return this.c;
    }
}
