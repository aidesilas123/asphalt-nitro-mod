package com.mbridge.msdk.e.a.a;

import android.text.TextUtils;
import com.json.b4;
import com.json.mediationsdk.config.VersionInfo;
import com.mbridge.msdk.e.a.m;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: HurlStack.java */
/* JADX INFO: loaded from: classes4.dex */
public final class g extends com.mbridge.msdk.e.a.a.a {
    private final b a;
    private final SSLSocketFactory b;

    /* JADX INFO: compiled from: HurlStack.java */
    static class a extends FilterInputStream {
        private final HttpURLConnection a;

        a(HttpURLConnection httpURLConnection) {
            super(g.b(httpURLConnection));
            this.a = httpURLConnection;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            super.close();
            this.a.disconnect();
        }
    }

    /* JADX INFO: compiled from: HurlStack.java */
    public interface b extends k {
    }

    public g() {
        this(null);
    }

    private g(b bVar) {
        this(bVar, null);
    }

    private g(b bVar, SSLSocketFactory sSLSocketFactory) {
        this.a = bVar;
        this.b = sSLSocketFactory;
    }

    private static List<com.mbridge.msdk.e.a.g> a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(new com.mbridge.msdk.e.a.g(entry.getKey(), it.next()));
                }
            }
        }
        return arrayList;
    }

    private void a(HttpURLConnection httpURLConnection, m<?> mVar) throws IOException {
        byte[] bArrN = mVar.n();
        if (bArrN != null) {
            a(httpURLConnection, mVar, bArrN);
        }
    }

    private void a(HttpURLConnection httpURLConnection, m<?> mVar, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey(b4.I)) {
            httpURLConnection.setRequestProperty(b4.I, mVar.m());
        }
        int length = bArr.length;
        DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream b(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    @Override // com.mbridge.msdk.e.a.a.a
    public final f a(m<?> mVar, Map<String, String> map) throws Throwable {
        String strH;
        SSLSocketFactory sSLSocketFactory;
        if (mVar.f() == 0) {
            strH = mVar.h();
            if (TextUtils.isEmpty(strH)) {
                strH = "";
            } else {
                byte[] bArrN = mVar.n();
                if (bArrN != null && bArrN.length != 0) {
                    strH = strH.endsWith("?") ? strH + new String(bArrN) : strH + "?" + new String(bArrN);
                }
            }
        } else {
            strH = mVar.h();
        }
        HashMap map2 = new HashMap();
        map2.putAll(map);
        map2.putAll(mVar.c());
        b bVar = this.a;
        if (bVar != null) {
            String strA = bVar.a(strH);
            if (strA == null) {
                throw new IOException("URL blocked by rewriter: " + strH);
            }
            strH = strA;
        }
        URL url = new URL(strH);
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        int iR = mVar.r();
        httpURLConnection.setConnectTimeout(iR);
        httpURLConnection.setReadTimeout(iR);
        boolean z = false;
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if ("https".equals(url.getProtocol()) && (sSLSocketFactory = this.b) != null) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
        }
        try {
            for (String str : map2.keySet()) {
                httpURLConnection.setRequestProperty(str, (String) map2.get(str));
            }
            switch (mVar.f()) {
                case 0:
                    httpURLConnection.setRequestMethod("GET");
                    break;
                case 1:
                    httpURLConnection.setRequestMethod("POST");
                    a(httpURLConnection, mVar);
                    break;
                case 2:
                    httpURLConnection.setRequestMethod("PUT");
                    a(httpURLConnection, mVar);
                    break;
                case 3:
                    httpURLConnection.setRequestMethod("DELETE");
                    break;
                case 4:
                    httpURLConnection.setRequestMethod(VersionInfo.GIT_BRANCH);
                    break;
                case 5:
                    httpURLConnection.setRequestMethod("OPTIONS");
                    break;
                case 6:
                    httpURLConnection.setRequestMethod("TRACE");
                    break;
                case 7:
                    httpURLConnection.setRequestMethod("PATCH");
                    a(httpURLConnection, mVar);
                    break;
                default:
                    throw new IllegalStateException("Unknown method type.");
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (!((mVar.f() == 4 || (100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304) ? false : true)) {
                f fVar = new f(responseCode, a(httpURLConnection.getHeaderFields()));
                httpURLConnection.disconnect();
                return fVar;
            }
            try {
                return new f(responseCode, a(httpURLConnection.getHeaderFields()), httpURLConnection.getContentLength(), new a(httpURLConnection));
            } catch (Throwable th) {
                th = th;
                z = true;
                if (!z) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
