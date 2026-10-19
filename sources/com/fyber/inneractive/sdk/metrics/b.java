package com.fyber.inneractive.sdk.metrics;

import android.app.Application;
import android.content.SharedPreferences;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.i;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.network.r;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.response.e;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.l;
import com.fyber.inneractive.sdk.util.m;
import com.fyber.inneractive.sdk.util.q;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b<T extends com.fyber.inneractive.sdk.response.e> extends com.fyber.inneractive.sdk.metrics.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f2062g = String.valueOf(24);
    public static final String h = String.valueOf(3);
    public static final String i = String.valueOf(24);
    public static final String j = String.valueOf(3);
    public final String b;
    public final UnitDisplayType c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final T f2063d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InneractiveAdRequest f2064e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final JSONArray f2065f;

    public class a implements Runnable {
        public final /* synthetic */ f a;
        public final /* synthetic */ Map b;

        public a(f fVar, Map map) {
            this.a = fVar;
            this.b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            int iA;
            int iA2;
            String str;
            IAlog.a("MetricCreativeReporter: sendMetricEvent()", new Object[0]);
            b bVar = b.this;
            UnitDisplayType unitDisplayType = bVar.c;
            if (unitDisplayType == null || !(unitDisplayType == UnitDisplayType.BANNER || unitDisplayType == UnitDisplayType.MRECT || unitDisplayType.isFullscreenUnit())) {
                Object[] objArr = new Object[1];
                UnitDisplayType unitDisplayType2 = bVar.c;
                objArr[0] = unitDisplayType2 != null ? unitDisplayType2.value() : "";
                IAlog.a("Unit display type %s is not supported for metric event", objArr);
                z = false;
            } else {
                z = true;
            }
            if (z) {
                IAlog.a("MetricCreativeReporter: sendMetricEvent(), collectorData: data: %s", this.a.toString());
                i iVar = IAConfigManager.M.u.b;
                UnitDisplayType unitDisplayType3 = b.this.c;
                if (unitDisplayType3 == UnitDisplayType.BANNER || unitDisplayType3 == UnitDisplayType.MRECT) {
                    String str2 = b.f2062g;
                    if (iVar.a.containsKey("ad_metrics_interval_banner")) {
                        str2 = iVar.a.get("ad_metrics_interval_banner");
                    }
                    String str3 = b.h;
                    if (iVar.a.containsKey("ad_metrics_limit_banner")) {
                        str3 = iVar.a.get("ad_metrics_limit_banner");
                    }
                    iA = q.a(str2, 24);
                    iA2 = q.a(str3, 3);
                    str = "LastSentMetricsBanner";
                } else {
                    String str4 = b.i;
                    if (iVar.a.containsKey("ad_metrics_interval_interstitial")) {
                        str4 = iVar.a.get("ad_metrics_interval_interstitial");
                    }
                    String str5 = b.j;
                    if (iVar.a.containsKey("ad_metrics_limit_interstitial")) {
                        str5 = iVar.a.get("ad_metrics_limit_interstitial");
                    }
                    iA = q.a(str4, 24);
                    iA2 = q.a(str5, 3);
                    str = "LastSentMetricsInterstitial";
                }
                Application application = l.a;
                if (application != null) {
                    SharedPreferences sharedPreferences = application.getSharedPreferences("IAConfigPrefs", 0);
                    JSONArray jSONArray = new JSONArray();
                    try {
                        jSONArray = new JSONArray(sharedPreferences.getString(str, "[]"));
                    } catch (JSONException unused) {
                    }
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    if (iVar.a(b.this.a, false) && !com.fyber.inneractive.sdk.metrics.a.a(iA, iA2, jSONArray, copyOnWriteArrayList)) {
                        copyOnWriteArrayList.add(Long.valueOf(System.currentTimeMillis()));
                        b bVar2 = b.this;
                        InneractiveAdRequest inneractiveAdRequest = bVar2.f2064e;
                        T t = bVar2.f2063d;
                        Map map = this.b;
                        try {
                            s.a aVar = new s.a(r.METRIC_MEASUREMENTS_EVENT, inneractiveAdRequest, t, bVar2.f2065f);
                            JSONObject jSONObject = new JSONObject();
                            for (String str6 : map.keySet()) {
                                Object obj = map.get(str6);
                                try {
                                    jSONObject.put(str6, obj);
                                } catch (Exception unused2) {
                                    IAlog.e("Got exception adding param to json object: %s, %s", str6, obj);
                                }
                            }
                            aVar.f2120f.put(jSONObject);
                            aVar.a((String) null);
                        } catch (Exception unused3) {
                        }
                    }
                    sharedPreferences.edit().putString(str, new JSONArray((Collection) copyOnWriteArrayList).toString()).apply();
                }
            }
        }
    }

    public b(T t, InneractiveAdRequest inneractiveAdRequest, String str, UnitDisplayType unitDisplayType, JSONArray jSONArray) {
        super("send_metric_report");
        this.f2063d = t;
        this.f2064e = inneractiveAdRequest;
        this.b = str;
        this.c = unitDisplayType;
        this.f2065f = jSONArray;
    }

    public void a() {
        c cVar = c.f2066d;
        f fVarA = cVar.a(this.b);
        Map<String, Long> mapJ = fVarA.j();
        if (!fVarA.a()) {
            IAlog.a("MetricCreativeReporter: Metric data not valid, data: %s", cVar.a(this.b).toString());
        } else {
            cVar.a.remove(this.b);
            m.a(new a(fVarA, mapJ));
        }
    }
}
