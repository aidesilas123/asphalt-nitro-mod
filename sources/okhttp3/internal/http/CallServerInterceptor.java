package okhttp3.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okio.Okio;

/* JADX INFO: renamed from: okhttp3.internal.http.b, reason: from Kotlin metadata */
/* JADX INFO: compiled from: CallServerInterceptor.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lokhttp3/internal/http/CallServerInterceptor;", "Lokhttp3/Interceptor;", "forWebSocket", "", "(Z)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class CallServerInterceptor implements Interceptor {
    private final boolean b;

    public CallServerInterceptor(boolean z) {
        this.b = z;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.a chain) throws IOException {
        Response.a aVarP;
        boolean z;
        Intrinsics.checkNotNullParameter(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Exchange f10699d = realInterceptorChain.getF10699d();
        Intrinsics.checkNotNull(f10699d);
        Request f10700e = realInterceptorChain.getF10700e();
        RequestBody f10605d = f10700e.getF10605d();
        long jCurrentTimeMillis = System.currentTimeMillis();
        f10699d.t(f10700e);
        if (!HttpMethod.permitsRequestBody(f10700e.getB()) || f10605d == null) {
            f10699d.n();
            aVarP = null;
            z = true;
        } else {
            if (StringsKt__StringsJVMKt.equals("100-continue", f10700e.d("Expect"), true)) {
                f10699d.f();
                aVarP = f10699d.p(true);
                f10699d.r();
                z = false;
            } else {
                aVarP = null;
                z = true;
            }
            if (aVarP != null) {
                f10699d.n();
                if (!f10699d.getF10680f().u()) {
                    f10699d.m();
                }
            } else if (f10605d.isDuplex()) {
                f10699d.f();
                f10605d.writeTo(Okio.buffer(f10699d.c(f10700e, true)));
            } else {
                okio.d dVarBuffer = Okio.buffer(f10699d.c(f10700e, false));
                f10605d.writeTo(dVarBuffer);
                dVarBuffer.close();
            }
        }
        if (f10605d == null || !f10605d.isDuplex()) {
            f10699d.e();
        }
        if (aVarP == null) {
            aVarP = f10699d.p(false);
            Intrinsics.checkNotNull(aVarP);
            if (z) {
                f10699d.r();
                z = false;
            }
        }
        Response responseC = aVarP.s(f10700e).j(f10699d.getF10680f().q()).t(jCurrentTimeMillis).r(System.currentTimeMillis()).c();
        int code = responseC.getCode();
        if (code == 100) {
            Response.a aVarP2 = f10699d.p(false);
            Intrinsics.checkNotNull(aVarP2);
            if (z) {
                f10699d.r();
            }
            responseC = aVarP2.s(f10700e).j(f10699d.getF10680f().q()).t(jCurrentTimeMillis).r(System.currentTimeMillis()).c();
            code = responseC.getCode();
        }
        f10699d.q(responseC);
        Response responseC2 = (this.b && code == 101) ? responseC.q().b(Util.c).c() : responseC.q().b(f10699d.o(responseC)).c();
        if (StringsKt__StringsJVMKt.equals("close", responseC2.getA().d("Connection"), true) || StringsKt__StringsJVMKt.equals("close", Response.header$default(responseC2, "Connection", null, 2, null), true)) {
            f10699d.m();
        }
        if (code == 204 || code == 205) {
            ResponseBody f10614g = responseC2.getF10614g();
            if ((f10614g == null ? -1L : f10614g.getContentLength()) > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("HTTP ");
                sb.append(code);
                sb.append(" had non-zero Content-Length: ");
                ResponseBody f10614g2 = responseC2.getF10614g();
                sb.append(f10614g2 != null ? Long.valueOf(f10614g2.getContentLength()) : null);
                throw new ProtocolException(sb.toString());
            }
        }
        return responseC2;
    }
}
