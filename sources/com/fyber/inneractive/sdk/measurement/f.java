package com.fyber.inneractive.sdk.measurement;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.model.vast.t;
import com.fyber.inneractive.sdk.response.i;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f implements i {
    public URL a;
    public String b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f2056f;
    public Map<t, List<String>> c = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2057g = false;

    public String a() {
        if (!this.f2057g) {
            return "JavaScriptResource = ";
        }
        if (TextUtils.isEmpty(this.b)) {
            return "apiFramework = ";
        }
        if (!this.b.equalsIgnoreCase(CampaignEx.KEY_OMID)) {
            return String.format("apiFramework = %s", this.b);
        }
        Object[] objArr = new Object[1];
        objArr[0] = TextUtils.isEmpty(this.f2056f) ? "" : this.f2056f;
        return String.format("JavaScriptResource_url = %s", objArr);
    }

    @Override // com.fyber.inneractive.sdk.response.i
    public List<String> a(t tVar) {
        Map<t, List<String>> map;
        if (tVar == null || (map = this.c) == null) {
            return null;
        }
        return map.get(tVar);
    }

    public void a(t tVar, String str) {
        List<String> arrayList = this.c.get(tVar);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.c.put(tVar, arrayList);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        arrayList.add(str);
    }

    public boolean b() {
        String str;
        return this.f2057g && this.a != null && ((str = this.b) == null || (!TextUtils.isEmpty(str) && this.b.equalsIgnoreCase(CampaignEx.KEY_OMID)));
    }

    public String toString() {
        return "Verification{mJavaScriptResource=" + this.a + ", mTrackingEvents=" + this.c + ", mVerificationParameters='" + this.f2054d + "', mVendor='" + this.f2055e + "'}";
    }
}
