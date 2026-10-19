package com.gameloft.android2d.iap.utils;

import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.IAPLib;
import com.gameloft.android2d.iap.Links;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.net.URLEncoder;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class XPlayer {
    static Device a = null;
    public static boolean b = true;
    public static String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f2892d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static Error[] f2893e = new Error[0];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f2894f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private JSONObject f2895g = null;
    private String h = null;
    private String i = null;
    protected c j;
    public long k;
    private int l;

    public static class Error {
        private int a;
        private int b;
    }

    public XPlayer(Device device, boolean z) {
        a(device, z, "");
    }

    public XPlayer(Device device, boolean z, String str) {
        a(device, z, str);
    }

    private void a(Device device, boolean z, String str) {
        a = device;
        d();
        this.j = new c(this, z, str);
        String str2 = f2892d;
        if (str2 == null) {
            f2892d = "";
        } else {
            f2892d = str2.trim();
        }
    }

    public static String encodeString(String str) {
        try {
            return URLEncoder.encode(str, C.UTF8_NAME);
        } catch (Exception unused) {
            return str;
        }
    }

    public static a getCarrier() {
        return a.a();
    }

    public static Device getDevice() {
        return a;
    }

    public static String getLastErrorCodeString() {
        String str = c;
        return str != null ? str : "ERROR";
    }

    public static String getValue(String str, int i) {
        return getValue(str, i, '|');
    }

    private static String getValue(String str, int i, char c2) {
        int iIndexOf = str.indexOf(c2, 1);
        int i2 = i;
        int i3 = 0;
        while (i2 > 0) {
            if (i3 == -1) {
                return null;
            }
            i2--;
            i3 = iIndexOf;
            iIndexOf = str.indexOf(c2, iIndexOf + 1);
        }
        if (i3 == -1) {
            return null;
        }
        if (iIndexOf == -1) {
            iIndexOf = str.length();
        }
        if (i > 0) {
            i3++;
        }
        if (i3 == iIndexOf) {
            return "";
        }
        if (i3 > iIndexOf) {
            return null;
        }
        try {
            char[] cArr = new char[iIndexOf - i3];
            str.getChars(i3, iIndexOf, cArr, 0);
            return new String(cArr);
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    public String b() {
        return this.i;
    }

    public String c() {
        return this.h;
    }

    void d() {
        f2892d = null;
        String str = this.f2894f;
        if (str == null || str.length() == 0) {
            return;
        }
        this.f2894f = this.f2894f.trim();
    }

    public String e() {
        return this.j.p;
    }

    public String f(String str) {
        JSONObject jSONObject = this.f2895g;
        return jSONObject != null ? jSONObject.optString(str) : "";
    }

    public int g() {
        return this.l;
    }

    public boolean h(String str) {
        if (this.j.c()) {
            return false;
        }
        c cVar = this.j;
        if (cVar.r) {
            return true;
        }
        String str2 = cVar.p;
        if (str2 == null || str2 == "") {
            this.l = 40;
            return true;
        }
        if (!str.equals("EndTransactionRegistration") || this.j.p.equalsIgnoreCase("{\"status\":\"1\"}")) {
            this.l = 0;
            return true;
        }
        this.l = -1000;
        return true;
    }

    public boolean i() {
        if (this.j.c()) {
            return false;
        }
        c cVar = this.j;
        if (cVar.r) {
            return true;
        }
        String str = cVar.p;
        if (str == null || str == "") {
            this.l = 40;
            return true;
        }
        this.l = 0;
        return true;
    }

    public boolean j() {
        String str;
        if (this.j.c()) {
            return false;
        }
        c cVar = this.j;
        if (!cVar.r && (str = cVar.p) != null && str != "") {
            try {
                JSONArray jSONArrayOptJSONArray = new JSONObject(str).optJSONArray(IAPLib.GetIAPKey(SUtils.getStringRS(R.string.k_ServiceKey)));
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    IAPLib.p0.add(jSONArrayOptJSONArray.getString(i));
                }
            } catch (JSONException unused) {
            }
        }
        return true;
    }

    public boolean k() {
        if (this.j.c()) {
            return false;
        }
        c cVar = this.j;
        if (cVar.r) {
            return true;
        }
        String str = cVar.p;
        if (str == null || str == "") {
            this.l = 40;
            return true;
        }
        if (str != null) {
            IAPLib.s0 = new String("," + str.substring(1, str.length() - 1) + ",");
        }
        return true;
    }

    public void l(String str, String str2, int i) {
        this.j.b();
        this.l = -100;
        this.k = System.currentTimeMillis();
        if (i == 1) {
            this.j.f(1);
        } else if (i == 2) {
            this.j.f(2);
        } else {
            this.j.f(0);
        }
        this.j.e(str, str2);
    }

    public void m(String str, String str2) {
        this.j.b();
        this.l = -100;
        this.k = System.currentTimeMillis();
        this.j.e(str, "b=validatelimits" + str2);
    }

    public void n(String str) {
        this.j.b();
        this.l = -100;
        this.k = System.currentTimeMillis();
        this.j.e(str, "");
    }

    public void o(String str) {
        this.j.b();
        this.l = -100;
        Links.IAP_GetUserName();
        String str2 = "" + SUtils.getStringRS(R.string.k_getParamGame) + o2.i.b + encodeString(IAPLib.getDemoCode()) + "&imei=" + encodeString(getDevice().d());
        this.k = System.currentTimeMillis();
        this.j.e(str, str2);
    }

    public void p(String str) {
        this.i = str;
    }

    public void q(String str) {
        this.h = str;
    }

    public void r(String str) throws JSONException {
        try {
            this.f2895g = null;
            if (str == null || str.equals("")) {
                return;
            }
            this.f2895g = new JSONObject(str);
        } catch (Exception unused) {
        }
    }

    public void s(int i) {
        this.l = i;
    }
}
