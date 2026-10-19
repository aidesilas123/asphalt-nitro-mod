package okhttp3;

import android.support.v4.media.session.PlaybackStateCompat;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import java.net.Proxy;
import java.net.ProxySelector;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.proxy.NullProxySelector;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;

/* JADX INFO: compiled from: OkHttpClient.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000î\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0016\u0018\u0000 y2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002xyB\u0007\b\u0016¢\u0006\u0002\u0010\u0004B\u000f\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\r\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\bSJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007¢\u0006\u0002\bTJ\r\u0010\u000e\u001a\u00020\u000fH\u0007¢\u0006\u0002\bUJ\r\u0010\u0014\u001a\u00020\u0015H\u0007¢\u0006\u0002\bVJ\r\u0010\u0017\u001a\u00020\u000fH\u0007¢\u0006\u0002\bWJ\r\u0010\u0018\u001a\u00020\u0019H\u0007¢\u0006\u0002\bXJ\u0013\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0007¢\u0006\u0002\bYJ\r\u0010\u001f\u001a\u00020 H\u0007¢\u0006\u0002\bZJ\r\u0010\"\u001a\u00020#H\u0007¢\u0006\u0002\b[J\r\u0010%\u001a\u00020&H\u0007¢\u0006\u0002\b\\J\r\u0010(\u001a\u00020)H\u0007¢\u0006\u0002\b]J\r\u0010+\u001a\u00020,H\u0007¢\u0006\u0002\b^J\r\u0010.\u001a\u00020,H\u0007¢\u0006\u0002\b_J\r\u0010/\u001a\u000200H\u0007¢\u0006\u0002\b`J\u0013\u00102\u001a\b\u0012\u0004\u0012\u0002030\u001cH\u0007¢\u0006\u0002\baJ\u0013\u00107\u001a\b\u0012\u0004\u0012\u0002030\u001cH\u0007¢\u0006\u0002\bbJ\b\u0010c\u001a\u00020\u0006H\u0016J\u0010\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020gH\u0016J\u0018\u0010h\u001a\u00020i2\u0006\u0010f\u001a\u00020g2\u0006\u0010j\u001a\u00020kH\u0016J\r\u00108\u001a\u00020\u000fH\u0007¢\u0006\u0002\blJ\u0013\u00109\u001a\b\u0012\u0004\u0012\u00020:0\u001cH\u0007¢\u0006\u0002\bmJ\u000f\u0010;\u001a\u0004\u0018\u00010<H\u0007¢\u0006\u0002\bnJ\r\u0010>\u001a\u00020\tH\u0007¢\u0006\u0002\boJ\r\u0010?\u001a\u00020@H\u0007¢\u0006\u0002\bpJ\r\u0010B\u001a\u00020\u000fH\u0007¢\u0006\u0002\bqJ\r\u0010C\u001a\u00020,H\u0007¢\u0006\u0002\brJ\r\u0010H\u001a\u00020IH\u0007¢\u0006\u0002\bsJ\r\u0010K\u001a\u00020LH\u0007¢\u0006\u0002\btJ\b\u0010u\u001a\u00020vH\u0002J\r\u0010O\u001a\u00020\u000fH\u0007¢\u0006\u0002\bwR\u0013\u0010\b\u001a\u00020\t8G¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\nR\u0015\u0010\u000b\u001a\u0004\u0018\u00010\f8G¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\rR\u0013\u0010\u000e\u001a\u00020\u000f8G¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0010R\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u00128G¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0013R\u0013\u0010\u0014\u001a\u00020\u00158G¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0016R\u0013\u0010\u0017\u001a\u00020\u000f8G¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0013\u0010\u0018\u001a\u00020\u00198G¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u001aR\u0019\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8G¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001eR\u0013\u0010\u001f\u001a\u00020 8G¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010!R\u0013\u0010\"\u001a\u00020#8G¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010$R\u0013\u0010%\u001a\u00020&8G¢\u0006\b\n\u0000\u001a\u0004\b%\u0010'R\u0013\u0010(\u001a\u00020)8G¢\u0006\b\n\u0000\u001a\u0004\b(\u0010*R\u0013\u0010+\u001a\u00020,8G¢\u0006\b\n\u0000\u001a\u0004\b+\u0010-R\u0013\u0010.\u001a\u00020,8G¢\u0006\b\n\u0000\u001a\u0004\b.\u0010-R\u0013\u0010/\u001a\u0002008G¢\u0006\b\n\u0000\u001a\u0004\b/\u00101R\u0019\u00102\u001a\b\u0012\u0004\u0012\u0002030\u001c8G¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u001eR\u0013\u00104\u001a\u0002058G¢\u0006\b\n\u0000\u001a\u0004\b4\u00106R\u0019\u00107\u001a\b\u0012\u0004\u0012\u0002030\u001c8G¢\u0006\b\n\u0000\u001a\u0004\b7\u0010\u001eR\u0013\u00108\u001a\u00020\u000f8G¢\u0006\b\n\u0000\u001a\u0004\b8\u0010\u0010R\u0019\u00109\u001a\b\u0012\u0004\u0012\u00020:0\u001c8G¢\u0006\b\n\u0000\u001a\u0004\b9\u0010\u001eR\u0015\u0010;\u001a\u0004\u0018\u00010<8G¢\u0006\b\n\u0000\u001a\u0004\b;\u0010=R\u0013\u0010>\u001a\u00020\t8G¢\u0006\b\n\u0000\u001a\u0004\b>\u0010\nR\u0013\u0010?\u001a\u00020@8G¢\u0006\b\n\u0000\u001a\u0004\b?\u0010AR\u0013\u0010B\u001a\u00020\u000f8G¢\u0006\b\n\u0000\u001a\u0004\bB\u0010\u0010R\u0013\u0010C\u001a\u00020,8G¢\u0006\b\n\u0000\u001a\u0004\bC\u0010-R\u0011\u0010D\u001a\u00020E¢\u0006\b\n\u0000\u001a\u0004\bF\u0010GR\u0013\u0010H\u001a\u00020I8G¢\u0006\b\n\u0000\u001a\u0004\bH\u0010JR\u0011\u0010K\u001a\u00020L8G¢\u0006\u0006\u001a\u0004\bK\u0010MR\u0010\u0010N\u001a\u0004\u0018\u00010LX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010O\u001a\u00020\u000f8G¢\u0006\b\n\u0000\u001a\u0004\bO\u0010\u0010R\u0015\u0010P\u001a\u0004\u0018\u00010Q8G¢\u0006\b\n\u0000\u001a\u0004\bP\u0010R¨\u0006z"}, d2 = {"Lokhttp3/OkHttpClient;", "", "Lokhttp3/Call$Factory;", "Lokhttp3/WebSocket$Factory;", "()V", "builder", "Lokhttp3/OkHttpClient$Builder;", "(Lokhttp3/OkHttpClient$Builder;)V", "authenticator", "Lokhttp3/Authenticator;", "()Lokhttp3/Authenticator;", WebPreferenceConstants.CLEAR_CACHE_EXIT, "Lokhttp3/Cache;", "()Lokhttp3/Cache;", "callTimeoutMillis", "", "()I", "certificateChainCleaner", "Lokhttp3/internal/tls/CertificateChainCleaner;", "()Lokhttp3/internal/tls/CertificateChainCleaner;", "certificatePinner", "Lokhttp3/CertificatePinner;", "()Lokhttp3/CertificatePinner;", "connectTimeoutMillis", "connectionPool", "Lokhttp3/ConnectionPool;", "()Lokhttp3/ConnectionPool;", "connectionSpecs", "", "Lokhttp3/ConnectionSpec;", "()Ljava/util/List;", "cookieJar", "Lokhttp3/CookieJar;", "()Lokhttp3/CookieJar;", "dispatcher", "Lokhttp3/Dispatcher;", "()Lokhttp3/Dispatcher;", AppLovinSdkExtraParameterKey.DO_NOT_SELL, "Lokhttp3/Dns;", "()Lokhttp3/Dns;", "eventListenerFactory", "Lokhttp3/EventListener$Factory;", "()Lokhttp3/EventListener$Factory;", "followRedirects", "", "()Z", "followSslRedirects", "hostnameVerifier", "Ljavax/net/ssl/HostnameVerifier;", "()Ljavax/net/ssl/HostnameVerifier;", "interceptors", "Lokhttp3/Interceptor;", "minWebSocketMessageToCompress", "", "()J", "networkInterceptors", "pingIntervalMillis", "protocols", "Lokhttp3/Protocol;", "proxy", "Ljava/net/Proxy;", "()Ljava/net/Proxy;", "proxyAuthenticator", "proxySelector", "Ljava/net/ProxySelector;", "()Ljava/net/ProxySelector;", "readTimeoutMillis", "retryOnConnectionFailure", "routeDatabase", "Lokhttp3/internal/connection/RouteDatabase;", "getRouteDatabase", "()Lokhttp3/internal/connection/RouteDatabase;", "socketFactory", "Ljavax/net/SocketFactory;", "()Ljavax/net/SocketFactory;", "sslSocketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "()Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactoryOrNull", "writeTimeoutMillis", "x509TrustManager", "Ljavax/net/ssl/X509TrustManager;", "()Ljavax/net/ssl/X509TrustManager;", "-deprecated_authenticator", "-deprecated_cache", "-deprecated_callTimeoutMillis", "-deprecated_certificatePinner", "-deprecated_connectTimeoutMillis", "-deprecated_connectionPool", "-deprecated_connectionSpecs", "-deprecated_cookieJar", "-deprecated_dispatcher", "-deprecated_dns", "-deprecated_eventListenerFactory", "-deprecated_followRedirects", "-deprecated_followSslRedirects", "-deprecated_hostnameVerifier", "-deprecated_interceptors", "-deprecated_networkInterceptors", "newBuilder", "newCall", "Lokhttp3/Call;", "request", "Lokhttp3/Request;", "newWebSocket", "Lokhttp3/WebSocket;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lokhttp3/WebSocketListener;", "-deprecated_pingIntervalMillis", "-deprecated_protocols", "-deprecated_proxy", "-deprecated_proxyAuthenticator", "-deprecated_proxySelector", "-deprecated_readTimeoutMillis", "-deprecated_retryOnConnectionFailure", "-deprecated_socketFactory", "-deprecated_sslSocketFactory", "verifyClientState", "", "-deprecated_writeTimeoutMillis", "Builder", "Companion", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public class OkHttpClient implements Cloneable, Call.a {
    public static final b a = new b(null);
    private static final List<Protocol> b = Util.immutableListOf(Protocol.HTTP_2, Protocol.HTTP_1_1);
    private static final List<ConnectionSpec> c = Util.immutableListOf(ConnectionSpec.f10564e, ConnectionSpec.f10566g);
    private final int A;
    private final int B;
    private final int C;
    private final int D;
    private final int E;
    private final long F;
    private final RouteDatabase G;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Dispatcher f10593d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ConnectionPool f10594e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<Interceptor> f10595f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<Interceptor> f10596g;
    private final EventListener.c h;
    private final boolean i;
    private final Authenticator j;
    private final boolean k;
    private final boolean l;
    private final CookieJar m;
    private final Cache n;
    private final Dns o;
    private final Proxy p;
    private final ProxySelector q;
    private final Authenticator r;
    private final SocketFactory s;
    private final SSLSocketFactory t;
    private final X509TrustManager u;
    private final List<ConnectionSpec> v;
    private final List<Protocol> w;
    private final HostnameVerifier x;
    private final CertificatePinner y;
    private final CertificateChainCleaner z;

    /* JADX INFO: compiled from: OkHttpClient.kt */
    @Metadata(d1 = {"\u0000ø\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0005¢\u0006\u0002\u0010\u0005J?\u0010\u009e\u0001\u001a\u00020\u00002*\b\u0004\u0010\u009f\u0001\u001a#\u0012\u0017\u0012\u00150¡\u0001¢\u0006\u000f\b¢\u0001\u0012\n\b£\u0001\u0012\u0005\b\b(¤\u0001\u0012\u0005\u0012\u00030¥\u00010 \u0001H\u0087\bø\u0001\u0000¢\u0006\u0003\b¦\u0001J\u0010\u0010\u009e\u0001\u001a\u00020\u00002\u0007\u0010§\u0001\u001a\u00020]J?\u0010¨\u0001\u001a\u00020\u00002*\b\u0004\u0010\u009f\u0001\u001a#\u0012\u0017\u0012\u00150¡\u0001¢\u0006\u000f\b¢\u0001\u0012\n\b£\u0001\u0012\u0005\b\b(¤\u0001\u0012\u0005\u0012\u00030¥\u00010 \u0001H\u0087\bø\u0001\u0000¢\u0006\u0003\b©\u0001J\u0010\u0010¨\u0001\u001a\u00020\u00002\u0007\u0010§\u0001\u001a\u00020]J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0007\u0010ª\u0001\u001a\u00020\u0003J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0012\u0010\u0012\u001a\u00020\u00002\b\u0010«\u0001\u001a\u00030¬\u0001H\u0007J\u0019\u0010\u0012\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020`2\b\u0010®\u0001\u001a\u00030¯\u0001J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001fJ\u0012\u0010$\u001a\u00020\u00002\b\u0010«\u0001\u001a\u00030¬\u0001H\u0007J\u0019\u0010$\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020`2\b\u0010®\u0001\u001a\u00030¯\u0001J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010'\u001a\u00020(J\u0014\u0010-\u001a\u00020\u00002\f\u0010-\u001a\b\u0012\u0004\u0012\u00020/0.J\u000e\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u000205J\u000e\u0010:\u001a\u00020\u00002\u0006\u0010:\u001a\u00020;J\u000e\u0010@\u001a\u00020\u00002\u0006\u0010@\u001a\u00020AJ\u0011\u0010°\u0001\u001a\u00020\u00002\b\u0010°\u0001\u001a\u00030±\u0001J\u000e\u0010F\u001a\u00020\u00002\u0006\u0010F\u001a\u00020GJ\u000e\u0010L\u001a\u00020\u00002\u0006\u0010L\u001a\u00020MJ\u000f\u0010R\u001a\u00020\u00002\u0007\u0010²\u0001\u001a\u00020MJ\u000e\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020VJ\f\u0010[\u001a\b\u0012\u0004\u0012\u00020]0\\J\u000f\u0010_\u001a\u00020\u00002\u0007\u0010³\u0001\u001a\u00020`J\f\u0010e\u001a\b\u0012\u0004\u0012\u00020]0\\J\u0012\u0010g\u001a\u00020\u00002\b\u0010«\u0001\u001a\u00030¬\u0001H\u0007J\u0019\u0010g\u001a\u00020\u00002\u0007\u0010´\u0001\u001a\u00020`2\b\u0010®\u0001\u001a\u00030¯\u0001J\u0014\u0010j\u001a\u00020\u00002\f\u0010j\u001a\b\u0012\u0004\u0012\u00020k0.J\u0010\u0010n\u001a\u00020\u00002\b\u0010n\u001a\u0004\u0018\u00010oJ\u000e\u0010t\u001a\u00020\u00002\u0006\u0010t\u001a\u00020\u0007J\u000e\u0010w\u001a\u00020\u00002\u0006\u0010w\u001a\u00020xJ\u0012\u0010}\u001a\u00020\u00002\b\u0010«\u0001\u001a\u00030¬\u0001H\u0007J\u0019\u0010}\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020`2\b\u0010®\u0001\u001a\u00030¯\u0001J\u0010\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0080\u0001\u001a\u00020MJ\u0011\u0010\u0089\u0001\u001a\u00020\u00002\b\u0010\u0089\u0001\u001a\u00030\u008a\u0001J\u0013\u0010µ\u0001\u001a\u00020\u00002\b\u0010µ\u0001\u001a\u00030\u0090\u0001H\u0007J\u001b\u0010µ\u0001\u001a\u00020\u00002\b\u0010µ\u0001\u001a\u00030\u0090\u00012\b\u0010¶\u0001\u001a\u00030\u0099\u0001J\u0013\u0010\u0095\u0001\u001a\u00020\u00002\b\u0010«\u0001\u001a\u00030¬\u0001H\u0007J\u001a\u0010\u0095\u0001\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020`2\b\u0010®\u0001\u001a\u00030¯\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010$\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0015\"\u0004\b&\u0010\u0017R\u001a\u0010'\u001a\u00020(X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R \u0010-\u001a\b\u0012\u0004\u0012\u00020/0.X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001a\u00104\u001a\u000205X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001a\u0010:\u001a\u00020;X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u001a\u0010@\u001a\u00020AX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\u001a\u0010F\u001a\u00020GX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001a\u0010L\u001a\u00020MX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u001a\u0010R\u001a\u00020MX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010O\"\u0004\bT\u0010QR\u001a\u0010U\u001a\u00020VX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u001a\u0010[\u001a\b\u0012\u0004\u0012\u00020]0\\X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b^\u00101R\u001a\u0010_\u001a\u00020`X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR\u001a\u0010e\u001a\b\u0012\u0004\u0012\u00020]0\\X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bf\u00101R\u001a\u0010g\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bh\u0010\u0015\"\u0004\bi\u0010\u0017R \u0010j\u001a\b\u0012\u0004\u0012\u00020k0.X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bl\u00101\"\u0004\bm\u00103R\u001c\u0010n\u001a\u0004\u0018\u00010oX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bp\u0010q\"\u0004\br\u0010sR\u001a\u0010t\u001a\u00020\u0007X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bu\u0010\t\"\u0004\bv\u0010\u000bR\u001c\u0010w\u001a\u0004\u0018\u00010xX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\by\u0010z\"\u0004\b{\u0010|R\u001a\u0010}\u001a\u00020\u0013X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b~\u0010\u0015\"\u0004\b\u007f\u0010\u0017R\u001d\u0010\u0080\u0001\u001a\u00020MX\u0080\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0081\u0001\u0010O\"\u0005\b\u0082\u0001\u0010QR\"\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u0001X\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001\"\u0006\b\u0087\u0001\u0010\u0088\u0001R \u0010\u0089\u0001\u001a\u00030\u008a\u0001X\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001\"\u0006\b\u008d\u0001\u0010\u008e\u0001R\"\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0090\u0001X\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0091\u0001\u0010\u0092\u0001\"\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001d\u0010\u0095\u0001\u001a\u00020\u0013X\u0080\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0096\u0001\u0010\u0015\"\u0005\b\u0097\u0001\u0010\u0017R\"\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u0001X\u0080\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u009a\u0001\u0010\u009b\u0001\"\u0006\b\u009c\u0001\u0010\u009d\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006·\u0001"}, d2 = {"Lokhttp3/OkHttpClient$Builder;", "", "okHttpClient", "Lokhttp3/OkHttpClient;", "(Lokhttp3/OkHttpClient;)V", "()V", "authenticator", "Lokhttp3/Authenticator;", "getAuthenticator$okhttp", "()Lokhttp3/Authenticator;", "setAuthenticator$okhttp", "(Lokhttp3/Authenticator;)V", WebPreferenceConstants.CLEAR_CACHE_EXIT, "Lokhttp3/Cache;", "getCache$okhttp", "()Lokhttp3/Cache;", "setCache$okhttp", "(Lokhttp3/Cache;)V", "callTimeout", "", "getCallTimeout$okhttp", "()I", "setCallTimeout$okhttp", "(I)V", "certificateChainCleaner", "Lokhttp3/internal/tls/CertificateChainCleaner;", "getCertificateChainCleaner$okhttp", "()Lokhttp3/internal/tls/CertificateChainCleaner;", "setCertificateChainCleaner$okhttp", "(Lokhttp3/internal/tls/CertificateChainCleaner;)V", "certificatePinner", "Lokhttp3/CertificatePinner;", "getCertificatePinner$okhttp", "()Lokhttp3/CertificatePinner;", "setCertificatePinner$okhttp", "(Lokhttp3/CertificatePinner;)V", "connectTimeout", "getConnectTimeout$okhttp", "setConnectTimeout$okhttp", "connectionPool", "Lokhttp3/ConnectionPool;", "getConnectionPool$okhttp", "()Lokhttp3/ConnectionPool;", "setConnectionPool$okhttp", "(Lokhttp3/ConnectionPool;)V", "connectionSpecs", "", "Lokhttp3/ConnectionSpec;", "getConnectionSpecs$okhttp", "()Ljava/util/List;", "setConnectionSpecs$okhttp", "(Ljava/util/List;)V", "cookieJar", "Lokhttp3/CookieJar;", "getCookieJar$okhttp", "()Lokhttp3/CookieJar;", "setCookieJar$okhttp", "(Lokhttp3/CookieJar;)V", "dispatcher", "Lokhttp3/Dispatcher;", "getDispatcher$okhttp", "()Lokhttp3/Dispatcher;", "setDispatcher$okhttp", "(Lokhttp3/Dispatcher;)V", AppLovinSdkExtraParameterKey.DO_NOT_SELL, "Lokhttp3/Dns;", "getDns$okhttp", "()Lokhttp3/Dns;", "setDns$okhttp", "(Lokhttp3/Dns;)V", "eventListenerFactory", "Lokhttp3/EventListener$Factory;", "getEventListenerFactory$okhttp", "()Lokhttp3/EventListener$Factory;", "setEventListenerFactory$okhttp", "(Lokhttp3/EventListener$Factory;)V", "followRedirects", "", "getFollowRedirects$okhttp", "()Z", "setFollowRedirects$okhttp", "(Z)V", "followSslRedirects", "getFollowSslRedirects$okhttp", "setFollowSslRedirects$okhttp", "hostnameVerifier", "Ljavax/net/ssl/HostnameVerifier;", "getHostnameVerifier$okhttp", "()Ljavax/net/ssl/HostnameVerifier;", "setHostnameVerifier$okhttp", "(Ljavax/net/ssl/HostnameVerifier;)V", "interceptors", "", "Lokhttp3/Interceptor;", "getInterceptors$okhttp", "minWebSocketMessageToCompress", "", "getMinWebSocketMessageToCompress$okhttp", "()J", "setMinWebSocketMessageToCompress$okhttp", "(J)V", "networkInterceptors", "getNetworkInterceptors$okhttp", "pingInterval", "getPingInterval$okhttp", "setPingInterval$okhttp", "protocols", "Lokhttp3/Protocol;", "getProtocols$okhttp", "setProtocols$okhttp", "proxy", "Ljava/net/Proxy;", "getProxy$okhttp", "()Ljava/net/Proxy;", "setProxy$okhttp", "(Ljava/net/Proxy;)V", "proxyAuthenticator", "getProxyAuthenticator$okhttp", "setProxyAuthenticator$okhttp", "proxySelector", "Ljava/net/ProxySelector;", "getProxySelector$okhttp", "()Ljava/net/ProxySelector;", "setProxySelector$okhttp", "(Ljava/net/ProxySelector;)V", "readTimeout", "getReadTimeout$okhttp", "setReadTimeout$okhttp", "retryOnConnectionFailure", "getRetryOnConnectionFailure$okhttp", "setRetryOnConnectionFailure$okhttp", "routeDatabase", "Lokhttp3/internal/connection/RouteDatabase;", "getRouteDatabase$okhttp", "()Lokhttp3/internal/connection/RouteDatabase;", "setRouteDatabase$okhttp", "(Lokhttp3/internal/connection/RouteDatabase;)V", "socketFactory", "Ljavax/net/SocketFactory;", "getSocketFactory$okhttp", "()Ljavax/net/SocketFactory;", "setSocketFactory$okhttp", "(Ljavax/net/SocketFactory;)V", "sslSocketFactoryOrNull", "Ljavax/net/ssl/SSLSocketFactory;", "getSslSocketFactoryOrNull$okhttp", "()Ljavax/net/ssl/SSLSocketFactory;", "setSslSocketFactoryOrNull$okhttp", "(Ljavax/net/ssl/SSLSocketFactory;)V", "writeTimeout", "getWriteTimeout$okhttp", "setWriteTimeout$okhttp", "x509TrustManagerOrNull", "Ljavax/net/ssl/X509TrustManager;", "getX509TrustManagerOrNull$okhttp", "()Ljavax/net/ssl/X509TrustManager;", "setX509TrustManagerOrNull$okhttp", "(Ljavax/net/ssl/X509TrustManager;)V", "addInterceptor", "block", "Lkotlin/Function1;", "Lokhttp3/Interceptor$Chain;", "Lkotlin/ParameterName;", "name", "chain", "Lokhttp3/Response;", "-addInterceptor", "interceptor", "addNetworkInterceptor", "-addNetworkInterceptor", "build", "duration", "Ljava/time/Duration;", "timeout", "unit", "Ljava/util/concurrent/TimeUnit;", "eventListener", "Lokhttp3/EventListener;", "followProtocolRedirects", "bytes", "interval", "sslSocketFactory", "trustManager", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class a {
        private int A;
        private int B;
        private long C;
        private RouteDatabase D;
        private Dispatcher a;
        private ConnectionPool b;
        private final List<Interceptor> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<Interceptor> f10597d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private EventListener.c f10598e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f10599f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Authenticator f10600g;
        private boolean h;
        private boolean i;
        private CookieJar j;
        private Cache k;
        private Dns l;
        private Proxy m;
        private ProxySelector n;
        private Authenticator o;
        private SocketFactory p;
        private SSLSocketFactory q;
        private X509TrustManager r;
        private List<ConnectionSpec> s;
        private List<? extends Protocol> t;
        private HostnameVerifier u;
        private CertificatePinner v;
        private CertificateChainCleaner w;
        private int x;
        private int y;
        private int z;

        public a() {
            this.a = new Dispatcher();
            this.b = new ConnectionPool();
            this.c = new ArrayList();
            this.f10597d = new ArrayList();
            this.f10598e = Util.asFactory(EventListener.b);
            this.f10599f = true;
            Authenticator authenticator = Authenticator.b;
            this.f10600g = authenticator;
            this.h = true;
            this.i = true;
            this.j = CookieJar.b;
            this.l = Dns.b;
            this.o = authenticator;
            SocketFactory socketFactory = SocketFactory.getDefault();
            Intrinsics.checkNotNullExpressionValue(socketFactory, "getDefault()");
            this.p = socketFactory;
            b bVar = OkHttpClient.a;
            this.s = bVar.a();
            this.t = bVar.b();
            this.u = OkHostnameVerifier.a;
            this.v = CertificatePinner.b;
            this.y = 10000;
            this.z = 10000;
            this.A = 10000;
            this.C = PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public a(OkHttpClient okHttpClient) {
            this();
            Intrinsics.checkNotNullParameter(okHttpClient, "okHttpClient");
            this.a = okHttpClient.getF10593d();
            this.b = okHttpClient.getF10594e();
            CollectionsKt__MutableCollectionsKt.addAll(this.c, okHttpClient.t());
            CollectionsKt__MutableCollectionsKt.addAll(this.f10597d, okHttpClient.v());
            this.f10598e = okHttpClient.getH();
            this.f10599f = okHttpClient.getI();
            this.f10600g = okHttpClient.getJ();
            this.h = okHttpClient.getK();
            this.i = okHttpClient.getL();
            this.j = okHttpClient.getM();
            this.k = okHttpClient.getN();
            this.l = okHttpClient.getO();
            this.m = okHttpClient.getP();
            this.n = okHttpClient.getQ();
            this.o = okHttpClient.getR();
            this.p = okHttpClient.getS();
            this.q = okHttpClient.t;
            this.r = okHttpClient.getU();
            this.s = okHttpClient.k();
            this.t = okHttpClient.y();
            this.u = okHttpClient.getX();
            this.v = okHttpClient.getY();
            this.w = okHttpClient.getZ();
            this.x = okHttpClient.getA();
            this.y = okHttpClient.getB();
            this.z = okHttpClient.getC();
            this.A = okHttpClient.getD();
            this.B = okHttpClient.getE();
            this.C = okHttpClient.getF();
            this.D = okHttpClient.getG();
        }

        /* JADX INFO: renamed from: A, reason: from getter */
        public final Proxy getM() {
            return this.m;
        }

        /* JADX INFO: renamed from: B, reason: from getter */
        public final Authenticator getO() {
            return this.o;
        }

        /* JADX INFO: renamed from: C, reason: from getter */
        public final ProxySelector getN() {
            return this.n;
        }

        /* JADX INFO: renamed from: D, reason: from getter */
        public final int getZ() {
            return this.z;
        }

        /* JADX INFO: renamed from: E, reason: from getter */
        public final boolean getF10599f() {
            return this.f10599f;
        }

        /* JADX INFO: renamed from: F, reason: from getter */
        public final RouteDatabase getD() {
            return this.D;
        }

        /* JADX INFO: renamed from: G, reason: from getter */
        public final SocketFactory getP() {
            return this.p;
        }

        /* JADX INFO: renamed from: H, reason: from getter */
        public final SSLSocketFactory getQ() {
            return this.q;
        }

        /* JADX INFO: renamed from: I, reason: from getter */
        public final int getA() {
            return this.A;
        }

        /* JADX INFO: renamed from: J, reason: from getter */
        public final X509TrustManager getR() {
            return this.r;
        }

        public final a K(ProxySelector proxySelector) {
            Intrinsics.checkNotNullParameter(proxySelector, "proxySelector");
            if (!Intrinsics.areEqual(proxySelector, getN())) {
                S(null);
            }
            Q(proxySelector);
            return this;
        }

        public final a L(long j, TimeUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            R(Util.checkDuration("timeout", j, unit));
            return this;
        }

        public final void M(Cache cache) {
            this.k = cache;
        }

        public final void N(int i) {
            this.y = i;
        }

        public final void O(boolean z) {
            this.h = z;
        }

        public final void P(boolean z) {
            this.i = z;
        }

        public final void Q(ProxySelector proxySelector) {
            this.n = proxySelector;
        }

        public final void R(int i) {
            this.z = i;
        }

        public final void S(RouteDatabase routeDatabase) {
            this.D = routeDatabase;
        }

        public final a a(Interceptor interceptor) {
            Intrinsics.checkNotNullParameter(interceptor, "interceptor");
            v().add(interceptor);
            return this;
        }

        public final OkHttpClient b() {
            return new OkHttpClient(this);
        }

        public final a c(Cache cache) {
            M(cache);
            return this;
        }

        public final a d(long j, TimeUnit unit) {
            Intrinsics.checkNotNullParameter(unit, "unit");
            N(Util.checkDuration("timeout", j, unit));
            return this;
        }

        public final a e(boolean z) {
            O(z);
            return this;
        }

        public final a f(boolean z) {
            P(z);
            return this;
        }

        /* JADX INFO: renamed from: g, reason: from getter */
        public final Authenticator getF10600g() {
            return this.f10600g;
        }

        /* JADX INFO: renamed from: h, reason: from getter */
        public final Cache getK() {
            return this.k;
        }

        /* JADX INFO: renamed from: i, reason: from getter */
        public final int getX() {
            return this.x;
        }

        /* JADX INFO: renamed from: j, reason: from getter */
        public final CertificateChainCleaner getW() {
            return this.w;
        }

        /* JADX INFO: renamed from: k, reason: from getter */
        public final CertificatePinner getV() {
            return this.v;
        }

        /* JADX INFO: renamed from: l, reason: from getter */
        public final int getY() {
            return this.y;
        }

        /* JADX INFO: renamed from: m, reason: from getter */
        public final ConnectionPool getB() {
            return this.b;
        }

        public final List<ConnectionSpec> n() {
            return this.s;
        }

        /* JADX INFO: renamed from: o, reason: from getter */
        public final CookieJar getJ() {
            return this.j;
        }

        /* JADX INFO: renamed from: p, reason: from getter */
        public final Dispatcher getA() {
            return this.a;
        }

        /* JADX INFO: renamed from: q, reason: from getter */
        public final Dns getL() {
            return this.l;
        }

        /* JADX INFO: renamed from: r, reason: from getter */
        public final EventListener.c getF10598e() {
            return this.f10598e;
        }

        /* JADX INFO: renamed from: s, reason: from getter */
        public final boolean getH() {
            return this.h;
        }

        /* JADX INFO: renamed from: t, reason: from getter */
        public final boolean getI() {
            return this.i;
        }

        /* JADX INFO: renamed from: u, reason: from getter */
        public final HostnameVerifier getU() {
            return this.u;
        }

        public final List<Interceptor> v() {
            return this.c;
        }

        /* JADX INFO: renamed from: w, reason: from getter */
        public final long getC() {
            return this.C;
        }

        public final List<Interceptor> x() {
            return this.f10597d;
        }

        /* JADX INFO: renamed from: y, reason: from getter */
        public final int getB() {
            return this.B;
        }

        public final List<Protocol> z() {
            return this.t;
        }
    }

    /* JADX INFO: compiled from: OkHttpClient.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007¨\u0006\u000b"}, d2 = {"Lokhttp3/OkHttpClient$Companion;", "", "()V", "DEFAULT_CONNECTION_SPECS", "", "Lokhttp3/ConnectionSpec;", "getDEFAULT_CONNECTION_SPECS$okhttp", "()Ljava/util/List;", "DEFAULT_PROTOCOLS", "Lokhttp3/Protocol;", "getDEFAULT_PROTOCOLS$okhttp", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }

        public final List<ConnectionSpec> a() {
            return OkHttpClient.c;
        }

        public final List<Protocol> b() {
            return OkHttpClient.b;
        }
    }

    public OkHttpClient() {
        this(new a());
    }

    public OkHttpClient(a builder) throws NoSuchAlgorithmException, KeyStoreException {
        ProxySelector n;
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.f10593d = builder.getA();
        this.f10594e = builder.getB();
        this.f10595f = Util.toImmutableList(builder.v());
        this.f10596g = Util.toImmutableList(builder.x());
        this.h = builder.getF10598e();
        this.i = builder.getF10599f();
        this.j = builder.getF10600g();
        this.k = builder.getH();
        this.l = builder.getI();
        this.m = builder.getJ();
        this.n = builder.getK();
        this.o = builder.getL();
        this.p = builder.getM();
        if (builder.getM() != null) {
            n = NullProxySelector.a;
        } else {
            n = builder.getN();
            n = n == null ? ProxySelector.getDefault() : n;
            if (n == null) {
                n = NullProxySelector.a;
            }
        }
        this.q = n;
        this.r = builder.getO();
        this.s = builder.getP();
        List<ConnectionSpec> listN = builder.n();
        this.v = listN;
        this.w = builder.z();
        this.x = builder.getU();
        this.A = builder.getX();
        this.B = builder.getY();
        this.C = builder.getZ();
        this.D = builder.getA();
        this.E = builder.getB();
        this.F = builder.getC();
        RouteDatabase d2 = builder.getD();
        this.G = d2 == null ? new RouteDatabase() : d2;
        boolean z = true;
        if (!(listN instanceof Collection) || !listN.isEmpty()) {
            Iterator<T> it = listN.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((ConnectionSpec) it.next()).getH()) {
                    z = false;
                    break;
                }
            }
        }
        if (z) {
            this.t = null;
            this.z = null;
            this.u = null;
            this.y = CertificatePinner.b;
        } else if (builder.getQ() != null) {
            this.t = builder.getQ();
            CertificateChainCleaner w = builder.getW();
            Intrinsics.checkNotNull(w);
            this.z = w;
            X509TrustManager r = builder.getR();
            Intrinsics.checkNotNull(r);
            this.u = r;
            CertificatePinner v = builder.getV();
            Intrinsics.checkNotNull(w);
            this.y = v.e(w);
        } else {
            Platform.Companion companion = Platform.a;
            X509TrustManager x509TrustManagerN = companion.f().n();
            this.u = x509TrustManagerN;
            Platform platformF = companion.f();
            Intrinsics.checkNotNull(x509TrustManagerN);
            this.t = platformF.m(x509TrustManagerN);
            CertificateChainCleaner.a aVar = CertificateChainCleaner.a;
            Intrinsics.checkNotNull(x509TrustManagerN);
            CertificateChainCleaner certificateChainCleanerA = aVar.a(x509TrustManagerN);
            this.z = certificateChainCleanerA;
            CertificatePinner v2 = builder.getV();
            Intrinsics.checkNotNull(certificateChainCleanerA);
            this.y = v2.e(certificateChainCleanerA);
        }
        G();
    }

    private final void G() {
        boolean z;
        if (!(!this.f10595f.contains(null))) {
            throw new IllegalStateException(Intrinsics.stringPlus("Null interceptor: ", t()).toString());
        }
        if (!(!this.f10596g.contains(null))) {
            throw new IllegalStateException(Intrinsics.stringPlus("Null network interceptor: ", v()).toString());
        }
        List<ConnectionSpec> list = this.v;
        if ((list instanceof Collection) && list.isEmpty()) {
            z = true;
        } else {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (((ConnectionSpec) it.next()).getH()) {
                    z = false;
                    break;
                }
            }
            z = true;
        }
        if (!z) {
            if (this.t == null) {
                throw new IllegalStateException("sslSocketFactory == null".toString());
            }
            if (this.z == null) {
                throw new IllegalStateException("certificateChainCleaner == null".toString());
            }
            if (this.u == null) {
                throw new IllegalStateException("x509TrustManager == null".toString());
            }
            return;
        }
        if (!(this.t == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!(this.z == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!(this.u == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!Intrinsics.areEqual(this.y, CertificatePinner.b)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    /* JADX INFO: renamed from: A, reason: from getter */
    public final Authenticator getR() {
        return this.r;
    }

    /* JADX INFO: renamed from: B, reason: from getter */
    public final ProxySelector getQ() {
        return this.q;
    }

    /* JADX INFO: renamed from: C, reason: from getter */
    public final int getC() {
        return this.C;
    }

    /* JADX INFO: renamed from: D, reason: from getter */
    public final boolean getI() {
        return this.i;
    }

    /* JADX INFO: renamed from: E, reason: from getter */
    public final SocketFactory getS() {
        return this.s;
    }

    public final SSLSocketFactory F() {
        SSLSocketFactory sSLSocketFactory = this.t;
        if (sSLSocketFactory != null) {
            return sSLSocketFactory;
        }
        throw new IllegalStateException("CLEARTEXT-only client");
    }

    /* JADX INFO: renamed from: H, reason: from getter */
    public final int getD() {
        return this.D;
    }

    /* JADX INFO: renamed from: I, reason: from getter */
    public final X509TrustManager getU() {
        return this.u;
    }

    @Override // okhttp3.Call.a
    public Call b(Request request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return new RealCall(this, request, false);
    }

    public Object clone() {
        return super.clone();
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final Authenticator getJ() {
        return this.j;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final Cache getN() {
        return this.n;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final int getA() {
        return this.A;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final CertificateChainCleaner getZ() {
        return this.z;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final CertificatePinner getY() {
        return this.y;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final int getB() {
        return this.B;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final ConnectionPool getF10594e() {
        return this.f10594e;
    }

    public final List<ConnectionSpec> k() {
        return this.v;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final CookieJar getM() {
        return this.m;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public final Dispatcher getF10593d() {
        return this.f10593d;
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final Dns getO() {
        return this.o;
    }

    /* JADX INFO: renamed from: o, reason: from getter */
    public final EventListener.c getH() {
        return this.h;
    }

    /* JADX INFO: renamed from: p, reason: from getter */
    public final boolean getK() {
        return this.k;
    }

    /* JADX INFO: renamed from: q, reason: from getter */
    public final boolean getL() {
        return this.l;
    }

    /* JADX INFO: renamed from: r, reason: from getter */
    public final RouteDatabase getG() {
        return this.G;
    }

    /* JADX INFO: renamed from: s, reason: from getter */
    public final HostnameVerifier getX() {
        return this.x;
    }

    public final List<Interceptor> t() {
        return this.f10595f;
    }

    /* JADX INFO: renamed from: u, reason: from getter */
    public final long getF() {
        return this.F;
    }

    public final List<Interceptor> v() {
        return this.f10596g;
    }

    public a w() {
        return new a(this);
    }

    /* JADX INFO: renamed from: x, reason: from getter */
    public final int getE() {
        return this.E;
    }

    public final List<Protocol> y() {
        return this.w;
    }

    /* JADX INFO: renamed from: z, reason: from getter */
    public final Proxy getP() {
        return this.p;
    }
}
