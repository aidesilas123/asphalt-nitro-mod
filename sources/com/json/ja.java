package com.json;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ja {
    public static final String a = "com.google.market";
    public static final String b = "com.android.vending";
    public static final String c = "isInstalled";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f6168d = "ja";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ArrayList<String> f6169e = new a();

    class a extends ArrayList<String> {
        a() {
            add(ja.a);
            add("com.android.vending");
        }
    }

    class b extends JSONObject {
        final /* synthetic */ boolean a;

        b(boolean z) throws JSONException {
            this.a = z;
            put("isInstalled", z);
        }
    }

    private enum c {
        GOOGLE_PLAY(2, new String[]{"com.android.vending"}),
        GOOGLE_MARKET(4, new String[]{ja.a}),
        SAMSUNG(5, new String[]{"com.sec.android.app.samsungapps"}),
        AMAZON(6, new String[]{"com.amazon.venezia"}),
        HUAWEI(7, new String[]{"com.huawei.appmarket"});

        private static final Map<String, c> a = new HashMap();
        private final int h;
        private final String[] i;

        static {
            for (c cVar : values()) {
                for (String str : cVar.j()) {
                    a.put(str, cVar);
                }
            }
        }

        c(int i, String[] strArr) {
            this.h = i;
            this.i = strArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ArrayList<String> h() {
            return new ArrayList<>(a.keySet());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int i() {
            return this.h;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String[] j() {
            return this.i;
        }
    }

    private static JSONObject a(Context context) {
        return b(context, f6169e);
    }

    private static JSONObject b(Context context, ArrayList<String> arrayList) {
        JSONObject jSONObject = new JSONObject();
        try {
            ArrayList<String> arrayListE = e(context);
            for (String str : arrayList) {
                jSONObject.put(str, c(arrayListE.contains(str.trim().toLowerCase())));
            }
        } catch (Exception unused) {
            Log.d(f6168d, "Error while extracting packages installation data");
        }
        return jSONObject;
    }

    public static Integer c(Context context) {
        JSONObject jSONObjectB = b(context, c.h());
        int iPow = 0;
        for (c cVar : c.values()) {
            String[] strArrJ = cVar.j();
            int length = strArrJ.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                JSONObject jSONObjectOptJSONObject = jSONObjectB.optJSONObject(strArrJ[i]);
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optBoolean("isInstalled")) {
                    iPow = (int) (((double) iPow) + Math.pow(2.0d, r5.i() - 1));
                    break;
                }
                i++;
            }
        }
        return Integer.valueOf(iPow);
    }

    private static JSONObject c(boolean z) throws JSONException {
        return new b(z);
    }

    public static boolean d(Context context) {
        JSONObject jSONObjectA = a(context);
        Iterator<String> itKeys = jSONObjectA.keys();
        while (itKeys.hasNext()) {
            JSONObject jSONObjectOptJSONObject = jSONObjectA.optJSONObject(itKeys.next());
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optBoolean("isInstalled")) {
                return true;
            }
        }
        return false;
    }

    private static ArrayList<String> e(Context context) {
        List<ApplicationInfo> listO = e9.h().c().o(context);
        ArrayList<String> arrayList = new ArrayList<>();
        for (ApplicationInfo applicationInfo : listO) {
            if (applicationInfo != null) {
                arrayList.add(applicationInfo.packageName.toLowerCase());
            }
        }
        return arrayList;
    }
}
