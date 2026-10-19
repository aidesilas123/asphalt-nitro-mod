package okhttp3.internal.http2;

import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.j0;
import kotlin.jvm.internal.l0;
import kotlin.jvm.internal.n;
import kotlin.v;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.ByteString;
import okio.Okio;

/* JADX INFO: compiled from: Http2Connection.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u0000 \u0099\u00012\u00020\u0001:\b\u0098\u0001\u0099\u0001\u009a\u0001\u009b\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010P\u001a\u00020QJ\b\u0010R\u001a\u00020QH\u0016J'\u0010R\u001a\u00020Q2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020T2\b\u0010V\u001a\u0004\u0018\u00010WH\u0000¢\u0006\u0002\bXJ\u0012\u0010Y\u001a\u00020Q2\b\u0010Z\u001a\u0004\u0018\u00010WH\u0002J\u0006\u0010[\u001a\u00020QJ\u0010\u0010\\\u001a\u0004\u0018\u00010B2\u0006\u0010]\u001a\u00020\u0012J\u000e\u0010^\u001a\u00020\t2\u0006\u0010_\u001a\u00020\u0006J&\u0010`\u001a\u00020B2\u0006\u0010a\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010e\u001a\u00020\tH\u0002J\u001c\u0010`\u001a\u00020B2\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010e\u001a\u00020\tJ\u0006\u0010f\u001a\u00020\u0012J-\u0010g\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0006\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020\u00122\u0006\u0010l\u001a\u00020\tH\u0000¢\u0006\u0002\bmJ+\u0010n\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010l\u001a\u00020\tH\u0000¢\u0006\u0002\boJ#\u0010p\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0cH\u0000¢\u0006\u0002\bqJ\u001d\u0010r\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0006\u0010s\u001a\u00020TH\u0000¢\u0006\u0002\btJ$\u0010u\u001a\u00020B2\u0006\u0010a\u001a\u00020\u00122\f\u0010b\u001a\b\u0012\u0004\u0012\u00020d0c2\u0006\u0010e\u001a\u00020\tJ\u0015\u0010v\u001a\u00020\t2\u0006\u0010h\u001a\u00020\u0012H\u0000¢\u0006\u0002\bwJ\u0017\u0010x\u001a\u0004\u0018\u00010B2\u0006\u0010h\u001a\u00020\u0012H\u0000¢\u0006\u0002\byJ\r\u0010z\u001a\u00020QH\u0000¢\u0006\u0002\b{J\u000e\u0010|\u001a\u00020Q2\u0006\u0010}\u001a\u00020&J\u000e\u0010~\u001a\u00020Q2\u0006\u0010\u007f\u001a\u00020TJ\u001e\u0010\u0080\u0001\u001a\u00020Q2\t\b\u0002\u0010\u0081\u0001\u001a\u00020\t2\b\b\u0002\u0010E\u001a\u00020FH\u0007J\u0018\u0010\u0082\u0001\u001a\u00020Q2\u0007\u0010\u0083\u0001\u001a\u00020\u0006H\u0000¢\u0006\u0003\b\u0084\u0001J,\u0010\u0085\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0007\u0010\u0086\u0001\u001a\u00020\t2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u00012\u0006\u0010k\u001a\u00020\u0006J/\u0010\u0089\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0007\u0010\u0086\u0001\u001a\u00020\t2\r\u0010\u008a\u0001\u001a\b\u0012\u0004\u0012\u00020d0cH\u0000¢\u0006\u0003\b\u008b\u0001J\u0007\u0010\u008c\u0001\u001a\u00020QJ\"\u0010\u008c\u0001\u001a\u00020Q2\u0007\u0010\u008d\u0001\u001a\u00020\t2\u0007\u0010\u008e\u0001\u001a\u00020\u00122\u0007\u0010\u008f\u0001\u001a\u00020\u0012J\u0007\u0010\u0090\u0001\u001a\u00020QJ\u001f\u0010\u0091\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0006\u0010\u007f\u001a\u00020TH\u0000¢\u0006\u0003\b\u0092\u0001J\u001f\u0010\u0093\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0006\u0010s\u001a\u00020TH\u0000¢\u0006\u0003\b\u0094\u0001J \u0010\u0095\u0001\u001a\u00020Q2\u0006\u0010h\u001a\u00020\u00122\u0007\u0010\u0096\u0001\u001a\u00020\u0006H\u0000¢\u0006\u0003\b\u0097\u0001R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u00020\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001b\"\u0004\b$\u0010\u001dR\u0011\u0010%\u001a\u00020&¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020&X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010(\"\u0004\b+\u0010,R\u000e\u0010-\u001a\u00020.X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u001e\u00105\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b6\u00104R\u0015\u00107\u001a\u000608R\u00020\u0000¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u000e\u0010;\u001a\u000200X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010<\u001a\u00020=X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R \u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020B0AX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u0010DR\u000e\u0010E\u001a\u00020FX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010G\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bH\u00104R\u001e\u0010I\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bJ\u00104R\u0011\u0010K\u001a\u00020L¢\u0006\b\n\u0000\u001a\u0004\bM\u0010NR\u000e\u0010O\u001a\u000200X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u009c\u0001"}, d2 = {"Lokhttp3/internal/http2/Http2Connection;", "Ljava/io/Closeable;", "builder", "Lokhttp3/internal/http2/Http2Connection$Builder;", "(Lokhttp3/internal/http2/Http2Connection$Builder;)V", "awaitPingsSent", "", "awaitPongsReceived", "client", "", "getClient$okhttp", "()Z", "connectionName", "", "getConnectionName$okhttp", "()Ljava/lang/String;", "currentPushRequests", "", "", "degradedPingsSent", "degradedPongDeadlineNs", "degradedPongsReceived", "intervalPingsSent", "intervalPongsReceived", "isShutdown", "lastGoodStreamId", "getLastGoodStreamId$okhttp", "()I", "setLastGoodStreamId$okhttp", "(I)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "nextStreamId", "getNextStreamId$okhttp", "setNextStreamId$okhttp", "okHttpSettings", "Lokhttp3/internal/http2/Settings;", "getOkHttpSettings", "()Lokhttp3/internal/http2/Settings;", "peerSettings", "getPeerSettings", "setPeerSettings", "(Lokhttp3/internal/http2/Settings;)V", "pushObserver", "Lokhttp3/internal/http2/PushObserver;", "pushQueue", "Lokhttp3/internal/concurrent/TaskQueue;", "<set-?>", "readBytesAcknowledged", "getReadBytesAcknowledged", "()J", "readBytesTotal", "getReadBytesTotal", "readerRunnable", "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "getReaderRunnable", "()Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "settingsListenerQueue", "socket", "Ljava/net/Socket;", "getSocket$okhttp", "()Ljava/net/Socket;", "streams", "", "Lokhttp3/internal/http2/Http2Stream;", "getStreams$okhttp", "()Ljava/util/Map;", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "writeBytesMaximum", "getWriteBytesMaximum", "writeBytesTotal", "getWriteBytesTotal", "writer", "Lokhttp3/internal/http2/Http2Writer;", "getWriter", "()Lokhttp3/internal/http2/Http2Writer;", "writerQueue", "awaitPong", "", "close", "connectionCode", "Lokhttp3/internal/http2/ErrorCode;", "streamCode", "cause", "Ljava/io/IOException;", "close$okhttp", "failConnection", "e", "flush", "getStream", "id", "isHealthy", "nowNs", "newStream", "associatedStreamId", "requestHeaders", "", "Lokhttp3/internal/http2/Header;", "out", "openStreamCount", "pushDataLater", "streamId", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "byteCount", "inFinished", "pushDataLater$okhttp", "pushHeadersLater", "pushHeadersLater$okhttp", "pushRequestLater", "pushRequestLater$okhttp", "pushResetLater", IronSourceConstants.EVENTS_ERROR_CODE, "pushResetLater$okhttp", "pushStream", "pushedStream", "pushedStream$okhttp", "removeStream", "removeStream$okhttp", "sendDegradedPingLater", "sendDegradedPingLater$okhttp", "setSettings", "settings", "shutdown", "statusCode", "start", "sendConnectionPreface", "updateConnectionFlowControl", "read", "updateConnectionFlowControl$okhttp", "writeData", "outFinished", "buffer", "Lokio/Buffer;", "writeHeaders", "alternating", "writeHeaders$okhttp", "writePing", "reply", "payload1", "payload2", "writePingAndAwaitPong", "writeSynReset", "writeSynReset$okhttp", "writeSynResetLater", "writeSynResetLater$okhttp", "writeWindowUpdateLater", "unacknowledgedBytesRead", "writeWindowUpdateLater$okhttp", "Builder", "Companion", "Listener", "ReaderRunnable", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class Http2Connection implements Closeable {
    public static final a a = new a(null);
    private static final Settings b;
    private final Socket A;
    private final Http2Writer B;
    private final c C;
    private final Set<Integer> D;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f10724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Integer, Http2Stream> f10725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f10726f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10727g;
    private int h;
    private boolean i;
    private final TaskRunner j;
    private final TaskQueue k;
    private final TaskQueue l;
    private final TaskQueue m;
    private final PushObserver n;
    private long o;
    private long p;
    private long q;
    private long r;
    private long s;
    private long t;
    private final Settings u;
    private Settings v;
    private long w;
    private long x;
    private long y;
    private long z;

    /* JADX INFO: compiled from: Http2Connection.kt */
    @Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u00107\u001a\u000208J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001eJ.\u0010)\u001a\u00020\u00002\u0006\u0010)\u001a\u00020*2\b\b\u0002\u00109\u001a\u00020\f2\b\b\u0002\u0010/\u001a\u0002002\b\b\u0002\u0010#\u001a\u00020$H\u0007R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001a\u0010)\u001a\u00020*X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001a\u0010/\u001a\u000200X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u00106¨\u0006:"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Builder;", "", "client", "", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "(ZLokhttp3/internal/concurrent/TaskRunner;)V", "getClient$okhttp", "()Z", "setClient$okhttp", "(Z)V", "connectionName", "", "getConnectionName$okhttp", "()Ljava/lang/String;", "setConnectionName$okhttp", "(Ljava/lang/String;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lokhttp3/internal/http2/Http2Connection$Listener;", "getListener$okhttp", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "setListener$okhttp", "(Lokhttp3/internal/http2/Http2Connection$Listener;)V", "pingIntervalMillis", "", "getPingIntervalMillis$okhttp", "()I", "setPingIntervalMillis$okhttp", "(I)V", "pushObserver", "Lokhttp3/internal/http2/PushObserver;", "getPushObserver$okhttp", "()Lokhttp3/internal/http2/PushObserver;", "setPushObserver$okhttp", "(Lokhttp3/internal/http2/PushObserver;)V", "sink", "Lokio/BufferedSink;", "getSink$okhttp", "()Lokio/BufferedSink;", "setSink$okhttp", "(Lokio/BufferedSink;)V", "socket", "Ljava/net/Socket;", "getSocket$okhttp", "()Ljava/net/Socket;", "setSocket$okhttp", "(Ljava/net/Socket;)V", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "getSource$okhttp", "()Lokio/BufferedSource;", "setSource$okhttp", "(Lokio/BufferedSource;)V", "getTaskRunner$okhttp", "()Lokhttp3/internal/concurrent/TaskRunner;", "build", "Lokhttp3/internal/http2/Http2Connection;", "peerName", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class Builder {
        private boolean a;
        private final TaskRunner b;
        public Socket c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f10728d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public okio.e f10729e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public okio.d f10730f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private b f10731g;
        private PushObserver h;
        private int i;

        public Builder(boolean z, TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            this.a = z;
            this.b = taskRunner;
            this.f10731g = b.b;
            this.h = PushObserver.b;
        }

        public static /* synthetic */ Builder socket$default(Builder builder, Socket socket, String str, okio.e eVar, okio.d dVar, int i, Object obj) throws IOException {
            if ((i & 2) != 0) {
                str = Util.peerName(socket);
            }
            if ((i & 4) != 0) {
                eVar = Okio.buffer(Okio.source(socket));
            }
            if ((i & 8) != 0) {
                dVar = Okio.buffer(Okio.sink(socket));
            }
            return builder.s(socket, str, eVar, dVar);
        }

        public final Http2Connection a() {
            return new Http2Connection(this);
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final boolean getA() {
            return this.a;
        }

        public final String c() {
            String str = this.f10728d;
            if (str != null) {
                return str;
            }
            Intrinsics.throwUninitializedPropertyAccessException("connectionName");
            return null;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final b getF10731g() {
            return this.f10731g;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final int getI() {
            return this.i;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final PushObserver getH() {
            return this.h;
        }

        public final okio.d g() {
            okio.d dVar = this.f10730f;
            if (dVar != null) {
                return dVar;
            }
            Intrinsics.throwUninitializedPropertyAccessException("sink");
            return null;
        }

        public final Socket h() {
            Socket socket = this.c;
            if (socket != null) {
                return socket;
            }
            Intrinsics.throwUninitializedPropertyAccessException("socket");
            return null;
        }

        public final okio.e i() {
            okio.e eVar = this.f10729e;
            if (eVar != null) {
                return eVar;
            }
            Intrinsics.throwUninitializedPropertyAccessException(ShareConstants.FEED_SOURCE_PARAM);
            return null;
        }

        /* JADX INFO: renamed from: j, reason: from getter */
        public final TaskRunner getB() {
            return this.b;
        }

        public final Builder k(b listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            n(listener);
            return this;
        }

        public final Builder l(int i) {
            o(i);
            return this;
        }

        public final void m(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.f10728d = str;
        }

        public final void n(b bVar) {
            Intrinsics.checkNotNullParameter(bVar, "<set-?>");
            this.f10731g = bVar;
        }

        public final void o(int i) {
            this.i = i;
        }

        public final void p(okio.d dVar) {
            Intrinsics.checkNotNullParameter(dVar, "<set-?>");
            this.f10730f = dVar;
        }

        public final void q(Socket socket) {
            Intrinsics.checkNotNullParameter(socket, "<set-?>");
            this.c = socket;
        }

        public final void r(okio.e eVar) {
            Intrinsics.checkNotNullParameter(eVar, "<set-?>");
            this.f10729e = eVar;
        }

        public final Builder s(Socket socket, String peerName, okio.e source, okio.d sink) throws IOException {
            String strStringPlus;
            Intrinsics.checkNotNullParameter(socket, "socket");
            Intrinsics.checkNotNullParameter(peerName, "peerName");
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(sink, "sink");
            q(socket);
            if (getA()) {
                strStringPlus = Util.i + ' ' + peerName;
            } else {
                strStringPlus = Intrinsics.stringPlus("MockWebServer ", peerName);
            }
            m(strStringPlus);
            r(source);
            p(sink);
            return this;
        }
    }

    /* JADX INFO: compiled from: Http2Connection.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Companion;", "", "()V", "AWAIT_PING", "", "DEFAULT_SETTINGS", "Lokhttp3/internal/http2/Settings;", "getDEFAULT_SETTINGS", "()Lokhttp3/internal/http2/Settings;", "DEGRADED_PING", "DEGRADED_PONG_TIMEOUT_NS", "INTERVAL_PING", "OKHTTP_CLIENT_WINDOW_SIZE", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final Settings a() {
            return Http2Connection.b;
        }
    }

    /* JADX INFO: compiled from: Http2Connection.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\r"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener;", "", "()V", "onSettings", "", "connection", "Lokhttp3/internal/http2/Http2Connection;", "settings", "Lokhttp3/internal/http2/Settings;", "onStream", "stream", "Lokhttp3/internal/http2/Http2Stream;", "Companion", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static abstract class b {
        public static final C0609b a = new C0609b(null);
        public static final b b = new a();

        /* JADX INFO: compiled from: Http2Connection.kt */
        @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"okhttp3/internal/http2/Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1", "Lokhttp3/internal/http2/Http2Connection$Listener;", "onStream", "", "stream", "Lokhttp3/internal/http2/Http2Stream;", "okhttp"}, mv = {1, 6, 0}, xi = 48)
        public static final class a extends b {
            a() {
            }

            @Override // okhttp3.internal.http2.Http2Connection.b
            public void b(Http2Stream stream) throws IOException {
                Intrinsics.checkNotNullParameter(stream, "stream");
                stream.d(ErrorCode.REFUSED_STREAM, null);
            }
        }

        /* JADX INFO: renamed from: okhttp3.internal.http2.Http2Connection$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Http2Connection.kt */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener$Companion;", "", "()V", "REFUSE_INCOMING_STREAMS", "Lokhttp3/internal/http2/Http2Connection$Listener;", "okhttp"}, mv = {1, 6, 0}, xi = 48)
        public static final class C0609b {
            private C0609b() {
            }

            public /* synthetic */ C0609b(n nVar) {
                this();
            }
        }

        public void a(Http2Connection connection, Settings settings) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            Intrinsics.checkNotNullParameter(settings, "settings");
        }

        public abstract void b(Http2Stream http2Stream) throws IOException;
    }

    /* JADX INFO: compiled from: Http2Connection.kt */
    @Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u000f\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\u0003H\u0016J8\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0016\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J(\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\fH\u0016J \u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\f2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0010H\u0016J.\u0010$\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010%\u001a\u00020\f2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016J\t\u0010)\u001a\u00020\u0003H\u0096\u0002J \u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020\f2\u0006\u0010-\u001a\u00020\fH\u0016J(\u0010.\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f2\u0006\u00100\u001a\u00020\f2\u0006\u00101\u001a\u00020\u0017H\u0016J&\u00102\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u00103\u001a\u00020\f2\f\u00104\u001a\b\u0012\u0004\u0012\u00020(0'H\u0016J\u0018\u00105\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u00106\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u0006\u00107\u001a\u00020\u0014H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u00068"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "Lokhttp3/internal/http2/Http2Reader$Handler;", "Lkotlin/Function0;", "", "reader", "Lokhttp3/internal/http2/Http2Reader;", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V", "getReader$okhttp", "()Lokhttp3/internal/http2/Http2Reader;", "ackSettings", "alternateService", "streamId", "", "origin", "", "protocol", "Lokio/ByteString;", "host", "port", "maxAge", "", "applyAndAckSettings", "clearPrevious", "", "settings", "Lokhttp3/internal/http2/Settings;", "data", "inFinished", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "length", "goAway", "lastGoodStreamId", IronSourceConstants.EVENTS_ERROR_CODE, "Lokhttp3/internal/http2/ErrorCode;", "debugData", "headers", "associatedStreamId", "headerBlock", "", "Lokhttp3/internal/http2/Header;", "invoke", "ping", "ack", "payload1", "payload2", "priority", "streamDependency", "weight", "exclusive", "pushPromise", "promisedStreamId", "requestHeaders", "rstStream", "windowUpdate", "windowSizeIncrement", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public final class c implements Http2Reader.c, Function0<v> {
        private final Http2Reader a;
        final /* synthetic */ Http2Connection b;

        /* JADX INFO: compiled from: TaskQueue.kt */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$execute$1", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
        public static final class a extends Task {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f10732e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ boolean f10733f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ Http2Connection f10734g;
            final /* synthetic */ l0 h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String str, boolean z, Http2Connection http2Connection, l0 l0Var) {
                super(str, z);
                this.f10732e = str;
                this.f10733f = z;
                this.f10734g = http2Connection;
                this.h = l0Var;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // okhttp3.internal.concurrent.Task
            public long f() {
                this.f10734g.getF10724d().a(this.f10734g, (Settings) this.h.a);
                return -1L;
            }
        }

        /* JADX INFO: compiled from: TaskQueue.kt */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$execute$1", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
        public static final class b extends Task {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f10735e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ boolean f10736f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ Http2Connection f10737g;
            final /* synthetic */ Http2Stream h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str, boolean z, Http2Connection http2Connection, Http2Stream http2Stream) {
                super(str, z);
                this.f10735e = str;
                this.f10736f = z;
                this.f10737g = http2Connection;
                this.h = http2Stream;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long f() {
                try {
                    this.f10737g.getF10724d().b(this.h);
                    return -1L;
                } catch (IOException e2) {
                    Platform.a.f().j(Intrinsics.stringPlus("Http2Connection.Listener failure for ", this.f10737g.getF10726f()), 4, e2);
                    try {
                        this.h.d(ErrorCode.PROTOCOL_ERROR, e2);
                        return -1L;
                    } catch (IOException unused) {
                        return -1L;
                    }
                }
            }
        }

        /* JADX INFO: renamed from: okhttp3.internal.http2.Http2Connection$c$c, reason: collision with other inner class name */
        /* JADX INFO: compiled from: TaskQueue.kt */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$execute$1", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
        public static final class C0610c extends Task {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f10738e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ boolean f10739f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ Http2Connection f10740g;
            final /* synthetic */ int h;
            final /* synthetic */ int i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0610c(String str, boolean z, Http2Connection http2Connection, int i, int i2) {
                super(str, z);
                this.f10738e = str;
                this.f10739f = z;
                this.f10740g = http2Connection;
                this.h = i;
                this.i = i2;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long f() {
                this.f10740g.X(true, this.h, this.i);
                return -1L;
            }
        }

        /* JADX INFO: compiled from: TaskQueue.kt */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$execute$1", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
        public static final class d extends Task {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f10741e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            final /* synthetic */ boolean f10742f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            final /* synthetic */ c f10743g;
            final /* synthetic */ boolean h;
            final /* synthetic */ Settings i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public d(String str, boolean z, c cVar, boolean z2, Settings settings) {
                super(str, z);
                this.f10741e = str;
                this.f10742f = z;
                this.f10743g = cVar;
                this.h = z2;
                this.i = settings;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long f() {
                this.f10743g.f(this.h, this.i);
                return -1L;
            }
        }

        public c(Http2Connection this$0, Http2Reader reader) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(reader, "reader");
            this.b = this$0;
            this.a = reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.c
        public void a(boolean z, Settings settings) {
            Intrinsics.checkNotNullParameter(settings, "settings");
            this.b.k.i(new d(Intrinsics.stringPlus(this.b.getF10726f(), " applyAndAckSettings"), true, this, z, settings), 0L);
        }

        @Override // okhttp3.internal.http2.Http2Reader.c
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.c
        public void c(boolean z, int i, okio.e source, int i2) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            if (this.b.I(i)) {
                this.b.u(i, source, i2, z);
                return;
            }
            Http2Stream http2StreamL = this.b.l(i);
            if (http2StreamL == null) {
                this.b.Z(i, ErrorCode.PROTOCOL_ERROR);
                long j = i2;
                this.b.U(j);
                source.skip(j);
                return;
            }
            http2StreamL.w(source, i2);
            if (z) {
                http2StreamL.x(Util.b, true);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.c
        public void d(int i, ErrorCode errorCode) {
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            if (this.b.I(i)) {
                this.b.x(i, errorCode);
                return;
            }
            Http2Stream http2StreamJ = this.b.J(i);
            if (http2StreamJ == null) {
                return;
            }
            http2StreamJ.y(errorCode);
        }

        @Override // okhttp3.internal.http2.Http2Reader.c
        public void e(int i, ErrorCode errorCode, ByteString debugData) {
            int i2;
            Object[] array;
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            Intrinsics.checkNotNullParameter(debugData, "debugData");
            debugData.F();
            Http2Connection http2Connection = this.b;
            synchronized (http2Connection) {
                i2 = 0;
                array = http2Connection.m().values().toArray(new Http2Stream[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
                http2Connection.i = true;
                v vVar = v.a;
            }
            Http2Stream[] http2StreamArr = (Http2Stream[]) array;
            int length = http2StreamArr.length;
            while (i2 < length) {
                Http2Stream http2Stream = http2StreamArr[i2];
                i2++;
                if (http2Stream.getB() > i && http2Stream.t()) {
                    http2Stream.y(ErrorCode.REFUSED_STREAM);
                    this.b.J(http2Stream.getB());
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void f(boolean z, Settings settings) {
            T t;
            long jC;
            int i;
            Http2Stream[] http2StreamArr;
            Intrinsics.checkNotNullParameter(settings, "settings");
            l0 l0Var = new l0();
            Http2Writer b2 = this.b.getB();
            Http2Connection http2Connection = this.b;
            synchronized (b2) {
                synchronized (http2Connection) {
                    Settings v = http2Connection.getV();
                    if (z) {
                        t = settings;
                    } else {
                        Settings settings2 = new Settings();
                        settings2.g(v);
                        settings2.g(settings);
                        t = settings2;
                    }
                    l0Var.a = t;
                    jC = ((long) ((Settings) t).c()) - ((long) v.c());
                    i = 0;
                    if (jC == 0 || http2Connection.m().isEmpty()) {
                        http2StreamArr = null;
                    } else {
                        Object[] array = http2Connection.m().values().toArray(new Http2Stream[0]);
                        if (array == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                        }
                        http2StreamArr = (Http2Stream[]) array;
                    }
                    http2Connection.N((Settings) l0Var.a);
                    http2Connection.m.i(new a(Intrinsics.stringPlus(http2Connection.getF10726f(), " onSettings"), true, http2Connection, l0Var), 0L);
                    v vVar = v.a;
                }
                try {
                    http2Connection.getB().a((Settings) l0Var.a);
                } catch (IOException e2) {
                    http2Connection.b(e2);
                }
                v vVar2 = v.a;
            }
            if (http2StreamArr != null) {
                int length = http2StreamArr.length;
                while (i < length) {
                    Http2Stream http2Stream = http2StreamArr[i];
                    i++;
                    synchronized (http2Stream) {
                        http2Stream.a(jC);
                        v vVar3 = v.a;
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Closeable, okhttp3.internal.http2.Http2Reader] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public void h() throws Throwable {
            ErrorCode errorCode;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            IOException e2 = null;
            try {
                try {
                    this.a.b(this);
                    while (this.a.a(false, this)) {
                    }
                    ErrorCode errorCode3 = ErrorCode.NO_ERROR;
                    try {
                        this.b.a(errorCode3, ErrorCode.CANCEL, null);
                        errorCode = errorCode3;
                    } catch (IOException e3) {
                        e2 = e3;
                        ErrorCode errorCode4 = ErrorCode.PROTOCOL_ERROR;
                        Http2Connection http2Connection = this.b;
                        http2Connection.a(errorCode4, errorCode4, e2);
                        errorCode = http2Connection;
                    }
                } catch (Throwable th) {
                    th = th;
                    this.b.a(errorCode, errorCode2, e2);
                    Util.closeQuietly(this.a);
                    throw th;
                }
            } catch (IOException e4) {
                e2 = e4;
            } catch (Throwable th2) {
                th = th2;
                errorCode = errorCode2;
                this.b.a(errorCode, errorCode2, e2);
                Util.closeQuietly(this.a);
                throw th;
            }
            errorCode2 = this.a;
            Util.closeQuietly((Closeable) errorCode2);
        }

        @Override // okhttp3.internal.http2.Http2Reader.c
        public void headers(boolean inFinished, int streamId, int associatedStreamId, List<Header> headerBlock) {
            Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
            if (this.b.I(streamId)) {
                this.b.v(streamId, headerBlock, inFinished);
                return;
            }
            Http2Connection http2Connection = this.b;
            synchronized (http2Connection) {
                Http2Stream http2StreamL = http2Connection.l(streamId);
                if (http2StreamL != null) {
                    v vVar = v.a;
                    http2StreamL.x(Util.toHeaders(headerBlock), inFinished);
                    return;
                }
                if (http2Connection.i) {
                    return;
                }
                if (streamId <= http2Connection.getF10727g()) {
                    return;
                }
                if (streamId % 2 == http2Connection.getH() % 2) {
                    return;
                }
                Http2Stream http2Stream = new Http2Stream(streamId, http2Connection, false, inFinished, Util.toHeaders(headerBlock));
                http2Connection.L(streamId);
                http2Connection.m().put(Integer.valueOf(streamId), http2Stream);
                http2Connection.j.g().i(new b(http2Connection.getF10726f() + '[' + streamId + "] onStream", true, http2Connection, http2Stream), 0L);
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ v invoke() throws Throwable {
            h();
            return v.a;
        }

        @Override // okhttp3.internal.http2.Http2Reader.c
        public void ping(boolean ack, int payload1, int payload2) {
            if (!ack) {
                this.b.k.i(new C0610c(Intrinsics.stringPlus(this.b.getF10726f(), " ping"), true, this.b, payload1, payload2), 0L);
                return;
            }
            Http2Connection http2Connection = this.b;
            synchronized (http2Connection) {
                if (payload1 == 1) {
                    http2Connection.p++;
                } else if (payload1 != 2) {
                    if (payload1 == 3) {
                        http2Connection.s++;
                        http2Connection.notifyAll();
                    }
                    v vVar = v.a;
                } else {
                    http2Connection.r++;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.c
        public void priority(int streamId, int streamDependency, int weight, boolean exclusive) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.c
        public void pushPromise(int streamId, int promisedStreamId, List<Header> requestHeaders) {
            Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
            this.b.w(promisedStreamId, requestHeaders);
        }

        @Override // okhttp3.internal.http2.Http2Reader.c
        public void windowUpdate(int streamId, long windowSizeIncrement) {
            if (streamId == 0) {
                Http2Connection http2Connection = this.b;
                synchronized (http2Connection) {
                    http2Connection.z = http2Connection.getZ() + windowSizeIncrement;
                    http2Connection.notifyAll();
                    v vVar = v.a;
                }
                return;
            }
            Http2Stream http2StreamL = this.b.l(streamId);
            if (http2StreamL != null) {
                synchronized (http2StreamL) {
                    http2StreamL.a(windowSizeIncrement);
                    v vVar2 = v.a;
                }
            }
        }
    }

    /* JADX INFO: compiled from: TaskQueue.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$execute$1", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class d extends Task {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f10744e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f10745f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Http2Connection f10746g;
        final /* synthetic */ int h;
        final /* synthetic */ Buffer i;
        final /* synthetic */ int j;
        final /* synthetic */ boolean k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, boolean z, Http2Connection http2Connection, int i, Buffer buffer, int i2, boolean z2) {
            super(str, z);
            this.f10744e = str;
            this.f10745f = z;
            this.f10746g = http2Connection;
            this.h = i;
            this.i = buffer;
            this.j = i2;
            this.k = z2;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long f() {
            try {
                boolean zB = this.f10746g.n.b(this.h, this.i, this.j, this.k);
                if (zB) {
                    this.f10746g.getB().m(this.h, ErrorCode.CANCEL);
                }
                if (!zB && !this.k) {
                    return -1L;
                }
                synchronized (this.f10746g) {
                    this.f10746g.D.remove(Integer.valueOf(this.h));
                }
                return -1L;
            } catch (IOException unused) {
                return -1L;
            }
        }
    }

    /* JADX INFO: compiled from: TaskQueue.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$execute$1", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class e extends Task {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f10747e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f10748f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Http2Connection f10749g;
        final /* synthetic */ int h;
        final /* synthetic */ List i;
        final /* synthetic */ boolean j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, boolean z, Http2Connection http2Connection, int i, List list, boolean z2) {
            super(str, z);
            this.f10747e = str;
            this.f10748f = z;
            this.f10749g = http2Connection;
            this.h = i;
            this.i = list;
            this.j = z2;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long f() {
            boolean zOnHeaders = this.f10749g.n.onHeaders(this.h, this.i, this.j);
            if (zOnHeaders) {
                try {
                    this.f10749g.getB().m(this.h, ErrorCode.CANCEL);
                } catch (IOException unused) {
                    return -1L;
                }
            }
            if (!zOnHeaders && !this.j) {
                return -1L;
            }
            synchronized (this.f10749g) {
                this.f10749g.D.remove(Integer.valueOf(this.h));
            }
            return -1L;
        }
    }

    /* JADX INFO: compiled from: TaskQueue.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$execute$1", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class f extends Task {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f10750e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f10751f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Http2Connection f10752g;
        final /* synthetic */ int h;
        final /* synthetic */ List i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, boolean z, Http2Connection http2Connection, int i, List list) {
            super(str, z);
            this.f10750e = str;
            this.f10751f = z;
            this.f10752g = http2Connection;
            this.h = i;
            this.i = list;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long f() {
            if (!this.f10752g.n.onRequest(this.h, this.i)) {
                return -1L;
            }
            try {
                this.f10752g.getB().m(this.h, ErrorCode.CANCEL);
                synchronized (this.f10752g) {
                    this.f10752g.D.remove(Integer.valueOf(this.h));
                }
                return -1L;
            } catch (IOException unused) {
                return -1L;
            }
        }
    }

    /* JADX INFO: compiled from: TaskQueue.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$execute$1", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class g extends Task {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f10753e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f10754f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Http2Connection f10755g;
        final /* synthetic */ int h;
        final /* synthetic */ ErrorCode i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, boolean z, Http2Connection http2Connection, int i, ErrorCode errorCode) {
            super(str, z);
            this.f10753e = str;
            this.f10754f = z;
            this.f10755g = http2Connection;
            this.h = i;
            this.i = errorCode;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long f() {
            this.f10755g.n.a(this.h, this.i);
            synchronized (this.f10755g) {
                this.f10755g.D.remove(Integer.valueOf(this.h));
                v vVar = v.a;
            }
            return -1L;
        }
    }

    /* JADX INFO: compiled from: TaskQueue.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$execute$1", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class h extends Task {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f10756e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f10757f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Http2Connection f10758g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, boolean z, Http2Connection http2Connection) {
            super(str, z);
            this.f10756e = str;
            this.f10757f = z;
            this.f10758g = http2Connection;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long f() {
            this.f10758g.X(false, 2, 0);
            return -1L;
        }
    }

    /* JADX INFO: compiled from: TaskQueue.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$schedule$2", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class i extends Task {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f10759e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Http2Connection f10760f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ long f10761g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(String str, Http2Connection http2Connection, long j) {
            super(str, false, 2, null);
            this.f10759e = str;
            this.f10760f = http2Connection;
            this.f10761g = j;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long f() {
            boolean z;
            synchronized (this.f10760f) {
                if (this.f10760f.p < this.f10760f.o) {
                    z = true;
                } else {
                    this.f10760f.o++;
                    z = false;
                }
            }
            if (z) {
                this.f10760f.b(null);
                return -1L;
            }
            this.f10760f.X(false, 1, 0);
            return this.f10761g;
        }
    }

    /* JADX INFO: compiled from: TaskQueue.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$execute$1", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class j extends Task {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f10762e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f10763f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Http2Connection f10764g;
        final /* synthetic */ int h;
        final /* synthetic */ ErrorCode i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(String str, boolean z, Http2Connection http2Connection, int i, ErrorCode errorCode) {
            super(str, z);
            this.f10762e = str;
            this.f10763f = z;
            this.f10764g = http2Connection;
            this.h = i;
            this.i = errorCode;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long f() {
            try {
                this.f10764g.Y(this.h, this.i);
                return -1L;
            } catch (IOException e2) {
                this.f10764g.b(e2);
                return -1L;
            }
        }
    }

    /* JADX INFO: compiled from: TaskQueue.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004¸\u0006\u0000"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$execute$1", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class k extends Task {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f10765e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ boolean f10766f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Http2Connection f10767g;
        final /* synthetic */ int h;
        final /* synthetic */ long i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(String str, boolean z, Http2Connection http2Connection, int i, long j) {
            super(str, z);
            this.f10765e = str;
            this.f10766f = z;
            this.f10767g = http2Connection;
            this.h = i;
            this.i = j;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long f() {
            try {
                this.f10767g.getB().p(this.h, this.i);
                return -1L;
            } catch (IOException e2) {
                this.f10767g.b(e2);
                return -1L;
            }
        }
    }

    static {
        Settings settings = new Settings();
        settings.h(7, 65535);
        settings.h(5, 16384);
        b = settings;
    }

    public Http2Connection(Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        boolean a2 = builder.getA();
        this.c = a2;
        this.f10724d = builder.getF10731g();
        this.f10725e = new LinkedHashMap();
        String strC = builder.c();
        this.f10726f = strC;
        this.h = builder.getA() ? 3 : 2;
        TaskRunner b2 = builder.getB();
        this.j = b2;
        TaskQueue taskQueueG = b2.g();
        this.k = taskQueueG;
        this.l = b2.g();
        this.m = b2.g();
        this.n = builder.getH();
        Settings settings = new Settings();
        if (builder.getA()) {
            settings.h(7, 16777216);
        }
        this.u = settings;
        this.v = b;
        this.z = r2.c();
        this.A = builder.h();
        this.B = new Http2Writer(builder.g(), a2);
        this.C = new c(this, new Http2Reader(builder.i(), a2));
        this.D = new LinkedHashSet();
        if (builder.getI() != 0) {
            long nanos = TimeUnit.MILLISECONDS.toNanos(builder.getI());
            taskQueueG.i(new i(Intrinsics.stringPlus(strC, " ping"), this, nanos), nanos);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(IOException iOException) {
        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
        a(errorCode, errorCode, iOException);
    }

    private final Http2Stream s(int i2, List<Header> list, boolean z) throws IOException {
        int h2;
        Http2Stream http2Stream;
        boolean z2;
        boolean z3 = !z;
        synchronized (this.B) {
            synchronized (this) {
                if (getH() > 1073741823) {
                    Q(ErrorCode.REFUSED_STREAM);
                }
                if (this.i) {
                    throw new ConnectionShutdownException();
                }
                h2 = getH();
                M(getH() + 2);
                http2Stream = new Http2Stream(h2, this, z3, false, null);
                z2 = !z || getY() >= getZ() || http2Stream.getF10790f() >= http2Stream.getF10791g();
                if (http2Stream.u()) {
                    m().put(Integer.valueOf(h2), http2Stream);
                }
                v vVar = v.a;
            }
            if (i2 == 0) {
                getB().i(z3, h2, list);
            } else {
                if (!(true ^ getC())) {
                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs".toString());
                }
                getB().l(i2, h2, list);
            }
        }
        if (z2) {
            this.B.flush();
        }
        return http2Stream;
    }

    public static /* synthetic */ void start$default(Http2Connection http2Connection, boolean z, TaskRunner taskRunner, int i2, Object obj) throws IOException {
        if ((i2 & 1) != 0) {
            z = true;
        }
        if ((i2 & 2) != 0) {
            taskRunner = TaskRunner.b;
        }
        http2Connection.S(z, taskRunner);
    }

    public final boolean I(int i2) {
        return i2 != 0 && (i2 & 1) == 0;
    }

    public final synchronized Http2Stream J(int i2) {
        Http2Stream http2StreamRemove;
        http2StreamRemove = this.f10725e.remove(Integer.valueOf(i2));
        notifyAll();
        return http2StreamRemove;
    }

    public final void K() {
        synchronized (this) {
            long j2 = this.r;
            long j3 = this.q;
            if (j2 < j3) {
                return;
            }
            this.q = j3 + 1;
            this.t = System.nanoTime() + ((long) 1000000000);
            v vVar = v.a;
            this.k.i(new h(Intrinsics.stringPlus(this.f10726f, " ping"), true, this), 0L);
        }
    }

    public final void L(int i2) {
        this.f10727g = i2;
    }

    public final void M(int i2) {
        this.h = i2;
    }

    public final void N(Settings settings) {
        Intrinsics.checkNotNullParameter(settings, "<set-?>");
        this.v = settings;
    }

    public final void Q(ErrorCode statusCode) throws IOException {
        Intrinsics.checkNotNullParameter(statusCode, "statusCode");
        synchronized (this.B) {
            j0 j0Var = new j0();
            synchronized (this) {
                if (this.i) {
                    return;
                }
                this.i = true;
                j0Var.a = getF10727g();
                v vVar = v.a;
                getB().h(j0Var.a, statusCode, Util.a);
            }
        }
    }

    public final void S(boolean z, TaskRunner taskRunner) throws IOException {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        if (z) {
            this.B.d();
            this.B.o(this.u);
            if (this.u.c() != 65535) {
                this.B.p(0, r6 - 65535);
            }
        }
        taskRunner.g().i(new okhttp3.internal.concurrent.b(this.f10726f, true, this.C), 0L);
    }

    public final synchronized void U(long j2) {
        long j3 = this.w + j2;
        this.w = j3;
        long j4 = j3 - this.x;
        if (j4 >= this.u.c() / 2) {
            a0(0, j4);
            this.x += j4;
        }
    }

    public final void V(int i2, boolean z, Buffer buffer, long j2) throws IOException {
        int iMin;
        long j3;
        if (j2 == 0) {
            this.B.e(z, i2, buffer, 0);
            return;
        }
        while (j2 > 0) {
            synchronized (this) {
                while (getY() >= getZ()) {
                    try {
                        if (!m().containsKey(Integer.valueOf(i2))) {
                            throw new IOException("stream closed");
                        }
                        wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
                iMin = Math.min((int) Math.min(j2, getZ() - getY()), getB().getF10800f());
                j3 = iMin;
                this.y = getY() + j3;
                v vVar = v.a;
            }
            j2 -= j3;
            this.B.e(z && j2 == 0, i2, buffer, iMin);
        }
    }

    public final void W(int i2, boolean z, List<Header> alternating) throws IOException {
        Intrinsics.checkNotNullParameter(alternating, "alternating");
        this.B.i(z, i2, alternating);
    }

    public final void X(boolean z, int i2, int i3) {
        try {
            this.B.k(z, i2, i3);
        } catch (IOException e2) {
            b(e2);
        }
    }

    public final void Y(int i2, ErrorCode statusCode) throws IOException {
        Intrinsics.checkNotNullParameter(statusCode, "statusCode");
        this.B.m(i2, statusCode);
    }

    public final void Z(int i2, ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        this.k.i(new j(this.f10726f + '[' + i2 + "] writeSynReset", true, this, i2, errorCode), 0L);
    }

    public final void a(ErrorCode connectionCode, ErrorCode streamCode, IOException iOException) {
        int i2;
        Intrinsics.checkNotNullParameter(connectionCode, "connectionCode");
        Intrinsics.checkNotNullParameter(streamCode, "streamCode");
        if (Util.h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        try {
            Q(connectionCode);
        } catch (IOException unused) {
        }
        Object[] array = null;
        synchronized (this) {
            if (!m().isEmpty()) {
                array = m().values().toArray(new Http2Stream[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
                m().clear();
            }
            v vVar = v.a;
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) array;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.d(streamCode, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            getB().close();
        } catch (IOException unused3) {
        }
        try {
            getA().close();
        } catch (IOException unused4) {
        }
        this.k.n();
        this.l.n();
        this.m.n();
    }

    public final void a0(int i2, long j2) {
        this.k.i(new k(this.f10726f + '[' + i2 + "] windowUpdate", true, this, i2, j2), 0L);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getF10726f() {
        return this.f10726f;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getF10727g() {
        return this.f10727g;
    }

    public final void flush() throws IOException {
        this.B.flush();
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final b getF10724d() {
        return this.f10724d;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final int getH() {
        return this.h;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final Settings getU() {
        return this.u;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final Settings getV() {
        return this.v;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final Socket getA() {
        return this.A;
    }

    public final synchronized Http2Stream l(int i2) {
        return this.f10725e.get(Integer.valueOf(i2));
    }

    public final Map<Integer, Http2Stream> m() {
        return this.f10725e;
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final long getZ() {
        return this.z;
    }

    /* JADX INFO: renamed from: p, reason: from getter */
    public final long getY() {
        return this.y;
    }

    /* JADX INFO: renamed from: q, reason: from getter */
    public final Http2Writer getB() {
        return this.B;
    }

    public final synchronized boolean r(long j2) {
        if (this.i) {
            return false;
        }
        if (this.r < this.q) {
            if (j2 >= this.t) {
                return false;
            }
        }
        return true;
    }

    public final Http2Stream t(List<Header> requestHeaders, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        return s(0, requestHeaders, z);
    }

    public final void u(int i2, okio.e source, int i3, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Buffer buffer = new Buffer();
        long j2 = i3;
        source.require(j2);
        source.read(buffer, j2);
        this.l.i(new d(this.f10726f + '[' + i2 + "] onData", true, this, i2, buffer, i3, z), 0L);
    }

    public final void v(int i2, List<Header> requestHeaders, boolean z) {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        this.l.i(new e(this.f10726f + '[' + i2 + "] onHeaders", true, this, i2, requestHeaders, z), 0L);
    }

    public final void w(int i2, List<Header> requestHeaders) {
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        synchronized (this) {
            if (this.D.contains(Integer.valueOf(i2))) {
                Z(i2, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.D.add(Integer.valueOf(i2));
            this.l.i(new f(this.f10726f + '[' + i2 + "] onRequest", true, this, i2, requestHeaders), 0L);
        }
    }

    public final void x(int i2, ErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        this.l.i(new g(this.f10726f + '[' + i2 + "] onReset", true, this, i2, errorCode), 0L);
    }
}
