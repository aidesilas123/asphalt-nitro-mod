package com.hyprmx.android.sdk.footer;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Serializable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f4531g = new a(null, null, 0, null, null, true, 31);
    public final String a;
    public String b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f4532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e f4533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f4534f;

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.footer.a$a, reason: collision with other inner class name */
    public static final class C0285a {
        /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static com.hyprmx.android.sdk.footer.a a(org.json.JSONObject r15) throws org.json.JSONException {
            /*
                if (r15 == 0) goto La0
                java.lang.String r0 = "images"
                boolean r1 = r15.has(r0)
                r2 = 0
                if (r1 == 0) goto L80
                org.json.JSONArray r0 = r15.getJSONArray(r0)
                int r1 = r0.length()
                java.lang.String r3 = "link"
                java.lang.String r4 = "width"
                java.lang.String r5 = "height"
                java.lang.String r6 = "imageJSON.getString(FIELD_PORTRAITURL)"
                java.lang.String r7 = "portrait_url"
                java.lang.String r8 = "image"
                java.lang.String r9 = "null cannot be cast to non-null type org.json.JSONObject"
                r10 = 15
                if (r1 <= 0) goto L4e
                r1 = 0
                java.lang.Object r1 = r0.get(r1)
                kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r9)
                org.json.JSONObject r1 = (org.json.JSONObject) r1
                org.json.JSONObject r1 = r1.optJSONObject(r8)
                if (r1 == 0) goto L4e
                com.hyprmx.android.sdk.footer.e r11 = new com.hyprmx.android.sdk.footer.e
                java.lang.String r12 = r1.getString(r7)
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r12, r6)
                int r13 = r1.optInt(r5, r10)
                int r14 = r1.optInt(r4, r10)
                java.lang.String r1 = com.hyprmx.android.sdk.utility.i0.a(r3, r1)
                r11.<init>(r12, r13, r14, r1)
                goto L4f
            L4e:
                r11 = r2
            L4f:
                int r1 = r0.length()
                r12 = 1
                if (r1 <= r12) goto L7d
                java.lang.Object r0 = r0.get(r12)
                kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r9)
                org.json.JSONObject r0 = (org.json.JSONObject) r0
                org.json.JSONObject r0 = r0.optJSONObject(r8)
                if (r0 == 0) goto L7d
                com.hyprmx.android.sdk.footer.e r2 = new com.hyprmx.android.sdk.footer.e
                java.lang.String r1 = r0.getString(r7)
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r6)
                int r5 = r0.optInt(r5, r10)
                int r4 = r0.optInt(r4, r10)
                java.lang.String r0 = com.hyprmx.android.sdk.utility.i0.a(r3, r0)
                r2.<init>(r1, r5, r4, r0)
            L7d:
                r8 = r2
                r7 = r11
                goto L82
            L80:
                r7 = r2
                r8 = r7
            L82:
                com.hyprmx.android.sdk.footer.a r0 = new com.hyprmx.android.sdk.footer.a
                java.lang.String r1 = "text"
                java.lang.String r4 = r15.optString(r1)
                java.lang.String r1 = "background_color"
                java.lang.String r5 = r15.optString(r1)
                r1 = 51
                java.lang.String r2 = "min_height"
                int r6 = r15.optInt(r2, r1)
                r9 = 0
                r10 = 32
                r3 = r0
                r3.<init>(r4, r5, r6, r7, r8, r9, r10)
                goto La2
            La0:
                com.hyprmx.android.sdk.footer.a r0 = com.hyprmx.android.sdk.footer.a.f4531g
            La2:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.footer.a.C0285a.a(org.json.JSONObject):com.hyprmx.android.sdk.footer.a");
        }
    }

    public a(String str, String str2, int i, e eVar, e eVar2, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = i;
        this.f4532d = eVar;
        this.f4533e = eVar2;
        this.f4534f = z;
    }

    public /* synthetic */ a(String str, String str2, int i, e eVar, e eVar2, boolean z, int i2) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? null : eVar, (i2 & 16) == 0 ? eVar2 : null, (i2 & 32) != 0 ? false : z);
    }

    public final String c() {
        return this.b;
    }

    public final e d() {
        return this.f4532d;
    }

    public final e e() {
        return this.f4533e;
    }

    public final int f() {
        return this.c;
    }

    public final boolean g() {
        return this.f4534f;
    }

    public final String h() {
        return this.a;
    }
}
