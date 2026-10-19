package com.bytedance.sdk.openadsdk.core.model;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.facebook.share.internal.ShareConstants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ClickEventModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class i {
    private final int[] a;
    private final int[] b;
    private final int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f1565d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f1566e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final float f1567f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f1568g;
    private final float h;
    private final long i;
    private final long j;
    private final int k;
    private final int l;
    private final int m;
    private final int n;
    private final SparseArray<c.a> o;
    private final int p;
    private final JSONObject q;
    private final String r;

    /* JADX INFO: compiled from: ClickEventModel.java */
    public static class a {
        float a;
        int b;
        float c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f1569d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f1570e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f1571f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f1572g;
        private float h;
        private float i;
        private int[] j;
        private int[] k;
        private int[] l;
        private int[] m;
        private int n;
        private int o;
        private int p;
        private SparseArray<c.a> q;
        private int r;
        private String s;
        private int t;
        private JSONObject u;

        public a a(float f2) {
            this.a = f2;
            return this;
        }

        public a a(int i) {
            this.t = i;
            return this;
        }

        public a a(long j) {
            this.f1569d = j;
            return this;
        }

        public a a(SparseArray<c.a> sparseArray) {
            this.q = sparseArray;
            return this;
        }

        public a a(String str) {
            this.s = str;
            return this;
        }

        public a a(JSONObject jSONObject) {
            this.u = jSONObject;
            return this;
        }

        public a a(int[] iArr) {
            this.j = iArr;
            return this;
        }

        public i a() {
            return new i(this);
        }

        public a b(float f2) {
            this.c = f2;
            return this;
        }

        public a b(int i) {
            this.r = i;
            return this;
        }

        public a b(long j) {
            this.f1570e = j;
            return this;
        }

        public a b(int[] iArr) {
            this.k = iArr;
            return this;
        }

        public a c(float f2) {
            this.f1571f = f2;
            return this;
        }

        public a c(int i) {
            this.b = i;
            return this;
        }

        public a c(int[] iArr) {
            this.l = iArr;
            return this;
        }

        public a d(float f2) {
            this.f1572g = f2;
            return this;
        }

        public a d(int i) {
            this.n = i;
            return this;
        }

        public a d(int[] iArr) {
            this.m = iArr;
            return this;
        }

        public a e(float f2) {
            this.h = f2;
            return this;
        }

        public a e(int i) {
            this.o = i;
            return this;
        }

        public a f(float f2) {
            this.i = f2;
            return this;
        }

        public a f(int i) {
            this.p = i;
            return this;
        }
    }

    private i(@NonNull a aVar) {
        this.a = aVar.k;
        this.b = aVar.l;
        this.f1565d = aVar.m;
        this.c = aVar.j;
        this.f1566e = aVar.i;
        this.f1567f = aVar.h;
        this.f1568g = aVar.f1572g;
        this.h = aVar.f1571f;
        this.i = aVar.f1570e;
        this.j = aVar.f1569d;
        this.k = aVar.n;
        this.l = aVar.o;
        this.m = aVar.p;
        this.n = aVar.r;
        this.o = aVar.q;
        this.r = aVar.s;
        this.p = aVar.t;
        this.q = aVar.u;
    }

    public static JSONObject a(SparseArray<c.a> sparseArray, int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (sparseArray != null) {
                for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                    c.a aVarValueAt = sparseArray.valueAt(i2);
                    if (aVarValueAt != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt("force", Double.valueOf(aVarValueAt.c)).putOpt("mr", Double.valueOf(aVarValueAt.b)).putOpt(TypedValues.CycleType.S_WAVE_PHASE, Integer.valueOf(aVarValueAt.a)).putOpt("ts", Long.valueOf(aVarValueAt.f1464d));
                        jSONArray.put(jSONObject2);
                        jSONObject.putOpt("ftc", Integer.valueOf(i)).putOpt("info", jSONArray);
                    }
                }
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            int[] iArr = this.a;
            if (iArr != null && iArr.length == 2) {
                jSONObject.putOpt("ad_x", Integer.valueOf(iArr[0])).putOpt("ad_y", Integer.valueOf(this.a[1]));
            }
            int[] iArr2 = this.b;
            if (iArr2 != null && iArr2.length == 2) {
                jSONObject.putOpt("width", Integer.valueOf(iArr2[0])).putOpt("height", Integer.valueOf(this.b[1]));
            }
            int[] iArr3 = this.c;
            if (iArr3 != null && iArr3.length == 2) {
                jSONObject.putOpt("button_x", Integer.valueOf(iArr3[0])).putOpt("button_y", Integer.valueOf(this.c[1]));
            }
            int[] iArr4 = this.f1565d;
            if (iArr4 != null && iArr4.length == 2) {
                jSONObject.putOpt("button_width", Integer.valueOf(iArr4[0])).putOpt("button_height", Integer.valueOf(this.f1565d[1]));
            }
            jSONObject.putOpt("down_x", Float.toString(this.f1566e)).putOpt("down_y", Float.toString(this.f1567f)).putOpt("up_x", Float.toString(this.f1568g)).putOpt("up_y", Float.toString(this.h)).putOpt("down_time", Long.valueOf(this.i)).putOpt("up_time", Long.valueOf(this.j)).putOpt("toolType", Integer.valueOf(this.k)).putOpt("deviceId", Integer.valueOf(this.l)).putOpt(ShareConstants.FEED_SOURCE_PARAM, Integer.valueOf(this.m)).putOpt("ft", a(this.o, this.n)).putOpt("click_area_type", this.r);
            int i = this.p;
            if (i > 0) {
                jSONObject.putOpt("areaType", Integer.valueOf(i));
            }
            JSONObject jSONObject2 = this.q;
            if (jSONObject2 != null) {
                jSONObject.putOpt("rectInfo", jSONObject2);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }
}
