package com.apm.insight.b;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkRequest;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.Npth;
import com.apm.insight.l.l;
import com.apm.insight.l.o;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.r;
import com.facebook.internal.security.CertificateUtil;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {
    static volatile boolean a = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile boolean f189f;
    private c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f190d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f191e;
    private JSONObject j;
    private JSONObject k;
    private JSONArray p;
    private JSONObject q;
    private JSONArray t;
    private JSONArray u;
    private JSONObject v;
    private boolean w;
    private volatile boolean y;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f192g = -1;
    private File h = null;
    private boolean i = true;
    private String l = "unknown";
    private String m = "unknown";
    private String n = "unknown";
    private String o = "npth_inner_default";
    private int r = 0;
    private long s = -1;
    private final Object x = new Object();
    private long z = -1;
    private long A = 0;
    private final Runnable B = new Runnable() { // from class: com.apm.insight.b.b.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                b.this.a(200, 25);
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
        }
    };
    private int C = 0;
    private List<Pattern> D = null;
    Pattern b = null;
    private File E = null;

    public b(Context context) {
        this.f190d = context;
    }

    private static String a(float f2) {
        return f2 <= 0.0f ? "0%" : f2 <= 0.1f ? "0% - 10%" : f2 <= 0.3f ? "10% - 30%" : f2 <= 0.6f ? "30% - 60%" : f2 <= 0.9f ? "60% - 90%" : "90% - 100%";
    }

    private static String a(float f2, float f3) {
        return f3 > 0.0f ? a(f2 / f3) : f2 > 0.0f ? "100%" : "0%";
    }

    private JSONObject a(String str, JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArrayA = l.a(256, 128, jSONArray);
        if (jSONArrayA.length() != jSONArray.length()) {
            this.r++;
        }
        try {
            jSONObject.put("thread_name", str);
            jSONObject.put("thread_stack", jSONArrayA);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x0225, code lost:
    
        if (r3 != 5) goto L137;
     */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0268 A[PHI: r28
      0x0268: PHI (r28v3 char) = (r28v2 char), (r28v9 char) binds: [B:126:0x0262, B:116:0x022e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0276 A[PHI: r28
      0x0276: PHI (r28v4 char) = (r28v3 char), (r28v10 char) binds: [B:129:0x0270, B:115:0x0229] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0281 A[PHI: r28
      0x0281: PHI (r28v6 char) = (r28v4 char), (r28v11 char) binds: [B:132:0x027c, B:113:0x0225] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02e9 A[LOOP:2: B:100:0x020b->B:154:0x02e9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0381 A[PHI: r3 r15 r16 r22 r23 r25 r26 r27
      0x0381: PHI (r3v7 java.lang.String) = (r3v6 java.lang.String), (r3v4 java.lang.String) binds: [B:179:0x037a, B:155:0x02f1] A[DONT_GENERATE, DONT_INLINE]
      0x0381: PHI (r15v9 java.lang.String) = (r15v8 java.lang.String), (r15v1 java.lang.String) binds: [B:179:0x037a, B:155:0x02f1] A[DONT_GENERATE, DONT_INLINE]
      0x0381: PHI (r16v10 java.lang.String) = (r16v8 java.lang.String), (r16v1 java.lang.String) binds: [B:179:0x037a, B:155:0x02f1] A[DONT_GENERATE, DONT_INLINE]
      0x0381: PHI (r22v4 java.lang.String) = (r22v3 java.lang.String), (r22v6 java.lang.String) binds: [B:179:0x037a, B:155:0x02f1] A[DONT_GENERATE, DONT_INLINE]
      0x0381: PHI (r23v3 char) = (r23v2 char), (r23v5 char) binds: [B:179:0x037a, B:155:0x02f1] A[DONT_GENERATE, DONT_INLINE]
      0x0381: PHI (r25v6 java.util.HashMap) = (r25v5 java.util.HashMap), (r25v8 java.util.HashMap) binds: [B:179:0x037a, B:155:0x02f1] A[DONT_GENERATE, DONT_INLINE]
      0x0381: PHI (r26v6 java.util.HashMap) = (r26v5 java.util.HashMap), (r26v8 java.util.HashMap) binds: [B:179:0x037a, B:155:0x02f1] A[DONT_GENERATE, DONT_INLINE]
      0x0381: PHI (r27v6 java.util.HashMap) = (r27v5 java.util.HashMap), (r27v8 java.util.HashMap) binds: [B:179:0x037a, B:155:0x02f1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x03ed A[PHI: r15 r16 r22 r23 r25 r26 r27
      0x03ed: PHI (r15v5 java.lang.String) = (r15v1 java.lang.String), (r15v1 java.lang.String), (r15v10 java.lang.String) binds: [B:195:0x03df, B:192:0x03be, B:190:0x03b5] A[DONT_GENERATE, DONT_INLINE]
      0x03ed: PHI (r16v4 java.lang.String) = (r16v1 java.lang.String), (r16v1 java.lang.String), (r16v11 java.lang.String) binds: [B:195:0x03df, B:192:0x03be, B:190:0x03b5] A[DONT_GENERATE, DONT_INLINE]
      0x03ed: PHI (r22v2 java.lang.String) = (r22v0 java.lang.String), (r22v3 java.lang.String), (r22v5 java.lang.String) binds: [B:195:0x03df, B:192:0x03be, B:190:0x03b5] A[DONT_GENERATE, DONT_INLINE]
      0x03ed: PHI (r23v1 char) = (r23v0 char), (r23v2 char), (r23v4 char) binds: [B:195:0x03df, B:192:0x03be, B:190:0x03b5] A[DONT_GENERATE, DONT_INLINE]
      0x03ed: PHI (r25v4 java.util.HashMap) = (r25v2 java.util.HashMap), (r25v5 java.util.HashMap), (r25v7 java.util.HashMap) binds: [B:195:0x03df, B:192:0x03be, B:190:0x03b5] A[DONT_GENERATE, DONT_INLINE]
      0x03ed: PHI (r26v4 java.util.HashMap) = (r26v2 java.util.HashMap), (r26v5 java.util.HashMap), (r26v7 java.util.HashMap) binds: [B:195:0x03df, B:192:0x03be, B:190:0x03b5] A[DONT_GENERATE, DONT_INLINE]
      0x03ed: PHI (r27v4 java.util.HashMap) = (r27v2 java.util.HashMap), (r27v5 java.util.HashMap), (r27v7 java.util.HashMap) binds: [B:195:0x03df, B:192:0x03be, B:190:0x03b5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x040e A[EDGE_INSN: B:226:0x040e->B:202:0x040e BREAK  A[LOOP:0: B:3:0x0038->B:200:0x03f3], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x03f3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x03b5 A[EDGE_INSN: B:230:0x03b5->B:190:0x03b5 BREAK  A[LOOP:2: B:100:0x020b->B:154:0x02e9], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(java.lang.String r30, org.json.JSONObject r31) throws org.json.JSONException {
        /*
            Method dump skipped, instruction units count: 1166
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.b.b.a(java.lang.String, org.json.JSONObject):void");
    }

    private static void a(HashMap<String, Float> map, JSONObject jSONObject, String str) throws JSONException {
        String str2;
        String strA;
        String str3 = "npth_anr_" + str;
        if (map.isEmpty()) {
            str2 = str3 + "_total";
            strA = "not found";
        } else {
            float fFloatValue = 0.0f;
            float fFloatValue2 = 0.0f;
            float fFloatValue3 = 0.0f;
            float fFloatValue4 = 0.0f;
            float fFloatValue5 = 0.0f;
            for (Map.Entry<String, Float> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key.endsWith("user")) {
                    fFloatValue += entry.getValue().floatValue();
                } else if (key.endsWith("kernel")) {
                    fFloatValue2 += entry.getValue().floatValue();
                } else if (key.endsWith("iowait")) {
                    fFloatValue3 += entry.getValue().floatValue();
                } else if (key.endsWith("irq")) {
                    fFloatValue4 += entry.getValue().floatValue();
                } else if (key.endsWith("softirq")) {
                    fFloatValue5 += entry.getValue().floatValue();
                }
            }
            float f2 = fFloatValue + fFloatValue2 + fFloatValue3 + fFloatValue4 + fFloatValue5;
            jSONObject.put(str3 + "_total", b(f2));
            jSONObject.put(str3 + "_kernel_user_ratio", a(fFloatValue2, f2));
            str2 = str3 + "_iowait_user_ratio";
            strA = a(fFloatValue3, f2);
        }
        jSONObject.put(str2, strA);
    }

    private void a(JSONArray jSONArray) {
        int[] iArrB;
        int[] iArrB2;
        if (jSONArray == null) {
            return;
        }
        this.j = null;
        this.q = null;
        int i = 0;
        this.r = 0;
        JSONArray jSONArray2 = new JSONArray();
        JSONArray jSONArray3 = new JSONArray();
        JSONArray jSONArray4 = new JSONArray();
        this.l = "unknown";
        this.m = "unknown";
        this.n = "unknown";
        int[] iArr = {0, 0, 0};
        JSONArray jSONArray5 = jSONArray4;
        String strTrim = null;
        int i2 = 0;
        boolean z = false;
        while (i2 < jSONArray.length()) {
            String strOptString = jSONArray.optString(i2);
            if (TextUtils.isEmpty(strOptString)) {
                if (jSONArray5.length() > 0 && !TextUtils.isEmpty(strTrim)) {
                    if (this.j == null && o2.h.Z.equals(strTrim)) {
                        this.j = c(jSONArray5);
                    } else {
                        jSONArray2.put(a(strTrim, jSONArray5));
                    }
                    try {
                        if (!o2.h.Z.equals(strTrim)) {
                            strTrim = strTrim.substring(i, strTrim.indexOf(40)).trim();
                        }
                    } catch (Throwable unused) {
                    }
                    String str = strTrim;
                    if (!a(str)) {
                        try {
                            iArrB2 = b(jSONArray5);
                        } catch (IllegalArgumentException e2) {
                            com.apm.insight.c.a().a("NPTH_CATCH", e2);
                            iArrB2 = null;
                        } catch (Throwable unused2) {
                            iArrB2 = null;
                        }
                        if (iArrB2 != null) {
                            if (iArrB2[i] > iArr[i]) {
                                iArr[i] = iArrB2[i];
                                this.l = str;
                            }
                            if (iArrB2[1] > iArr[1]) {
                                iArr[1] = iArrB2[1];
                                this.m = str;
                            }
                            if (iArrB2[2] > iArr[2]) {
                                iArr[2] = iArrB2[2];
                                this.n = str;
                            }
                        }
                    }
                }
                if (jSONArray5.length() > 0) {
                    jSONArray5 = new JSONArray();
                }
                strTrim = null;
            } else {
                if (z) {
                    if (z) {
                        if (strOptString.contains(" prio=")) {
                            if (jSONArray5.length() > 0 && !TextUtils.isEmpty(strTrim)) {
                                if (this.j == null && o2.h.Z.equals(strTrim)) {
                                    this.j = c(jSONArray5);
                                } else {
                                    jSONArray2.put(a(strTrim, jSONArray5));
                                }
                                try {
                                    if (!o2.h.Z.equals(strTrim)) {
                                        strTrim = strTrim.substring(i, strTrim.indexOf(40)).trim();
                                    }
                                } catch (Throwable unused3) {
                                }
                                String str2 = strTrim;
                                if (!a(str2)) {
                                    try {
                                        iArrB = b(jSONArray5);
                                    } catch (IllegalArgumentException e3) {
                                        com.apm.insight.c.a().a("NPTH_CATCH", e3);
                                        iArrB = null;
                                    } catch (Throwable unused4) {
                                        iArrB = null;
                                    }
                                    if (iArrB != null) {
                                        if (iArrB[i] > iArr[i]) {
                                            iArr[i] = iArrB[i];
                                            this.l = str2;
                                        }
                                        if (iArrB[1] > iArr[1]) {
                                            iArr[1] = iArrB[1];
                                            this.m = str2;
                                        }
                                        if (iArrB[2] > iArr[2]) {
                                            iArr[2] = iArrB[2];
                                            this.n = str2;
                                        }
                                    }
                                }
                            }
                            String strSubstring = strOptString.substring(1, strOptString.indexOf(34, 1));
                            if (o2.h.Z.equals(strSubstring)) {
                                strTrim = strSubstring;
                            } else {
                                strTrim = strSubstring + "  (" + strOptString.substring(strOptString.indexOf(34, 2) + 1) + " )";
                            }
                            if (jSONArray5.length() > 0) {
                                jSONArray5 = new JSONArray();
                            }
                        } else if (TextUtils.isEmpty(strTrim)) {
                        }
                        jSONArray5.put(strOptString);
                    }
                } else if (strOptString.startsWith("DALVIK THREADS") || strOptString.startsWith("suspend") || strOptString.startsWith("\"")) {
                    z = true;
                }
                jSONArray3.put(strOptString);
            }
            i2++;
            i = 0;
        }
        if (jSONArray2.length() > 0) {
            this.p = jSONArray3;
            try {
                JSONObject jSONObject = new JSONObject();
                this.q = jSONObject;
                jSONObject.put("thread_all_count", jSONArray2.length());
                this.q.put("thread_stacks", jSONArray2);
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }
    }

    private boolean a(long j) {
        if (this.y) {
            this.y = false;
            b(j);
        }
        return false;
    }

    private boolean a(String str) {
        if (this.D == null) {
            JSONArray jSONArrayC = com.apm.insight.runtime.a.c();
            if (jSONArrayC != null) {
                this.D = new LinkedList();
                this.o = jSONArrayC.optString(0);
                for (int i = 1; i < jSONArrayC.length(); i++) {
                    try {
                        this.D.add(Pattern.compile(jSONArrayC.optString(i)));
                    } catch (Throwable unused) {
                    }
                }
            }
            if (this.D == null) {
                LinkedList linkedList = new LinkedList();
                this.D = linkedList;
                linkedList.add(Pattern.compile("^main$"));
                this.D.add(Pattern.compile("^default_npth_thread$"));
                this.D.add(Pattern.compile("^RenderThread$"));
                this.D.add(Pattern.compile("^Jit thread pool worker thread.*$"));
            }
        }
        Iterator<Pattern> it = this.D.iterator();
        while (it.hasNext()) {
            if (it.next().matcher(str).matches()) {
                return true;
            }
        }
        return false;
    }

    private static String b(float f2) {
        return a(f2 / 100.0f);
    }

    private void b(long j) {
        if (this.A != this.z) {
            try {
                this.s = System.currentTimeMillis();
                this.u = g.b().c();
                this.t = k.a(100, j);
                this.k = g.b().a(j).a();
                JSONObject jSONObject = new JSONObject();
                this.v = jSONObject;
                com.apm.insight.l.a.a(this.f190d, jSONObject);
                this.w = g();
                this.i = !Npth.hasCrash();
            } catch (Throwable unused) {
            }
            try {
                if (Build.VERSION.SDK_INT >= 21) {
                    this.f192g = this.s;
                    String strB = o.b();
                    File file = new File(new File(o.f(this.f190d), strB), "trace_" + com.apm.insight.l.a.c(this.f190d).replace(':', '_') + ".txt");
                    file.getParentFile().mkdirs();
                    com.apm.insight.l.i.a(file, com.apm.insight.l.b.a().format(new Date(System.currentTimeMillis())) + "\n", false);
                    r.a("anr_trace", strB);
                    NativeImpl.i(file.getAbsolutePath());
                    try {
                        JSONArray jSONArrayB = com.apm.insight.l.i.b(file.getAbsolutePath());
                        this.p = jSONArrayB;
                        a(jSONArrayB);
                    } catch (IOException unused2) {
                    } catch (Throwable th) {
                        com.apm.insight.c.a().a("NPTH_CATCH", th);
                    }
                }
                if (this.j == null) {
                    this.j = d.a(true);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a().a("NPTH_CATCH", th2);
            }
            com.apm.insight.l.f.a();
        } else {
            try {
                this.f192g = this.s;
                if (Build.VERSION.SDK_INT >= 21) {
                    String strB2 = o.b();
                    File file2 = new File(new File(o.f(this.f190d), strB2), "trace" + com.apm.insight.l.a.c(this.f190d).replace(':', '_') + ".txt");
                    file2.getParentFile().mkdirs();
                    com.apm.insight.l.i.a(file2, com.apm.insight.l.b.a().format(new Date(System.currentTimeMillis())) + "\n", false);
                    r.a("anr_trace", strB2);
                    NativeImpl.i(file2.getAbsolutePath());
                    try {
                        JSONArray jSONArrayB2 = com.apm.insight.l.i.b(file2.getAbsolutePath());
                        this.p = jSONArrayB2;
                        a(jSONArrayB2);
                    } catch (IOException unused3) {
                    } catch (Throwable th3) {
                        com.apm.insight.c.a().a("NPTH_CATCH", th3);
                    }
                }
                if (this.j == null) {
                    this.j = d.a(true);
                }
            } catch (Throwable th4) {
                com.apm.insight.c.a().a("NPTH_CATCH", th4);
            }
        }
        long j2 = this.z;
        this.A = j2;
        this.z = -1L;
        if (j2 == -1) {
            this.A = (-1) - 1;
        }
    }

    private static void b(String str, JSONArray jSONArray) {
        for (ICrashCallback iCrashCallback : com.apm.insight.runtime.o.a().e()) {
            try {
                if (iCrashCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iCrashCallback).a(CrashType.ANR, str, (Thread) null, jSONArray);
                } else {
                    iCrashCallback.onCrash(CrashType.ANR, str, null);
                }
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
        }
    }

    @Nullable
    private int[] b(@NonNull JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            String strOptString = jSONArray.optString(i);
            int iIndexOf = (strOptString == null || strOptString.isEmpty()) ? -1 : strOptString.indexOf("utm=");
            if (iIndexOf > 0) {
                if (this.b == null) {
                    this.b = Pattern.compile("[^0-9]+");
                }
                String[] strArrSplit = this.b.split(strOptString.substring(iIndexOf));
                if (strArrSplit == null || strArrSplit.length < 2) {
                    return null;
                }
                int iIntValue = Integer.decode(strArrSplit[1]).intValue();
                int iIntValue2 = Integer.decode(strArrSplit[2]).intValue();
                return new int[]{iIntValue, iIntValue2, iIntValue + iIntValue2};
            }
        }
        return null;
    }

    private String c(long j) {
        long j2 = j - com.apm.insight.i.j();
        return j2 < WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS ? "0 - 30s" : j2 < ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS ? "30s - 1min" : j2 < 120000 ? "1min - 2min" : j2 < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS ? "2min - 5min" : j2 < 600000 ? "5min - 10min" : j2 < 1800000 ? "10min - 30min" : j2 < 3600000 ? "30min - 1h" : "1h - ";
    }

    private JSONObject c(@NonNull JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArrayA = l.a(256, 128, jSONArray);
        if (jSONArrayA.length() != jSONArray.length()) {
            this.r++;
        }
        try {
            jSONObject.put("thread_number", 1);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < jSONArrayA.length(); i++) {
                sb.append(jSONArrayA.getString(i));
                sb.append('\n');
            }
            jSONObject.put("mainStackFromTrace", sb.toString());
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private boolean g() {
        boolean z = !com.apm.insight.l.a.a(this.f190d);
        if (!z || com.apm.insight.runtime.a.b.d().e() > AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS) {
            return z;
        }
        return false;
    }

    private File h() {
        if (this.E == null) {
            this.E = new File(this.f190d.getFilesDir(), "has_anr_signal_" + com.apm.insight.l.a.c(this.f190d).replaceAll(CertificateUtil.DELIMITER, "_"));
        }
        return this.E;
    }

    private boolean i() {
        return com.apm.insight.runtime.a.i();
    }

    public void a() {
        if (this.f191e) {
            return;
        }
        this.c = new c(this);
        this.f192g = com.apm.insight.i.j();
        this.f191e = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    boolean a(int r26, int r27) {
        /*
            Method dump skipped, instruction units count: 1168
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.b.b.a(int, int):boolean");
    }

    public void b() {
        if (this.f191e) {
            this.f191e = false;
            c cVar = this.c;
            if (cVar != null) {
                cVar.b();
            }
            this.c = null;
        }
    }

    public void c() {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a();
        }
    }

    public void d() {
        if (f189f) {
            return;
        }
        synchronized (this.x) {
            if (f189f) {
                return;
            }
            this.B.run();
        }
    }

    public void e() {
        if (NativeImpl.g()) {
            try {
                com.apm.insight.l.i.a(h(), String.valueOf(this.C + 1), false);
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
        }
        this.z = SystemClock.uptimeMillis();
        this.y = true;
    }

    public void f() {
        File fileH = h();
        try {
            int iIntValue = Integer.decode(com.apm.insight.l.i.c(fileH.getAbsolutePath())).intValue();
            this.C = iIntValue;
            if (iIntValue >= 2) {
                NativeImpl.a(false);
            } else {
                NativeImpl.a(true);
            }
        } catch (IOException unused) {
            NativeImpl.a(true);
        } catch (Throwable unused2) {
            com.apm.insight.l.i.a(fileH);
        }
    }
}
