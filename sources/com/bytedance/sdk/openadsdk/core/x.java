package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.bytedance.JProtect;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.model.m;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.facebook.share.internal.ShareConstants;
import com.json.o2;
import com.json.sdk.controller.f;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: TTAndroidObject.java */
/* JADX INFO: loaded from: classes2.dex */
public class x implements com.bytedance.sdk.component.adexpress.d.b, x.a, com.bytedance.sdk.openadsdk.g.b {
    private static final Map<String, Boolean> h;
    private com.bytedance.sdk.openadsdk.i.b A;
    private com.bytedance.sdk.openadsdk.i.i B;
    private List<com.bytedance.sdk.openadsdk.core.model.q> D;
    private HashMap<String, i> E;
    private com.bytedance.sdk.openadsdk.b.c.e H;
    private com.bytedance.sdk.component.a.r I;
    private String J;
    private com.bytedance.sdk.openadsdk.core.widget.a.a L;
    private com.bytedance.sdk.openadsdk.i.f M;
    private boolean N;
    private boolean O;
    private Context P;
    private a Q;
    protected Map<String, Object> a;
    boolean b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference<SSWebView> f1769d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1771f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.widget.b f1772g;
    private com.bytedance.sdk.openadsdk.g.c i;
    private String j;
    private WeakReference<View> k;
    private String l;
    private int m;
    private String n;
    private int o;
    private com.bytedance.sdk.openadsdk.core.model.q q;
    private com.bytedance.sdk.component.adexpress.b.k r;
    private com.bytedance.sdk.openadsdk.core.nativeexpress.l s;
    private JSONObject t;
    private com.bytedance.sdk.openadsdk.g.d u;
    private com.bytedance.sdk.openadsdk.i.a v;
    private com.bytedance.sdk.openadsdk.i.e w;
    private com.bytedance.sdk.openadsdk.i.d x;
    private JSONObject y;
    private com.bytedance.sdk.openadsdk.core.b.d z;
    private boolean p = true;
    private boolean C = true;
    private boolean F = false;
    private boolean G = false;
    boolean c = false;
    private boolean K = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.bytedance.sdk.component.utils.x f1770e = new com.bytedance.sdk.component.utils.x(Looper.getMainLooper(), this);

    /* JADX INFO: compiled from: TTAndroidObject.java */
    public interface a {
        void a();
    }

