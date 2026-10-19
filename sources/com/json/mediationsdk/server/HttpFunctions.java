package com.json.mediationsdk.server;

import com.json.a5;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class HttpFunctions {
    public static final String ERROR_PREFIX = "ERROR:";
    private static final ExecutorService a = Executors.newSingleThreadExecutor();

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f6389d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ a5 f6390e;

        a(String str, String str2, String str3, String str4, a5 a5Var) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.f6389d = str4;
            this.f6390e = a5Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:58:? A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.io.OutputStream, java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r1v2, types: [java.io.OutputStream] */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v4, types: [java.io.OutputStream] */
        /* JADX WARN: Type inference failed for: r1v5 */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 205
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.server.HttpFunctions.a.run():void");
        }
    }

    public static String getStringFromURL(String str) throws Exception {
        return getStringFromURL(str, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getStringFromURL(java.lang.String r4, com.ironsource.mediationsdk.p.c r5) throws java.lang.Exception {
        /*
            r0 = 0
            java.net.URL r1 = new java.net.URL     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L78
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L78
            java.net.URLConnection r4 = r1.openConnection()     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L78
            java.net.HttpURLConnection r4 = (java.net.HttpURLConnection) r4     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L78
            r1 = 15000(0x3a98, float:2.102E-41)
            r4.setReadTimeout(r1)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L79
            r4.setConnectTimeout(r1)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L79
            java.lang.String r1 = "GET"
            r4.setRequestMethod(r1)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L79
            r1 = 1
            r4.setDoInput(r1)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L79
            r4.connect()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L79
            int r1 = r4.getResponseCode()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L79
            r2 = 400(0x190, float:5.6E-43)
            if (r1 != r2) goto L33
            if (r5 == 0) goto L2f
            java.lang.String r1 = "Bad Request - 400"
            r5.a(r1)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L79
        L2f:
            r4.disconnect()
            return r0
        L33:
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L79
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L79
            java.io.InputStream r2 = r4.getInputStream()     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L79
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L79
            r5.<init>(r1)     // Catch: java.lang.Throwable -> L69 java.lang.Exception -> L79
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L67
            r1.<init>()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L67
        L46:
            java.lang.String r2 = r5.readLine()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L67
            if (r2 == 0) goto L50
            r1.append(r2)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L67
            goto L46
        L50:
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L67
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L67
            r4.disconnect()
            r5.close()
            if (r2 == 0) goto L61
            return r0
        L61:
            return r1
        L62:
            r0 = move-exception
            r3 = r0
            r0 = r5
            r5 = r3
            goto L6d
        L67:
            goto L7a
        L69:
            r5 = move-exception
            goto L6d
        L6b:
            r5 = move-exception
            r4 = r0
        L6d:
            if (r4 == 0) goto L72
            r4.disconnect()
        L72:
            if (r0 == 0) goto L77
            r0.close()
        L77:
            throw r5
        L78:
            r4 = r0
        L79:
            r5 = r0
        L7a:
            if (r4 == 0) goto L7f
            r4.disconnect()
        L7f:
            if (r5 == 0) goto L84
            r5.close()
        L84:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.mediationsdk.server.HttpFunctions.getStringFromURL(java.lang.String, com.ironsource.mediationsdk.p$c):java.lang.String");
    }

    public static void sendPostRequest(String str, String str2, a5 a5Var) {
        sendPostRequestWithAutho(str, str2, null, null, a5Var);
    }

    public static void sendPostRequestWithAutho(String str, String str2, String str3, String str4, a5 a5Var) {
        a.submit(new a(str, str3, str4, str2, a5Var));
    }
}
