package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.graphics.PointF;
import android.os.SystemClock;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.adqualitysdk.sdk.i.ju;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class di {
    private static char[] a = {371, 373, 368, 357, 370, 353, 354, 372, 355, 365, 374, 366, 360, 367, 356};
    private static int b = 256;
    private static boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f5530d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5531e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5532f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f5533g;
    private String h;
    private boolean i;
    private List<String> j;
    private List<dg> k;
    private Map<String, dk> l;
    private Map<String, dn> m;

    final class a implements ju.a<dk> {
        a() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ju.a
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ dk mo339(JSONObject jSONObject, String str) {
            return new dk(jSONObject.optJSONObject(str));
        }
    }

    final class b implements ju.d<String> {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ju.d
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ String mo340(JSONArray jSONArray, int i) {
            return dq.m680(jSONArray.optString(i));
        }
    }

    final class c implements ju.a<dn> {
        private /* synthetic */ String a;

        c(String str) {
            this.a = str;
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ju.a
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ dn mo339(JSONObject jSONObject, String str) {
            return new dn(this.a, str, jSONObject.optJSONObject(str));
        }
    }

    final class d implements ju.d<dg> {
        d() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ju.d
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ dg mo340(JSONArray jSONArray, int i) {
            return new dg(jSONArray.optJSONObject(i));
        }
    }

    public di(String str, String str2, JSONObject jSONObject) {
        this.f5533g = dq.m680(str2);
        this.h = dq.m680(jSONObject.optString(b(null, null, 127 - ExpandableListView.getPackedPositionType(0L), "\u0085\u0084\u0083\u0082\u0081").intern()));
        this.i = jSONObject.optBoolean(b(null, null, (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 127, "\u0088\u0089\u0086\u0085\u0088\u0081\u0087\u0086").intern());
        this.j = c(ju.m957(jSONObject.optJSONArray(b(null, null, 127 - ExpandableListView.getPackedPositionType(0L), "\u0081\u0085\u0084\u0087\u008a\u0084\u008a").intern()), new b()));
        this.k = c(ju.m957(jSONObject.optJSONArray(b(null, null, 127 - (ViewConfiguration.getEdgeSlop() >> 16), "\u0083\u0082\u0088\u0084\u0081").intern()), new d()));
        this.l = a(ju.m958(jSONObject.optJSONObject(b(null, null, (SystemClock.uptimeMillis() > 0L ? 1 : (SystemClock.uptimeMillis() == 0L ? 0 : -1)) + 126, "\u0081\u0088\u008c\u0084\u008b\u0084").intern()), new a()));
        this.m = a(ju.m958(jSONObject.optJSONObject(b(null, null, 127 - Color.green(0), "\u0081\u008f\u008e\u008d\u0088\u0084\u008a").intern()), new c(str)));
    }

    private static <K, V> Map<K, V> a(Map<K, V> map) {
        int i = f5531e + 5;
        int i2 = i % 128;
        f5532f = i2;
        int i3 = i % 2;
        if ((map != null ? 'B' : ';') != 'B') {
            return new HashMap();
        }
        int i4 = i2 + 115;
        f5531e = i4 % 128;
        int i5 = i4 % 2;
        return map;
    }

    private static String b(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
        Object bytes = str2;
        if (str2 != null) {
            bytes = str2.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (k.f131) {
            char[] cArr2 = a;
            int i2 = b;
            if (f5530d) {
                int length = bArr.length;
                k.f129 = length;
                char[] cArr3 = new char[length];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i3 = k.f130;
                    int i4 = k.f129 - 1;
                    int i5 = k.f130;
                    cArr3[i3] = (char) (cArr2[bArr[i4 - i5] + i] - i2);
                    k.f130 = i5 + 1;
                }
                return new String(cArr3);
            }
            if (c) {
                int length2 = cArr.length;
                k.f129 = length2;
                char[] cArr4 = new char[length2];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i6 = k.f130;
                    int i7 = k.f129 - 1;
                    int i8 = k.f130;
                    cArr4[i6] = (char) (cArr2[cArr[i7 - i8] - i] - i2);
                    k.f130 = i8 + 1;
                }
                return new String(cArr4);
            }
            int length3 = iArr.length;
            k.f129 = length3;
            char[] cArr5 = new char[length3];
            k.f130 = 0;
            while (k.f130 < k.f129) {
                int i9 = k.f130;
                int i10 = k.f129 - 1;
                int i11 = k.f130;
                cArr5[i9] = (char) (cArr2[iArr[i10 - i11] - i] - i2);
                k.f130 = i11 + 1;
            }
            return new String(cArr5);
        }
    }

    private static <T> List<T> c(List<T> list) {
        if ((list != null ? '\f' : 'G') != '\f') {
            ArrayList arrayList = new ArrayList();
            int i = f5532f + 33;
            f5531e = i % 128;
            int i2 = i % 2;
            return arrayList;
        }
        int i3 = f5532f + 115;
        f5531e = i3 % 128;
        if ((i3 % 2 != 0 ? '%' : 'C') == 'C') {
            return list;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final Map<String, dk> m648() {
        int i = f5531e + 23;
        f5532f = i % 128;
        if ((i % 2 == 0 ? '+' : (char) 1) != '+') {
            return this.l;
        }
        int i2 = 60 / 0;
        return this.l;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final List<dg> m649() {
        int i = f5532f + 55;
        int i2 = i % 128;
        f5531e = i2;
        int i3 = i % 2;
        List<dg> list = this.k;
        int i4 = i2 + 87;
        f5532f = i4 % 128;
        int i5 = i4 % 2;
        return list;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final boolean m650() {
        int i = f5531e + 5;
        int i2 = i % 128;
        f5532f = i2;
        if ((i % 2 == 0 ? (char) 30 : (char) 22) != 22) {
            throw null;
        }
        boolean z = this.i;
        int i3 = i2 + 35;
        f5531e = i3 % 128;
        int i4 = i3 % 2;
        return z;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final Map<String, dn> m651() {
        int i = f5532f;
        int i2 = i + 25;
        f5531e = i2 % 128;
        if ((i2 % 2 != 0 ? 'W' : '(') == 'W') {
            throw null;
        }
        Map<String, dn> map = this.m;
        int i3 = i + 75;
        f5531e = i3 % 128;
        int i4 = i3 % 2;
        return map;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m652() {
        int i = f5532f;
        int i2 = i + 95;
        f5531e = i2 % 128;
        int i3 = i2 % 2;
        String str = this.f5533g;
        int i4 = i + 67;
        f5531e = i4 % 128;
        int i5 = i4 % 2;
        return str;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String m653() {
        String str;
        int i = f5531e;
        int i2 = i + 83;
        f5532f = i2 % 128;
        if (i2 % 2 != 0) {
            str = this.h;
        } else {
            str = this.h;
            int i3 = 27 / 0;
        }
        int i4 = i + 105;
        f5532f = i4 % 128;
        if ((i4 % 2 == 0 ? '0' : 'W') == 'W') {
            return str;
        }
        int i5 = 50 / 0;
        return str;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final List<String> m654() {
        int i = f5531e;
        int i2 = i + 77;
        f5532f = i2 % 128;
        if ((i2 % 2 == 0 ? '_' : 'H') == '_') {
            throw null;
        }
        List<String> list = this.j;
        int i3 = i + 63;
        f5532f = i3 % 128;
        int i4 = i3 % 2;
        return list;
    }
}
