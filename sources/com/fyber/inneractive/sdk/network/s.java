package com.fyber.inneractive.sdk.network;

import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.util.IAlog;
import com.json.b4;
import com.json.o2;
import com.json.v4;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class s extends l {

    public static class a {
        public static final SimpleDateFormat h = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        public InneractiveAdRequest a;
        public q b;
        public r c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public JSONArray f2118d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public com.fyber.inneractive.sdk.response.e f2119e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public JSONArray f2120f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f2121g;

        /* JADX INFO: renamed from: com.fyber.inneractive.sdk.network.s$a$a, reason: collision with other inner class name */
        public class RunnableC0167a implements Runnable {
            public final /* synthetic */ s a;
            public final /* synthetic */ String b;
            public final /* synthetic */ String c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final /* synthetic */ String f2122d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ String f2123e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ Object f2124f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public final /* synthetic */ String f2125g;

            public RunnableC0167a(s sVar, String str, String str2, String str3, String str4, Object obj, String str5) {
                this.a = sVar;
                this.b = str;
                this.c = str2;
                this.f2122d = str3;
                this.f2123e = str4;
                this.f2124f = obj;
                this.f2125g = str5;
            }

            @Override // java.lang.Runnable
            public void run() {
                String strE;
                boolean z;
                Map<String, Object> map;
                com.fyber.inneractive.sdk.response.e eVar;
                this.a.a("contentid", this.b);
                this.a.a("fairbidv", this.c);
                a aVar = a.this;
                q qVar = aVar.b;
                if (qVar != null) {
                    this.a.a(NotificationCompat.CATEGORY_ERROR, Integer.valueOf(qVar.val));
                    a.this.b.getClass();
                    strE = x0.ERROR_TABLE.e();
                    IAlog.a("Event dispatcher - dispatching error: %s", a.this.b);
                    int i = IAlog.a;
                    IAlog.a(1, null, "%s %s", "DISPATCHED_SDK_ERROR", Integer.valueOf(a.this.b.val));
                } else {
                    r rVar = aVar.c;
                    if (rVar != null) {
                        this.a.a(NotificationCompat.CATEGORY_EVENT, Integer.valueOf(rVar.val));
                        a.this.c.getClass();
                        strE = x0.EVENT_TABLE.e();
                        IAlog.a("Event dispatcher - dispatching event: %s", a.this.c);
                        int i2 = IAlog.a;
                        IAlog.a(1, null, "%s %s", "DISPATCHED_SDK_EVENT", Integer.valueOf(a.this.c.val));
                    } else {
                        strE = null;
                    }
                }
                if (!TextUtils.isEmpty(this.f2122d)) {
                    this.a.a("placement_type", this.f2122d);
                }
                if (!TextUtils.isEmpty(this.f2123e)) {
                    this.a.a("spot_id", this.f2123e);
                }
                if (!InneractiveAdManager.isCurrentUserAChild()) {
                    this.a.a("ciso", com.fyber.inneractive.sdk.util.j.g());
                }
                this.a.a("ad_type", this.f2124f);
                if (a.this.f2121g && !TextUtils.isEmpty(this.f2125g)) {
                    this.a.c = this.f2125g;
                }
                Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
                this.a.a(b4.p, com.fyber.inneractive.sdk.util.f0.e().key);
                this.a.a("date_created", Long.valueOf(calendar.getTimeInMillis()));
                try {
                    this.a.a("day", a.h.format(calendar.getTime()));
                } catch (Throwable unused) {
                }
                this.a.a("hour", Integer.valueOf(calendar.get(11)));
                s sVar = this.a;
                StringBuilder sb = new StringBuilder();
                sb.append(strE);
                a aVar2 = a.this;
                q qVar2 = aVar2.b;
                sb.append(qVar2 != null ? String.valueOf(qVar2.val) : String.valueOf(aVar2.c.val));
                sVar.a(b4.O, sb.toString());
                JSONArray jSONArray = a.this.f2118d;
                if (jSONArray != null && jSONArray.length() > 0) {
                    this.a.a("experiments", a.this.f2118d);
                }
                com.fyber.inneractive.sdk.response.e eVar2 = a.this.f2119e;
                if (eVar2 != null && eVar2.B) {
                    this.a.a("sdk_bidding", "1");
                }
                if (InneractiveAdManager.isCurrentUserAChild()) {
                    this.a.a("child_mode", "1");
                }
                IAConfigManager iAConfigManager = IAConfigManager.M;
                this.a.a("ignite", iAConfigManager.E.d() && (eVar = a.this.f2119e) != null && eVar.F != com.fyber.inneractive.sdk.ignite.k.NONE ? "1" : "0");
                this.a.a("ignitep", iAConfigManager.E.c);
                this.a.a("ignitev", iAConfigManager.E.f2042d);
                JSONArray jSONArrayC = iAConfigManager.L.c();
                if (jSONArrayC != null && jSONArrayC.length() > 0) {
                    this.a.a("s_experiments", jSONArrayC);
                }
                JSONArray jSONArray2 = a.this.f2120f;
                if (jSONArray2 == null || jSONArray2.length() <= 0) {
                    z = false;
                } else {
                    for (int i3 = 0; i3 < jSONArray2.length(); i3++) {
                        if (jSONArray2.optJSONObject(i3).length() >= 1) {
                            z = true;
                            break;
                        }
                    }
                    z = false;
                }
                if (z) {
                    this.a.a("extra", a.this.f2120f);
                }
                s sVar2 = this.a;
                sVar2.getClass();
                if ((TextUtils.isEmpty(sVar2.a) || (map = sVar2.b) == null || map.size() == 0) ? false : true) {
                    c cVar = IAConfigManager.M.H;
                    cVar.getClass();
                    JSONObject jSONObject = new JSONObject();
                    Map<String, Object> map2 = sVar2.b;
                    for (String str : map2.keySet()) {
                        Object obj = map2.get(str);
                        if (obj != null) {
                            try {
                                jSONObject.put(str, obj);
                            } catch (JSONException unused2) {
                            }
                        }
                    }
                    String strSubstring = sVar2.c;
                    if (strSubstring != null) {
                        int length = strSubstring.length();
                        if (length > 51200) {
                            int iIndexOf = strSubstring.indexOf("iawrapper");
                            if (iIndexOf == -1) {
                                iIndexOf = 0;
                            }
                            strSubstring = strSubstring.substring(iIndexOf, 51199);
                            IAlog.a("Sdk event dispatcher: message size %d is too long! trimming message to %d Characters", Integer.valueOf(length), 51200);
                        }
                        try {
                            jSONObject.put("ad", strSubstring);
                        } catch (JSONException e2) {
                            IAlog.a("Failed inserting ad body to json", e2, new Object[0]);
                        }
                    }
                    if (IAlog.a == 1) {
                        try {
                            IAlog.a(1, null, "%s, Event: %s", "SDK_EVENT", jSONObject.toString());
                        } catch (Throwable unused3) {
                        }
                    }
                    cVar.a.offer(jSONObject);
                    if (cVar.a.size() > 30) {
                        Handler handler = cVar.f2101d;
                        if (handler != null && handler.hasMessages(12312329)) {
                            cVar.f2101d.removeMessages(12312329);
                        }
                        cVar.a(12312329, 0L);
                    }
                }
            }
        }

        public a(q qVar) {
            this(qVar, (InneractiveAdRequest) null, (com.fyber.inneractive.sdk.response.e) null, (JSONArray) null);
        }

        public a(q qVar, InneractiveAdRequest inneractiveAdRequest, com.fyber.inneractive.sdk.response.e eVar, JSONArray jSONArray) {
            this(eVar);
            this.b = qVar;
            this.a = inneractiveAdRequest;
            this.f2118d = jSONArray;
        }

        public a(r rVar, InneractiveAdRequest inneractiveAdRequest, com.fyber.inneractive.sdk.response.e eVar, JSONArray jSONArray) {
            this(eVar);
            this.c = rVar;
            this.a = inneractiveAdRequest;
            this.f2118d = jSONArray;
        }

        public a(com.fyber.inneractive.sdk.response.e eVar) {
            this.f2121g = false;
            this.f2119e = eVar;
            this.f2120f = new JSONArray();
        }

        public a a(Object... objArr) {
            if (objArr.length > 0) {
                JSONObject jSONObject = new JSONObject();
                for (int i = 0; i < objArr.length - 1; i += 2) {
                    String string = objArr[i].toString();
                    Object obj = objArr[i + 1];
                    try {
                        jSONObject.put(string, obj);
                    } catch (Exception unused) {
                        IAlog.e("Got exception adding param to json object: %s, %s", string, obj);
                    }
                }
                this.f2120f.put(jSONObject);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:77:0x00f1  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0101  */
        /* JADX WARN: Removed duplicated region for block: B:89:0x011b  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0120  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x012d  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x012f  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x013a  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x013d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(java.lang.String r20) {
            /*
                Method dump skipped, instruction units count: 336
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.network.s.a.a(java.lang.String):void");
        }
    }

    public static class b {
        public JSONObject a = new JSONObject();

        public b a(String str, Object obj) {
            try {
                this.a.put(str, obj);
            } catch (Exception unused) {
                IAlog.e("Got exception adding param to json object: %s, %s", str, obj);
            }
            return this;
        }
    }

    public s(String str, String str2, String str3, Long l, String str4, String str5, String str6, String str7) {
        super(com.fyber.inneractive.sdk.config.a.b());
        a("osn", o2.f6459e);
        a(v4.y, Build.VERSION.RELEASE);
        a("model", com.fyber.inneractive.sdk.util.j.h());
        a(v4.J, str7 == null ? "8.2.4" : str7);
        a("pkgn", com.fyber.inneractive.sdk.util.j.k());
        a("pkgv", com.fyber.inneractive.sdk.util.j.l());
        a("appid", str);
        a("session", str2);
        a("adnt", str3);
        a("adnt_id", l);
        a(CampaignEx.JSON_KEY_CREATIVE_ID, str4);
        a("adomain", str5);
        a("campaign_id", str6);
    }
}
