package com.fyber.inneractive.sdk.network;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import androidx.webkit.ProxyConfig;
import com.fyber.inneractive.sdk.util.IAlog;
import com.mbridge.msdk.foundation.download.Command;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class v0 extends h implements g {
    public final OkHttpClient a = new OkHttpClient().w().b();

    public static class a extends j {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final Response f2131g;

        public a(j jVar, Response response) {
            this.f2131g = response;
            a(jVar.d());
            a(jVar.b());
            a(jVar.c());
            a(jVar.e());
        }

        @Override // com.fyber.inneractive.sdk.network.j
        public void a() throws IOException {
            super.a();
            Response response = this.f2131g;
            if (response != null) {
                response.close();
            }
        }
    }

    public final <T> Pair<List<String>, Response> a(String str, c0<T> c0Var, List<String> list, String str2, String str3) throws Exception {
        String strK;
        t0 t0VarN = c0Var.n();
        Request.Builder builder = new Request.Builder();
        a(builder, "Accept-Encoding", "gzip");
        a(builder, Command.HTTP_HEADER_USER_AGENT, str2);
        a(builder, "If-Modified-Since", str3);
        Map<String, String> mapW = c0Var.w();
        if (mapW != null) {
            for (String str4 : mapW.keySet()) {
                a(builder, str4, mapW.get(str4));
            }
        }
        builder.o(str);
        if (c0Var.r() == z.POST || c0Var.r() == z.PUT) {
            byte[] bArrU = c0Var.u();
            if (bArrU == null) {
                throw new Exception("Could not create ok http request. post payload is null");
            }
            builder.i(RequestBody.create(bArrU, MediaType.parse(c0Var.q())));
        }
        Request requestB = builder.b();
        OkHttpClient.a aVarF = this.a.w().e(c0Var.l()).f(c0Var.l());
        long j = t0VarN.a;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        OkHttpClient okHttpClientB = aVarF.d(j, timeUnit).L(t0VarN.b, timeUnit).b();
        c0Var.b(System.currentTimeMillis());
        IAlog.a("OkHttpExecutorImpl: start connection timestamp: %s", c0Var.f());
        try {
            try {
                Response responseExecute = okHttpClientB.b(requestB).execute();
                if (c0Var.l() || (!((responseExecute.getCode() > 300 && responseExecute.getCode() < 304) || responseExecute.getCode() == 307 || responseExecute.getCode() == 308) || (strK = responseExecute.k("Location", "")) == null)) {
                    Pair<List<String>, Response> pair = new Pair<>(list, responseExecute);
                    c0Var.a(System.currentTimeMillis());
                    IAlog.a("OkHttpExecutorImpl: end connection timestamp: %s", c0Var.f());
                    return pair;
                }
                if (!strK.startsWith(ProxyConfig.MATCH_HTTP) && !strK.contains("://") && list.size() > 0) {
                    Uri uri = Uri.parse(list.get(list.size() - 1));
                    strK = String.format(strK.startsWith("/") ? "%s://%s%s" : "%s://%s/%s", uri.getScheme(), uri.getHost(), strK);
                }
                list.add(strK);
                if (list.size() > 5) {
                    throw new b("Url chain too big for us");
                }
                Pair<List<String>, Response> pairA = a(strK, c0Var, list, str2, str3);
                c0Var.a(System.currentTimeMillis());
                IAlog.a("OkHttpExecutorImpl: end connection timestamp: %s", c0Var.f());
                return pairA;
            } catch (Exception e2) {
                throw new b(e2);
            }
        } catch (Throwable th) {
            c0Var.a(System.currentTimeMillis());
            IAlog.a("OkHttpExecutorImpl: end connection timestamp: %s", c0Var.f());
            throw th;
        }
    }

    @Override // com.fyber.inneractive.sdk.network.g
    public <T> j a(c0<T> c0Var, String str, String str2) throws Exception {
        IAlog.a("%s okhttp network stack is in use", "OkHttpExecutorImpl");
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(c0Var.a());
            Pair<List<String>, Response> pairA = a(c0Var.a(), c0Var, arrayList, str, str2);
            Object obj = pairA.second;
            String message = obj != null ? ((Response) obj).getMessage() : "";
            InputStream inputStreamA = a((Response) pairA.second);
            Object obj2 = pairA.second;
            int code = obj2 == null ? -1 : ((Response) obj2).getCode();
            Map<String, List<String>> mapB = b((Response) pairA.second);
            Response response = (Response) pairA.second;
            a aVar = new a(a(inputStreamA, code, message, mapB, response != null ? response.getF10613f().a("Last-Modified") : null), (Response) pairA.second);
            Iterator it = ((List) pairA.first).iterator();
            while (it.hasNext()) {
                aVar.f2113f.add((String) it.next());
            }
            return aVar;
        } catch (b e2) {
            IAlog.b("%s cannot connect exception: %s", "OkHttpExecutorImpl", e2.getMessage());
            throw e2;
        } catch (Exception e3) {
            IAlog.b("%s exception: %s", "OkHttpExecutorImpl", e3.getMessage());
            throw e3;
        }
    }

    public final InputStream a(Response response) {
        if (response == null) {
            return null;
        }
        try {
            if (response.getF10614g() == null) {
                return null;
            }
            return a(response.getF10614g().byteStream(), TextUtils.equals("gzip", response.getF10613f().a("content-encoding")));
        } catch (Exception unused) {
            return null;
        }
    }

    public final void a(Request.Builder builder, String str, String str2) {
        int i = IAlog.a;
        IAlog.a(1, null, "%s %s : %s", "REQUEST_HEADER", str, str2);
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.a(str, str2);
    }

    public final Map<String, List<String>> b(Response response) {
        HashMap map = new HashMap();
        if (response != null) {
            Headers f10613f = response.getF10613f();
            for (int i = 0; i < f10613f.size(); i++) {
                String strC = f10613f.c(i);
                map.put(strC, Collections.singletonList(f10613f.a(strC)));
            }
        }
        return map;
    }

    @Override // com.fyber.inneractive.sdk.network.g
    public void b() {
    }
}
