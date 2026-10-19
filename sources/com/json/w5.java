package com.json;

import android.net.Uri;
import android.util.Pair;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class w5 {

    public static class a {
        final String a;
        final String b;
        final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f6708d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f6709e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final String f6710f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ArrayList<Pair<String, String>> f6711g;

        /* JADX INFO: renamed from: com.ironsource.w5$a$a, reason: collision with other inner class name */
        static class C0371a {
            String b;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            String f6712d;
            List<Pair<String, String>> a = new ArrayList();
            String c = "POST";

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            int f6713e = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            int f6714f = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            String f6715g = C.UTF8_NAME;

            C0371a() {
            }

            C0371a a(String str) {
                this.f6712d = str;
                return this;
            }

            C0371a b(List<Pair<String, String>> list) {
                this.a.addAll(list);
                return this;
            }

            a c() {
                return new a(this);
            }

            C0371a d(String str) {
                this.b = str;
                return this;
            }

            C0371a e(String str) {
                this.c = str;
                return this;
            }
        }

        public a(C0371a c0371a) {
            this.a = c0371a.b;
            this.b = c0371a.c;
            this.c = c0371a.f6712d;
            this.f6711g = new ArrayList<>(c0371a.a);
            this.f6708d = c0371a.f6713e;
            this.f6709e = c0371a.f6714f;
            this.f6710f = c0371a.f6715g;
        }

        boolean a() {
            return "POST".equals(this.b);
        }
    }

    public static wa a(String str, String str2, List<Pair<String, String>> list) throws Exception {
        Uri uriBuild = Uri.parse(str).buildUpon().encodedQuery(str2).build();
        a.C0371a c0371a = new a.C0371a();
        c0371a.d(uriBuild.toString()).a(str2).e("GET").b(list);
        return b(c0371a.c());
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.json.wa b(com.ironsource.w5.a r7) throws java.lang.Exception {
        /*
            java.lang.String r0 = r7.a
            java.lang.String r1 = r7.c
            boolean r0 = g(r0, r1)
            if (r0 == 0) goto L89
            com.ironsource.wa r0 = new com.ironsource.wa
            r0.<init>()
            r1 = 0
            java.net.HttpURLConnection r2 = c(r7)     // Catch: java.lang.Throwable -> L38 java.io.IOException -> L3b
            java.util.ArrayList<android.util.Pair<java.lang.String, java.lang.String>> r3 = r7.f6711g     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            e(r2, r3)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            d(r2, r7)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            java.io.InputStream r1 = r2.getInputStream()     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            int r3 = r2.getResponseCode()     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r0.a = r3     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            if (r1 == 0) goto L2e
            byte[] r3 = com.json.yc.a(r1)     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
            r0.b = r3     // Catch: java.lang.Throwable -> L31 java.io.IOException -> L33
        L2e:
            if (r1 == 0) goto L75
            goto L70
        L31:
            r7 = move-exception
            goto L7e
        L33:
            r3 = move-exception
            r6 = r2
            r2 = r1
            r1 = r6
            goto L3d
        L38:
            r7 = move-exception
            r2 = r1
            goto L7e
        L3b:
            r3 = move-exception
            r2 = r1
        L3d:
            if (r1 == 0) goto L79
            int r4 = r1.getResponseCode()     // Catch: java.lang.Throwable -> L7a
            r0.a = r4     // Catch: java.lang.Throwable -> L7a
            r5 = 400(0x190, float:5.6E-43)
            if (r4 < r5) goto L79
            java.lang.String r3 = "ISHttpService"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7a
            r4.<init>()     // Catch: java.lang.Throwable -> L7a
            java.lang.String r5 = "Failed post to "
            r4.append(r5)     // Catch: java.lang.Throwable -> L7a
            java.lang.String r7 = r7.a     // Catch: java.lang.Throwable -> L7a
            r4.append(r7)     // Catch: java.lang.Throwable -> L7a
            java.lang.String r7 = " StatusCode: "
            r4.append(r7)     // Catch: java.lang.Throwable -> L7a
            int r7 = r0.a     // Catch: java.lang.Throwable -> L7a
            r4.append(r7)     // Catch: java.lang.Throwable -> L7a
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> L7a
            android.util.Log.d(r3, r7)     // Catch: java.lang.Throwable -> L7a
            if (r2 == 0) goto L74
            r6 = r2
            r2 = r1
            r1 = r6
        L70:
            r1.close()
            goto L75
        L74:
            r2 = r1
        L75:
            r2.disconnect()
            return r0
        L79:
            throw r3     // Catch: java.lang.Throwable -> L7a
        L7a:
            r7 = move-exception
            r6 = r2
            r2 = r1
            r1 = r6
        L7e:
            if (r1 == 0) goto L83
            r1.close()
        L83:
            if (r2 == 0) goto L88
            r2.disconnect()
        L88:
            throw r7
        L89:
            java.security.InvalidParameterException r7 = new java.security.InvalidParameterException
            java.lang.String r0 = "not valid params"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.w5.b(com.ironsource.w5$a):com.ironsource.wa");
    }

    public static wa b(String str, String str2, List<Pair<String, String>> list) throws Exception {
        a.C0371a c0371a = new a.C0371a();
        c0371a.d(str).a(str2).e("POST").b(list);
        return b(c0371a.c());
    }

    private static HttpURLConnection c(a aVar) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(aVar.a).openConnection();
        httpURLConnection.setConnectTimeout(aVar.f6708d);
        httpURLConnection.setReadTimeout(aVar.f6709e);
        httpURLConnection.setRequestMethod(aVar.b);
        return httpURLConnection;
    }

    private static void d(HttpURLConnection httpURLConnection, a aVar) throws Exception {
        if (aVar.a()) {
            byte[] bytes = aVar.c.getBytes(aVar.f6710f);
            httpURLConnection.setRequestProperty("Content-Length", Integer.toString(bytes.length));
            f(httpURLConnection, bytes);
        }
    }

    private static void e(HttpURLConnection httpURLConnection, List<Pair<String, String>> list) throws ProtocolException {
        for (Pair<String, String> pair : list) {
            httpURLConnection.setRequestProperty((String) pair.first, (String) pair.second);
        }
    }

    private static void f(HttpURLConnection httpURLConnection, byte[] bArr) throws Exception {
        httpURLConnection.setDoOutput(true);
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        try {
            dataOutputStream.write(bArr);
            dataOutputStream.flush();
        } finally {
            dataOutputStream.close();
        }
    }

    private static boolean g(String str, String str2) {
        return (str == null || str.isEmpty() || str2 == null || str2.isEmpty()) ? false : true;
    }
}
