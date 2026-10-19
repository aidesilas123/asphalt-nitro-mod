package com.bytedance.sdk.openadsdk.core.g.b;

import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventTypes;
import com.bytedance.sdk.openadsdk.core.g.b.c;
import com.facebook.internal.security.CertificateUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: VastAbsoluteProgressTracker.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends c implements Comparable<a> {
    public long a;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.g.b.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: VastAbsoluteProgressTracker.java */
    public static class C0134a {
        private final String a;
        private final long b;
        private c.EnumC0135c c = c.EnumC0135c.TRACKING_URL;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1512d = false;

        public C0134a(String str, long j) {
            this.a = str;
            this.b = j;
        }

        public a a() {
            return new a(this.b, this.a, this.c, Boolean.valueOf(this.f1512d));
        }
    }

    protected a(long j, String str, c.EnumC0135c enumC0135c, Boolean bool) {
        super(str, enumC0135c, bool);
        this.a = j;
    }

    public static int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return Integer.MIN_VALUE;
        }
        String[] strArrSplit = str.split(CertificateUtil.DELIMITER);
        if (strArrSplit.length == 3) {
            try {
                return (int) ((Integer.parseInt(strArrSplit[0]) * 60 * 60 * 1000) + (Integer.parseInt(strArrSplit[1]) * 60 * 1000) + (Float.parseFloat(strArrSplit[2]) * 1000.0f));
            } catch (Throwable unused) {
            }
        }
        return Integer.MIN_VALUE;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(a aVar) {
        if (aVar == null) {
            return 1;
        }
        long j = this.a;
        long j2 = aVar.a;
        if (j > j2) {
            return 1;
        }
        return j < j2 ? -1 : 0;
    }

    public JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AppLovinEventTypes.USER_VIEWED_CONTENT, c());
        jSONObject.put("trackingMilliseconds", this.a);
        return jSONObject;
    }

    public boolean a(long j) {
        return this.a <= j && !e();
    }
}