    /* JADX INFO: compiled from: TTAndroidObject.java */
    public static class b {
        public String a;
        public String b;
        public String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public JSONObject f1773d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1774e;
    }

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        h = concurrentHashMap;
        Boolean bool = Boolean.TRUE;
        concurrentHashMap.put("log_event", bool);
        concurrentHashMap.put("private", bool);
        concurrentHashMap.put("dispatch_message", bool);
        concurrentHashMap.put("custom_event", bool);
        concurrentHashMap.put("log_event_v3", bool);
    }

    public x(Context context) {
        this.P = context;
    }

    private void a(final b bVar, final JSONObject jSONObject) {
        if (bVar == null) {
            return;
        }
        try {
            a(bVar.f1773d, new com.bytedance.sdk.openadsdk.i.c() { // from class: com.bytedance.sdk.openadsdk.core.x.7
            });
        } catch (Exception unused) {
        }
    }

    private void a(String str, boolean z) {
        if (this.H == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (z) {
            this.H.a(str);
        } else {
            this.H.b(str);
        }
    }

    @JProtect
    private void a(JSONObject jSONObject, int i) throws Exception {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = q().iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        jSONObject.put("appName", com.bytedance.sdk.openadsdk.common.a.a());
        jSONObject.put("innerAppName", com.bytedance.sdk.openadsdk.common.a.e());
        jSONObject.put("aid", com.bytedance.sdk.openadsdk.common.a.b());
        jSONObject.put("sdkEdition", com.bytedance.sdk.openadsdk.common.a.c());
        jSONObject.put("appVersion", com.bytedance.sdk.openadsdk.common.a.d());
        jSONObject.put("netType", com.bytedance.sdk.openadsdk.common.a.f());
        jSONObject.put("supportList", jSONArray);
        jSONObject.put("deviceId", com.bytedance.sdk.openadsdk.common.a.a(o.a()));
        if (DeviceUtils.a(o.a())) {
            jSONObject.put("device_platform", "Android_Pad");
        } else {
            jSONObject.put("device_platform", o2.f6459e);
        }
        jSONObject.put("device_type", Build.VERSION.RELEASE);
    }

    private static void a(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.q qVar) throws Exception {
        String strY = qVar.Y();
        if (!TextUtils.isEmpty(strY)) {
            jSONObject.put(BidResponsedEx.KEY_CID, strY);
        }
        String strAc = qVar.ac();
        if (!TextUtils.isEmpty(strAc)) {
            jSONObject.put("log_extra", strAc);
        }
        String strBb = qVar.bb();
        if (!TextUtils.isEmpty(strBb)) {
            jSONObject.put(DownloadModel.DOWNLOAD_URL, strBb);
        }
        jSONObject.put("dc", TextUtils.isEmpty(o.d().M()) ? o.d().M() : "SG");
        jSONObject.put("language", j.a());
        jSONObject.put("isRTL", com.bytedance.sdk.openadsdk.core.settings.o.aj().ae());
    }

    @JProtect
    private boolean a(String str, int i, com.bytedance.sdk.openadsdk.core.model.m mVar) {
        HashMap<String, i> map;
        i iVar;
        if (TextUtils.isEmpty(str) || (map = this.E) == null || (iVar = map.get(str)) == null) {
            return false;
        }
        iVar.a(i, mVar);
        return true;
    }

    public static JSONArray b(List<com.bytedance.sdk.openadsdk.core.model.q> list) {
        JSONArray jSONArray = new JSONArray();
        if (list == null) {
            return jSONArray;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            jSONArray.put(list.get(i).ao());
        }
        return jSONArray;
    }

    private void b(String str, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", "callback");
            jSONObject2.put("__callback_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            q(jSONObject2);
        } catch (Exception unused) {
        }
    }

    private void c(String str, JSONObject jSONObject) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", NotificationCompat.CATEGORY_EVENT);
            jSONObject2.put("__event_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            q(jSONObject2);
        } catch (Exception unused) {
        }
    }

    private void e(JSONObject jSONObject) throws Exception {
        if (this.N) {
            com.bytedance.sdk.openadsdk.core.model.q qVar = this.q;
            if ((qVar instanceof com.bytedance.sdk.openadsdk.core.model.r) && ((com.bytedance.sdk.openadsdk.core.model.r) qVar).bw()) {
                JSONArray jSONArray = new JSONArray();
                jSONObject.put("adInfos", jSONArray);
                for (com.bytedance.sdk.openadsdk.core.model.q qVar2 : ((com.bytedance.sdk.openadsdk.core.model.r) this.q).by()) {
                    JSONObject jSONObject2 = new JSONObject();
                    a(jSONObject2, qVar2);
                    jSONArray.put(jSONObject2);
                }
                return;
            }
        }
        a(jSONObject, this.q);
    }

    private void f(JSONObject jSONObject) throws Exception {
        if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.model.t.d(this.q))) {
            return;
        }
        jSONObject.put("playable_style", com.bytedance.sdk.openadsdk.core.model.t.d(this.q));
    }

    private void g(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.b.c.e eVar;
        if (jSONObject == null || (eVar = this.H) == null) {
            return;
        }
        eVar.b(jSONObject);
    }

    private void h(String str) {
        try {
            String str2 = new String(Base64.decode(str, 2));
            com.bytedance.sdk.component.utils.l.b("TTAD.AndroidObject", str2);
            JSONArray jSONArray = new JSONArray(str2);
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                b bVar = new b();
                try {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null) {
                        bVar.a = jSONObjectOptJSONObject.optString("__msg_type", null);
                        bVar.b = jSONObjectOptJSONObject.optString("__callback_id", null);
                        bVar.c = jSONObjectOptJSONObject.optString("func");
                        bVar.f1773d = jSONObjectOptJSONObject.optJSONObject("params");
                        bVar.f1774e = jSONObjectOptJSONObject.optInt("JSSDK");
                    }
                } catch (Throwable unused) {
                }
                if (!TextUtils.isEmpty(bVar.a) && !TextUtils.isEmpty(bVar.c)) {
                    Message messageObtainMessage = this.f1770e.obtainMessage(11);
                    messageObtainMessage.obj = bVar;
                    this.f1770e.sendMessage(messageObtainMessage);
                }
            }
        } catch (Exception unused2) {
            if (!com.bytedance.sdk.component.utils.l.a()) {
                com.bytedance.sdk.component.utils.l.d("TTAD.AndroidObject", "failed to parse jsbridge msg queue");
                return;
            }
            com.bytedance.sdk.component.utils.l.d("TTAD.AndroidObject", "failed to parse jsbridge msg queue " + str);
        }
    }

    private void h(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.i.b bVar = this.A;
        if (bVar == null || jSONObject == null) {
            return;
        }
        bVar.a(jSONObject.optBoolean("isRenderSuc", false), jSONObject.optInt("code", -1), jSONObject.optString("msg", ""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(JSONObject jSONObject) {
        if (this.s == null || jSONObject == null) {
            return;
        }
        try {
            this.s.a(jSONObject.optBoolean(CampaignEx.JSON_NATIVE_VIDEO_MUTE, false));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i(String str) {
        if (!TextUtils.isEmpty(str) && "click_other".equals(str)) {
            return j();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String j(String str) {
        return this.A != null ? ac.a(this.m) : this.r == null ? ac.b(this.m) : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(JSONObject jSONObject) {
        if (this.s == null || jSONObject == null) {
            return;
        }
        try {
            this.s.a(jSONObject.optInt("stateType", -1));
        } catch (Exception unused) {
        }
    }

    private void k(String str) {
        if (str != null && str.startsWith("bytedance://")) {
            try {
                if (str.equals("bytedance://dispatch_message/")) {
                    WebView webViewO = o();
                    if (webViewO != null) {
                        com.bytedance.sdk.component.utils.k.a(webViewO, "javascript:ToutiaoJSBridge._fetchQueue()");
                    }
                } else if (str.startsWith("bytedance://private/setresult/")) {
                    int iIndexOf = str.indexOf(38, 30);
                    if (iIndexOf <= 0) {
                        return;
                    }
                    String strSubstring = str.substring(30, iIndexOf);
                    String strSubstring2 = str.substring(iIndexOf + 1);
                    if (strSubstring.equals("SCENE_FETCHQUEUE") && strSubstring2.length() > 0) {
                        h(strSubstring2);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private boolean k(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.nativeexpress.l lVar = this.s;
        if (lVar != null && jSONObject != null) {
            double dC = lVar.c();
            int iD = this.s.d();
            try {
                jSONObject.put("currentTime", dC / 1000.0d);
                jSONObject.put("state", iD);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @JProtect
    private void l(JSONObject jSONObject) {
        int i;
        double dOptDouble;
        boolean z;
        double d2;
        com.bytedance.sdk.openadsdk.i.f fVar;
        x xVar = this;
        if (xVar.r == null || jSONObject == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.b.n nVar = new com.bytedance.sdk.component.adexpress.b.n();
        nVar.a(1);
        try {
            boolean zOptBoolean = jSONObject.optBoolean("isRenderSuc");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("AdSize");
            double dOptDouble2 = 0.0d;
            if (jSONObjectOptJSONObject != null) {
                dOptDouble2 = jSONObjectOptJSONObject.optDouble("width");
                dOptDouble = jSONObjectOptJSONObject.optDouble("height");
            } else {
                dOptDouble = 0.0d;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("videoInfo");
            if (jSONObjectOptJSONObject2 != null) {
                try {
                    double dOptDouble3 = jSONObjectOptJSONObject2.optDouble("x");
                    double dOptDouble4 = jSONObjectOptJSONObject2.optDouble("y");
                    z = zOptBoolean;
                    double dOptDouble5 = jSONObjectOptJSONObject2.optDouble("width");
                    double dOptDouble6 = jSONObjectOptJSONObject2.optDouble("height");
                    if (xVar.m(jSONObjectOptJSONObject2)) {
                        d2 = dOptDouble;
                        nVar.a((float) jSONObjectOptJSONObject2.optDouble("borderRadiusTopLeft"));
                        nVar.b((float) jSONObjectOptJSONObject2.optDouble("borderRadiusTopRight"));
                        nVar.c((float) jSONObjectOptJSONObject2.optDouble("borderRadiusBottomLeft"));
                        nVar.d((float) jSONObjectOptJSONObject2.optDouble("borderRadiusBottomRight"));
                    } else {
                        d2 = dOptDouble;
                    }
                    nVar.c(dOptDouble3);
                    nVar.d(dOptDouble4);
                    nVar.e(dOptDouble5);
                    nVar.f(dOptDouble6);
                } catch (Exception unused) {
                    i = 101;
                    xVar = this;
                }
            } else {
                z = zOptBoolean;
                d2 = dOptDouble;
            }
            try {
                String strOptString = jSONObject.optString("message", g.a(101));
                int iOptInt = jSONObject.optInt("code", 101);
                nVar.a(z);
                nVar.a(dOptDouble2);
                nVar.b(d2);
                nVar.a(strOptString);
                nVar.b(iOptInt);
                xVar = this;
                xVar.r.a(nVar);
                if (jSONObjectOptJSONObject2 == null || (fVar = xVar.M) == null) {
                    return;
                }
                fVar.a(nVar);
                return;
            } catch (Exception unused2) {
                xVar = this;
            }
        } catch (Exception unused3) {
        }
        i = 101;
        nVar.b(i);
        nVar.a(g.a(i));
        xVar.r.a(nVar);
    }

    private boolean m(@NonNull JSONObject jSONObject) {
        return jSONObject.has("borderRadiusTopLeft") && jSONObject.has("borderRadiusBottomLeft") && jSONObject.has("borderRadiusTopRight") && jSONObject.has("borderRadiusBottomRight");
    }

    private void n(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        com.bytedance.sdk.component.utils.l.b("TTAD.AndroidObject", "TTAndroidObject handlerDynamicTrack");
        try {
            Uri uri = Uri.parse(jSONObject.optString("trackData"));
            if ("bytedance".equals(uri.getScheme().toLowerCase())) {
                com.bytedance.sdk.openadsdk.utils.l.a(uri, this);
            }
        } catch (Exception unused) {
        }
    }

    private WebView o() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.f1769d;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return null;
        }
        return sSWebView.getWebView();
    }

    private void o(JSONObject jSONObject) {
        if (jSONObject == null || this.u == null) {
            return;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("temaiProductIds");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                this.u.a(false, null);
            } else {
                this.u.a(true, jSONArrayOptJSONArray);
            }
        } catch (Exception unused) {
            this.u.a(false, null);
        }
    }

    @JProtect
    private JSONObject p() {
        try {
            View view = this.k.get();
            SSWebView sSWebView = this.f1769d.get();
            if (view != null && sSWebView != null) {
                int[] iArrB = ad.b(view);
                int[] iArrB2 = ad.b((View) sSWebView);
                if (iArrB != null && iArrB2 != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("x", ad.c(o.a(), iArrB[0] - iArrB2[0]));
                    jSONObject.put("y", ad.c(o.a(), iArrB[1] - iArrB2[1]));
                    jSONObject.put("w", ad.c(o.a(), view.getWidth()));
                    jSONObject.put("h", ad.c(o.a(), view.getHeight()));
                    jSONObject.put("isExist", true);
                    return jSONObject;
                }
                com.bytedance.sdk.component.utils.l.e("TTAD.AndroidObject", "setCloseButtonInfo error position or webViewPosition is null");
                return null;
            }
            com.bytedance.sdk.component.utils.l.e("TTAD.AndroidObject", "setCloseButtonInfo error closeButton is null");
            return null;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.a("TTAD.AndroidObject", "setCloseButtonInfo error", th);
            return null;
        }
    }

    private boolean p(JSONObject jSONObject) {
        try {
            jSONObject.put("creatives", b(this.D));
        } catch (Exception unused) {
        }
        return true;
    }

    private List<String> q() {
        return Arrays.asList("appInfo", "adInfo", "getTemplateInfo", "getTeMaiAds");
    }

    private void q(JSONObject jSONObject) {
        WebView webViewO;
        if (jSONObject == null || (webViewO = o()) == null) {
            return;
        }
        String str = "javascript:ToutiaoJSBridge._handleMessageFromToutiao(" + jSONObject + ")";
        com.bytedance.sdk.component.utils.k.a(webViewO, str);
        if (com.bytedance.sdk.component.utils.l.a()) {
            com.bytedance.sdk.component.utils.l.a("TTAD.AndroidObject", "js_msg " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject r(JSONObject jSONObject) {
        if (this.a != null) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                String strOptString = jSONObject.optString("ad_extra_data", null);
                if (strOptString != null) {
                    jSONObject2 = new JSONObject(strOptString);
                }
                for (Map.Entry<String, Object> entry : this.a.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.d(e2.toString());
            }
        }
        return jSONObject;
    }

    private void r() {
        com.bytedance.sdk.openadsdk.i.i iVar = this.B;
        if (iVar == null) {
            return;
        }
        iVar.a();
    }

    private void s() {
        com.bytedance.sdk.openadsdk.i.i iVar = this.B;
        if (iVar == null) {
            return;
        }
        iVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        com.bytedance.sdk.openadsdk.core.nativeexpress.l lVar = this.s;
        if (lVar != null) {
            lVar.a();
        }
    }

    private void u() {
        if (this.P == null || TextUtils.isEmpty(o.d().J())) {
            return;
        }
        TTWebsiteActivity.a(this.P, this.q, this.J);
    }

    @JProtect
    private JSONObject v() {
        JSONObject jSONObject = new JSONObject();
        if (o.d() == null) {
            return jSONObject;
        }
        try {
            com.bytedance.sdk.openadsdk.core.model.q qVar = this.q;
            int iAZ = qVar != null ? qVar.aZ() : 0;
            com.bytedance.sdk.openadsdk.core.model.q qVar2 = this.q;
            int iAS = qVar2 != null ? qVar2.aS() : 0;
            int iJ = o.d().j(String.valueOf(iAZ));
            int iQ = o.d().q(String.valueOf(iAZ));
            boolean zF = o.d().f(String.valueOf(iAZ));
            boolean z = true;
            boolean z2 = !com.bytedance.sdk.openadsdk.core.model.q.c(this.q) && o.d().l(String.valueOf(iAZ)) == 1;
            jSONObject.put("voice_control", (iAS == 7 || iAS == 8) ? o.d().p(String.valueOf(iAZ)) : o.d().c(String.valueOf(iAZ)));
            jSONObject.put("rv_skip_time", iJ);
            jSONObject.put("fv_skip_show", zF);
            jSONObject.put("iv_skip_time", iQ);
            com.bytedance.sdk.openadsdk.core.model.q qVar3 = this.q;
            if (qVar3 == null || !qVar3.an()) {
                z = false;
            }
            jSONObject.put("show_dislike", z);
            com.bytedance.sdk.openadsdk.core.model.q qVar4 = this.q;
            jSONObject.put("video_adaptation", qVar4 != null ? qVar4.A() : 0);
            jSONObject.put("skip_change_to_close", z2);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private boolean w() {
        com.bytedance.sdk.openadsdk.core.model.q qVar = this.q;
        if (qVar == null || qVar.aj() == null || com.bytedance.sdk.openadsdk.core.model.t.b(this.q) || this.F || this.q.aj().optInt("parent_type") != 2) {
            return false;
        }
        int iAS = this.q.aS();
        if (iAS != 8 && iAS != 7) {
            return false;
        }
        this.F = true;
        return true;
    }

    private void x() {
        if (this.i == null) {
            this.i = com.bytedance.sdk.openadsdk.g.a.a(this, this.q);
        }
    }

    public com.bytedance.sdk.component.a.r a() {
        return this.I;
    }

    public x a(int i) {
        this.o = i;
        return this;
    }

    public x a(View view) {
        this.k = new WeakReference<>(view);
        return this;
    }

    public x a(com.bytedance.sdk.component.adexpress.b.k kVar) {
        this.r = kVar;
        return this;
    }

    public x a(SSWebView sSWebView) {
        WebView webView = sSWebView.getWebView();
        if (webView == null) {
            return this;
        }
        try {
            com.bytedance.sdk.component.a.r rVarB = com.bytedance.sdk.component.a.r.a(webView).a(new com.bytedance.sdk.openadsdk.h.a()).a("ToutiaoJSBridge").a(new com.bytedance.sdk.component.a.l() { // from class: com.bytedance.sdk.openadsdk.core.x.1
                @Override // com.bytedance.sdk.component.a.l
                @NonNull
                public <T> T a(@NonNull String str, @NonNull Type type) {
                    return null;
                }

                @Override // com.bytedance.sdk.component.a.l
                @NonNull
                public <T> String a(@NonNull T t) {
                    return null;
                }
            }).a(h.b().q()).b(true).a().b();
            this.I = rVarB;
            com.bytedance.sdk.openadsdk.h.a.e.a(rVarB, this);
            com.bytedance.sdk.openadsdk.h.a.a.a(this.I, this);
            com.bytedance.sdk.openadsdk.h.a.b.a(this.I, this);
            com.bytedance.sdk.openadsdk.h.a.c.a(this.I, this);
            com.bytedance.sdk.openadsdk.h.a.d.a(this.I, this);
            com.bytedance.sdk.openadsdk.h.a.f.a(this.I, this);
            com.bytedance.sdk.openadsdk.h.a.h.a(this.I, this);
            com.bytedance.sdk.openadsdk.h.a.g.a(this.I, sSWebView);
        } catch (Exception unused) {
        }
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.b.c.e eVar) {
        this.H = eVar;
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.core.b.d dVar) {
        this.z = dVar;
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.core.model.q qVar) {
        this.q = qVar;
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.core.nativeexpress.l lVar) {
        this.s = lVar;
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.core.widget.a.a aVar) {
        this.L = aVar;
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.core.widget.b bVar) {
        this.f1772g = bVar;
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.g.d dVar) {
        this.u = dVar;
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.i.a aVar) {
        this.v = aVar;
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.i.b bVar) {
        this.A = bVar;
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.i.d dVar) {
        this.x = dVar;
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.i.e eVar) {
        this.w = eVar;
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.i.f fVar) {
        this.M = fVar;
        return this;
    }

    public x a(com.bytedance.sdk.openadsdk.i.i iVar) {
        this.B = iVar;
        return this;
    }

    public x a(List<com.bytedance.sdk.openadsdk.core.model.q> list) {
        this.D = list;
        return this;
    }

    public x a(Map<String, Object> map) {
        this.a = map;
        return this;
    }

    public x a(JSONObject jSONObject) {
        this.t = jSONObject;
        return this;
    }

    public x a(boolean z) {
        this.b = z;
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x03b6 A[PHI: r4
      0x03b6: PHI (r4v21 org.json.JSONObject) = (r4v16 org.json.JSONObject), (r4v22 org.json.JSONObject) binds: [B:227:0x03b4, B:211:0x036b] A[DONT_GENERATE, DONT_INLINE]] */
    @com.bytedance.JProtect
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public org.json.JSONObject a(com.bytedance.sdk.openadsdk.core.x.b r23, int r24) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 1352
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.x.a(com.bytedance.sdk.openadsdk.core.x$b, int):org.json.JSONObject");
    }

    @Override // com.bytedance.sdk.component.utils.x.a
    public void a(Message message) {
        if (message != null && message.what == 11) {
            Object obj = message.obj;
            if (obj instanceof b) {
                try {
                    a((b) obj, 1);
                } catch (Exception unused) {
                }
            }
        }
    }

    public void a(a aVar) {
        this.Q = aVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    public void a(String str) {
    }

    @Override // com.bytedance.sdk.openadsdk.g.b
    public void a(String str, JSONObject jSONObject) {
        c(str, jSONObject);
    }

    @JProtect
    public void a(JSONObject jSONObject, com.bytedance.sdk.openadsdk.i.c cVar) {
    }

    public boolean a(Uri uri) {
        if (uri == null) {
            return false;
        }
        try {
            if (!"bytedance".equals(uri.getScheme())) {
                return false;
            }
            if (h.containsKey(uri.getHost())) {
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    @JavascriptInterface
    public String adInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            e(jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    @JavascriptInterface
    public String appInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            a(jSONObject, 0);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    public x b(int i) {
        this.m = i;
        return this;
    }

    public x b(SSWebView sSWebView) {
        this.f1769d = new WeakReference<>(sSWebView);
        return this;
    }

    public x b(boolean z) {
        this.G = z;
        return this;
    }

    public void b() {
        com.bytedance.sdk.component.a.r rVar = this.I;
        if (rVar == null) {
            return;
        }
        rVar.a();
        this.I = null;
    }

    public void b(@NonNull final Uri uri) {
        try {
            String host = uri.getHost();
            if ("log_event".equals(host) || "custom_event".equals(host) || "log_event_v3".equals(host)) {
                com.bytedance.sdk.openadsdk.b.c.a(new com.bytedance.sdk.component.g.h("log_event_handleUri") { // from class: com.bytedance.sdk.openadsdk.core.x.9
                    @Override // java.lang.Runnable
                    public void run() {
                        long j;
                        String strJ;
                        JSONObject jSONObject;
                        String queryParameter = uri.getQueryParameter("category");
                        String queryParameter2 = uri.getQueryParameter("tag");
                        x.this.J = queryParameter2;
                        String queryParameter3 = uri.getQueryParameter("label");
                        if (x.this.i(queryParameter3)) {
                            long j2 = 0;
                            try {
                                j = Long.parseLong(uri.getQueryParameter("value"));
                            } catch (Exception unused) {
                                j = 0;
                            }
                            try {
                                j2 = Long.parseLong(uri.getQueryParameter("ext_value"));
                            } catch (Exception unused2) {
                            }
                            long j3 = j2;
                            JSONObject jSONObjectR = null;
                            String queryParameter4 = uri.getQueryParameter("extra");
                            if (!TextUtils.isEmpty(queryParameter4)) {
                                try {
                                    JSONObject jSONObject2 = new JSONObject(queryParameter4);
                                    try {
                                        jSONObject2.putOpt("ua_policy", Integer.valueOf(x.this.o));
                                    } catch (Exception unused3) {
                                    }
                                    jSONObjectR = jSONObject2;
                                } catch (Exception unused4) {
                                }
                            }
                            if (CampaignEx.JSON_NATIVE_VIDEO_CLICK.equals(queryParameter3)) {
                                jSONObjectR = x.this.r(jSONObjectR);
                            }
                            if ("landing_perf_error".equals(queryParameter3) || "landing_perf_stats".equals(queryParameter3)) {
                                try {
                                    JSONObject jSONObject3 = new JSONObject();
                                    for (String str : uri.getQueryParameterNames()) {
                                        try {
                                            if ("extra".equals(str)) {
                                                jSONObject3.put("ad_extra_data", new JSONObject(uri.getQueryParameter(str)).optString("ad_extra_data"));
                                            } else {
                                                jSONObject3.put(str, uri.getQueryParameter(str));
                                            }
                                        } catch (Exception unused5) {
                                        }
                                    }
                                    strJ = x.this.f1771f;
                                    jSONObject = jSONObject3;
                                } catch (Exception unused6) {
                                    return;
                                }
                            } else {
                                strJ = x.this.j(queryParameter2);
                                jSONObject = jSONObjectR;
                            }
                            com.bytedance.sdk.openadsdk.b.c.a(x.this.q, queryParameter, strJ, queryParameter3, j, j3, jSONObject);
                        }
                    }
                });
            } else if ("private".equals(host) || "dispatch_message".equals(host)) {
                k(uri.toString());
            } else {
                com.bytedance.sdk.component.utils.l.d("TTAD.AndroidObject", "handlrUir: not match schema host");
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.b("TTAD.AndroidObject", "handleUri exception: ", e2);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    public void b(String str) {
    }

    public void b(JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt("landingStyle");
        String strOptString = jSONObject.optString("url");
        String strOptString2 = jSONObject.optString("fallback_url");
        boolean z = this.P instanceof Activity;
        try {
            jSONObject.put("is_activity", z);
        } catch (JSONException unused) {
        }
        boolean z2 = true;
        com.bytedance.sdk.openadsdk.b.c.a(this.q, this.J, 1, jSONObject);
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        if (iOptInt == 0) {
            WebView webViewO = o();
            if (webViewO != null) {
                webViewO.loadUrl(strOptString);
                com.bytedance.sdk.openadsdk.b.c.a(this.q, this.J, 2, (JSONObject) null);
            } else {
                com.bytedance.sdk.openadsdk.b.c.a(this.q, this.J, -1, (JSONObject) null);
            }
        } else if (iOptInt == 1) {
            if (z) {
                com.bytedance.sdk.openadsdk.utils.p.a((Activity) this.P, strOptString, this.q, this.J);
            }
        } else if (iOptInt == 2) {
            if (z && !com.bytedance.sdk.openadsdk.utils.p.b((Activity) this.P, strOptString, this.q, this.J)) {
                com.bytedance.sdk.openadsdk.utils.p.a((Activity) this.P, strOptString2, this.q, this.J);
            }
        } else if (iOptInt != 3) {
            z2 = false;
        } else if (z) {
            if (z.b(this.P, strOptString, this.q, this.m, this.J, false)) {
                com.bytedance.sdk.openadsdk.b.c.a(this.q, this.J, 3, (JSONObject) null);
            } else {
                com.bytedance.sdk.openadsdk.b.c.a(this.q, this.J, -2, (JSONObject) null);
            }
        }
        com.bytedance.sdk.openadsdk.core.widget.b bVar = this.f1772g;
        if (bVar == null || !z2) {
            return;
        }
        bVar.a();
    }

    public com.bytedance.sdk.openadsdk.core.model.q c() {
        return this.q;
    }

    public x c(String str) {
        this.f1771f = str;
        return this;
    }

    public x c(boolean z) {
        this.C = z;
        return this;
    }

    public void c(int i) {
        com.bytedance.sdk.openadsdk.core.nativeexpress.l lVar = this.s;
        if (lVar != null) {
            lVar.b(i);
        }
    }

    public void c(JSONObject jSONObject) {
        String str;
        double d2;
        double d3;
        double dOptDouble;
        double d4;
        double d5;
        double d6;
        double d7;
        double d8;
        double d9;
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null) {
            return;
        }
        com.bytedance.sdk.component.utils.l.b("TTAD.AndroidObject", "TTAndroidObject handleClickEvent");
        try {
            String strOptString = jSONObject.optString(f.b.AD_ID);
            int iOptInt = jSONObject.optInt("areaType", 1);
            String strOptString2 = jSONObject.optString("clickAreaType");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("clickInfo");
            double d10 = 0.0d;
            if (jSONObjectOptJSONObject2 != null) {
                double dOptDouble2 = jSONObjectOptJSONObject2.optDouble("down_x", 0.0d);
                dOptDouble = jSONObjectOptJSONObject2.optDouble("down_y", 0.0d);
                double dOptDouble3 = jSONObjectOptJSONObject2.optDouble("up_x", 0.0d);
                double dOptDouble4 = jSONObjectOptJSONObject2.optDouble("up_y", 0.0d);
                double dOptDouble5 = jSONObjectOptJSONObject2.optDouble("down_time", 0.0d);
                double dOptDouble6 = jSONObjectOptJSONObject2.optDouble("up_time", 0.0d);
                double dOptDouble7 = jSONObjectOptJSONObject2.optDouble("button_x", 0.0d);
                double dOptDouble8 = jSONObjectOptJSONObject2.optDouble("button_y", 0.0d);
                double dOptDouble9 = jSONObjectOptJSONObject2.optDouble("button_width", 0.0d);
                double dOptDouble10 = jSONObjectOptJSONObject2.optDouble("button_height", 0.0d);
                jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject("rectInfo");
                d9 = dOptDouble10;
                d10 = dOptDouble2;
                d3 = dOptDouble3;
                d4 = dOptDouble5;
                d5 = dOptDouble6;
                d6 = dOptDouble7;
                d7 = dOptDouble8;
                d8 = dOptDouble9;
                str = strOptString;
                d2 = dOptDouble4;
            } else {
                str = strOptString;
                d2 = 0.0d;
                d3 = 0.0d;
                dOptDouble = 0.0d;
                d4 = 0.0d;
                d5 = 0.0d;
                d6 = 0.0d;
                d7 = 0.0d;
                d8 = 0.0d;
                d9 = 0.0d;
                jSONObjectOptJSONObject = null;
            }
            com.bytedance.sdk.openadsdk.core.model.m mVarA = new m.a().d((float) d10).c((float) dOptDouble).b((float) d3).a((float) d2).b((long) d4).a((long) d5).c((int) d6).d((int) d7).e((int) d8).f((int) d9).a(strOptString2).a((SparseArray<c.a>) null).a(true).b(iOptInt).a(jSONObjectOptJSONObject).a(jSONObject.optInt("clickAreaCategory", -1)).a();
            com.bytedance.sdk.component.adexpress.b.k kVar = this.r;
            if (kVar != null) {
                kVar.a(null, iOptInt, mVarA);
            }
            a(str, iOptInt, mVarA);
        } catch (Exception unused) {
            com.bytedance.sdk.component.adexpress.b.k kVar2 = this.r;
            if (kVar2 != null) {
                kVar2.a(null, -1, null);
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    @JavascriptInterface
    public void changeVideoState(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            com.bytedance.sdk.openadsdk.utils.aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.x.3
                @Override // java.lang.Runnable
                public void run() {
                    x.this.j(jSONObject);
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    @JavascriptInterface
    public void chooseAdResult(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt("video_choose");
            long jOptLong = jSONObject.optLong("video_choose_duration");
            com.bytedance.sdk.openadsdk.i.f fVar = this.M;
            if (fVar != null) {
                fVar.a(iOptInt, jOptLong);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    @JavascriptInterface
    public void clickEvent(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            com.bytedance.sdk.openadsdk.utils.aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.x.4
                @Override // java.lang.Runnable
                public void run() {
                    x.this.c(jSONObject);
                }
            });
        } catch (Exception unused) {
        }
    }

    public x d(String str) {
        this.j = str;
        return this;
    }

    public void d(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.q qVarA = com.bytedance.sdk.openadsdk.core.b.a(jSONObject);
        if (qVarA != null) {
            com.bytedance.sdk.openadsdk.core.b.a aVar = new com.bytedance.sdk.openadsdk.core.b.a(o.a(), qVarA, this.J, this.m);
            aVar.a(com.com.bytedance.overseas.sdk.a.d.a(o.a(), qVarA, this.J));
            aVar.onClick(null);
        }
    }

    public void d(boolean z) {
        this.c = z;
    }

    public boolean d() {
        com.bytedance.sdk.openadsdk.core.model.q qVar = this.q;
        return qVar != null && qVar.v();
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    @JavascriptInterface
    public void dynamicTrack(String str) {
        try {
            n(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    public x e(String str) {
        this.l = str;
        return this;
    }

    public void e(boolean z) {
        this.N = z;
    }

    public boolean e() {
        return this.c;
    }

    public x f(String str) {
        this.n = str;
        return this;
    }

    public void f() {
        com.bytedance.sdk.openadsdk.i.b bVar;
        if (this.O && (bVar = this.A) != null) {
            bVar.a();
            return;
        }
        Context context = this.P;
        if ((context instanceof Activity) && com.bytedance.sdk.openadsdk.utils.p.a((Activity) context)) {
            ((Activity) this.P).finish();
        }
    }

    public void f(boolean z) {
        this.O = z;
    }

    public void g() {
        com.bytedance.sdk.openadsdk.core.nativeexpress.l lVar = this.s;
        if (lVar != null) {
            lVar.b();
        }
    }

    public void g(String str) {
        this.J = str;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    @JavascriptInterface
    public String getCurrentVideoState() {
        JSONObject jSONObject = new JSONObject();
        k(jSONObject);
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    @JavascriptInterface
    public String getTemplateInfo() {
        a("getTemplateInfo", true);
        try {
            JSONObject jSONObject = this.t;
            if (jSONObject != null) {
                jSONObject.put("setting", v());
                com.bytedance.sdk.openadsdk.core.model.q qVar = this.q;
                if (qVar != null) {
                    this.t.put(ShareConstants.MEDIA_EXTENSION, qVar.ay());
                }
            }
            a("getTemplateInfo", false);
            return this.t.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    @JProtect
    public void h() {
        a((JSONObject) null, new com.bytedance.sdk.openadsdk.i.c() { // from class: com.bytedance.sdk.openadsdk.core.x.8
        });
    }

    public boolean i() {
        return this.K;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    @JavascriptInterface
    public void initRenderFinish() {
        com.bytedance.sdk.component.utils.l.b("TTAD.AndroidObject", "initRenderFinish");
        com.bytedance.sdk.openadsdk.utils.aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.x.6
            @Override // java.lang.Runnable
            public void run() {
                if (x.this.L != null) {
                    x.this.L.a();
                }
            }
        });
    }

    boolean j() {
        com.bytedance.sdk.openadsdk.core.model.q qVar = this.q;
        return qVar != null && qVar.J() == 1;
    }

    public void k() {
        com.bytedance.sdk.openadsdk.g.c cVar = this.i;
        if (cVar != null) {
            cVar.a();
        }
        if (w()) {
            h();
        }
    }

    public void l() {
        com.bytedance.sdk.openadsdk.g.c cVar = this.i;
        if (cVar != null) {
            cVar.b();
        }
    }

    public void m() {
        com.bytedance.sdk.openadsdk.g.c cVar = this.i;
        if (cVar != null) {
            cVar.c();
        }
        this.P = null;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    @JavascriptInterface
    public void muteVideo(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            com.bytedance.sdk.openadsdk.utils.aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.x.2
                @Override // java.lang.Runnable
                public void run() {
                    x.this.i(jSONObject);
                }
            });
        } catch (Exception unused) {
            com.bytedance.sdk.component.utils.l.e("TTAD.AndroidObject", "");
        }
    }

    public void n() {
        a aVar = this.Q;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    @JavascriptInterface
    public void renderDidFinish(String str) {
        try {
            l(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.d.b
    @JavascriptInterface
    public void skipVideo() {
        com.bytedance.sdk.openadsdk.utils.aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.x.5
            @Override // java.lang.Runnable
            public void run() {
                x.this.t();
            }
        });
    }
}
