package com.json.mediationsdk;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.facebook.appevents.UserDataStore;
import com.json.b4;
import com.json.d1;
import com.json.environment.thread.IronSourceThreadManager;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.d;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;
import com.json.mediationsdk.utils.IronSourceAES;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.mediationsdk.utils.c;
import com.json.t0;
import com.json.w3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class e {
    private final String a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f6314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f6315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private IronSource.AD_UNIT f6316f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f6317g;
    private com.json.mediationsdk.utils.a h;
    private t0 i;
    private ISBannerSize j;

    public static class a implements Runnable {
        protected WeakReference<t0> a;
        protected d.a b;
        protected int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected String f6318d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        protected long f6319e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        protected int f6320f;
        private int h;
        private final URL k;
        private final JSONObject l;
        private final boolean m;
        private final int n;
        private final long o;
        private final boolean p;
        private final boolean q;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        protected String f6321g = "other";
        protected String i = "";
        protected int j = 0;

        public a(t0 t0Var, URL url, JSONObject jSONObject, boolean z, int i, long j, boolean z2, boolean z3, int i2) {
            this.a = new WeakReference<>(t0Var);
            this.k = url;
            this.l = jSONObject;
            this.m = z;
            this.n = i;
            this.o = j;
            this.p = z2;
            this.q = z3;
            this.h = i2;
        }

        private String a() {
            return this.h == 2 ? w3.b().d() : w3.b().c();
        }

        private String b(HttpURLConnection httpURLConnection) throws IOException {
            InputStreamReader inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    inputStreamReader.close();
                    return sb.toString();
                }
                sb.append(line);
            }
        }

        private HttpURLConnection c(URL url, long j) throws IOException {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty(b4.I, "application/json; charset=utf-8");
            httpURLConnection.setReadTimeout((int) j);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            return httpURLConnection;
        }

        private JSONObject d(String str, String str2) throws JSONException {
            String strDecode = IronSourceAES.decode(str, str2);
            if (TextUtils.isEmpty(strDecode)) {
                throw new JSONException("decryption error");
            }
            return new JSONObject(strDecode);
        }

        private void f(long j, long j2) {
            long time = j - (new Date().getTime() - j2);
            if (time > 0) {
                SystemClock.sleep(time);
            }
        }

        private void h(HttpURLConnection httpURLConnection, JSONObject jSONObject, boolean z) throws Exception {
            String strA;
            String strEncode;
            OutputStream outputStream = httpURLConnection.getOutputStream();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, C.UTF8_NAME);
            BufferedWriter bufferedWriter = new BufferedWriter(outputStreamWriter);
            if (this.h == 2) {
                try {
                    strA = w3.b().a();
                } catch (JSONException e2) {
                    this.i = e2.getLocalizedMessage();
                    this.j = 1015;
                    this.h = 1;
                    IronLog.INTERNAL.error("get encrypted session key exception " + e2.getMessage());
                    strA = "";
                }
            } else {
                strA = "";
            }
            String string = jSONObject.toString();
            String strA2 = a();
            if (z) {
                IronLog.INTERNAL.verbose("compressing and encrypting auction request");
                strEncode = IronSourceAES.compressAndEncrypt(strA2, string);
            } else {
                strEncode = IronSourceAES.encode(strA2, string);
            }
            bufferedWriter.write(this.h == 2 ? String.format("{\"sk\" : \"%1$s\", \"ct\" : \"%2$s\"}", strA, strEncode) : String.format("{\"request\" : \"%1$s\"}", strEncode));
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStreamWriter.close();
            outputStream.close();
        }

        private JSONObject j(String str, String str2) throws JSONException {
            IronLog.INTERNAL.verbose("decrypting and decompressing auction response");
            String strDecryptAndDecompress = IronSourceAES.decryptAndDecompress(str, str2);
            if (strDecryptAndDecompress != null) {
                return new JSONObject(strDecryptAndDecompress);
            }
            throw new JSONException("decompression error");
        }

        protected JSONObject e(JSONObject jSONObject, boolean z) throws JSONException {
            String strA = a();
            String string = jSONObject.getString(this.h == 2 ? UserDataStore.CITY : c.Y1);
            return z ? j(strA, string) : d(strA, string);
        }

        protected void g(String str, boolean z, boolean z2) throws JSONException {
            if (TextUtils.isEmpty(str)) {
                throw new JSONException("empty response");
            }
            JSONObject jSONObject = new JSONObject(str);
            if (z) {
                jSONObject = e(jSONObject, z2);
            }
            d.a aVarB = d.c().b(jSONObject);
            this.b = aVarB;
            this.c = aVarB.c();
            this.f6318d = this.b.d();
        }

        protected void i(boolean z, t0 t0Var, long j) {
            if (z) {
                t0Var.a(this.b.h(), this.b.a(), this.b.e(), this.b.f(), this.b.b(), this.f6320f + 1, j, this.j, this.i);
            } else {
                t0Var.a(this.c, this.f6318d, this.f6320f + 1, this.f6321g, j);
            }
        }

        protected boolean k() {
            long time;
            int responseCode;
            String str;
            this.f6319e = new Date().getTime();
            try {
                this.h = this.j == 1015 ? 1 : this.h;
                this.f6320f = 0;
                HttpURLConnection httpURLConnectionC = null;
                while (true) {
                    int i = this.f6320f;
                    int i2 = this.n;
                    if (i >= i2) {
                        this.f6320f = i2 - 1;
                        this.f6321g = "trials_fail";
                        return false;
                    }
                    try {
                        time = new Date().getTime();
                        String str2 = "Auction Handler: auction trial " + (this.f6320f + 1) + " out of " + this.n + " max trials";
                        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, str2, 0);
                        IronSourceUtils.sendAutomationLog(str2);
                        httpURLConnectionC = c(this.k, this.o);
                        h(httpURLConnectionC, this.l, this.p);
                        responseCode = httpURLConnectionC.getResponseCode();
                    } catch (SocketTimeoutException e2) {
                        if (httpURLConnectionC != null) {
                            httpURLConnectionC.disconnect();
                        }
                        this.c = 1006;
                        this.f6318d = "Connection timed out";
                        IronLog.INTERNAL.error("Auction socket timeout exception " + e2.getMessage());
                    } catch (Throwable th) {
                        IronLog.INTERNAL.error("getting exception " + th);
                        if (httpURLConnectionC != null) {
                            httpURLConnectionC.disconnect();
                        }
                        this.c = 1000;
                        this.f6318d = th.getMessage();
                        this.f6321g = "other";
                        return false;
                    }
                    if (responseCode == 200 || responseCode == 204) {
                        try {
                            g(b(httpURLConnectionC), this.m, this.q);
                            httpURLConnectionC.disconnect();
                            return true;
                        } catch (JSONException e3) {
                            if (e3.getMessage() != null && e3.getMessage().equalsIgnoreCase("decryption error")) {
                                this.c = 1003;
                                str = "Auction decryption error";
                            } else if (e3.getMessage() == null || !e3.getMessage().equalsIgnoreCase("decompression error")) {
                                this.c = 1002;
                                str = "Auction parsing error";
                            } else {
                                this.c = 1008;
                                str = "Auction decompression error";
                            }
                            this.f6318d = str;
                            this.f6321g = "parsing";
                            IronLog.INTERNAL.error("Auction handle response exception " + e3.getMessage());
                            httpURLConnectionC.disconnect();
                            return false;
                        }
                    }
                    this.c = 1001;
                    String str3 = "Auction response code not valid, error code response from server - " + responseCode;
                    this.f6318d = str3;
                    IronLog.INTERNAL.error(str3);
                    httpURLConnectionC.disconnect();
                    if (this.f6320f < this.n - 1) {
                        f(this.o, time);
                    }
                    this.f6320f++;
                }
            } catch (Exception e4) {
                this.c = 1007;
                this.f6318d = e4.getMessage();
                this.f6320f = 0;
                this.f6321g = "other";
                IronLog.INTERNAL.error("Auction request exception " + e4.getMessage());
                return false;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean zK = k();
            t0 t0Var = this.a.get();
            if (t0Var == null) {
                return;
            }
            i(zK, t0Var, new Date().getTime() - this.f6319e);
        }
    }

    @Deprecated
    public e(IronSource.AD_UNIT ad_unit, com.json.mediationsdk.utils.a aVar, t0 t0Var) {
        this.a = "1";
        this.b = "102";
        this.c = "102";
        this.f6314d = "GenericNotifications";
        this.f6316f = ad_unit;
        this.h = aVar;
        this.i = t0Var;
        this.f6317g = IronSourceUtils.getSessionId();
    }

    public e(f fVar) {
        this.a = "1";
        this.b = "102";
        this.c = "102";
        this.f6314d = "GenericNotifications";
        this.f6315e = fVar;
    }

    private JSONObject a(Context context, Map<String, Object> map, List<String> list, h hVar, int i, boolean z, IronSourceSegment ironSourceSegment) throws JSONException {
        new JSONObject();
        if (!p.o().k().b().getApplicationConfigurations().j().f()) {
            JSONObject jSONObjectF = d.c().f(context, map, list, hVar, i, this.f6317g, this.h, this.j, ironSourceSegment != null ? ironSourceSegment.toJson() : null, false, false);
            jSONObjectF.put("adUnit", this.f6316f.toString());
            jSONObjectF.put(d.l0, z ? "false" : "true");
            return jSONObjectF;
        }
        AuctionRequestParams iVar = new AuctionRequestParams(this.f6316f);
        iVar.a(map);
        iVar.a(list);
        iVar.a(hVar);
        iVar.a(i);
        iVar.a(this.j);
        iVar.a(ironSourceSegment);
        iVar.b(z);
        return d.c().g(iVar);
    }

    public void a(Context context, AuctionRequestParams iVar, t0 t0Var) {
        try {
            IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(this.f6315e.a(context, iVar, t0Var));
        } catch (Exception e2) {
            IronLog.INTERNAL.error("execute auction exception " + e2.getMessage());
            if (t0Var != null) {
                t0Var.a(1000, e2.getMessage(), 0, "other", 0L);
            }
        }
    }

    @Deprecated
    public void a(Context context, Map<String, Object> map, List<String> list, h hVar, int i, IronSourceSegment ironSourceSegment) {
        try {
            boolean zIsEncryptedResponse = IronSourceUtils.isEncryptedResponse();
            IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new a(this.i, new URL(this.h.a(false)), a(context, map, list, hVar, i, zIsEncryptedResponse, ironSourceSegment), zIsEncryptedResponse, this.h.g(), this.h.m(), this.h.n(), this.h.o(), this.h.d()));
        } catch (Exception e2) {
            IronLog.INTERNAL.error("execute auction exception " + e2.getMessage());
            this.i.a(1000, e2.getMessage(), 0, "other", 0L);
        }
    }

    @Deprecated
    public void a(Context context, Map<String, Object> map, List<String> list, h hVar, int i, IronSourceSegment ironSourceSegment, ISBannerSize iSBannerSize) {
        this.j = iSBannerSize;
        a(context, map, list, hVar, i, ironSourceSegment);
    }

    public void a(d1 d1Var, int i, d1 d1Var2) {
        Iterator<String> it = d1Var.g().iterator();
        while (it.hasNext()) {
            d.c().a("reportLoadSuccess", d1Var.c(), d.c().a(it.next(), i, d1Var, "", "", ""));
        }
        if (d1Var2 != null) {
            Iterator<String> it2 = d1Var2.g().iterator();
            while (it2.hasNext()) {
                d.c().a("reportLoadSuccess", "GenericNotifications", d.c().a(it2.next(), i, d1Var, "", "102", ""));
            }
        }
    }

    public void a(d1 d1Var, int i, d1 d1Var2, String str) {
        Iterator<String> it = d1Var.b().iterator();
        while (it.hasNext()) {
            d.c().a("reportImpression", d1Var.c(), d.c().a(it.next(), i, d1Var, "", "", str));
        }
        if (d1Var2 != null) {
            Iterator<String> it2 = d1Var2.b().iterator();
            while (it2.hasNext()) {
                d.c().a("reportImpression", "GenericNotifications", d.c().a(it2.next(), i, d1Var, "", "102", str));
            }
        }
    }

    public void a(ArrayList<String> arrayList, ConcurrentHashMap<String, d1> concurrentHashMap, int i, d1 d1Var, d1 d1Var2) {
        int i2 = d1Var2.i();
        for (String str : arrayList) {
            if (!str.equals(d1Var2.c())) {
                d1 d1Var3 = concurrentHashMap.get(str);
                int i3 = d1Var3.i();
                String strH = d1Var3.h();
                String str2 = i3 < i2 ? "1" : "102";
                IronLog.INTERNAL.verbose("instance=" + d1Var3.c() + ", instancePriceOrder= " + i3 + ", loseReasonCode=" + str2 + ", winnerInstance=" + d1Var2.c() + ", winnerInstancePriceOrder=" + i2);
                Iterator<String> it = d1Var3.f().iterator();
                while (it.hasNext()) {
                    d.c().a("reportAuctionLose", d1Var3.c(), d.c().a(it.next(), i, d1Var2, strH, str2, ""));
                }
            }
        }
        if (d1Var != null) {
            Iterator<String> it2 = d1Var.f().iterator();
            while (it2.hasNext()) {
                d.c().a("reportAuctionLose", "GenericNotifications", d.c().a(it2.next(), i, d1Var2, "", "102", ""));
            }
        }
    }

    public void a(CopyOnWriteArrayList<a0> copyOnWriteArrayList, ConcurrentHashMap<String, d1> concurrentHashMap, int i, d1 d1Var, d1 d1Var2) {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<a0> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().c());
        }
        a(arrayList, concurrentHashMap, i, d1Var, d1Var2);
    }

    public boolean a() {
        return this.f6315e.a();
    }
}
