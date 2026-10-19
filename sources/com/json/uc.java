package com.json;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.json.sdk.utils.IronSourceQaProperties;
import com.json.sdk.utils.SDKUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class uc {
    private static uc a;
    private final e5 c = e9.h().c();
    private JSONObject b = new JSONObject();

    class a implements Runnable {
        final /* synthetic */ Context a;

        a(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                uc.this.a(m3.a(this.a));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private uc() {
    }

    public static synchronized uc d() {
        if (a == null) {
            a = new uc();
        }
        return a;
    }

    public void a() {
        HashMap map = new HashMap();
        map.put("omidVersion", t9.f6641f);
        map.put("omidPartnerVersion", t9.f6640e);
        a.a(map);
    }

    public void a(Activity activity) {
        if (activity == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            b(SDKUtils.encodeString("immersiveMode"), Boolean.valueOf(this.c.a(activity)));
        }
        b("appOrientation", SDKUtils.translateRequestedOrientation(this.c.K(activity)));
    }

    public void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            new Thread(new a(context)).start();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(Context context, String str, String str2) {
        a(context);
        if (context instanceof Activity) {
            a((Activity) context);
        }
        b(context);
        b(str2);
        a(str);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        b("applicationKey", SDKUtils.encodeString(str));
    }

    public void a(Map<String, String> map) {
        if (map == null) {
            Log.d("TokenService", "collectDataFromExternalParams params=null");
            return;
        }
        for (String str : map.keySet()) {
            b(str, SDKUtils.encodeString(map.get(str)));
        }
    }

    public void a(JSONObject jSONObject) {
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            b(next, jSONObject.opt(next));
        }
    }

    public void b() {
        if (IronSourceQaProperties.isInitialized()) {
            a.a(IronSourceQaProperties.getInstance().getParameters());
        }
    }

    public void b(Context context) {
        if (context == null) {
            return;
        }
        a(m3.c(context));
        a(m3.b(context));
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        b("applicationUserId", SDKUtils.encodeString(str));
    }

    synchronized void b(String str, Object obj) {
        try {
            this.b.put(str, obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void b(JSONObject jSONObject) {
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            b(qc.r1 + next, jSONObject.opt(next));
        }
    }

    public JSONObject c(Context context) {
        c();
        b(context);
        try {
            return new JSONObject(this.b.toString());
        } catch (Exception e2) {
            e2.printStackTrace();
            return new JSONObject();
        }
    }

    public void c() {
        c(SDKUtils.getControllerConfig());
        a(SDKUtils.getInitSDKParams());
        b();
        a();
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            b("chinaCDN", new JSONObject(str).opt("chinaCDN"));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public String d(Context context) {
        try {
            return u4.b(c(context).toString());
        } catch (Exception unused) {
            return u4.b(new JSONObject().toString());
        }
    }
}
