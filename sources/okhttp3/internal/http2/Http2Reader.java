package okhttp3.internal.http2;

import com.facebook.share.internal.ShareConstants;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt___RangesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.ByteString;
import okio.y;
import okio.z;

/* JADX INFO: compiled from: Http2Reader.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 #2\u00020\u0001:\u0003#$%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0016\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010J(\u0010\u0012\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u0017\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J.\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u001c\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u001d\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J\u0018\u0010\u001e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u001e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u001f\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010 \u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010!\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\"\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lokhttp3/internal/http2/Http2Reader;", "Ljava/io/Closeable;", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "client", "", "(Lokio/BufferedSource;Z)V", "continuation", "Lokhttp3/internal/http2/Http2Reader$ContinuationSource;", "hpackReader", "Lokhttp3/internal/http2/Hpack$Reader;", "close", "", "nextFrame", "requireSettings", "handler", "Lokhttp3/internal/http2/Http2Reader$Handler;", "readConnectionPreface", "readData", "length", "", "flags", "streamId", "readGoAway", "readHeaderBlock", "", "Lokhttp3/internal/http2/Header;", "padding", "readHeaders", "readPing", "readPriority", "readPushPromise", "readRstStream", "readSettings", "readWindowUpdate", "Companion", "ContinuationSource", "Handler", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class Http2Reader implements Closeable {
    public static final a a = new a(null);
    private static final Logger b;
    private final okio.e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f10772d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f10773e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Hpack.a f10774f;

    /* JADX INFO: compiled from: Http2Reader.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$Companion;", "", "()V", "logger", "Ljava/util/logging/Logger;", "getLogger", "()Ljava/util/logging/Logger;", "lengthWithoutPadding", "", "length", "flags", "padding", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final Logger a() {
            return Http2Reader.b;
        }

        public final int b(int i, int i2, int i3) throws IOException {
            if ((i2 & 8) != 0) {
                i--;
            }
            if (i3 <= i) {
                return i - i3;
            }
            throw new IOException("PROTOCOL_ERROR padding " + i3 + " > remaining length " + i);
        }
    }

    /* JADX INFO: compiled from: Http2Reader.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001aH\u0016J\b\u0010\u001e\u001a\u00020\u0018H\u0002J\b\u0010\u001f\u001a\u00020 H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\u001a\u0010\u000e\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\b\"\u0004\b\u0010\u0010\nR\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\b\"\u0004\b\u0016\u0010\n¨\u0006!"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$ContinuationSource;", "Lokio/Source;", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "(Lokio/BufferedSource;)V", "flags", "", "getFlags", "()I", "setFlags", "(I)V", "left", "getLeft", "setLeft", "length", "getLength", "setLength", "padding", "getPadding", "setPadding", "streamId", "getStreamId", "setStreamId", "close", "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "readContinuationHeader", "timeout", "Lokio/Timeout;", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class b implements y {
        private final okio.e a;
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f10775d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f10776e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f10777f;

        public b(okio.e source) {
            Intrinsics.checkNotNullParameter(source, "source");
            this.a = source;
        }

        private final void e() throws IOException {
            int i = this.f10775d;
            int medium = Util.readMedium(this.a);
            this.f10776e = medium;
            this.b = medium;
            int iAnd = Util.and(this.a.readByte(), 255);
            this.c = Util.and(this.a.readByte(), 255);
            a aVar = Http2Reader.a;
            if (aVar.a().isLoggable(Level.FINE)) {
                aVar.a().fine(Http2.a.c(true, this.f10775d, this.b, iAnd, this.c));
            }
            int i2 = this.a.readInt() & Integer.MAX_VALUE;
            this.f10775d = i2;
            if (iAnd == 9) {
                if (i2 != i) {
                    throw new IOException("TYPE_CONTINUATION streamId changed");
                }
            } else {
                throw new IOException(iAnd + " != TYPE_CONTINUATION");
            }
        }

        @Override // okio.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final int getF10776e() {
            return this.f10776e;
        }

        public final void f(int i) {
            this.c = i;
        }

        public final void g(int i) {
            this.f10776e = i;
        }

        public final void h(int i) {
            this.b = i;
        }

        public final void i(int i) {
            this.f10777f = i;
        }

        public final void j(int i) {
            this.f10775d = i;
        }

        @Override // okio.y
        public long read(Buffer sink, long byteCount) throws IOException {
            Intrinsics.checkNotNullParameter(sink, "sink");
            while (true) {
                int i = this.f10776e;
                if (i != 0) {
                    long j = this.a.read(sink, Math.min(byteCount, i));
                    if (j == -1) {
                        return -1L;
                    }
                    this.f10776e -= (int) j;
                    return j;
                }
                this.a.skip(this.f10777f);
                this.f10777f = 0;
                if ((this.c & 4) != 0) {
                    return -1L;
                }
                e();
            }
        }

        @Override // okio.y
        public z timeout() {
            return this.a.timeout();
        }
    }

    /* JADX INFO: compiled from: Http2Reader.kt */
    @Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J8\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH&J(\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0006H&J \u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\nH&J.\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH&J \u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0006H&J(\u0010#\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0011H&J&\u0010'\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dH&J\u0018\u0010*\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0018\u0010+\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u00112\u0006\u0010+\u001a\u00020-H&J\u0018\u0010.\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u000eH&¨\u00060"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$Handler;", "", "ackSettings", "", "alternateService", "streamId", "", "origin", "", "protocol", "Lokio/ByteString;", "host", "port", "maxAge", "", "data", "inFinished", "", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "length", "goAway", "lastGoodStreamId", IronSourceConstants.EVENTS_ERROR_CODE, "Lokhttp3/internal/http2/ErrorCode;", "debugData", "headers", "associatedStreamId", "headerBlock", "", "Lokhttp3/internal/http2/Header;", "ping", "ack", "payload1", "payload2", "priority", "streamDependency", "weight", "exclusive", "pushPromise", "promisedStreamId", "requestHeaders", "rstStream", "settings", "clearPrevious", "Lokhttp3/internal/http2/Settings;", "windowUpdate", "windowSizeIncrement", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public interface c {
        void a(boolean z, Settings settings);

        void ackSettings();

        void c(boolean z, int i, okio.e eVar, int i2) throws IOException;

        void d(int i, ErrorCode errorCode);

        void e(int i, ErrorCode errorCode, ByteString byteString);

        void headers(boolean inFinished, int streamId, int associatedStreamId, List<Header> headerBlock);

        void ping(boolean ack, int payload1, int payload2);

        void priority(int streamId, int streamDependency, int weight, boolean exclusive);

        void pushPromise(int streamId, int promisedStreamId, List<Header> requestHeaders) throws IOException;

        void windowUpdate(int streamId, long windowSizeIncrement);
    }

    static {
        Logger logger = Logger.getLogger(Http2.class.getName());
        Intrinsics.checkNotNullExpressionValue(logger, "getLogger(Http2::class.java.name)");
        b = logger;
    }

    public Http2Reader(okio.e source, boolean z) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.c = source;
        this.f10772d = z;
        b bVar = new b(source);
        this.f10773e = bVar;
        this.f10774f = new Hpack.a(bVar, 4096, 0, 4, null);
    }

    private final void c(c cVar, int i, int i2, int i3) throws IOException {
        if (i3 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
        }
        boolean z = (i2 & 1) != 0;
        if ((i2 & 32) != 0) {
            throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
        }
        int iAnd = (i2 & 8) != 0 ? Util.and(this.c.readByte(), 255) : 0;
        cVar.c(z, i3, this.c, a.b(i, i2, iAnd));
        this.c.skip(iAnd);
    }

    private final void d(c cVar, int i, int i2, int i3) throws IOException {
        if (i < 8) {
            throw new IOException(Intrinsics.stringPlus("TYPE_GOAWAY length < 8: ", Integer.valueOf(i)));
        }
        if (i3 != 0) {
            throw new IOException("TYPE_GOAWAY streamId != 0");
        }
        int i4 = this.c.readInt();
        int i5 = this.c.readInt();
        int i6 = i - 8;
        ErrorCode errorCodeA = ErrorCode.a.a(i5);
        if (errorCodeA == null) {
            throw new IOException(Intrinsics.stringPlus("TYPE_GOAWAY unexpected error code: ", Integer.valueOf(i5)));
        }
        ByteString byteString = ByteString.b;
        if (i6 > 0) {
            byteString = this.c.readByteString(i6);
        }
        cVar.e(i4, errorCodeA, byteString);
    }

    private final List<Header> e(int i, int i2, int i3, int i4) throws IOException {
        this.f10773e.g(i);
        b bVar = this.f10773e;
        bVar.h(bVar.getF10776e());
        this.f10773e.i(i2);
        this.f10773e.f(i3);
        this.f10773e.j(i4);
        this.f10774f.k();
        return this.f10774f.e();
    }

    private final void f(c cVar, int i, int i2, int i3) throws IOException {
        if (i3 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
        }
        boolean z = (i2 & 1) != 0;
        int iAnd = (i2 & 8) != 0 ? Util.and(this.c.readByte(), 255) : 0;
        if ((i2 & 32) != 0) {
            h(cVar, i3);
            i -= 5;
        }
        cVar.headers(z, i3, -1, e(a.b(i, i2, iAnd), iAnd, i2, i3));
    }

    private final void g(c cVar, int i, int i2, int i3) throws IOException {
        if (i != 8) {
            throw new IOException(Intrinsics.stringPlus("TYPE_PING length != 8: ", Integer.valueOf(i)));
        }
        if (i3 != 0) {
            throw new IOException("TYPE_PING streamId != 0");
        }
        cVar.ping((i2 & 1) != 0, this.c.readInt(), this.c.readInt());
    }

    private final void h(c cVar, int i) throws IOException {
        int i2 = this.c.readInt();
        cVar.priority(i, i2 & Integer.MAX_VALUE, Util.and(this.c.readByte(), 255) + 1, (Integer.MIN_VALUE & i2) != 0);
    }

    private final void i(c cVar, int i, int i2, int i3) throws IOException {
        if (i == 5) {
            if (i3 == 0) {
                throw new IOException("TYPE_PRIORITY streamId == 0");
            }
            h(cVar, i3);
        } else {
            throw new IOException("TYPE_PRIORITY length: " + i + " != 5");
        }
    }

    private final void j(c cVar, int i, int i2, int i3) throws IOException {
        if (i3 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
        }
        int iAnd = (i2 & 8) != 0 ? Util.and(this.c.readByte(), 255) : 0;
        cVar.pushPromise(i3, this.c.readInt() & Integer.MAX_VALUE, e(a.b(i - 4, i2, iAnd), iAnd, i2, i3));
    }

    private final void k(c cVar, int i, int i2, int i3) throws IOException {
        if (i != 4) {
            throw new IOException("TYPE_RST_STREAM length: " + i + " != 4");
        }
        if (i3 == 0) {
            throw new IOException("TYPE_RST_STREAM streamId == 0");
        }
        int i4 = this.c.readInt();
        ErrorCode errorCodeA = ErrorCode.a.a(i4);
        if (errorCodeA == null) {
            throw new IOException(Intrinsics.stringPlus("TYPE_RST_STREAM unexpected error code: ", Integer.valueOf(i4)));
        }
        cVar.d(i3, errorCodeA);
    }

    private final void l(c cVar, int i, int i2, int i3) throws IOException {
        int i4;
        if (i3 != 0) {
            throw new IOException("TYPE_SETTINGS streamId != 0");
        }
        if ((i2 & 1) != 0) {
            if (i != 0) {
                throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
            }
            cVar.ackSettings();
            return;
        }
        if (i % 6 != 0) {
            throw new IOException(Intrinsics.stringPlus("TYPE_SETTINGS length % 6 != 0: ", Integer.valueOf(i)));
        }
        Settings settings = new Settings();
        IntProgression intProgressionStep = RangesKt___RangesKt.step(RangesKt___RangesKt.until(0, i), 6);
        int b2 = intProgressionStep.getB();
        int c2 = intProgressionStep.getC();
        int f8961d = intProgressionStep.getF8961d();
        if ((f8961d > 0 && b2 <= c2) || (f8961d < 0 && c2 <= b2)) {
            while (true) {
                int i5 = b2 + f8961d;
                int iAnd = Util.and(this.c.readShort(), 65535);
                i4 = this.c.readInt();
                if (iAnd != 2) {
                    if (iAnd == 3) {
                        iAnd = 4;
                    } else if (iAnd == 4) {
                        iAnd = 7;
                        if (i4 < 0) {
                            throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                        }
                    } else if (iAnd == 5 && (i4 < 16384 || i4 > 16777215)) {
                        break;
                    }
                } else if (i4 != 0 && i4 != 1) {
                    throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                }
                settings.h(iAnd, i4);
                if (b2 == c2) {
                    break;
                } else {
                    b2 = i5;
                }
            }
            throw new IOException(Intrinsics.stringPlus("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: ", Integer.valueOf(i4)));
        }
        cVar.a(false, settings);
    }

    private final void m(c cVar, int i, int i2, int i3) throws IOException {
        if (i != 4) {
            throw new IOException(Intrinsics.stringPlus("TYPE_WINDOW_UPDATE length !=4: ", Integer.valueOf(i)));
        }
        long jAnd = Util.and(this.c.readInt(), 2147483647L);
        if (jAnd == 0) {
            throw new IOException("windowSizeIncrement was 0");
        }
        cVar.windowUpdate(i3, jAnd);
    }

    public final boolean a(boolean z, c handler) throws IOException {
        Intrinsics.checkNotNullParameter(handler, "handler");
        try {
            this.c.require(9L);
            int medium = Util.readMedium(this.c);
            if (medium > 16384) {
                throw new IOException(Intrinsics.stringPlus("FRAME_SIZE_ERROR: ", Integer.valueOf(medium)));
            }
            int iAnd = Util.and(this.c.readByte(), 255);
            int iAnd2 = Util.and(this.c.readByte(), 255);
            int i = this.c.readInt() & Integer.MAX_VALUE;
            Logger logger = b;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(Http2.a.c(true, i, medium, iAnd, iAnd2));
            }
            if (z && iAnd != 4) {
                throw new IOException(Intrinsics.stringPlus("Expected a SETTINGS frame but was ", Http2.a.b(iAnd)));
            }
            switch (iAnd) {
                case 0:
                    c(handler, medium, iAnd2, i);
                    return true;
                case 1:
                    f(handler, medium, iAnd2, i);
                    return true;
                case 2:
                    i(handler, medium, iAnd2, i);
                    return true;
                case 3:
                    k(handler, medium, iAnd2, i);
                    return true;
                case 4:
                    l(handler, medium, iAnd2, i);
                    return true;
                case 5:
                    j(handler, medium, iAnd2, i);
                    return true;
                case 6:
                    g(handler, medium, iAnd2, i);
                    return true;
                case 7:
                    d(handler, medium, iAnd2, i);
                    return true;
                case 8:
                    m(handler, medium, iAnd2, i);
                    return true;
                default:
                    this.c.skip(medium);
                    return true;
            }
        } catch (EOFException unused) {
            return false;
        }
    }

    public final void b(c handler) throws IOException {
        Intrinsics.checkNotNullParameter(handler, "handler");
        if (this.f10772d) {
            if (!a(true, handler)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        okio.e eVar = this.c;
        ByteString byteString = Http2.b;
        ByteString byteString2 = eVar.readByteString(byteString.F());
        Logger logger = b;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(Util.format(Intrinsics.stringPlus("<< CONNECTION ", byteString2.q()), new Object[0]));
        }
        if (!Intrinsics.areEqual(byteString, byteString2)) {
            throw new IOException(Intrinsics.stringPlus("Expected a connection header but was ", byteString2.K()));
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.c.close();
    }
}
