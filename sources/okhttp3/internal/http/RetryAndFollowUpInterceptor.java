package okhttp3.internal.http;

import androidx.core.app.NotificationCompat;
import com.gameloft.adsmanager.JavaUtils;
import com.json.b4;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.Collection;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.Regex;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;

/* JADX INFO: renamed from: okhttp3.internal.http.f, reason: from Kotlin metadata */
/* JADX INFO: compiled from: RetryAndFollowUpInterceptor.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0002J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J(\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0012H\u0002J\u0018\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor;", "Lokhttp3/Interceptor;", "client", "Lokhttp3/OkHttpClient;", "(Lokhttp3/OkHttpClient;)V", "buildRedirectRequest", "Lokhttp3/Request;", "userResponse", "Lokhttp3/Response;", "method", "", "followUpRequest", "exchange", "Lokhttp3/internal/connection/Exchange;", "intercept", "chain", "Lokhttp3/Interceptor$Chain;", "isRecoverable", "", "e", "Ljava/io/IOException;", "requestSendStarted", "recover", NotificationCompat.CATEGORY_CALL, "Lokhttp3/internal/connection/RealCall;", "userRequest", "requestIsOneShot", "retryAfter", "", "defaultDelay", "Companion", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class RetryAndFollowUpInterceptor implements Interceptor {
    public static final a b = new a(null);
    private final OkHttpClient c;

    /* JADX INFO: renamed from: okhttp3.internal.http.f$a */
    /* JADX INFO: compiled from: RetryAndFollowUpInterceptor.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;", "", "()V", "MAX_FOLLOW_UPS", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    public RetryAndFollowUpInterceptor(OkHttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        this.c = client;
    }

    private final Request a(Response response, String str) {
        String strHeader$default;
        HttpUrl httpUrlN;
        if (!this.c.getK() || (strHeader$default = Response.header$default(response, "Location", null, 2, null)) == null || (httpUrlN = response.getA().getA().n(strHeader$default)) == null) {
            return null;
        }
        if (!Intrinsics.areEqual(httpUrlN.getC(), response.getA().getA().getC()) && !this.c.getL()) {
            return null;
        }
        Request.Builder builderI = response.getA().i();
        if (HttpMethod.permitsRequestBody(str)) {
            int code = response.getCode();
            HttpMethod httpMethod = HttpMethod.a;
            boolean z = httpMethod.c(str) || code == 308 || code == 307;
            if (!httpMethod.b(str) || code == 308 || code == 307) {
                builderI.h(str, z ? response.getA().getF10605d() : null);
            } else {
                builderI.h("GET", null);
            }
            if (!z) {
                builderI.j("Transfer-Encoding");
                builderI.j("Content-Length");
                builderI.j(b4.I);
            }
        }
        if (!Util.canReuseConnectionFor(response.getA().getA(), httpUrlN)) {
            builderI.j("Authorization");
        }
        return builderI.p(httpUrlN).b();
    }

    private final Request b(Response response, Exchange exchange) throws IOException {
        RealConnection f10680f;
        Route routeY = (exchange == null || (f10680f = exchange.getF10680f()) == null) ? null : f10680f.y();
        int code = response.getCode();
        String b2 = response.getA().getB();
        if (code != 307 && code != 308) {
            if (code == 401) {
                return this.c.getJ().a(routeY, response);
            }
            if (code == 421) {
                RequestBody f10605d = response.getA().getF10605d();
                if ((f10605d != null && f10605d.isOneShot()) || exchange == null || !exchange.k()) {
                    return null;
                }
                exchange.getF10680f().w();
                return response.getA();
            }
            if (code == 503) {
                Response j = response.getJ();
                if ((j == null || j.getCode() != 503) && f(response, Integer.MAX_VALUE) == 0) {
                    return response.getA();
                }
                return null;
            }
            if (code == 407) {
                Intrinsics.checkNotNull(routeY);
                if (routeY.getB().type() == Proxy.Type.HTTP) {
                    return this.c.getR().a(routeY, response);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            if (code == 408) {
                if (!this.c.getI()) {
                    return null;
                }
                RequestBody f10605d2 = response.getA().getF10605d();
                if (f10605d2 != null && f10605d2.isOneShot()) {
                    return null;
                }
                Response j2 = response.getJ();
                if ((j2 == null || j2.getCode() != 408) && f(response, 0) <= 0) {
                    return response.getA();
                }
                return null;
            }
            switch (code) {
                case JavaUtils.Constants.NATIVE_HEIGHT_DP_300 /* 300 */:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        return a(response, b2);
    }

    private final boolean c(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private final boolean d(IOException iOException, RealCall realCall, Request request, boolean z) {
        if (this.c.getI()) {
            return !(z && e(iOException, request)) && c(iOException, z) && realCall.v();
        }
        return false;
    }

    private final boolean e(IOException iOException, Request request) {
        RequestBody f10605d = request.getF10605d();
        return (f10605d != null && f10605d.isOneShot()) || (iOException instanceof FileNotFoundException);
    }

    private final int f(Response response, int i) {
        String strHeader$default = Response.header$default(response, "Retry-After", null, 2, null);
        if (strHeader$default == null) {
            return i;
        }
        if (!new Regex("\\d+").e(strHeader$default)) {
            return Integer.MAX_VALUE;
        }
        Integer numValueOf = Integer.valueOf(strHeader$default);
        Intrinsics.checkNotNullExpressionValue(numValueOf, "valueOf(header)");
        return numValueOf.intValue();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.a chain) throws IOException {
        Exchange l;
        Request requestB;
        Intrinsics.checkNotNullParameter(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request f10700e = realInterceptorChain.getF10700e();
        RealCall a2 = realInterceptorChain.getA();
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        Response response = null;
        boolean z = true;
        int i = 0;
        while (true) {
            a2.h(f10700e, z);
            try {
                if (a2.getP()) {
                    throw new IOException("Canceled");
                }
                try {
                    try {
                        Response responseA = realInterceptorChain.a(f10700e);
                        if (response != null) {
                            responseA = responseA.q().p(response.q().b(null).c()).c();
                        }
                        response = responseA;
                        l = a2.getL();
                        requestB = b(response, l);
                    } catch (RouteException e2) {
                        if (!d(e2.getB(), a2, f10700e, false)) {
                            throw Util.withSuppressed(e2.getA(), listEmptyList);
                        }
                        listEmptyList = CollectionsKt___CollectionsKt.plus((Collection<? extends IOException>) listEmptyList, e2.getA());
                        a2.i(true);
                        z = false;
                    }
                } catch (IOException e3) {
                    if (!d(e3, a2, f10700e, !(e3 instanceof ConnectionShutdownException))) {
                        throw Util.withSuppressed(e3, listEmptyList);
                    }
                    listEmptyList = CollectionsKt___CollectionsKt.plus((Collection<? extends IOException>) listEmptyList, e3);
                    a2.i(true);
                    z = false;
                }
                if (requestB == null) {
                    if (l != null && l.getF10679e()) {
                        a2.x();
                    }
                    a2.i(false);
                    return response;
                }
                RequestBody f10605d = requestB.getF10605d();
                if (f10605d != null && f10605d.isOneShot()) {
                    a2.i(false);
                    return response;
                }
                ResponseBody f10614g = response.getF10614g();
                if (f10614g != null) {
                    Util.closeQuietly(f10614g);
                }
                i++;
                if (i > 20) {
                    throw new ProtocolException(Intrinsics.stringPlus("Too many follow-up requests: ", Integer.valueOf(i)));
                }
                a2.i(true);
                f10700e = requestB;
                z = true;
            } catch (Throwable th) {
                a2.i(true);
                throw th;
            }
        }
    }
}
