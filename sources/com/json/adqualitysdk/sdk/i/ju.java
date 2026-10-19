package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.os.SystemClock;
import android.text.AndroidCharacter;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.b4;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class ju {
    private static long a = 2415249733847504103L;
    private static int b = 0;
    private static int c = 1;

    public interface a<T> {
        /* JADX INFO: renamed from: ｋ */
        T mo339(JSONObject jSONObject, String str);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    final class b<T> implements d<T> {
        b() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ju.d
        /* JADX INFO: renamed from: ｋ */
        public final T mo340(JSONArray jSONArray, int i) {
            return (T) jSONArray.opt(i);
        }
    }

    final class c implements a<String> {
        c() {
        }

        @Override // com.ironsource.adqualitysdk.sdk.i.ju.a
        /* JADX INFO: renamed from: ｋ */
        public final /* synthetic */ String mo339(JSONObject jSONObject, String str) {
            return jSONObject.optString(str, null);
        }
    }

    public interface d<T> {
        /* JADX INFO: renamed from: ｋ */
        T mo340(JSONArray jSONArray, int i);
    }

    private static void a(JSONArray jSONArray, int i, int i2) throws JSONException {
        int i3 = b + 77;
        c = i3 % 128;
        if (i3 % 2 == 0) {
            e(jSONArray.opt(i), i2);
            throw null;
        }
        String strE = e(jSONArray.opt(i), i2);
        if (!(strE == null)) {
            jSONArray.put(i, strE);
            int i4 = c + 3;
            b = i4 % 128;
            int i5 = i4 % 2;
        }
    }

    private static String b(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i2 = h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ a);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    private static void c(JSONObject jSONObject, int i) {
        int i2 = b + 21;
        c = i2 % 128;
        char c2 = i2 % 2 == 0 ? 'K' : 'W';
        m964(jSONObject, i, null);
        if (c2 == 'K') {
            throw null;
        }
        int i3 = b + 35;
        c = i3 % 128;
        if (i3 % 2 != 0) {
        } else {
            throw null;
        }
    }

    private static void d(JSONObject jSONObject, String str, int i) throws JSONException {
        String strE = e(jSONObject.opt(str), i);
        if (!(strE != null)) {
            return;
        }
        if (strE.equals("")) {
            int i2 = b + 73;
            c = i2 % 128;
            if ((i2 % 2 == 0 ? (char) 5 : ':') == 5) {
                int i3 = 91 / 0;
            }
            strE = null;
        }
        jSONObject.put(str, strE);
        int i4 = b + 7;
        c = i4 % 128;
        int i5 = i4 % 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String e(java.lang.Object r5, int r6) throws org.json.JSONException {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.ju.c
            int r0 = r0 + 87
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ju.b = r1
            int r0 = r0 % 2
            r2 = 17
            if (r0 == 0) goto L11
            r0 = 79
            goto L13
        L11:
            r0 = 17
        L13:
            r3 = 0
            r4 = 0
            if (r0 == r2) goto L21
            boolean r0 = r5 instanceof org.json.JSONObject
            r2 = 46
            int r2 = r2 / r4
            if (r0 == 0) goto L2e
            goto L7a
        L1f:
            r5 = move-exception
            throw r5
        L21:
            boolean r0 = r5 instanceof org.json.JSONObject
            r2 = 35
            if (r0 == 0) goto L2a
            r0 = 35
            goto L2c
        L2a:
            r0 = 34
        L2c:
            if (r0 == r2) goto L7a
        L2e:
            boolean r0 = r5 instanceof org.json.JSONArray
            if (r0 == 0) goto L4a
            int r1 = r1 + 41
            int r0 = r1 % 128
            com.json.adqualitysdk.sdk.i.ju.c = r0
            int r1 = r1 % 2
            if (r1 == 0) goto L42
            org.json.JSONArray r5 = (org.json.JSONArray) r5
            f(r5, r6)
            goto L87
        L42:
            org.json.JSONArray r5 = (org.json.JSONArray) r5
            f(r5, r6)
            throw r3     // Catch: java.lang.Throwable -> L48
        L48:
            r5 = move-exception
            throw r5
        L4a:
            boolean r0 = r5 instanceof java.lang.String
            if (r0 == 0) goto L87
            java.lang.String r5 = (java.lang.String) r5
            int r0 = r5.length()
            if (r0 <= r6) goto L79
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = r5.substring(r4, r6)
            r0.append(r5)
            int r5 = android.graphics.ImageFormat.getBitsPerPixel(r4)
            int r5 = r5 + 31722
            java.lang.String r6 = "哉⼠ꌛ❴묷㼘돤㟖诌ྷ莉ށ驯ḛ"
            java.lang.String r5 = b(r6, r5)
            java.lang.String r5 = r5.intern()
            r0.append(r5)
            java.lang.String r5 = r0.toString()
        L79:
            return r5
        L7a:
            int r1 = r1 + 43
            int r0 = r1 % 128
            com.json.adqualitysdk.sdk.i.ju.c = r0
            int r1 = r1 % 2
            org.json.JSONObject r5 = (org.json.JSONObject) r5
            c(r5, r6)
        L87:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ju.e(java.lang.Object, int):java.lang.String");
    }

    private static void f(JSONArray jSONArray, int i) throws JSONException {
        int i2 = b + 13;
        c = i2 % 128;
        if (i2 % 2 == 0) {
        }
        int i3 = 0;
        while (true) {
            if (!(i3 < jSONArray.length())) {
                return;
            }
            a(jSONArray, i3, i);
            i3++;
            int i4 = c + 101;
            b = i4 % 128;
            int i5 = i4 % 2;
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static List<String> m953(JSONObject jSONObject, String str, List<String> list) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if ((jSONArrayOptJSONArray == null ? b4.R : (char) 6) != '=') {
            List<String> listM961 = m961(jSONArrayOptJSONArray);
            int i = b + 35;
            c = i % 128;
            int i2 = i % 2;
            return listM961;
        }
        int i3 = c + 21;
        int i4 = i3 % 128;
        b = i4;
        int i5 = i3 % 2;
        int i6 = i4 + 3;
        c = i6 % 128;
        int i7 = i6 % 2;
        return list;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Map<String, String> m954(JSONObject jSONObject) {
        Map<String, String> mapM958 = m958(jSONObject, new c());
        int i = c + 37;
        b = i % 128;
        int i2 = i % 2;
        return mapM958;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m955(JSONObject jSONObject, JSONObject jSONObject2, boolean z) {
        if ((jSONObject != null ? '3' : (char) 6) != 6) {
            int i = c + 13;
            b = i % 128;
            if (i % 2 != 0) {
                int i2 = 48 / 0;
                if (jSONObject2 == null) {
                    return;
                }
            } else if (jSONObject2 == null) {
                return;
            }
            Iterator<String> itKeys = jSONObject2.keys();
            while (true) {
                if ((itKeys.hasNext() ? '8' : 'G') != '8') {
                    break;
                }
                int i3 = c + 121;
                b = i3 % 128;
                int i4 = i3 % 2;
                String next = itKeys.next();
                try {
                    jSONObject.put(next, jSONObject2.opt(next));
                } catch (JSONException unused) {
                }
            }
            if (z ? false : true) {
                return;
            }
            int i5 = b + 51;
            c = i5 % 128;
            int i6 = i5 % 2;
            jSONObject.remove(ib.f115);
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static <T> List<T> m956(JSONArray jSONArray) {
        List<T> listM957 = m957(jSONArray, new b());
        int i = b + 43;
        c = i % 128;
        int i2 = i % 2;
        return listM957;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0043 A[PHI: r3
      0x0043: PHI (r3v9 T) = (r3v8 T), (r3v13 T) binds: [B:21:0x0041, B:17:0x0037] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static <T> java.util.List<T> m957(org.json.JSONArray r6, com.ironsource.adqualitysdk.sdk.i.ju.d<T> r7) {
        /*
            int r0 = com.json.adqualitysdk.sdk.i.ju.b
            int r0 = r0 + 83
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ju.c = r1
            int r0 = r0 % 2
            r1 = 0
            if (r0 == 0) goto L57
            if (r6 == 0) goto L56
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            r2 = 0
        L16:
            int r3 = r6.length()
            r4 = 1
            if (r2 >= r3) goto L1f
            r3 = 1
            goto L20
        L1f:
            r3 = 0
        L20:
            if (r3 == 0) goto L55
            int r3 = com.json.adqualitysdk.sdk.i.ju.b
            int r3 = r3 + 105
            int r5 = r3 % 128
            com.json.adqualitysdk.sdk.i.ju.c = r5
            int r3 = r3 % 2
            if (r3 != 0) goto L30
            r3 = 1
            goto L31
        L30:
            r3 = 0
        L31:
            if (r3 == r4) goto L3a
            java.lang.Object r3 = r7.mo340(r6, r2)
            if (r3 == 0) goto L50
            goto L43
        L3a:
            java.lang.Object r3 = r7.mo340(r6, r2)
            r4 = 65
            int r4 = r4 / r1
            if (r3 == 0) goto L50
        L43:
            r0.add(r3)
            int r3 = com.json.adqualitysdk.sdk.i.ju.c
            int r3 = r3 + 71
            int r4 = r3 % 128
            com.json.adqualitysdk.sdk.i.ju.b = r4
            int r3 = r3 % 2
        L50:
            int r2 = r2 + 1
            goto L16
        L53:
            r6 = move-exception
            throw r6
        L55:
            return r0
        L56:
            return r1
        L57:
            throw r1     // Catch: java.lang.Throwable -> L58
        L58:
            r6 = move-exception
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ju.m957(org.json.JSONArray, com.ironsource.adqualitysdk.sdk.i.ju$d):java.util.List");
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static <T> Map<String, T> m958(JSONObject jSONObject, a<T> aVar) {
        int i = c + 39;
        b = i % 128;
        if ((i % 2 != 0 ? '8' : '#') != '#') {
            throw null;
        }
        if (jSONObject == null) {
            return null;
        }
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        int i2 = b + 113;
        c = i2 % 128;
        int i3 = i2 % 2;
        while (true) {
            if (!(itKeys.hasNext())) {
                return map;
            }
            String next = itKeys.next();
            map.put(next, aVar.mo339(jSONObject, next));
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static JSONObject m959(int i, int i2, long j, long j2) {
        int i3;
        JSONObject jSONObject = new JSONObject();
        try {
            if ((j > -1 ? 'b' : 'N') != 'b') {
                jSONObject.put(b("咟", TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 23252).intern(), -1);
                jSONObject.put(b("咞", AndroidCharacter.getMirror('0') + 50393).intern(), -1);
                jSONObject.put(b("咓", TextUtils.indexOf("", "", 0) + 19319).intern(), -1);
                jSONObject.put(b("咒", TextUtils.getTrimmedLength("") + 32077).intern(), -1);
                i3 = b + 73;
                c = i3 % 128;
            } else {
                jSONObject.put(b("咟", ExpandableListView.getPackedPositionChild(0L) + 23252).intern(), i);
                jSONObject.put(b("咞", (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 50440).intern(), i2);
                jSONObject.put(b("咓", (Process.myPid() >> 22) + 19319).intern(), j);
                jSONObject.put(b("咒", (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 32077).intern(), j2);
                i3 = c + 93;
                b = i3 % 128;
            }
            int i4 = i3 % 2;
        } catch (JSONException e2) {
            m.m1032(b("咭䬭殚\u0a62⫖쥮\ue918覤ꡜ", 8089 - View.resolveSize(0, 0)).intern(), b("咢堈䶯煟曡毖Ἢೞな┃⪱\ude31쏕\uf779\ue451\ue9b8鵖苹랙묔\ua8cc屳䇺皔穿濘፦\u0007㖥", TextUtils.indexOf("", "") + 3229).intern(), e2);
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m960(JSONObject jSONObject, JSONObject jSONObject2) {
        int i = c + 75;
        b = i % 128;
        int i2 = i % 2;
        m955(jSONObject, jSONObject2, false);
        int i3 = b + 71;
        c = i3 % 128;
        if (i3 % 2 == 0) {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static List<String> m961(JSONArray jSONArray) {
        int i = b;
        int i2 = i + 69;
        c = i2 % 128;
        int i3 = i2 % 2;
        if ((jSONArray == null ? 'C' : (char) 17) == 'C') {
            int i4 = i + 85;
            c = i4 % 128;
            if (i4 % 2 != 0) {
                return null;
            }
            throw null;
        }
        List<String> listM956 = m956(jSONArray);
        int i5 = c + 119;
        b = i5 % 128;
        if (i5 % 2 == 0) {
            return listM956;
        }
        int i6 = 15 / 0;
        return listM956;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m962(JSONObject jSONObject) {
        int i = c + 55;
        b = i % 128;
        int i2 = i % 2;
        JSONObject jSONObjectM963 = m963(jSONObject, false);
        int i3 = c + 31;
        b = i3 % 128;
        int i4 = i3 % 2;
        return jSONObjectM963;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m963(JSONObject jSONObject, boolean z) {
        if (jSONObject != null) {
            try {
                JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
                if (!(!z)) {
                    int i = c + 11;
                    b = i % 128;
                    if (i % 2 != 0) {
                        jSONObject2.remove(ib.f115);
                        throw null;
                    }
                    jSONObject2.remove(ib.f115);
                    int i2 = c + 115;
                    b = i2 % 128;
                    int i3 = i2 % 2;
                }
                return jSONObject2;
            } catch (JSONException unused) {
            }
        }
        return new JSONObject();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m964(JSONObject jSONObject, int i, List<String> list) {
        try {
            JSONArray jSONArrayNames = jSONObject.names();
            if ((jSONArrayNames != null ? '(' : 'T') == 'T') {
                return;
            }
            int i2 = c + 105;
            b = i2 % 128;
            int i3 = i2 % 2;
            int i4 = 0;
            while (true) {
                if (!(i4 < jSONArrayNames.length())) {
                    return;
                }
                String strOptString = jSONArrayNames.optString(i4);
                if (list == null || !list.contains(strOptString)) {
                    d(jSONObject, strOptString, i);
                    int i5 = c + 9;
                    b = i5 % 128;
                    int i6 = i5 % 2;
                }
                i4++;
            }
        } catch (JSONException e2) {
            m.m1032(b("咭䬭殚\u0a62⫖쥮\ue918覤ꡜ", (ViewConfiguration.getMaximumDrawingCacheSize() >> 24) + 8089).intern(), b("咢\ue9f2⹛沽ꄉ\ue7c4⓻祗뾳ﰑ㊅矫둇쪵༫䶉芷읚֪娭颅", 48487 - TextUtils.getTrimmedLength("")).intern(), e2);
        }
    }
}
