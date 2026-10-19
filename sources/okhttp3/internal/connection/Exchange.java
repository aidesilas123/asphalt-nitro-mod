package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import com.facebook.share.internal.ShareConstants;
import com.json.b4;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.IOException;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.EventListener;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okio.Buffer;
import okio.Okio;
import okio.i;
import okio.j;
import okio.w;
import okio.y;

/* JADX INFO: renamed from: okhttp3.internal.connection.c, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Exchange.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0002ABB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ7\u0010\u001c\u001a\u0002H\u001d\"\n\b\u0000\u0010\u001d*\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u0002H\u001d¢\u0006\u0002\u0010$J\u0006\u0010%\u001a\u00020&J\u0016\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0016J\u0006\u0010,\u001a\u00020&J\u0006\u0010-\u001a\u00020&J\u0006\u0010.\u001a\u00020&J\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020&J\u0006\u00102\u001a\u00020&J\u000e\u00103\u001a\u0002042\u0006\u00105\u001a\u000206J\u0010\u00107\u001a\u0004\u0018\u0001082\u0006\u00109\u001a\u00020\u0016J\u000e\u0010:\u001a\u00020&2\u0006\u00105\u001a\u000206J\u0006\u0010;\u001a\u00020&J\u0010\u0010<\u001a\u00020&2\u0006\u0010#\u001a\u00020\u001eH\u0002J\u0006\u0010=\u001a\u00020>J\u0006\u0010?\u001a\u00020&J\u000e\u0010@\u001a\u00020&2\u0006\u0010)\u001a\u00020*R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00168@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0016@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0018¨\u0006C"}, d2 = {"Lokhttp3/internal/connection/Exchange;", "", NotificationCompat.CATEGORY_CALL, "Lokhttp3/internal/connection/RealCall;", "eventListener", "Lokhttp3/EventListener;", "finder", "Lokhttp3/internal/connection/ExchangeFinder;", "codec", "Lokhttp3/internal/http/ExchangeCodec;", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V", "getCall$okhttp", "()Lokhttp3/internal/connection/RealCall;", "connection", "Lokhttp3/internal/connection/RealConnection;", "getConnection$okhttp", "()Lokhttp3/internal/connection/RealConnection;", "getEventListener$okhttp", "()Lokhttp3/EventListener;", "getFinder$okhttp", "()Lokhttp3/internal/connection/ExchangeFinder;", "isCoalescedConnection", "", "isCoalescedConnection$okhttp", "()Z", "<set-?>", "isDuplex", "isDuplex$okhttp", "bodyComplete", "E", "Ljava/io/IOException;", "bytesRead", "", "responseDone", "requestDone", "e", "(JZZLjava/io/IOException;)Ljava/io/IOException;", "cancel", "", "createRequestBody", "Lokio/Sink;", "request", "Lokhttp3/Request;", "duplex", "detachWithViolence", "finishRequest", "flushRequest", "newWebSocketStreams", "Lokhttp3/internal/ws/RealWebSocket$Streams;", "noNewExchangesOnConnection", "noRequestBody", "openResponseBody", "Lokhttp3/ResponseBody;", com.json.mediationsdk.utils.c.Y1, "Lokhttp3/Response;", "readResponseHeaders", "Lokhttp3/Response$Builder;", "expectContinue", "responseHeadersEnd", "responseHeadersStart", "trackFailure", "trailers", "Lokhttp3/Headers;", "webSocketUpgradeFailed", "writeRequestHeaders", "RequestBodySink", "ResponseBodySource", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class Exchange {
    private final RealCall a;
    private final EventListener b;
    private final ExchangeFinder c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExchangeCodec f10678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f10679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final RealConnection f10680f;

    /* JADX INFO: renamed from: okhttp3.internal.connection.c$a */
    /* JADX INFO: compiled from: Exchange.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016J!\u0010\r\u001a\u0002H\u000e\"\n\b\u0000\u0010\u000e*\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u0002H\u000eH\u0002¢\u0006\u0002\u0010\u0011J\b\u0010\u0012\u001a\u00020\fH\u0016J\u0018\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0005H\u0016R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/connection/Exchange$RequestBodySink;", "Lokio/ForwardingSink;", "delegate", "Lokio/Sink;", "contentLength", "", "(Lokhttp3/internal/connection/Exchange;Lokio/Sink;J)V", "bytesReceived", "closed", "", "completed", "close", "", CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, "E", "Ljava/io/IOException;", "e", "(Ljava/io/IOException;)Ljava/io/IOException;", "flush", "write", ShareConstants.FEED_SOURCE_PARAM, "Lokio/Buffer;", "byteCount", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    private final class a extends i {
        private final long b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f10681d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f10682e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Exchange f10683f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Exchange this$0, w delegate, long j) {
            super(delegate);
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.f10683f = this$0;
            this.b = j;
        }

        private final <E extends IOException> E a(E e2) {
            if (this.c) {
                return e2;
            }
            this.c = true;
            return (E) this.f10683f.a(this.f10681d, false, true, e2);
        }

        @Override // okio.i, okio.w, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f10682e) {
                return;
            }
            this.f10682e = true;
            long j = this.b;
            if (j != -1 && this.f10681d != j) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                a(null);
            } catch (IOException e2) {
                throw a(e2);
            }
        }

        @Override // okio.i, okio.w, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e2) {
                throw a(e2);
            }
        }

        @Override // okio.i, okio.w
        public void n(Buffer source, long j) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!(!this.f10682e)) {
                throw new IllegalStateException("closed".toString());
            }
            long j2 = this.b;
            if (j2 == -1 || this.f10681d + j <= j2) {
                try {
                    super.n(source, j);
                    this.f10681d += j;
                    return;
                } catch (IOException e2) {
                    throw a(e2);
                }
            }
            throw new ProtocolException("expected " + this.b + " bytes but received " + (this.f10681d + j));
        }
    }

    /* JADX INFO: renamed from: okhttp3.internal.connection.c$b */
    /* JADX INFO: compiled from: Exchange.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\f\u001a\u00020\rH\u0016J\u001f\u0010\u000e\u001a\u0002H\u000f\"\n\b\u0000\u0010\u000f*\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u0002H\u000f¢\u0006\u0002\u0010\u0012J\u0018\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0005H\u0016R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/connection/Exchange$ResponseBodySource;", "Lokio/ForwardingSource;", "delegate", "Lokio/Source;", "contentLength", "", "(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V", "bytesReceived", "closed", "", "completed", "invokeStartEvent", "close", "", CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, "E", "Ljava/io/IOException;", "e", "(Ljava/io/IOException;)Ljava/io/IOException;", "read", "sink", "Lokio/Buffer;", "byteCount", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public final class b extends j {
        private final long a;
        private long b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f10684d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f10685e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Exchange f10686f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Exchange this$0, y delegate, long j) {
            super(delegate);
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.f10686f = this$0;
            this.a = j;
            this.c = true;
            if (j == 0) {
                a(null);
            }
        }

        public final <E extends IOException> E a(E e2) {
            if (this.f10684d) {
                return e2;
            }
            this.f10684d = true;
            if (e2 == null && this.c) {
                this.c = false;
                this.f10686f.getB().w(this.f10686f.getA());
            }
            return (E) this.f10686f.a(this.b, true, false, e2);
        }

        @Override // okio.j, okio.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f10685e) {
                return;
            }
            this.f10685e = true;
            try {
                super.close();
                a(null);
            } catch (IOException e2) {
                throw a(e2);
            }
        }

        @Override // okio.j, okio.y
        public long read(Buffer sink, long byteCount) throws IOException {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!(!this.f10685e)) {
                throw new IllegalStateException("closed".toString());
            }
            try {
                long j = delegate().read(sink, byteCount);
                if (this.c) {
                    this.c = false;
                    this.f10686f.getB().w(this.f10686f.getA());
                }
                if (j == -1) {
                    a(null);
                    return -1L;
                }
                long j2 = this.b + j;
                long j3 = this.a;
                if (j3 != -1 && j2 > j3) {
                    throw new ProtocolException("expected " + this.a + " bytes but received " + j2);
                }
                this.b = j2;
                if (j2 == j3) {
                    a(null);
                }
                return j;
            } catch (IOException e2) {
                throw a(e2);
            }
        }
    }

    public Exchange(RealCall call, EventListener eventListener, ExchangeFinder finder, ExchangeCodec codec) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(eventListener, "eventListener");
        Intrinsics.checkNotNullParameter(finder, "finder");
        Intrinsics.checkNotNullParameter(codec, "codec");
        this.a = call;
        this.b = eventListener;
        this.c = finder;
        this.f10678d = codec;
        this.f10680f = codec.getF10769e();
    }

    private final void s(IOException iOException) {
        this.c.h(iOException);
        this.f10678d.getF10769e().F(this.a, iOException);
    }

    public final <E extends IOException> E a(long j, boolean z, boolean z2, E e2) {
        if (e2 != null) {
            s(e2);
        }
        if (z2) {
            if (e2 != null) {
                this.b.s(this.a, e2);
            } else {
                this.b.q(this.a, j);
            }
        }
        if (z) {
            if (e2 != null) {
                this.b.x(this.a, e2);
            } else {
                this.b.v(this.a, j);
            }
        }
        return (E) this.a.r(this, z2, z, e2);
    }

    public final void b() {
        this.f10678d.cancel();
    }

    public final w c(Request request, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f10679e = z;
        RequestBody f10605d = request.getF10605d();
        Intrinsics.checkNotNull(f10605d);
        long jContentLength = f10605d.contentLength();
        this.b.r(this.a);
        return new a(this, this.f10678d.d(request, jContentLength), jContentLength);
    }

    public final void d() {
        this.f10678d.cancel();
        this.a.r(this, true, true, null);
    }

    public final void e() throws IOException {
        try {
            this.f10678d.finishRequest();
        } catch (IOException e2) {
            this.b.s(this.a, e2);
            s(e2);
            throw e2;
        }
    }

    public final void f() throws IOException {
        try {
            this.f10678d.flushRequest();
        } catch (IOException e2) {
            this.b.s(this.a, e2);
            s(e2);
            throw e2;
        }
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final RealCall getA() {
        return this.a;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final RealConnection getF10680f() {
        return this.f10680f;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final EventListener getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final ExchangeFinder getC() {
        return this.c;
    }

    public final boolean k() {
        return !Intrinsics.areEqual(this.c.getB().getI().getF10576f(), this.f10680f.y().getA().getI().getF10576f());
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final boolean getF10679e() {
        return this.f10679e;
    }

    public final void m() {
        this.f10678d.getF10769e().x();
    }

    public final void n() {
        this.a.r(this, true, false, null);
    }

    public final ResponseBody o(Response response) throws IOException {
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            String strHeader$default = Response.header$default(response, b4.I, null, 2, null);
            long jC = this.f10678d.c(response);
            return new RealResponseBody(strHeader$default, jC, Okio.buffer(new b(this, this.f10678d.a(response), jC)));
        } catch (IOException e2) {
            this.b.x(this.a, e2);
            s(e2);
            throw e2;
        }
    }

    public final Response.a p(boolean z) throws IOException {
        try {
            Response.a responseHeaders = this.f10678d.readResponseHeaders(z);
            if (responseHeaders != null) {
                responseHeaders.m(this);
            }
            return responseHeaders;
        } catch (IOException e2) {
            this.b.x(this.a, e2);
            s(e2);
            throw e2;
        }
    }

    public final void q(Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        this.b.y(this.a, response);
    }

    public final void r() {
        this.b.z(this.a);
    }

    public final void t(Request request) throws IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            this.b.u(this.a);
            this.f10678d.e(request);
            this.b.t(this.a, request);
        } catch (IOException e2) {
            this.b.s(this.a, e2);
            s(e2);
            throw e2;
        }
    }
}
