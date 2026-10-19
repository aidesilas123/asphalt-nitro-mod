package okhttp3.internal.http2;

import android.support.v4.media.session.PlaybackStateCompat;
import com.facebook.share.internal.ShareConstants;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.v;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.w;
import okio.y;
import okio.z;

/* JADX INFO: renamed from: okhttp3.internal.http2.d, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Http2Stream.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 _2\u00020\u0001:\u0004_`abB1\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u000e\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020#J\r\u0010C\u001a\u00020AH\u0000¢\u0006\u0002\bDJ\r\u0010E\u001a\u00020AH\u0000¢\u0006\u0002\bFJ\u0018\u0010G\u001a\u00020A2\u0006\u0010H\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u001a\u0010I\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u000e\u0010J\u001a\u00020A2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010K\u001a\u00020A2\u0006\u0010L\u001a\u00020\nJ\u0006\u0010M\u001a\u00020NJ\u0006\u0010O\u001a\u00020PJ\u0006\u0010,\u001a\u00020QJ\u0016\u0010R\u001a\u00020A2\u0006\u00104\u001a\u00020S2\u0006\u0010T\u001a\u00020\u0003J\u0016\u0010U\u001a\u00020A2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010V\u001a\u00020A2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010W\u001a\u00020\nJ\u0006\u0010L\u001a\u00020\nJ\r\u0010X\u001a\u00020AH\u0000¢\u0006\u0002\bYJ$\u0010Z\u001a\u00020A2\f\u0010[\u001a\b\u0012\u0004\u0012\u00020]0\\2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010^\u001a\u00020\u0007J\u0006\u0010>\u001a\u00020QR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u000f8@X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\n0\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0011\u0010!\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b!\u0010 R$\u0010$\u001a\u00020#2\u0006\u0010\"\u001a\u00020#@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R$\u0010)\u001a\u00020#2\u0006\u0010\"\u001a\u00020#@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010&\"\u0004\b+\u0010(R\u0018\u0010,\u001a\u00060-R\u00020\u0000X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0018\u00100\u001a\u000601R\u00020\u0000X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0018\u00104\u001a\u000605R\u00020\u0000X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R$\u00108\u001a\u00020#2\u0006\u0010\"\u001a\u00020#@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010&\"\u0004\b:\u0010(R$\u0010;\u001a\u00020#2\u0006\u0010\"\u001a\u00020#@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010&\"\u0004\b=\u0010(R\u0018\u0010>\u001a\u00060-R\u00020\u0000X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b?\u0010/¨\u0006c"}, d2 = {"Lokhttp3/internal/http2/Http2Stream;", "", "id", "", "connection", "Lokhttp3/internal/http2/Http2Connection;", "outFinished", "", "inFinished", "headers", "Lokhttp3/Headers;", "(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V", "getConnection", "()Lokhttp3/internal/http2/Http2Connection;", IronSourceConstants.EVENTS_ERROR_CODE, "Lokhttp3/internal/http2/ErrorCode;", "getErrorCode$okhttp", "()Lokhttp3/internal/http2/ErrorCode;", "setErrorCode$okhttp", "(Lokhttp3/internal/http2/ErrorCode;)V", "errorException", "Ljava/io/IOException;", "getErrorException$okhttp", "()Ljava/io/IOException;", "setErrorException$okhttp", "(Ljava/io/IOException;)V", "hasResponseHeaders", "headersQueue", "Ljava/util/ArrayDeque;", "getId", "()I", "isLocallyInitiated", "()Z", "isOpen", "<set-?>", "", "readBytesAcknowledged", "getReadBytesAcknowledged", "()J", "setReadBytesAcknowledged$okhttp", "(J)V", "readBytesTotal", "getReadBytesTotal", "setReadBytesTotal$okhttp", "readTimeout", "Lokhttp3/internal/http2/Http2Stream$StreamTimeout;", "getReadTimeout$okhttp", "()Lokhttp3/internal/http2/Http2Stream$StreamTimeout;", "sink", "Lokhttp3/internal/http2/Http2Stream$FramingSink;", "getSink$okhttp", "()Lokhttp3/internal/http2/Http2Stream$FramingSink;", ShareConstants.FEED_SOURCE_PARAM, "Lokhttp3/internal/http2/Http2Stream$FramingSource;", "getSource$okhttp", "()Lokhttp3/internal/http2/Http2Stream$FramingSource;", "writeBytesMaximum", "getWriteBytesMaximum", "setWriteBytesMaximum$okhttp", "writeBytesTotal", "getWriteBytesTotal", "setWriteBytesTotal$okhttp", "writeTimeout", "getWriteTimeout$okhttp", "addBytesToWriteWindow", "", "delta", "cancelStreamIfNecessary", "cancelStreamIfNecessary$okhttp", "checkOutNotClosed", "checkOutNotClosed$okhttp", "close", "rstStatusCode", "closeInternal", "closeLater", "enqueueTrailers", "trailers", "getSink", "Lokio/Sink;", "getSource", "Lokio/Source;", "Lokio/Timeout;", "receiveData", "Lokio/BufferedSource;", "length", "receiveHeaders", "receiveRstStream", "takeHeaders", "waitForIo", "waitForIo$okhttp", "writeHeaders", "responseHeaders", "", "Lokhttp3/internal/http2/Header;", "flushHeaders", "Companion", "FramingSink", "FramingSource", "StreamTimeout", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class Http2Stream {
    public static final a a = new a(null);
    private final int b;
    private final Http2Connection c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f10788d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f10789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f10790f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f10791g;
    private final ArrayDeque<Headers> h;
    private boolean i;
    private final c j;
    private final b k;
    private final d l;
    private final d m;
    private ErrorCode n;
    private IOException o;

    /* JADX INFO: renamed from: okhttp3.internal.http2.d$a */
    /* JADX INFO: compiled from: Http2Stream.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$Companion;", "", "()V", "EMIT_BUFFER_SIZE", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: okhttp3.internal.http2.d$b */
    /* JADX INFO: compiled from: Http2Stream.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\b\u0080\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0003H\u0002J\b\u0010\u0018\u001a\u00020\u0015H\u0016J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\tR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$FramingSink;", "Lokio/Sink;", "finished", "", "(Lokhttp3/internal/http2/Http2Stream;Z)V", "closed", "getClosed", "()Z", "setClosed", "(Z)V", "getFinished", "setFinished", "sendBuffer", "Lokio/Buffer;", "trailers", "Lokhttp3/Headers;", "getTrailers", "()Lokhttp3/Headers;", "setTrailers", "(Lokhttp3/Headers;)V", "close", "", "emitFrame", "outFinishedOnLastFrame", "flush", "timeout", "Lokio/Timeout;", "write", ShareConstants.FEED_SOURCE_PARAM, "byteCount", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public final class b implements w {
        private boolean a;
        private final Buffer b;
        private Headers c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f10792d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Http2Stream f10793e;

        public b(Http2Stream this$0, boolean z) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.f10793e = this$0;
            this.a = z;
            this.b = new Buffer();
        }

        private final void a(boolean z) throws IOException {
            long jMin;
            boolean z2;
            Http2Stream http2Stream = this.f10793e;
            synchronized (http2Stream) {
                http2Stream.getM().j();
                while (http2Stream.getF10790f() >= http2Stream.getF10791g() && !getA() && !getF10792d() && http2Stream.h() == null) {
                    try {
                        http2Stream.F();
                    } finally {
                        http2Stream.getM().q();
                    }
                }
                http2Stream.getM().q();
                http2Stream.c();
                jMin = Math.min(http2Stream.getF10791g() - http2Stream.getF10790f(), this.b.I());
                http2Stream.D(http2Stream.getF10790f() + jMin);
                z2 = z && jMin == this.b.I();
                v vVar = v.a;
            }
            this.f10793e.getM().j();
            try {
                this.f10793e.getC().V(this.f10793e.getB(), z2, this.b, jMin);
            } finally {
                http2Stream = this.f10793e;
            }
        }

        @Override // okio.w, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            Http2Stream http2Stream = this.f10793e;
            if (Util.h && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + http2Stream);
            }
            Http2Stream http2Stream2 = this.f10793e;
            synchronized (http2Stream2) {
                if (getF10792d()) {
                    return;
                }
                boolean z = http2Stream2.h() == null;
                v vVar = v.a;
                if (!this.f10793e.getK().a) {
                    boolean z2 = this.b.I() > 0;
                    if (this.c != null) {
                        while (this.b.I() > 0) {
                            a(false);
                        }
                        Http2Connection c = this.f10793e.getC();
                        int b = this.f10793e.getB();
                        Headers headers = this.c;
                        Intrinsics.checkNotNull(headers);
                        c.W(b, z, Util.toHeaderList(headers));
                    } else if (z2) {
                        while (this.b.I() > 0) {
                            a(true);
                        }
                    } else if (z) {
                        this.f10793e.getC().V(this.f10793e.getB(), true, null, 0L);
                    }
                }
                synchronized (this.f10793e) {
                    f(true);
                    v vVar2 = v.a;
                }
                this.f10793e.getC().flush();
                this.f10793e.b();
            }
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final boolean getF10792d() {
            return this.f10792d;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final boolean getA() {
            return this.a;
        }

        public final void f(boolean z) {
            this.f10792d = z;
        }

        @Override // okio.w, java.io.Flushable
        public void flush() throws IOException {
            Http2Stream http2Stream = this.f10793e;
            if (Util.h && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + http2Stream);
            }
            Http2Stream http2Stream2 = this.f10793e;
            synchronized (http2Stream2) {
                http2Stream2.c();
                v vVar = v.a;
            }
            while (this.b.I() > 0) {
                a(false);
                this.f10793e.getC().flush();
            }
        }

        @Override // okio.w
        public void n(Buffer source, long j) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            Http2Stream http2Stream = this.f10793e;
            if (!Util.h || !Thread.holdsLock(http2Stream)) {
                this.b.n(source, j);
                while (this.b.I() >= PlaybackStateCompat.ACTION_PREPARE) {
                    a(false);
                }
            } else {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + http2Stream);
            }
        }

        @Override // okio.w
        public z timeout() {
            return this.f10793e.getM();
        }
    }

    /* JADX INFO: renamed from: okhttp3.internal.http2.d$c */
    /* JADX INFO: compiled from: Http2Stream.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0003H\u0016J\u001d\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u0003H\u0000¢\u0006\u0002\b\"J\b\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0003H\u0002R\u001a\u0010\u0007\u001a\u00020\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006&"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$FramingSource;", "Lokio/Source;", "maxByteCount", "", "finished", "", "(Lokhttp3/internal/http2/Http2Stream;JZ)V", "closed", "getClosed$okhttp", "()Z", "setClosed$okhttp", "(Z)V", "getFinished$okhttp", "setFinished$okhttp", "readBuffer", "Lokio/Buffer;", "getReadBuffer", "()Lokio/Buffer;", "receiveBuffer", "getReceiveBuffer", "trailers", "Lokhttp3/Headers;", "getTrailers", "()Lokhttp3/Headers;", "setTrailers", "(Lokhttp3/Headers;)V", "close", "", "read", "sink", "byteCount", "receive", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "receive$okhttp", "timeout", "Lokio/Timeout;", "updateConnectionFlowControl", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public final class c implements y {
        private final long a;
        private boolean b;
        private final Buffer c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Buffer f10794d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Headers f10795e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f10796f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Http2Stream f10797g;

        public c(Http2Stream this$0, long j, boolean z) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.f10797g = this$0;
            this.a = j;
            this.b = z;
            this.c = new Buffer();
            this.f10794d = new Buffer();
        }

        private final void l(long j) {
            Http2Stream http2Stream = this.f10797g;
            if (!Util.h || !Thread.holdsLock(http2Stream)) {
                this.f10797g.getC().U(j);
                return;
            }
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + http2Stream);
        }

        @Override // okio.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long jI;
            Http2Stream http2Stream = this.f10797g;
            synchronized (http2Stream) {
                i(true);
                jI = getF10794d().I();
                getF10794d().d();
                http2Stream.notifyAll();
                v vVar = v.a;
            }
            if (jI > 0) {
                l(jI);
            }
            this.f10797g.b();
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final boolean getF10796f() {
            return this.f10796f;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final boolean getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final Buffer getF10794d() {
            return this.f10794d;
        }

        /* JADX INFO: renamed from: g, reason: from getter */
        public final Buffer getC() {
            return this.c;
        }

        public final void h(okio.e source, long j) throws IOException {
            boolean b;
            boolean z;
            boolean z2;
            long jI;
            Intrinsics.checkNotNullParameter(source, "source");
            Http2Stream http2Stream = this.f10797g;
            if (Util.h && Thread.holdsLock(http2Stream)) {
                throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + http2Stream);
            }
            while (j > 0) {
                synchronized (this.f10797g) {
                    b = getB();
                    z = true;
                    z2 = getF10794d().I() + j > this.a;
                    v vVar = v.a;
                }
                if (z2) {
                    source.skip(j);
                    this.f10797g.f(ErrorCode.FLOW_CONTROL_ERROR);
                    return;
                }
                if (b) {
                    source.skip(j);
                    return;
                }
                long j2 = source.read(this.c, j);
                if (j2 == -1) {
                    throw new EOFException();
                }
                j -= j2;
                Http2Stream http2Stream2 = this.f10797g;
                synchronized (http2Stream2) {
                    if (getF10796f()) {
                        jI = getC().I();
                        getC().d();
                    } else {
                        if (getF10794d().I() != 0) {
                            z = false;
                        }
                        getF10794d().D(getC());
                        if (z) {
                            http2Stream2.notifyAll();
                        }
                        jI = 0;
                    }
                }
                if (jI > 0) {
                    l(jI);
                }
            }
        }

        public final void i(boolean z) {
            this.f10796f = z;
        }

        public final void j(boolean z) {
            this.b = z;
        }

        public final void k(Headers headers) {
            this.f10795e = headers;
        }

        @Override // okio.y
        public long read(Buffer sink, long byteCount) throws IOException {
            long j;
            boolean z;
            Intrinsics.checkNotNullParameter(sink, "sink");
            long j2 = 0;
            if (!(byteCount >= 0)) {
                throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(byteCount)).toString());
            }
            while (true) {
                IOException o = null;
                Http2Stream http2Stream = this.f10797g;
                synchronized (http2Stream) {
                    http2Stream.getL().j();
                    try {
                        if (http2Stream.h() != null && (o = http2Stream.getO()) == null) {
                            ErrorCode errorCodeH = http2Stream.h();
                            Intrinsics.checkNotNull(errorCodeH);
                            o = new StreamResetException(errorCodeH);
                        }
                        if (getF10796f()) {
                            throw new IOException("stream closed");
                        }
                        if (getF10794d().I() > j2) {
                            j = getF10794d().read(sink, Math.min(byteCount, getF10794d().I()));
                            http2Stream.C(http2Stream.getF10788d() + j);
                            long f10788d = http2Stream.getF10788d() - http2Stream.getF10789e();
                            if (o == null && f10788d >= http2Stream.getC().getU().c() / 2) {
                                http2Stream.getC().a0(http2Stream.getB(), f10788d);
                                http2Stream.B(http2Stream.getF10788d());
                            }
                        } else if (getB() || o != null) {
                            j = -1;
                        } else {
                            http2Stream.F();
                            j = -1;
                            z = true;
                            http2Stream.getL().q();
                            v vVar = v.a;
                        }
                        z = false;
                        http2Stream.getL().q();
                        v vVar2 = v.a;
                    } catch (Throwable th) {
                        http2Stream.getL().q();
                        throw th;
                    }
                }
                if (!z) {
                    if (j != -1) {
                        l(j);
                        return j;
                    }
                    if (o == null) {
                        return -1L;
                    }
                    throw o;
                }
                j2 = 0;
            }
        }

        @Override // okio.y
        public z timeout() {
            return this.f10797g.getL();
        }
    }

    /* JADX INFO: renamed from: okhttp3.internal.http2.d$d */
    /* JADX INFO: compiled from: Http2Stream.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014J\b\u0010\b\u001a\u00020\u0004H\u0014¨\u0006\t"}, d2 = {"Lokhttp3/internal/http2/Http2Stream$StreamTimeout;", "Lokio/AsyncTimeout;", "(Lokhttp3/internal/http2/Http2Stream;)V", "exitAndThrowIfTimedOut", "", "newTimeoutException", "Ljava/io/IOException;", "cause", "timedOut", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public final class d extends AsyncTimeout {
        final /* synthetic */ Http2Stream m;

        public d(Http2Stream this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.m = this$0;
        }

        @Override // okio.AsyncTimeout
        protected IOException l(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // okio.AsyncTimeout
        protected void p() {
            this.m.f(ErrorCode.CANCEL);
            this.m.getC().K();
        }

        public final void q() throws IOException {
            if (k()) {
                throw l(null);
            }
        }
    }

    public Http2Stream(int i, Http2Connection connection, boolean z, boolean z2, Headers headers) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        this.b = i;
        this.c = connection;
        this.f10791g = connection.getV().c();
        ArrayDeque<Headers> arrayDeque = new ArrayDeque<>();
        this.h = arrayDeque;
        this.j = new c(this, connection.getU().c(), z2);
        this.k = new b(this, z);
        this.l = new d(this);
        this.m = new d(this);
        if (headers == null) {
            if (!t()) {
                throw new IllegalStateException("remotely-initiated streams should have headers".toString());
            }
        } else {
            if (!(!t())) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet".toString());
            }
            arrayDeque.add(headers);
        }
    }

    private final boolean e(ErrorCode errorCode, IOException iOException) {
        if (Util.h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            if (h() != null) {
                return false;
            }
            if (getJ().getB() && getK().getA()) {
                return false;
            }
            z(errorCode);
            A(iOException);
            notifyAll();
            v vVar = v.a;
            this.c.J(this.b);
            return true;
        }
    }

    public final void A(IOException iOException) {
        this.o = iOException;
    }

    public final void B(long j) {
        this.f10789e = j;
    }

    public final void C(long j) {
        this.f10788d = j;
    }

    public final void D(long j) {
        this.f10790f = j;
    }

    public final synchronized Headers E() throws IOException {
        Headers headersRemoveFirst;
        this.l.j();
        while (this.h.isEmpty() && this.n == null) {
            try {
                F();
            } catch (Throwable th) {
                this.l.q();
                throw th;
            }
        }
        this.l.q();
        if (!(!this.h.isEmpty())) {
            IOException iOException = this.o;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCode = this.n;
            Intrinsics.checkNotNull(errorCode);
            throw new StreamResetException(errorCode);
        }
        headersRemoveFirst = this.h.removeFirst();
        Intrinsics.checkNotNullExpressionValue(headersRemoveFirst, "headersQueue.removeFirst()");
        return headersRemoveFirst;
    }

    public final void F() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public final z G() {
        return this.m;
    }

    public final void a(long j) {
        this.f10791g += j;
        if (j > 0) {
            notifyAll();
        }
    }

    public final void b() throws IOException {
        boolean z;
        boolean zU;
        if (Util.h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            z = !getJ().getB() && getJ().getF10796f() && (getK().getA() || getK().getF10792d());
            zU = u();
            v vVar = v.a;
        }
        if (z) {
            d(ErrorCode.CANCEL, null);
        } else {
            if (zU) {
                return;
            }
            this.c.J(this.b);
        }
    }

    public final void c() throws IOException {
        if (this.k.getF10792d()) {
            throw new IOException("stream closed");
        }
        if (this.k.getA()) {
            throw new IOException("stream finished");
        }
        if (this.n != null) {
            IOException iOException = this.o;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCode = this.n;
            Intrinsics.checkNotNull(errorCode);
            throw new StreamResetException(errorCode);
        }
    }

    public final void d(ErrorCode rstStatusCode, IOException iOException) throws IOException {
        Intrinsics.checkNotNullParameter(rstStatusCode, "rstStatusCode");
        if (e(rstStatusCode, iOException)) {
            this.c.Y(this.b, rstStatusCode);
        }
    }

    public final void f(ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        if (e(errorCode, null)) {
            this.c.Z(this.b, errorCode);
        }
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final Http2Connection getC() {
        return this.c;
    }

    public final synchronized ErrorCode h() {
        return this.n;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final IOException getO() {
        return this.o;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final int getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final long getF10789e() {
        return this.f10789e;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final long getF10788d() {
        return this.f10788d;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public final d getL() {
        return this.l;
    }

    public final w n() {
        synchronized (this) {
            if (!(this.i || t())) {
                throw new IllegalStateException("reply before requesting the sink".toString());
            }
            v vVar = v.a;
        }
        return this.k;
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final b getK() {
        return this.k;
    }

    /* JADX INFO: renamed from: p, reason: from getter */
    public final c getJ() {
        return this.j;
    }

    /* JADX INFO: renamed from: q, reason: from getter */
    public final long getF10791g() {
        return this.f10791g;
    }

    /* JADX INFO: renamed from: r, reason: from getter */
    public final long getF10790f() {
        return this.f10790f;
    }

    /* JADX INFO: renamed from: s, reason: from getter */
    public final d getM() {
        return this.m;
    }

    public final boolean t() {
        return this.c.getC() == ((this.b & 1) == 1);
    }

    public final synchronized boolean u() {
        if (this.n != null) {
            return false;
        }
        if ((this.j.getB() || this.j.getF10796f()) && (this.k.getA() || this.k.getF10792d())) {
            if (this.i) {
                return false;
            }
        }
        return true;
    }

    public final z v() {
        return this.l;
    }

    public final void w(okio.e source, int i) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!Util.h || !Thread.holdsLock(this)) {
            this.j.h(source, i);
            return;
        }
        throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
    }

    public final void x(Headers headers, boolean z) {
        boolean zU;
        Intrinsics.checkNotNullParameter(headers, "headers");
        if (Util.h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this) {
            if (this.i && z) {
                getJ().k(headers);
            } else {
                this.i = true;
                this.h.add(headers);
            }
            if (z) {
                getJ().j(true);
            }
            zU = u();
            notifyAll();
            v vVar = v.a;
        }
        if (zU) {
            return;
        }
        this.c.J(this.b);
    }

    public final synchronized void y(ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        if (this.n == null) {
            this.n = errorCode;
            notifyAll();
        }
    }

    public final void z(ErrorCode errorCode) {
        this.n = errorCode;
    }
}
