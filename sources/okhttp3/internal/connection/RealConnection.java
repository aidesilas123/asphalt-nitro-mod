package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.login.LoginLogger;
import com.facebook.share.internal.ShareConstants;
import com.mbridge.msdk.foundation.download.Command;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.CipherSuite;
import okhttp3.Connection;
import okhttp3.ConnectionSpec;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;
import okio.Okio;
import okio.z;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: RealConnection.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 {2\u00020\u00012\u00020\u0002:\u0001{B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u00105\u001a\u000206J\u0018\u00107\u001a\u00020\u001d2\u0006\u00108\u001a\u0002092\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J>\u0010:\u001a\u0002062\u0006\u0010;\u001a\u00020\t2\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\t2\u0006\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\u001d2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CJ%\u0010D\u001a\u0002062\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u00062\u0006\u0010H\u001a\u00020IH\u0000¢\u0006\u0002\bJJ(\u0010K\u001a\u0002062\u0006\u0010;\u001a\u00020\t2\u0006\u0010<\u001a\u00020\t2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CH\u0002J\u0010\u0010L\u001a\u0002062\u0006\u0010M\u001a\u00020NH\u0002J0\u0010O\u001a\u0002062\u0006\u0010;\u001a\u00020\t2\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\t2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CH\u0002J*\u0010P\u001a\u0004\u0018\u00010Q2\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\t2\u0006\u0010R\u001a\u00020Q2\u0006\u00108\u001a\u000209H\u0002J\b\u0010S\u001a\u00020QH\u0002J(\u0010T\u001a\u0002062\u0006\u0010M\u001a\u00020N2\u0006\u0010>\u001a\u00020\t2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CH\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\r\u0010U\u001a\u000206H\u0000¢\u0006\u0002\bVJ%\u0010W\u001a\u00020\u001d2\u0006\u0010X\u001a\u00020Y2\u000e\u0010Z\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010[H\u0000¢\u0006\u0002\b\\J\u000e\u0010]\u001a\u00020\u001d2\u0006\u0010^\u001a\u00020\u001dJ\u001d\u0010_\u001a\u00020`2\u0006\u0010E\u001a\u00020F2\u0006\u0010a\u001a\u00020bH\u0000¢\u0006\u0002\bcJ\u0015\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020gH\u0000¢\u0006\u0002\bhJ\r\u0010 \u001a\u000206H\u0000¢\u0006\u0002\biJ\r\u0010!\u001a\u000206H\u0000¢\u0006\u0002\bjJ\u0018\u0010k\u001a\u0002062\u0006\u0010l\u001a\u00020\u00152\u0006\u0010m\u001a\u00020nH\u0016J\u0010\u0010o\u001a\u0002062\u0006\u0010p\u001a\u00020qH\u0016J\b\u0010%\u001a\u00020&H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010r\u001a\u00020\u001d2\f\u0010s\u001a\b\u0012\u0004\u0012\u00020\u00060[H\u0002J\b\u00101\u001a\u00020(H\u0016J\u0010\u0010t\u001a\u0002062\u0006\u0010>\u001a\u00020\tH\u0002J\u0010\u0010u\u001a\u00020\u001d2\u0006\u00108\u001a\u000209H\u0002J\b\u0010v\u001a\u00020wH\u0016J\u001f\u0010x\u001a\u0002062\u0006\u0010@\u001a\u00020\r2\b\u0010y\u001a\u0004\u0018\u00010IH\u0000¢\u0006\u0002\bzR\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0017X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u001d8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010!\u001a\u00020\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010$R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010*\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0010\u0010/\u001a\u0004\u0018\u000100X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006|"}, d2 = {"Lokhttp3/internal/connection/RealConnection;", "Lokhttp3/internal/http2/Http2Connection$Listener;", "Lokhttp3/Connection;", "connectionPool", "Lokhttp3/internal/connection/RealConnectionPool;", "route", "Lokhttp3/Route;", "(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V", "allocationLimit", "", "calls", "", "Ljava/lang/ref/Reference;", "Lokhttp3/internal/connection/RealCall;", "getCalls", "()Ljava/util/List;", "getConnectionPool", "()Lokhttp3/internal/connection/RealConnectionPool;", "handshake", "Lokhttp3/Handshake;", "http2Connection", "Lokhttp3/internal/http2/Http2Connection;", "idleAtNs", "", "getIdleAtNs$okhttp", "()J", "setIdleAtNs$okhttp", "(J)V", "isMultiplexed", "", "isMultiplexed$okhttp", "()Z", "noCoalescedConnections", "noNewExchanges", "getNoNewExchanges", "setNoNewExchanges", "(Z)V", "protocol", "Lokhttp3/Protocol;", "rawSocket", "Ljava/net/Socket;", "refusedStreamCount", "routeFailureCount", "getRouteFailureCount$okhttp", "()I", "setRouteFailureCount$okhttp", "(I)V", "sink", "Lokio/BufferedSink;", "socket", ShareConstants.FEED_SOURCE_PARAM, "Lokio/BufferedSource;", "successCount", "cancel", "", "certificateSupportHost", "url", "Lokhttp3/HttpUrl;", "connect", "connectTimeout", "readTimeout", "writeTimeout", "pingIntervalMillis", "connectionRetryEnabled", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Call;", "eventListener", "Lokhttp3/EventListener;", "connectFailed", "client", "Lokhttp3/OkHttpClient;", "failedRoute", LoginLogger.EVENT_EXTRAS_FAILURE, "Ljava/io/IOException;", "connectFailed$okhttp", "connectSocket", "connectTls", "connectionSpecSelector", "Lokhttp3/internal/connection/ConnectionSpecSelector;", "connectTunnel", "createTunnel", "Lokhttp3/Request;", "tunnelRequest", "createTunnelRequest", "establishProtocol", "incrementSuccessCount", "incrementSuccessCount$okhttp", "isEligible", IntegrityManager.INTEGRITY_TYPE_ADDRESS, "Lokhttp3/Address;", "routes", "", "isEligible$okhttp", "isHealthy", "doExtensiveChecks", "newCodec", "Lokhttp3/internal/http/ExchangeCodec;", "chain", "Lokhttp3/internal/http/RealInterceptorChain;", "newCodec$okhttp", "newWebSocketStreams", "Lokhttp3/internal/ws/RealWebSocket$Streams;", "exchange", "Lokhttp3/internal/connection/Exchange;", "newWebSocketStreams$okhttp", "noCoalescedConnections$okhttp", "noNewExchanges$okhttp", "onSettings", "connection", "settings", "Lokhttp3/internal/http2/Settings;", "onStream", "stream", "Lokhttp3/internal/http2/Http2Stream;", "routeMatchesAny", "candidates", "startHttp2", "supportsUrl", "toString", "", "trackFailure", "e", "trackFailure$okhttp", "Companion", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class RealConnection extends Http2Connection.b implements Connection {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RealConnectionPool f10673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Route f10674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Socket f10675f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Socket f10676g;
    private Handshake h;
    private Protocol i;
    private Http2Connection j;
    private okio.e k;
    private okio.d l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private int q;
    private int r;
    private final List<Reference<RealCall>> s;
    private long t;

    /* JADX INFO: compiled from: RealConnection.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/connection/RealConnection$Companion;", "", "()V", "IDLE_CONNECTION_HEALTHY_NS", "", "MAX_TUNNEL_ATTEMPTS", "", "NPE_THROW_WITH_NULL", "", "newTestConnection", "Lokhttp3/internal/connection/RealConnection;", "connectionPool", "Lokhttp3/internal/connection/RealConnectionPool;", "route", "Lokhttp3/Route;", "socket", "Ljava/net/Socket;", "idleAtNs", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: RealConnection.kt */
    @Metadata(mv = {1, 6, 0}, xi = 48)
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            iArr[Proxy.Type.HTTP.ordinal()] = 2;
            a = iArr;
        }
    }

    /* JADX INFO: compiled from: RealConnection.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Ljava/security/cert/Certificate;", "invoke"}, mv = {1, 6, 0}, xi = 48)
    static final class c extends Lambda implements Function0<List<? extends Certificate>> {
        final /* synthetic */ CertificatePinner a;
        final /* synthetic */ Handshake b;
        final /* synthetic */ Address c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(CertificatePinner certificatePinner, Handshake handshake, Address address) {
            super(0);
            this.a = certificatePinner;
            this.b = handshake;
            this.c = address;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<Certificate> invoke() {
            CertificateChainCleaner certificateChainCleanerD = this.a.d();
            Intrinsics.checkNotNull(certificateChainCleanerD);
            return certificateChainCleanerD.a(this.b.d(), this.c.getI().getF10576f());
        }
    }

    /* JADX INFO: compiled from: RealConnection.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Ljava/security/cert/X509Certificate;", "invoke"}, mv = {1, 6, 0}, xi = 48)
    static final class d extends Lambda implements Function0<List<? extends X509Certificate>> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<X509Certificate> invoke() {
            Handshake handshake = RealConnection.this.h;
            Intrinsics.checkNotNull(handshake);
            List<Certificate> listD = handshake.d();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listD, 10));
            Iterator<T> it = listD.iterator();
            while (it.hasNext()) {
                arrayList.add((X509Certificate) ((Certificate) it.next()));
            }
            return arrayList;
        }
    }

    public RealConnection(RealConnectionPool connectionPool, Route route) {
        Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
        Intrinsics.checkNotNullParameter(route, "route");
        this.f10673d = connectionPool;
        this.f10674e = route;
        this.r = 1;
        this.s = new ArrayList();
        this.t = Long.MAX_VALUE;
    }

    private final void D(int i) throws IOException {
        Socket socket = this.f10676g;
        Intrinsics.checkNotNull(socket);
        okio.e eVar = this.k;
        Intrinsics.checkNotNull(eVar);
        okio.d dVar = this.l;
        Intrinsics.checkNotNull(dVar);
        socket.setSoTimeout(0);
        Http2Connection http2ConnectionA = new Http2Connection.Builder(true, TaskRunner.b).s(socket, this.f10674e.getA().getI().getF10576f(), eVar, dVar).k(this).l(i).a();
        this.j = http2ConnectionA;
        this.r = Http2Connection.a.a().d();
        Http2Connection.start$default(http2ConnectionA, false, null, 3, null);
    }

    private final boolean E(HttpUrl httpUrl) {
        Handshake handshake;
        if (Util.h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        HttpUrl i = this.f10674e.getA().getI();
        if (httpUrl.getF10577g() != i.getF10577g()) {
            return false;
        }
        if (Intrinsics.areEqual(httpUrl.getF10576f(), i.getF10576f())) {
            return true;
        }
        if (this.n || (handshake = this.h) == null) {
            return false;
        }
        Intrinsics.checkNotNull(handshake);
        return d(httpUrl, handshake);
    }

    private final boolean d(HttpUrl httpUrl, Handshake handshake) {
        List<Certificate> listD = handshake.d();
        return (listD.isEmpty() ^ true) && OkHostnameVerifier.a.e(httpUrl.getF10576f(), (X509Certificate) listD.get(0));
    }

    private final void g(int i, int i2, Call call, EventListener eventListener) throws IOException {
        Socket socketCreateSocket;
        Proxy b2 = this.f10674e.getB();
        Address a2 = this.f10674e.getA();
        Proxy.Type type = b2.type();
        int i3 = type == null ? -1 : b.a[type.ordinal()];
        if (i3 == 1 || i3 == 2) {
            socketCreateSocket = a2.getB().createSocket();
            Intrinsics.checkNotNull(socketCreateSocket);
        } else {
            socketCreateSocket = new Socket(b2);
        }
        this.f10675f = socketCreateSocket;
        eventListener.j(call, this.f10674e.getC(), b2);
        socketCreateSocket.setSoTimeout(i2);
        try {
            Platform.a.f().e(socketCreateSocket, this.f10674e.getC(), i);
            try {
                this.k = Okio.buffer(Okio.source(socketCreateSocket));
                this.l = Okio.buffer(Okio.sink(socketCreateSocket));
            } catch (NullPointerException e2) {
                if (Intrinsics.areEqual(e2.getMessage(), "throw with null exception")) {
                    throw new IOException(e2);
                }
            }
        } catch (ConnectException e3) {
            ConnectException connectException = new ConnectException(Intrinsics.stringPlus("Failed to connect to ", this.f10674e.getC()));
            connectException.initCause(e3);
            throw connectException;
        }
    }

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
    private final void h(ConnectionSpecSelector connectionSpecSelector) throws Throwable {
        Address a2 = this.f10674e.getA();
        SSLSocketFactory c2 = a2.getC();
        SSLSocket sSLSocket = null;
        try {
            Intrinsics.checkNotNull(c2);
            Socket socketCreateSocket = c2.createSocket(this.f10675f, a2.getI().getF10576f(), a2.getI().getF10577g(), true);
            if (socketCreateSocket == null) {
                throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.SSLSocket");
            }
            SSLSocket sSLSocket2 = (SSLSocket) socketCreateSocket;
            try {
                ConnectionSpec connectionSpecA = connectionSpecSelector.a(sSLSocket2);
                if (connectionSpecA.getI()) {
                    Platform.a.f().d(sSLSocket2, a2.getI().getF10576f(), a2.f());
                }
                sSLSocket2.startHandshake();
                SSLSession sslSocketSession = sSLSocket2.getSession();
                Handshake.a aVar = Handshake.a;
                Intrinsics.checkNotNullExpressionValue(sslSocketSession, "sslSocketSession");
                Handshake handshakeA = aVar.a(sslSocketSession);
                HostnameVerifier f10624d = a2.getF10624d();
                Intrinsics.checkNotNull(f10624d);
                if (f10624d.verify(a2.getI().getF10576f(), sslSocketSession)) {
                    CertificatePinner f10625e = a2.getF10625e();
                    Intrinsics.checkNotNull(f10625e);
                    this.h = new Handshake(handshakeA.e(), handshakeA.a(), handshakeA.c(), new c(f10625e, handshakeA, a2));
                    f10625e.b(a2.getI().getF10576f(), new d());
                    String strG = connectionSpecA.getI() ? Platform.a.f().g(sSLSocket2) : null;
                    this.f10676g = sSLSocket2;
                    this.k = Okio.buffer(Okio.source(sSLSocket2));
                    this.l = Okio.buffer(Okio.sink(sSLSocket2));
                    this.i = strG != null ? Protocol.a.a(strG) : Protocol.HTTP_1_1;
                    Platform.a.f().a(sSLSocket2);
                    return;
                }
                List<Certificate> listD = handshakeA.d();
                if (!(!listD.isEmpty())) {
                    throw new SSLPeerUnverifiedException("Hostname " + a2.getI().getF10576f() + " not verified (no certificates)");
                }
                X509Certificate x509Certificate = (X509Certificate) listD.get(0);
                throw new SSLPeerUnverifiedException(StringsKt__IndentKt.trimMargin$default("\n              |Hostname " + a2.getI().getF10576f() + " not verified:\n              |    certificate: " + CertificatePinner.a.a(x509Certificate) + "\n              |    DN: " + ((Object) x509Certificate.getSubjectDN().getName()) + "\n              |    subjectAltNames: " + OkHostnameVerifier.a.a(x509Certificate) + "\n              ", null, 1, null));
            } catch (Throwable th) {
                th = th;
                sSLSocket = sSLSocket2;
                if (sSLSocket != null) {
                    Platform.a.f().a(sSLSocket);
                }
                if (sSLSocket != null) {
                    Util.closeQuietly((Socket) sSLSocket);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private final void i(int i, int i2, int i3, Call call, EventListener eventListener) throws IOException {
        Request requestK = k();
        HttpUrl a2 = requestK.getA();
        int i4 = 0;
        while (i4 < 21) {
            i4++;
            g(i, i2, call, eventListener);
            requestK = j(i2, i3, requestK, a2);
            if (requestK == null) {
                return;
            }
            Socket socket = this.f10675f;
            if (socket != null) {
                Util.closeQuietly(socket);
            }
            this.f10675f = null;
            this.l = null;
            this.k = null;
            eventListener.h(call, this.f10674e.getC(), this.f10674e.getB(), null);
        }
    }

    private final Request j(int i, int i2, Request request, HttpUrl httpUrl) throws IOException {
        String str = "CONNECT " + Util.toHostHeader(httpUrl, true) + " HTTP/1.1";
        while (true) {
            okio.e eVar = this.k;
            Intrinsics.checkNotNull(eVar);
            okio.d dVar = this.l;
            Intrinsics.checkNotNull(dVar);
            Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(null, this, eVar, dVar);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            eVar.timeout().g(i, timeUnit);
            dVar.timeout().g(i2, timeUnit);
            http1ExchangeCodec.o(request.getC(), str);
            http1ExchangeCodec.finishRequest();
            Response.a responseHeaders = http1ExchangeCodec.readResponseHeaders(false);
            Intrinsics.checkNotNull(responseHeaders);
            Response responseC = responseHeaders.s(request).c();
            http1ExchangeCodec.n(responseC);
            int code = responseC.getCode();
            if (code == 200) {
                if (eVar.y().exhausted() && dVar.y().exhausted()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (code != 407) {
                throw new IOException(Intrinsics.stringPlus("Unexpected response code for CONNECT: ", Integer.valueOf(responseC.getCode())));
            }
            Request requestA = this.f10674e.getA().getF10626f().a(this.f10674e, responseC);
            if (requestA == null) {
                throw new IOException("Failed to authenticate with proxy");
            }
            if (StringsKt__StringsJVMKt.equals("close", Response.header$default(responseC, "Connection", null, 2, null), true)) {
                return requestA;
            }
            request = requestA;
        }
    }

    private final Request k() throws IOException {
        Request requestB = new Request.Builder().p(this.f10674e.getA().getI()).h("CONNECT", null).f("Host", Util.toHostHeader(this.f10674e.getA().getI(), true)).f("Proxy-Connection", "Keep-Alive").f(Command.HTTP_HEADER_USER_AGENT, "okhttp/4.10.0").b();
        Request requestA = this.f10674e.getA().getF10626f().a(this.f10674e, new Response.a().s(requestB).q(Protocol.HTTP_1_1).g(TTAdConstant.DOWNLOAD_APP_INFO_CODE).n("Preemptive Authenticate").b(Util.c).t(-1L).r(-1L).k("Proxy-Authenticate", "OkHttp-Preemptive").c());
        return requestA == null ? requestB : requestA;
    }

    private final void l(ConnectionSpecSelector connectionSpecSelector, int i, Call call, EventListener eventListener) throws Throwable {
        if (this.f10674e.getA().getC() != null) {
            eventListener.C(call);
            h(connectionSpecSelector);
            eventListener.B(call, this.h);
            if (this.i == Protocol.HTTP_2) {
                D(i);
                return;
            }
            return;
        }
        List<Protocol> listF = this.f10674e.getA().f();
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        if (!listF.contains(protocol)) {
            this.f10676g = this.f10675f;
            this.i = Protocol.HTTP_1_1;
        } else {
            this.f10676g = this.f10675f;
            this.i = protocol;
            D(i);
        }
    }

    private final boolean z(List<Route> list) {
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (Route route : list) {
                if (route.getB().type() == Proxy.Type.DIRECT && this.f10674e.getB().type() == Proxy.Type.DIRECT && Intrinsics.areEqual(this.f10674e.getC(), route.getC())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void A(long j) {
        this.t = j;
    }

    public final void B(boolean z) {
        this.m = z;
    }

    public Socket C() {
        Socket socket = this.f10676g;
        Intrinsics.checkNotNull(socket);
        return socket;
    }

    public final synchronized void F(RealCall call, IOException iOException) {
        Intrinsics.checkNotNullParameter(call, "call");
        if (iOException instanceof StreamResetException) {
            if (((StreamResetException) iOException).a == ErrorCode.REFUSED_STREAM) {
                int i = this.q + 1;
                this.q = i;
                if (i > 1) {
                    this.m = true;
                    this.o++;
                }
            } else if (((StreamResetException) iOException).a != ErrorCode.CANCEL || !call.getP()) {
                this.m = true;
                this.o++;
            }
        } else if (!u() || (iOException instanceof ConnectionShutdownException)) {
            this.m = true;
            if (this.p == 0) {
                if (iOException != null) {
                    f(call.getA(), this.f10674e, iOException);
                }
                this.o++;
            }
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.b
    public synchronized void a(Http2Connection connection, Settings settings) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(settings, "settings");
        this.r = settings.d();
    }

    @Override // okhttp3.internal.http2.Http2Connection.b
    public void b(Http2Stream stream) throws IOException {
        Intrinsics.checkNotNullParameter(stream, "stream");
        stream.d(ErrorCode.REFUSED_STREAM, null);
    }

    public final void c() {
        Socket socket = this.f10675f;
        if (socket == null) {
            return;
        }
        Util.closeQuietly(socket);
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x014e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void e(int r17, int r18, int r19, int r20, boolean r21, okhttp3.Call r22, okhttp3.EventListener r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 360
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.RealConnection.e(int, int, int, int, boolean, okhttp3.c, okhttp3.k):void");
    }

    public final void f(OkHttpClient client, Route failedRoute, IOException failure) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(failedRoute, "failedRoute");
        Intrinsics.checkNotNullParameter(failure, "failure");
        if (failedRoute.getB().type() != Proxy.Type.DIRECT) {
            Address a2 = failedRoute.getA();
            a2.getH().connectFailed(a2.getI().p(), failedRoute.getB().address(), failure);
        }
        client.getG().b(failedRoute);
    }

    public final List<Reference<RealCall>> m() {
        return this.s;
    }

    public final long n() {
        return this.t;
    }

    public final boolean o() {
        return this.m;
    }

    public final int p() {
        return this.o;
    }

    public Handshake q() {
        return this.h;
    }

    public final synchronized void r() {
        this.p++;
    }

    public final boolean s(Address address, List<Route> list) {
        Intrinsics.checkNotNullParameter(address, "address");
        if (Util.h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        if (this.s.size() >= this.r || this.m || !this.f10674e.getA().d(address)) {
            return false;
        }
        if (Intrinsics.areEqual(address.getI().getF10576f(), y().getA().getI().getF10576f())) {
            return true;
        }
        if (this.j == null || list == null || !z(list) || address.getF10624d() != OkHostnameVerifier.a || !E(address.getI())) {
            return false;
        }
        try {
            CertificatePinner f10625e = address.getF10625e();
            Intrinsics.checkNotNull(f10625e);
            String f10576f = address.getI().getF10576f();
            Handshake handshakeQ = q();
            Intrinsics.checkNotNull(handshakeQ);
            f10625e.a(f10576f, handshakeQ.d());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public final boolean t(boolean z) {
        long jN;
        if (Util.h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        long jNanoTime = System.nanoTime();
        Socket socket = this.f10675f;
        Intrinsics.checkNotNull(socket);
        Socket socket2 = this.f10676g;
        Intrinsics.checkNotNull(socket2);
        okio.e eVar = this.k;
        Intrinsics.checkNotNull(eVar);
        if (socket.isClosed() || socket2.isClosed() || socket2.isInputShutdown() || socket2.isOutputShutdown()) {
            return false;
        }
        Http2Connection http2Connection = this.j;
        if (http2Connection != null) {
            return http2Connection.r(jNanoTime);
        }
        synchronized (this) {
            jN = jNanoTime - n();
        }
        if (jN < 10000000000L || !z) {
            return true;
        }
        return Util.isHealthy(socket2, eVar);
    }

    public String toString() {
        CipherSuite cipherSuiteA;
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.f10674e.getA().getI().getF10576f());
        sb.append(':');
        sb.append(this.f10674e.getA().getI().getF10577g());
        sb.append(", proxy=");
        sb.append(this.f10674e.getB());
        sb.append(" hostAddress=");
        sb.append(this.f10674e.getC());
        sb.append(" cipherSuite=");
        Handshake handshake = this.h;
        Object obj = "none";
        if (handshake != null && (cipherSuiteA = handshake.a()) != null) {
            obj = cipherSuiteA;
        }
        sb.append(obj);
        sb.append(" protocol=");
        sb.append(this.i);
        sb.append('}');
        return sb.toString();
    }

    public final boolean u() {
        return this.j != null;
    }

    public final ExchangeCodec v(OkHttpClient client, RealInterceptorChain chain) throws SocketException {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Socket socket = this.f10676g;
        Intrinsics.checkNotNull(socket);
        okio.e eVar = this.k;
        Intrinsics.checkNotNull(eVar);
        okio.d dVar = this.l;
        Intrinsics.checkNotNull(dVar);
        Http2Connection http2Connection = this.j;
        if (http2Connection != null) {
            return new Http2ExchangeCodec(client, this, chain, http2Connection);
        }
        socket.setSoTimeout(chain.i());
        z zVarTimeout = eVar.timeout();
        long jF = chain.getF10702g();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        zVarTimeout.g(jF, timeUnit);
        dVar.timeout().g(chain.getH(), timeUnit);
        return new Http1ExchangeCodec(client, this, eVar, dVar);
    }

    public final synchronized void w() {
        this.n = true;
    }

    public final synchronized void x() {
        this.m = true;
    }

    public Route y() {
        return this.f10674e;
    }
}
