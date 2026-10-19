package com.fyber.inneractive.sdk.network;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import androidx.webkit.ProxyConfig;
import com.fyber.inneractive.sdk.util.IAlog;
import com.json.b4;
import com.mbridge.msdk.foundation.download.Command;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class i extends h implements g {

    public static class a extends j {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final HttpURLConnection f2110g;

        public a(HttpURLConnection httpURLConnection, int i, InputStream inputStream, Map<String, List<String>> map, String str) {
            this.f2110g = httpURLConnection;
            a(i);
            a(inputStream);
            a(map);
            a(str);
        }

        @Override // com.fyber.inneractive.sdk.network.j
        public void a() throws IOException {
            try {
                HttpURLConnection httpURLConnection = this.f2110g;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
            } catch (Throwable unused) {
            }
            super.a();
        }
    }

    public final <T> Pair<List<String>, HttpURLConnection> a(c0<T> c0Var, List<String> list, URL url, String str, String str2) throws b {
        String headerField;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            if (!c0Var.l()) {
                httpURLConnection.setInstanceFollowRedirects(false);
            }
            t0 t0VarN = c0Var.n();
            httpURLConnection.setConnectTimeout(t0VarN.a);
            httpURLConnection.setReadTimeout(t0VarN.b);
            a(httpURLConnection, Command.HTTP_HEADER_USER_AGENT, str);
            a(httpURLConnection, "If-Modified-Since", str2);
            a(httpURLConnection, "Accept-Encoding", "gzip");
            Map<String, String> mapW = c0Var.w();
            if (mapW != null) {
                for (String str3 : mapW.keySet()) {
                    a(httpURLConnection, str3, mapW.get(str3));
                }
            }
            c0Var.b(System.currentTimeMillis());
            if (c0Var.r() == z.POST || c0Var.r() == z.PUT) {
                a(httpURLConnection, (c0<?>) c0Var);
            } else {
                httpURLConnection.connect();
            }
            int responseCode = httpURLConnection.getResponseCode();
            c0Var.a(System.currentTimeMillis());
            IAlog.a("%s (%s) response code - %d", c0Var.toString(), url, Integer.valueOf(responseCode));
            if (c0Var.l() || (!((responseCode > 300 && responseCode < 304) || responseCode == 307 || responseCode == 308) || (headerField = httpURLConnection.getHeaderField("Location")) == null)) {
                return new Pair<>(list, httpURLConnection);
            }
            if (!headerField.startsWith(ProxyConfig.MATCH_HTTP) && !headerField.contains("://") && list.size() > 0) {
                Uri uri = Uri.parse(list.get(list.size() - 1));
                headerField = String.format(headerField.startsWith("/") ? "%s://%s%s" : "%s://%s/%s", uri.getScheme(), uri.getHost(), headerField);
            }
            list.add(headerField);
            if (list.size() <= 5) {
                return headerField.startsWith(ProxyConfig.MATCH_HTTP) ? a(c0Var, list, new URL(headerField), str, str2) : Pair.create(list, null);
            }
            throw new b("Url chain too big for us");
        } catch (Exception e2) {
            c0Var.a(System.currentTimeMillis());
            IAlog.a("failed executing network request", e2, new Object[0]);
            throw new b(e2);
        }
    }

    @Override // com.fyber.inneractive.sdk.network.g
    public <T> j a(c0<T> c0Var, String str, String str2) throws Exception {
        InputStream inputStreamA;
        j jVarA;
        IAlog.a("%s hurl network stack is in use", "HttpExecutorImpl");
        URL url = new URL(c0Var.a());
        ArrayList arrayList = new ArrayList();
        arrayList.add(c0Var.a());
        Pair<List<String>, HttpURLConnection> pairA = a(c0Var, arrayList, url, str, str2);
        HttpURLConnection httpURLConnection = (HttpURLConnection) pairA.second;
        List list = (List) pairA.first;
        if (httpURLConnection == null) {
            try {
                if (list.size() <= 0) {
                    throw new w0("failed reading network response connection null");
                }
            } catch (SocketTimeoutException e2) {
                throw new z0(e2);
            } catch (IOException e3) {
                IAlog.a("failed reading network response", e3, new Object[0]);
                throw new w0(e3);
            }
        }
        if (httpURLConnection == null) {
            jVarA = a((InputStream) null, 200, "", (Map<String, List<String>>) null, (String) null);
        } else {
            try {
                inputStreamA = a(httpURLConnection.getInputStream(), TextUtils.equals("gzip", httpURLConnection.getContentEncoding()));
            } catch (Exception unused) {
                inputStreamA = null;
            }
            jVarA = a(inputStreamA, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), httpURLConnection.getHeaderFields(), httpURLConnection.getHeaderField("Last-Modified"));
        }
        a aVar = new a(httpURLConnection, jVarA.a, jVarA.c, jVarA.f2111d, jVarA.f2112e);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            aVar.f2113f.add((String) it.next());
        }
        return aVar;
    }

    public final void a(HttpURLConnection httpURLConnection, c0<?> c0Var) throws Exception {
        httpURLConnection.setRequestMethod(c0Var.r().key);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        byte[] bArrU = c0Var.u();
        httpURLConnection.setRequestProperty("Content-Length", "" + (bArrU != null ? bArrU.length : 0));
        httpURLConnection.setRequestProperty(b4.I, c0Var.q());
        httpURLConnection.connect();
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(bArrU);
        try {
            outputStream.close();
        } catch (Throwable unused) {
        }
    }

    public final void a(HttpURLConnection httpURLConnection, String str, String str2) {
        if (httpURLConnection == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        int i = IAlog.a;
        IAlog.a(1, null, "%s %s : %s", "REQUEST_HEADER", str, str2);
        httpURLConnection.addRequestProperty(str, str2);
    }

    @Override // com.fyber.inneractive.sdk.network.g
    public void b() {
    }
}
