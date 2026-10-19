package com.bytedance.sdk.openadsdk.core.g;

import com.bytedance.sdk.openadsdk.core.g.b.c;
import com.bytedance.sdk.openadsdk.core.g.c.a;
import com.bytedance.sdk.openadsdk.core.model.q;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: VastResource.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    protected int a;
    protected int b;
    protected a.EnumC0136a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected a.b f1520d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f1521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected List<com.bytedance.sdk.openadsdk.core.g.b.c> f1522f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected List<com.bytedance.sdk.openadsdk.core.g.b.c> f1523g;
    protected String h;
    private String j;
    private q l;
    private final AtomicBoolean k = new AtomicBoolean(false);
    protected String i = "endcard_click";

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.g.c$1, reason: invalid class name */
    /* JADX INFO: compiled from: VastResource.java */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[a.b.values().length];
            a = iArr;
            try {
                iArr[a.b.STATIC_RESOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[a.b.HTML_RESOURCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[a.b.IFRAME_RESOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public c(int i, int i2, a.EnumC0136a enumC0136a, a.b bVar, String str, List<com.bytedance.sdk.openadsdk.core.g.b.c> list, List<com.bytedance.sdk.openadsdk.core.g.b.c> list2, String str2) {
        this.f1522f = new ArrayList();
        this.f1523g = new ArrayList();
        this.a = i;
        this.b = i2;
        this.c = enumC0136a;
        this.f1520d = bVar;
        this.f1521e = str;
        this.f1522f = list;
        this.f1523g = list2;
        this.h = str2;
    }

    public static float a(int i, int i2, int i3, int i4, a.b bVar, a.EnumC0136a enumC0136a) {
        if (i2 == 0 || i4 == 0) {
            return 0.0f;
        }
        float f2 = i;
        float f3 = i3;
        return a(bVar, enumC0136a) / ((Math.abs((f2 / i2) - (f3 / i4)) + Math.abs((f2 - f3) / f2)) + 1.0f);
    }

    private static float a(a.b bVar, a.EnumC0136a enumC0136a) {
        int i = AnonymousClass1.a[bVar.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return i != 3 ? 0.0f : 1.0f;
            }
            return 1.2f;
        }
        if (a.EnumC0136a.JAVASCRIPT.equals(enumC0136a)) {
            return 1.0f;
        }
        return a.EnumC0136a.IMAGE.equals(enumC0136a) ? 0.8f : 0.0f;
    }

    public static c b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("width");
        int iOptInt2 = jSONObject.optInt("height");
        String strOptString = jSONObject.optString("creativeType", a.EnumC0136a.NONE.toString());
        String strOptString2 = jSONObject.optString("resourceType", a.b.HTML_RESOURCE.toString());
        String strOptString3 = jSONObject.optString("contentUrl");
        String strOptString4 = jSONObject.optString("clickThroughUri");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("clickTrackers");
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("creativeViewTrackers");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            arrayList.add(new c.a(jSONArrayOptJSONArray.optString(i)).a());
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
            arrayList2.add(new c.a(jSONArrayOptJSONArray2.optString(i2)).a());
        }
        return new c(iOptInt, iOptInt2, a.EnumC0136a.valueOf(strOptString), a.b.valueOf(strOptString2), strOptString3, arrayList, arrayList2, strOptString4);
    }

    public JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", this.a);
        jSONObject.put("height", this.b);
        jSONObject.put("creativeType", this.c.toString());
        jSONObject.put("resourceType", this.f1520d.toString());
        jSONObject.put("contentUrl", this.f1521e);
        jSONObject.put("clickThroughUri", this.h);
        jSONObject.put("clickTrackers", com.bytedance.sdk.openadsdk.core.g.b.c.a(this.f1522f));
        jSONObject.put("creativeViewTrackers", com.bytedance.sdk.openadsdk.core.g.b.c.a(this.f1523g));
        return jSONObject;
    }

    public void a(long j) {
        com.bytedance.sdk.openadsdk.core.g.b.c.a(this.f1522f, null, j, this.j, new c.b(this.i, this.l));
    }

    public void a(q qVar) {
        this.l = qVar;
    }

    public void a(String str) {
        this.j = str;
    }

    public int b() {
        return this.a;
    }

    public void b(long j) {
        if (this.k.compareAndSet(false, true)) {
            com.bytedance.sdk.openadsdk.core.g.b.c.b(this.f1523g, null, j, this.j);
        }
    }

    public int c() {
        return this.b;
    }

    public String d() {
        int i = AnonymousClass1.a[this.f1520d.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return this.f1521e;
            }
            if (i != 3) {
                return null;
            }
            return "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"" + this.a + "\" height=\"" + this.b + "\" src=\"" + this.f1521e + "\"></iframe>";
        }
        a.EnumC0136a enumC0136a = this.c;
        if (enumC0136a == a.EnumC0136a.IMAGE) {
            return "<html><head></head><body style=\"margin:0;padding:0\"><img src=\"" + this.f1521e + "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>";
        }
        if (enumC0136a != a.EnumC0136a.JAVASCRIPT) {
            return null;
        }
        return "<script src=\"" + this.f1521e + "\"></script>";
    }

    public String e() {
        if (this.f1520d == a.b.STATIC_RESOURCE && this.c == a.EnumC0136a.IMAGE) {
            return this.f1521e;
        }
        return null;
    }

    public String f() {
        return this.f1521e;
    }
}
