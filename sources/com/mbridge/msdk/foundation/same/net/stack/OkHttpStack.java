package com.mbridge.msdk.foundation.same.net.stack;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.same.net.dns.MBDns;
import com.mbridge.msdk.foundation.same.net.j;
import com.mbridge.msdk.foundation.same.net.stack.c;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.thrid.okhttp.Call;
import com.mbridge.msdk.thrid.okhttp.Connection;
import com.mbridge.msdk.thrid.okhttp.EventListener;
import com.mbridge.msdk.thrid.okhttp.Headers;
import com.mbridge.msdk.thrid.okhttp.MediaType;
import com.mbridge.msdk.thrid.okhttp.OkHttpClient;
import com.mbridge.msdk.thrid.okhttp.Protocol;
import com.mbridge.msdk.thrid.okhttp.Request;
import com.mbridge.msdk.thrid.okhttp.RequestBody;
import com.mbridge.msdk.thrid.okhttp.Response;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class OkHttpStack implements b {
    private final OkHttpClient mClient = c.a.a.b();

    private static class DefaultEventListener extends EventListener {
        private long callDuring;
        private long callStart;
        private long connectDuring;
        private String connectErrorMessage;
        private long connectStart;
        private long connectionDuring;
        private long connectionStart;
        private long dnsDuring;
        private String dnsResult;
        private long dnsStart;
        private String hostName;
        private c.b httpStatus;
        private boolean isReportHttpStatus;
        private String method;

        public DefaultEventListener(String str) {
            try {
                boolean zA = c.a().a(str);
                this.isReportHttpStatus = zA;
                if (zA) {
                    this.httpStatus = c.a().c();
                }
            } catch (Exception unused) {
                this.isReportHttpStatus = false;
                this.httpStatus = null;
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.EventListener
        public void callEnd(Call call) {
            super.callEnd(call);
            try {
                com.mbridge.msdk.foundation.same.net.a.a().c();
            } catch (Exception unused) {
            }
            if (!this.isReportHttpStatus || this.httpStatus == null) {
                return;
            }
            try {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.callStart;
                this.callDuring = jCurrentTimeMillis;
                c.b bVar = this.httpStatus;
                bVar.a = 0;
                bVar.f7169d = this.method;
                bVar.b = jCurrentTimeMillis;
                bVar.f7170e = this.hostName;
                bVar.f7172g = this.dnsDuring;
                bVar.h = this.dnsResult;
                bVar.i = this.connectDuring;
                bVar.k = this.connectionDuring;
                c.a().a(this.httpStatus);
            } catch (Exception e2) {
                aa.d("OkHttpStack", e2.getMessage());
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.EventListener
        public void callFailed(Call call, IOException iOException) {
            super.callFailed(call, iOException);
            try {
                com.mbridge.msdk.foundation.same.net.a.a().d();
            } catch (Exception unused) {
            }
            if (!this.isReportHttpStatus || this.httpStatus == null) {
                return;
            }
            try {
                this.callDuring = System.currentTimeMillis() - this.callStart;
                if (TextUtils.isEmpty(this.connectErrorMessage)) {
                    this.httpStatus.a = 2;
                } else {
                    c.b bVar = this.httpStatus;
                    bVar.a = 1;
                    bVar.j = this.connectErrorMessage;
                }
                this.httpStatus.c = iOException != null ? iOException.getMessage() : "IO Exception";
                c.b bVar2 = this.httpStatus;
                bVar2.b = this.callDuring;
                bVar2.f7170e = this.hostName;
                bVar2.f7169d = this.method;
                bVar2.f7172g = this.dnsDuring;
                bVar2.h = this.dnsResult;
                bVar2.i = this.connectDuring;
                bVar2.k = this.connectionDuring;
                c.a().a(this.httpStatus);
            } catch (Exception e2) {
                aa.d("OkHttpStack", e2.getMessage());
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.EventListener
        public void callStart(Call call) {
            super.callStart(call);
            try {
                com.mbridge.msdk.foundation.same.net.a.a().b();
            } catch (Exception unused) {
            }
            if (!this.isReportHttpStatus || this.httpStatus == null) {
                return;
            }
            this.callStart = System.currentTimeMillis();
            if (call != null) {
                try {
                    this.method = call.request().method();
                } catch (Exception unused2) {
                    this.method = "";
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.EventListener
        public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
            super.connectEnd(call, inetSocketAddress, proxy, protocol);
            if (this.isReportHttpStatus && this.httpStatus != null) {
                this.connectDuring = System.currentTimeMillis() - this.connectStart;
                this.connectErrorMessage = "";
            }
            try {
                com.mbridge.msdk.c.c.a().d(call.request().url().host());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.EventListener
        public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException iOException) {
            super.connectFailed(call, inetSocketAddress, proxy, protocol, iOException);
            if (this.isReportHttpStatus && this.httpStatus != null) {
                this.connectDuring = System.currentTimeMillis() - this.connectStart;
                this.connectErrorMessage = iOException != null ? iOException.getMessage() : "IO Exception";
            }
            try {
                com.mbridge.msdk.c.c.a().c(call.request().url().host());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.EventListener
        public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
            super.connectStart(call, inetSocketAddress, proxy);
            if (!this.isReportHttpStatus || this.httpStatus == null) {
                return;
            }
            this.connectStart = System.currentTimeMillis();
        }

        @Override // com.mbridge.msdk.thrid.okhttp.EventListener
        public void connectionAcquired(Call call, Connection connection) {
            super.connectionAcquired(call, connection);
            if (!this.isReportHttpStatus || this.httpStatus == null) {
                return;
            }
            this.connectionStart = System.currentTimeMillis();
        }

        @Override // com.mbridge.msdk.thrid.okhttp.EventListener
        public void connectionReleased(Call call, Connection connection) {
            super.connectionReleased(call, connection);
            if (!this.isReportHttpStatus || this.httpStatus == null) {
                return;
            }
            this.connectionDuring = System.currentTimeMillis() - this.connectionStart;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.EventListener
        public void dnsEnd(Call call, String str, List<InetAddress> list) {
            super.dnsEnd(call, str, list);
            if (!this.isReportHttpStatus || this.httpStatus == null) {
                return;
            }
            try {
                this.dnsDuring = System.currentTimeMillis() - this.dnsStart;
                if (TextUtils.isEmpty(str)) {
                    this.hostName = "unKnown";
                } else {
                    this.hostName = str;
                }
                if (list != null && list.size() != 0) {
                    InetAddress inetAddress = list.get(0);
                    if (inetAddress != null && !TextUtils.isEmpty(inetAddress.getHostAddress())) {
                        this.dnsResult = inetAddress.getHostAddress();
                        return;
                    }
                    this.dnsResult = "unKnown";
                    return;
                }
                this.dnsResult = "unKnown";
            } catch (Exception e2) {
                aa.d("OkHttpStack", e2.getMessage());
                this.hostName = "";
                this.dnsResult = "";
            }
        }

        @Override // com.mbridge.msdk.thrid.okhttp.EventListener
        public void dnsStart(Call call, String str) {
            super.dnsStart(call, str);
            if (!this.isReportHttpStatus || this.httpStatus == null) {
                return;
            }
            this.dnsStart = System.currentTimeMillis();
        }
    }

    private static RequestBody createRequestBody(j jVar) {
        byte[] bArrF = jVar.f();
        if (bArrF == null) {
            return null;
        }
        return RequestBody.create((MediaType) null, bArrF);
    }

    private static void setConnectionParametersForRequest(Request.Builder builder, j<?> jVar) throws IOException {
        switch (jVar.a()) {
            case 0:
                builder.get();
                return;
            case 1:
                builder.post(createRequestBody(jVar));
                return;
            case 2:
                builder.put(createRequestBody(jVar));
                return;
            case 3:
                builder.delete();
                return;
            case 4:
                builder.head();
                return;
            case 5:
                builder.method("OPTIONS", null);
                return;
            case 6:
                builder.method("TRACE", null);
                return;
            case 7:
                builder.patch(createRequestBody(jVar));
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    @Override // com.mbridge.msdk.foundation.same.net.stack.b
    public com.mbridge.msdk.foundation.same.net.f.b performRequest(j<?> jVar) throws IOException {
        int i = jVar.i();
        int iJ = jVar.j();
        int iK = jVar.k();
        int iL = jVar.l();
        int iM = jVar.m();
        if (iJ == 0) {
            iJ = i;
        }
        if (iK == 0) {
            iK = i;
        }
        if (iL != 0) {
            i = iL;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Protocol.HTTP_1_1);
        arrayList.add(Protocol.HTTP_2);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        OkHttpClient.Builder builderEventListener = this.mClient.newBuilder().protocols(arrayList).readTimeout(iK, timeUnit).connectTimeout(iJ, timeUnit).writeTimeout(i, timeUnit).eventListener(new DefaultEventListener(jVar.b()));
        if (iM > 0) {
            builderEventListener.callTimeout(iM, timeUnit);
        }
        builderEventListener.dns(new MBDns());
        StringBuilder sb = new StringBuilder();
        sb.append("connectTimeout: ");
        sb.append(iJ);
        sb.append(" readTimeout: ");
        sb.append(iK);
        sb.append(" writeTimeout: ");
        sb.append(i);
        sb.append(" callTimeout: ");
        sb.append(iM == 0 ? "not set" : Integer.valueOf(iM));
        aa.a("OkHttpStack", sb.toString());
        Request.Builder builder = new Request.Builder();
        for (Map.Entry<String, String> entry : jVar.e().entrySet()) {
            builder.addHeader(entry.getKey(), entry.getValue());
        }
        setConnectionParametersForRequest(builder, jVar);
        Response responseExecute = builderEventListener.build().newCall(builder.url(jVar.b()).build()).execute();
        Headers headers = responseExecute.headers();
        ArrayList arrayList2 = new ArrayList();
        int size = headers.size();
        for (int i2 = 0; i2 < size; i2++) {
            String strName = headers.name(i2);
            String strValue = headers.value(i2);
            if (strName != null) {
                arrayList2.add(new com.mbridge.msdk.foundation.same.net.d.b(strName, strValue));
            }
        }
        return new com.mbridge.msdk.foundation.same.net.f.b(responseExecute.code(), arrayList2, responseExecute.body().byteStream());
    }
}
