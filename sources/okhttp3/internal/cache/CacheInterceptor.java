package okhttp3.internal.cache;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.json.b4;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cache;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.cache.CacheStrategy;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.HttpMethod;
import okhttp3.internal.http.RealResponseBody;
import okio.Buffer;
import okio.Okio;
import okio.d;
import okio.e;
import okio.w;
import okio.y;
import okio.z;

/* JADX INFO: compiled from: CacheInterceptor.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/cache/CacheInterceptor;", "Lokhttp3/Interceptor;", WebPreferenceConstants.CLEAR_CACHE_EXIT, "Lokhttp3/Cache;", "(Lokhttp3/Cache;)V", "getCache$okhttp", "()Lokhttp3/Cache;", "cacheWritingResponse", "Lokhttp3/Response;", "cacheRequest", "Lokhttp3/internal/cache/CacheRequest;", com.json.mediationsdk.utils.c.Y1, "intercept", "chain", "Lokhttp3/Interceptor$Chain;", "Companion", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class CacheInterceptor implements Interceptor {
    public static final Companion b = new Companion(null);
    private final Cache c;

    /* JADX INFO: compiled from: CacheInterceptor.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0014\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/cache/CacheInterceptor$Companion;", "", "()V", "combine", "Lokhttp3/Headers;", "cachedHeaders", "networkHeaders", "isContentSpecificHeader", "", "fieldName", "", "isEndToEnd", "stripBody", "Lokhttp3/Response;", com.json.mediationsdk.utils.c.Y1, "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Headers a(Headers headers, Headers headers2) {
            Headers.a aVar = new Headers.a();
            int size = headers.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                int i3 = i2 + 1;
                String strC = headers.c(i2);
                String strH = headers.h(i2);
                if ((!StringsKt__StringsJVMKt.equals("Warning", strC, true) || !StringsKt__StringsJVMKt.startsWith$default(strH, "1", false, 2, null)) && (b(strC) || !c(strC) || headers2.a(strC) == null)) {
                    aVar.c(strC, strH);
                }
                i2 = i3;
            }
            int size2 = headers2.size();
            while (i < size2) {
                int i4 = i + 1;
                String strC2 = headers2.c(i);
                if (!b(strC2) && c(strC2)) {
                    aVar.c(strC2, headers2.h(i));
                }
                i = i4;
            }
            return aVar.e();
        }

        private final boolean b(String str) {
            return StringsKt__StringsJVMKt.equals("Content-Length", str, true) || StringsKt__StringsJVMKt.equals("Content-Encoding", str, true) || StringsKt__StringsJVMKt.equals(b4.I, str, true);
        }

        private final boolean c(String str) {
            return (StringsKt__StringsJVMKt.equals("Connection", str, true) || StringsKt__StringsJVMKt.equals("Keep-Alive", str, true) || StringsKt__StringsJVMKt.equals("Proxy-Authenticate", str, true) || StringsKt__StringsJVMKt.equals("Proxy-Authorization", str, true) || StringsKt__StringsJVMKt.equals("TE", str, true) || StringsKt__StringsJVMKt.equals("Trailers", str, true) || StringsKt__StringsJVMKt.equals("Transfer-Encoding", str, true) || StringsKt__StringsJVMKt.equals("Upgrade", str, true)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Response d(Response response) {
            return (response == null ? null : response.getF10614g()) != null ? response.q().b(null).c() : response;
        }
    }

    /* JADX INFO: compiled from: CacheInterceptor.kt */
    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1", "Lokio/Source;", "cacheRequestClosed", "", "close", "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "timeout", "Lokio/Timeout;", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a implements y {
        private boolean a;
        final /* synthetic */ e b;
        final /* synthetic */ CacheRequest c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ d f10637d;

        a(e eVar, CacheRequest cacheRequest, d dVar) {
            this.b = eVar;
            this.c = cacheRequest;
            this.f10637d = dVar;
        }

        @Override // okio.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!this.a && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                this.a = true;
                this.c.abort();
            }
            this.b.close();
        }

        @Override // okio.y
        public long read(Buffer sink, long byteCount) throws IOException {
            Intrinsics.checkNotNullParameter(sink, "sink");
            try {
                long j = this.b.read(sink, byteCount);
                if (j != -1) {
                    sink.j(this.f10637d.y(), sink.I() - j, j);
                    this.f10637d.emitCompleteSegments();
                    return j;
                }
                if (!this.a) {
                    this.a = true;
                    this.f10637d.close();
                }
                return -1L;
            } catch (IOException e2) {
                if (!this.a) {
                    this.a = true;
                    this.c.abort();
                }
                throw e2;
            }
        }

        @Override // okio.y
        public z timeout() {
            return this.b.timeout();
        }
    }

    public CacheInterceptor(Cache cache) {
        this.c = cache;
    }

    private final Response a(CacheRequest cacheRequest, Response response) throws IOException {
        if (cacheRequest == null) {
            return response;
        }
        w c = cacheRequest.getC();
        ResponseBody f10614g = response.getF10614g();
        Intrinsics.checkNotNull(f10614g);
        a aVar = new a(f10614g.getF10545d(), cacheRequest, Okio.buffer(c));
        return response.q().b(new RealResponseBody(Response.header$default(response, b4.I, null, 2, null), response.getF10614g().getContentLength(), Okio.buffer(aVar))).c();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.a chain) throws IOException {
        ResponseBody f10614g;
        ResponseBody f10614g2;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Call call = chain.call();
        Cache cache = this.c;
        Response responseB = cache == null ? null : cache.b(chain.request());
        CacheStrategy cacheStrategyB = new CacheStrategy.b(System.currentTimeMillis(), chain.request(), responseB).b();
        Request requestB = cacheStrategyB.getB();
        Response responseA = cacheStrategyB.getC();
        Cache cache2 = this.c;
        if (cache2 != null) {
            cache2.k(cacheStrategyB);
        }
        RealCall realCall = call instanceof RealCall ? (RealCall) call : null;
        EventListener f10670e = realCall != null ? realCall.getF10670e() : null;
        if (f10670e == null) {
            f10670e = EventListener.b;
        }
        if (responseB != null && responseA == null && (f10614g2 = responseB.getF10614g()) != null) {
            Util.closeQuietly(f10614g2);
        }
        if (requestB == null && responseA == null) {
            Response responseC = new Response.a().s(chain.request()).q(Protocol.HTTP_1_1).g(TypedValues.PositionType.TYPE_PERCENT_HEIGHT).n("Unsatisfiable Request (only-if-cached)").b(Util.c).t(-1L).r(System.currentTimeMillis()).c();
            f10670e.A(call, responseC);
            return responseC;
        }
        if (requestB == null) {
            Intrinsics.checkNotNull(responseA);
            Response responseC2 = responseA.q().d(b.d(responseA)).c();
            f10670e.b(call, responseC2);
            return responseC2;
        }
        if (responseA != null) {
            f10670e.a(call, responseA);
        } else if (this.c != null) {
            f10670e.c(call);
        }
        try {
            Response responseA2 = chain.a(requestB);
            if (responseA2 == null && responseB != null && f10614g != null) {
            }
            if (responseA != null) {
                boolean z = false;
                if (responseA2 != null && responseA2.getCode() == 304) {
                    z = true;
                }
                if (z) {
                    Response.a aVarQ = responseA.q();
                    Companion companion = b;
                    Response responseC3 = aVarQ.l(companion.a(responseA.getF10613f(), responseA2.getF10613f())).t(responseA2.getK()).r(responseA2.getL()).d(companion.d(responseA)).o(companion.d(responseA2)).c();
                    ResponseBody f10614g3 = responseA2.getF10614g();
                    Intrinsics.checkNotNull(f10614g3);
                    f10614g3.close();
                    Cache cache3 = this.c;
                    Intrinsics.checkNotNull(cache3);
                    cache3.j();
                    this.c.l(responseA, responseC3);
                    f10670e.b(call, responseC3);
                    return responseC3;
                }
                ResponseBody f10614g4 = responseA.getF10614g();
                if (f10614g4 != null) {
                    Util.closeQuietly(f10614g4);
                }
            }
            Intrinsics.checkNotNull(responseA2);
            Response.a aVarQ2 = responseA2.q();
            Companion companion2 = b;
            Response responseC4 = aVarQ2.d(companion2.d(responseA)).o(companion2.d(responseA2)).c();
            if (this.c != null) {
                if (HttpHeaders.promisesBody(responseC4) && CacheStrategy.a.a(responseC4, requestB)) {
                    Response responseA3 = a(this.c.f(responseC4), responseC4);
                    if (responseA != null) {
                        f10670e.c(call);
                    }
                    return responseA3;
                }
                if (HttpMethod.a.a(requestB.getB())) {
                    try {
                        this.c.g(requestB);
                    } catch (IOException unused) {
                    }
                }
            }
            return responseC4;
        } finally {
            if (responseB != null && (f10614g = responseB.getF10614g()) != null) {
                Util.closeQuietly(f10614g);
            }
        }
    }
}
