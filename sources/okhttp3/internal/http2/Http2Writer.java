package okhttp3.internal.http2;

import com.facebook.share.internal.ShareConstants;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;

/* JADX INFO: renamed from: okhttp3.internal.http2.e, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Http2Writer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u0000 :2\u00020\u0001:\u0001:B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\b\u0010\u0014\u001a\u00020\u0011H\u0016J\u0006\u0010\u0015\u001a\u00020\u0011J(\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u000f2\b\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u000fJ(\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\t2\u0006\u0010\u001a\u001a\u00020\u000fJ\u0006\u0010\u001e\u001a\u00020\u0011J&\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000fJ\u001e\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'J$\u0010(\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u000f2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*J\u0006\u0010,\u001a\u00020\u000fJ\u001e\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u00020\u000fJ$\u00101\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u00102\u001a\u00020\u000f2\f\u00103\u001a\b\u0012\u0004\u0012\u00020+0*J\u0016\u00104\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020%J\u000e\u00105\u001a\u00020\u00112\u0006\u00105\u001a\u00020\u0013J\u0016\u00106\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u00107\u001a\u000208J\u0018\u00109\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u000208H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lokhttp3/internal/http2/Http2Writer;", "Ljava/io/Closeable;", "sink", "Lokio/BufferedSink;", "client", "", "(Lokio/BufferedSink;Z)V", "closed", "hpackBuffer", "Lokio/Buffer;", "hpackWriter", "Lokhttp3/internal/http2/Hpack$Writer;", "getHpackWriter", "()Lokhttp3/internal/http2/Hpack$Writer;", "maxFrameSize", "", "applyAndAckSettings", "", "peerSettings", "Lokhttp3/internal/http2/Settings;", "close", "connectionPreface", "data", "outFinished", "streamId", ShareConstants.FEED_SOURCE_PARAM, "byteCount", "dataFrame", "flags", "buffer", "flush", "frameHeader", "length", "type", "goAway", "lastGoodStreamId", IronSourceConstants.EVENTS_ERROR_CODE, "Lokhttp3/internal/http2/ErrorCode;", "debugData", "", "headers", "headerBlock", "", "Lokhttp3/internal/http2/Header;", "maxDataLength", "ping", "ack", "payload1", "payload2", "pushPromise", "promisedStreamId", "requestHeaders", "rstStream", "settings", "windowUpdate", "windowSizeIncrement", "", "writeContinuationFrames", "Companion", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class Http2Writer implements Closeable {
    public static final a a = new a(null);
    private static final Logger b = Logger.getLogger(Http2.class.getName());
    private final okio.d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f10798d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Buffer f10799e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10800f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f10801g;
    private final Hpack.b h;

    /* JADX INFO: renamed from: okhttp3.internal.http2.e$a */
    /* JADX INFO: compiled from: Http2Writer.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/http2/Http2Writer$Companion;", "", "()V", "logger", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    public Http2Writer(okio.d sink, boolean z) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.c = sink;
        this.f10798d = z;
        Buffer buffer = new Buffer();
        this.f10799e = buffer;
        this.f10800f = 16384;
        this.h = new Hpack.b(0, false, buffer, 3, null);
    }

    private final void q(int i, long j) throws IOException {
        while (j > 0) {
            long jMin = Math.min(this.f10800f, j);
            j -= jMin;
            g(i, (int) jMin, 9, j == 0 ? 4 : 0);
            this.c.n(this.f10799e, jMin);
        }
    }

    public final synchronized void a(Settings peerSettings) throws IOException {
        Intrinsics.checkNotNullParameter(peerSettings, "peerSettings");
        if (this.f10801g) {
            throw new IOException("closed");
        }
        this.f10800f = peerSettings.e(this.f10800f);
        if (peerSettings.b() != -1) {
            this.h.e(peerSettings.b());
        }
        g(0, 0, 4, 1);
        this.c.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f10801g = true;
        this.c.close();
    }

    public final synchronized void d() throws IOException {
        if (this.f10801g) {
            throw new IOException("closed");
        }
        if (this.f10798d) {
            Logger logger = b;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(Util.format(Intrinsics.stringPlus(">> CONNECTION ", Http2.b.q()), new Object[0]));
            }
            this.c.P(Http2.b);
            this.c.flush();
        }
    }

    public final synchronized void e(boolean z, int i, Buffer buffer, int i2) throws IOException {
        if (this.f10801g) {
            throw new IOException("closed");
        }
        f(i, z ? 1 : 0, buffer, i2);
    }

    public final void f(int i, int i2, Buffer buffer, int i3) throws IOException {
        g(i, i3, 0, i2);
        if (i3 > 0) {
            okio.d dVar = this.c;
            Intrinsics.checkNotNull(buffer);
            dVar.n(buffer, i3);
        }
    }

    public final synchronized void flush() throws IOException {
        if (this.f10801g) {
            throw new IOException("closed");
        }
        this.c.flush();
    }

    public final void g(int i, int i2, int i3, int i4) throws IOException {
        Logger logger = b;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(Http2.a.c(false, i, i2, i3, i4));
        }
        if (!(i2 <= this.f10800f)) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.f10800f + ": " + i2).toString());
        }
        if (!((Integer.MIN_VALUE & i) == 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("reserved bit set: ", Integer.valueOf(i)).toString());
        }
        Util.writeMedium(this.c, i2);
        this.c.writeByte(i3 & 255);
        this.c.writeByte(i4 & 255);
        this.c.writeInt(i & Integer.MAX_VALUE);
    }

    public final synchronized void h(int i, ErrorCode errorCode, byte[] debugData) throws IOException {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(debugData, "debugData");
        if (this.f10801g) {
            throw new IOException("closed");
        }
        if (!(errorCode.getQ() != -1)) {
            throw new IllegalArgumentException("errorCode.httpCode == -1".toString());
        }
        g(0, debugData.length + 8, 7, 0);
        this.c.writeInt(i);
        this.c.writeInt(errorCode.getQ());
        if (!(debugData.length == 0)) {
            this.c.write(debugData);
        }
        this.c.flush();
    }

    public final synchronized void i(boolean z, int i, List<Header> headerBlock) throws IOException {
        Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
        if (this.f10801g) {
            throw new IOException("closed");
        }
        this.h.g(headerBlock);
        long jI = this.f10799e.I();
        long jMin = Math.min(this.f10800f, jI);
        int i2 = jI == jMin ? 4 : 0;
        if (z) {
            i2 |= 1;
        }
        g(i, (int) jMin, 1, i2);
        this.c.n(this.f10799e, jMin);
        if (jI > jMin) {
            q(i, jI - jMin);
        }
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final int getF10800f() {
        return this.f10800f;
    }

    public final synchronized void k(boolean z, int i, int i2) throws IOException {
        if (this.f10801g) {
            throw new IOException("closed");
        }
        g(0, 8, 6, z ? 1 : 0);
        this.c.writeInt(i);
        this.c.writeInt(i2);
        this.c.flush();
    }

    public final synchronized void l(int i, int i2, List<Header> requestHeaders) throws IOException {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        if (this.f10801g) {
            throw new IOException("closed");
        }
        this.h.g(requestHeaders);
        long jI = this.f10799e.I();
        int iMin = (int) Math.min(((long) this.f10800f) - 4, jI);
        long j = iMin;
        g(i, iMin + 4, 5, jI == j ? 4 : 0);
        this.c.writeInt(i2 & Integer.MAX_VALUE);
        this.c.n(this.f10799e, j);
        if (jI > j) {
            q(i, jI - j);
        }
    }

    public final synchronized void m(int i, ErrorCode errorCode) throws IOException {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        if (this.f10801g) {
            throw new IOException("closed");
        }
        if (!(errorCode.getQ() != -1)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        g(i, 4, 3, 0);
        this.c.writeInt(errorCode.getQ());
        this.c.flush();
    }

    public final synchronized void o(Settings settings) throws IOException {
        Intrinsics.checkNotNullParameter(settings, "settings");
        if (this.f10801g) {
            throw new IOException("closed");
        }
        int i = 0;
        g(0, settings.i() * 6, 4, 0);
        while (i < 10) {
            int i2 = i + 1;
            if (settings.f(i)) {
                this.c.writeShort(i != 4 ? i != 7 ? i : 4 : 3);
                this.c.writeInt(settings.a(i));
            }
            i = i2;
        }
        this.c.flush();
    }

    public final synchronized void p(int i, long j) throws IOException {
        if (this.f10801g) {
            throw new IOException("closed");
        }
        if (!(j != 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: ", Long.valueOf(j)).toString());
        }
        g(i, 4, 8, 0);
        this.c.writeInt((int) j);
        this.c.flush();
    }
}
