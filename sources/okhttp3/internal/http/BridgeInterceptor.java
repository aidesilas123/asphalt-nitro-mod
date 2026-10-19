package okhttp3.internal.http;

import com.json.b4;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import com.mbridge.msdk.foundation.download.Command;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okio.Okio;
import okio.m;

/* JADX INFO: renamed from: okhttp3.internal.http.a, reason: from Kotlin metadata */
/* JADX INFO: compiled from: BridgeInterceptor.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/http/BridgeInterceptor;", "Lokhttp3/Interceptor;", "cookieJar", "Lokhttp3/CookieJar;", "(Lokhttp3/CookieJar;)V", "cookieHeader", "", WebPreferenceConstants.COOKIES, "", "Lokhttp3/Cookie;", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class BridgeInterceptor implements Interceptor {
    private final CookieJar b;

    public BridgeInterceptor(CookieJar cookieJar) {
        Intrinsics.checkNotNullParameter(cookieJar, "cookieJar");
        this.b = cookieJar;
    }

    private final String a(List<Cookie> list) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Cookie cookie = (Cookie) obj;
            if (i > 0) {
                sb.append("; ");
            }
            sb.append(cookie.getF10570f());
            sb.append(b4.R);
            sb.append(cookie.getF10571g());
            i = i2;
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.a chain) throws IOException {
        ResponseBody f10614g;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        Request.Builder builderI = request.i();
        RequestBody f10605d = request.getF10605d();
        if (f10605d != null) {
            MediaType a = f10605d.getA();
            if (a != null) {
                builderI.f(b4.I, a.getF10582d());
            }
            long jContentLength = f10605d.contentLength();
            if (jContentLength != -1) {
                builderI.f("Content-Length", String.valueOf(jContentLength));
                builderI.j("Transfer-Encoding");
            } else {
                builderI.f("Transfer-Encoding", "chunked");
                builderI.j("Content-Length");
            }
        }
        boolean z = false;
        if (request.d("Host") == null) {
            builderI.f("Host", Util.toHostHeader$default(request.getA(), false, 1, null));
        }
        if (request.d("Connection") == null) {
            builderI.f("Connection", "Keep-Alive");
        }
        if (request.d("Accept-Encoding") == null && request.d(Command.HTTP_HEADER_RANGE) == null) {
            builderI.f("Accept-Encoding", "gzip");
            z = true;
        }
        List<Cookie> listA = this.b.a(request.getA());
        if (!listA.isEmpty()) {
            builderI.f("Cookie", a(listA));
        }
        if (request.d(Command.HTTP_HEADER_USER_AGENT) == null) {
            builderI.f(Command.HTTP_HEADER_USER_AGENT, "okhttp/4.10.0");
        }
        Response responseA = chain.a(builderI.b());
        HttpHeaders.receiveHeaders(this.b, request.getA(), responseA.getF10613f());
        Response.a aVarS = responseA.q().s(request);
        if (z && StringsKt__StringsJVMKt.equals("gzip", Response.header$default(responseA, "Content-Encoding", null, 2, null), true) && HttpHeaders.promisesBody(responseA) && (f10614g = responseA.getF10614g()) != null) {
            m mVar = new m(f10614g.getF10545d());
            aVarS.l(responseA.getF10613f().e().h("Content-Encoding").h("Content-Length").e());
            aVarS.b(new RealResponseBody(Response.header$default(responseA, b4.I, null, 2, null), -1L, Okio.buffer(mVar)));
        }
        return aVarS.c();
    }
}
