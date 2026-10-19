package okhttp3.internal.http2;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import okhttp3.Headers;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.w;
import okio.y;
import okio.z;

/* JADX INFO: compiled from: Http2ExchangeCodec.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 (2\u00020\u0001:\u0001(B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0014H\u0016J\b\u0010\u001c\u001a\u00020\u0014H\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0012\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\fH\u0016J\u0010\u0010$\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 H\u0016J\b\u0010%\u001a\u00020&H\u0016J\u0010\u0010'\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lokhttp3/internal/http2/Http2ExchangeCodec;", "Lokhttp3/internal/http/ExchangeCodec;", "client", "Lokhttp3/OkHttpClient;", "connection", "Lokhttp3/internal/connection/RealConnection;", "chain", "Lokhttp3/internal/http/RealInterceptorChain;", "http2Connection", "Lokhttp3/internal/http2/Http2Connection;", "(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V", "canceled", "", "getConnection", "()Lokhttp3/internal/connection/RealConnection;", "protocol", "Lokhttp3/Protocol;", "stream", "Lokhttp3/internal/http2/Http2Stream;", "cancel", "", "createRequestBody", "Lokio/Sink;", "request", "Lokhttp3/Request;", "contentLength", "", "finishRequest", "flushRequest", "openResponseBodySource", "Lokio/Source;", com.json.mediationsdk.utils.c.Y1, "Lokhttp3/Response;", "readResponseHeaders", "Lokhttp3/Response$Builder;", "expectContinue", "reportedContentLength", "trailers", "Lokhttp3/Headers;", "writeRequestHeaders", "Companion", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class Http2ExchangeCodec implements ExchangeCodec {
    public static final a b = new a(null);
    private static final List<String> c = Util.immutableListOf("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", com.mbridge.msdk.thrid.okhttp.internal.http2.Header.TARGET_METHOD_UTF8, com.mbridge.msdk.thrid.okhttp.internal.http2.Header.TARGET_PATH_UTF8, com.mbridge.msdk.thrid.okhttp.internal.http2.Header.TARGET_SCHEME_UTF8, com.mbridge.msdk.thrid.okhttp.internal.http2.Header.TARGET_AUTHORITY_UTF8);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<String> f10768d = Util.immutableListOf("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final RealConnection f10769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RealInterceptorChain f10770f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Http2Connection f10771g;
    private volatile Http2Stream h;
    private final Protocol i;
    private volatile boolean j;

    /* JADX INFO: compiled from: Http2ExchangeCodec.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\b2\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lokhttp3/internal/http2/Http2ExchangeCodec$Companion;", "", "()V", "CONNECTION", "", "ENCODING", "HOST", "HTTP_2_SKIPPED_REQUEST_HEADERS", "", "HTTP_2_SKIPPED_RESPONSE_HEADERS", "KEEP_ALIVE", "PROXY_CONNECTION", "TE", "TRANSFER_ENCODING", "UPGRADE", "http2HeadersList", "Lokhttp3/internal/http2/Header;", "request", "Lokhttp3/Request;", "readHttp2HeadersList", "Lokhttp3/Response$Builder;", "headerBlock", "Lokhttp3/Headers;", "protocol", "Lokhttp3/Protocol;", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final List<Header> a(Request request) {
            Intrinsics.checkNotNullParameter(request, "request");
            Headers c = request.getC();
            ArrayList arrayList = new ArrayList(c.size() + 4);
            arrayList.add(new Header(Header.f10720d, request.getB()));
            arrayList.add(new Header(Header.f10721e, RequestLine.a.c(request.getA())));
            String strD = request.d("Host");
            if (strD != null) {
                arrayList.add(new Header(Header.f10723g, strD));
            }
            arrayList.add(new Header(Header.f10722f, request.getA().getC()));
            int i = 0;
            int size = c.size();
            while (i < size) {
                int i2 = i + 1;
                String strC = c.c(i);
                Locale US = Locale.US;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase = strC.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                if (!Http2ExchangeCodec.c.contains(lowerCase) || (Intrinsics.areEqual(lowerCase, "te") && Intrinsics.areEqual(c.h(i), "trailers"))) {
                    arrayList.add(new Header(lowerCase, c.h(i)));
                }
                i = i2;
            }
            return arrayList;
        }

        public final Response.a b(Headers headerBlock, Protocol protocol) throws IOException {
            Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            Headers.a aVar = new Headers.a();
            int size = headerBlock.size();
            StatusLine statusLineA = null;
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                String strC = headerBlock.c(i);
                String strH = headerBlock.h(i);
                if (Intrinsics.areEqual(strC, com.mbridge.msdk.thrid.okhttp.internal.http2.Header.RESPONSE_STATUS_UTF8)) {
                    statusLineA = StatusLine.a.a(Intrinsics.stringPlus("HTTP/1.1 ", strH));
                } else if (!Http2ExchangeCodec.f10768d.contains(strC)) {
                    aVar.c(strC, strH);
                }
                i = i2;
            }
            if (statusLineA != null) {
                return new Response.a().q(protocol).g(statusLineA.c).n(statusLineA.f10703d).l(aVar.e());
            }
            throw new ProtocolException("Expected ':status' header not present");
        }
    }

    public Http2ExchangeCodec(OkHttpClient client, RealConnection connection, RealInterceptorChain chain, Http2Connection http2Connection) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Intrinsics.checkNotNullParameter(http2Connection, "http2Connection");
        this.f10769e = connection;
        this.f10770f = chain;
        this.f10771g = http2Connection;
        List<Protocol> listY = client.y();
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        this.i = listY.contains(protocol) ? protocol : Protocol.HTTP_2;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public y a(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        Http2Stream http2Stream = this.h;
        Intrinsics.checkNotNull(http2Stream);
        return http2Stream.getJ();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    /* JADX INFO: renamed from: b, reason: from getter */
    public RealConnection getF10769e() {
        return this.f10769e;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public long c(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (HttpHeaders.promisesBody(response)) {
            return Util.headersContentLength(response);
        }
        return 0L;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void cancel() {
        this.j = true;
        Http2Stream http2Stream = this.h;
        if (http2Stream == null) {
            return;
        }
        http2Stream.f(ErrorCode.CANCEL);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public w d(Request request, long j) {
        Intrinsics.checkNotNullParameter(request, "request");
        Http2Stream http2Stream = this.h;
        Intrinsics.checkNotNull(http2Stream);
        return http2Stream.n();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void e(Request request) throws IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        if (this.h != null) {
            return;
        }
        this.h = this.f10771g.t(b.a(request), request.getF10605d() != null);
        if (this.j) {
            Http2Stream http2Stream = this.h;
            Intrinsics.checkNotNull(http2Stream);
            http2Stream.f(ErrorCode.CANCEL);
            throw new IOException("Canceled");
        }
        Http2Stream http2Stream2 = this.h;
        Intrinsics.checkNotNull(http2Stream2);
        z zVarV = http2Stream2.v();
        long f10702g = this.f10770f.getF10702g();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        zVarV.g(f10702g, timeUnit);
        Http2Stream http2Stream3 = this.h;
        Intrinsics.checkNotNull(http2Stream3);
        http2Stream3.G().g(this.f10770f.getH(), timeUnit);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void finishRequest() throws IOException {
        Http2Stream http2Stream = this.h;
        Intrinsics.checkNotNull(http2Stream);
        http2Stream.n().close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public void flushRequest() throws IOException {
        this.f10771g.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public Response.a readResponseHeaders(boolean z) throws IOException {
        Http2Stream http2Stream = this.h;
        Intrinsics.checkNotNull(http2Stream);
        Response.a aVarB = b.b(http2Stream.E(), this.i);
        if (z && aVarB.getC() == 100) {
            return null;
        }
        return aVarB;
    }
}
