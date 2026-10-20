###### Class okhttp3.OkHttpClient (okhttp3.OkHttpClient)
.class public Lokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/OkHttpClient$a;,
        Lokhttp3/OkHttpClient$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ee\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 y2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002xyB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\r\u0010\u0008\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008SJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007\u00a2\u0006\u0002\u0008TJ\r\u0010\u000e\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008UJ\r\u0010\u0014\u001a\u00020\u0015H\u0007\u00a2\u0006\u0002\u0008VJ\r\u0010\u0017\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008WJ\r\u0010\u0018\u001a\u00020\u0019H\u0007\u00a2\u0006\u0002\u0008XJ\u0013\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0007\u00a2\u0006\u0002\u0008YJ\r\u0010\u001f\u001a\u00020 H\u0007\u00a2\u0006\u0002\u0008ZJ\r\u0010\"\u001a\u00020#H\u0007\u00a2\u0006\u0002\u0008[J\r\u0010%\u001a\u00020&H\u0007\u00a2\u0006\u0002\u0008\\J\r\u0010(\u001a\u00020)H\u0007\u00a2\u0006\u0002\u0008]J\r\u0010+\u001a\u00020,H\u0007\u00a2\u0006\u0002\u0008^J\r\u0010.\u001a\u00020,H\u0007\u00a2\u0006\u0002\u0008_J\r\u0010/\u001a\u000200H\u0007\u00a2\u0006\u0002\u0008`J\u0013\u00102\u001a\u0008\u0012\u0004\u0012\u0002030\u001cH\u0007\u00a2\u0006\u0002\u0008aJ\u0013\u00107\u001a\u0008\u0012\u0004\u0012\u0002030\u001cH\u0007\u00a2\u0006\u0002\u0008bJ\u0008\u0010c\u001a\u00020\u0006H\u0016J\u0010\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020gH\u0016J\u0018\u0010h\u001a\u00020i2\u0006\u0010f\u001a\u00020g2\u0006\u0010j\u001a\u00020kH\u0016J\r\u00108\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008lJ\u0013\u00109\u001a\u0008\u0012\u0004\u0012\u00020:0\u001cH\u0007\u00a2\u0006\u0002\u0008mJ\u000f\u0010;\u001a\u0004\u0018\u00010<H\u0007\u00a2\u0006\u0002\u0008nJ\r\u0010>\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008oJ\r\u0010?\u001a\u00020@H\u0007\u00a2\u0006\u0002\u0008pJ\r\u0010B\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008qJ\r\u0010C\u001a\u00020,H\u0007\u00a2\u0006\u0002\u0008rJ\r\u0010H\u001a\u00020IH\u0007\u00a2\u0006\u0002\u0008sJ\r\u0010K\u001a\u00020LH\u0007\u00a2\u0006\u0002\u0008tJ\u0008\u0010u\u001a\u00020vH\u0002J\r\u0010O\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008wR\u0013\u0010\u0008\u001a\u00020\t8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\nR\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\rR\u0013\u0010\u000e\u001a\u00020\u000f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0010R\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u00128G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0013R\u0013\u0010\u0014\u001a\u00020\u00158G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0016R\u0013\u0010\u0017\u001a\u00020\u000f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0010R\u0013\u0010\u0018\u001a\u00020\u00198G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u001aR\u0019\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001eR\u0013\u0010\u001f\u001a\u00020 8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010!R\u0013\u0010\"\u001a\u00020#8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010$R\u0013\u0010%\u001a\u00020&8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\'R\u0013\u0010(\u001a\u00020)8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010*R\u0013\u0010+\u001a\u00020,8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010-R\u0013\u0010.\u001a\u00020,8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010-R\u0013\u0010/\u001a\u0002008G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00101R\u0019\u00102\u001a\u0008\u0012\u0004\u0012\u0002030\u001c8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u001eR\u0013\u00104\u001a\u0002058G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00106R\u0019\u00107\u001a\u0008\u0012\u0004\u0012\u0002030\u001c8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010\u001eR\u0013\u00108\u001a\u00020\u000f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\u0010R\u0019\u00109\u001a\u0008\u0012\u0004\u0012\u00020:0\u001c8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\u001eR\u0015\u0010;\u001a\u0004\u0018\u00010<8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010=R\u0013\u0010>\u001a\u00020\t8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010\nR\u0013\u0010?\u001a\u00020@8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010AR\u0013\u0010B\u001a\u00020\u000f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010\u0010R\u0013\u0010C\u001a\u00020,8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010-R\u0011\u0010D\u001a\u00020E\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR\u0013\u0010H\u001a\u00020I8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010JR\u0011\u0010K\u001a\u00020L8G\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010MR\u0010\u0010N\u001a\u0004\u0018\u00010LX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010O\u001a\u00020\u000f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010\u0010R\u0015\u0010P\u001a\u0004\u0018\u00010Q8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u0010R\u00a8\u0006z"
    }
    d2 = {
        "Lokhttp3/OkHttpClient;",
        "",
        "Lokhttp3/Call$Factory;",
        "Lokhttp3/WebSocket$Factory;",
        "()V",
        "builder",
        "Lokhttp3/OkHttpClient$Builder;",
        "(Lokhttp3/OkHttpClient$Builder;)V",
        "authenticator",
        "Lokhttp3/Authenticator;",
        "()Lokhttp3/Authenticator;",
        "cache",
        "Lokhttp3/Cache;",
        "()Lokhttp3/Cache;",
        "callTimeoutMillis",
        "",
        "()I",
        "certificateChainCleaner",
        "Lokhttp3/internal/tls/CertificateChainCleaner;",
        "()Lokhttp3/internal/tls/CertificateChainCleaner;",
        "certificatePinner",
        "Lokhttp3/CertificatePinner;",
        "()Lokhttp3/CertificatePinner;",
        "connectTimeoutMillis",
        "connectionPool",
        "Lokhttp3/ConnectionPool;",
        "()Lokhttp3/ConnectionPool;",
        "connectionSpecs",
        "",
        "Lokhttp3/ConnectionSpec;",
        "()Ljava/util/List;",
        "cookieJar",
        "Lokhttp3/CookieJar;",
        "()Lokhttp3/CookieJar;",
        "dispatcher",
        "Lokhttp3/Dispatcher;",
        "()Lokhttp3/Dispatcher;",
        "dns",
        "Lokhttp3/Dns;",
        "()Lokhttp3/Dns;",
        "eventListenerFactory",
        "Lokhttp3/EventListener$Factory;",
        "()Lokhttp3/EventListener$Factory;",
        "followRedirects",
        "",
        "()Z",
        "followSslRedirects",
        "hostnameVerifier",
        "Ljavax/net/ssl/HostnameVerifier;",
        "()Ljavax/net/ssl/HostnameVerifier;",
        "interceptors",
        "Lokhttp3/Interceptor;",
        "minWebSocketMessageToCompress",
        "",
        "()J",
        "networkInterceptors",
        "pingIntervalMillis",
        "protocols",
        "Lokhttp3/Protocol;",
        "proxy",
        "Ljava/net/Proxy;",
        "()Ljava/net/Proxy;",
        "proxyAuthenticator",
        "proxySelector",
        "Ljava/net/ProxySelector;",
        "()Ljava/net/ProxySelector;",
        "readTimeoutMillis",
        "retryOnConnectionFailure",
        "routeDatabase",
        "Lokhttp3/internal/connection/RouteDatabase;",
        "getRouteDatabase",
        "()Lokhttp3/internal/connection/RouteDatabase;",
        "socketFactory",
        "Ljavax/net/SocketFactory;",
        "()Ljavax/net/SocketFactory;",
        "sslSocketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "()Ljavax/net/ssl/SSLSocketFactory;",
        "sslSocketFactoryOrNull",
        "writeTimeoutMillis",
        "x509TrustManager",
        "Ljavax/net/ssl/X509TrustManager;",
        "()Ljavax/net/ssl/X509TrustManager;",
        "-deprecated_authenticator",
        "-deprecated_cache",
        "-deprecated_callTimeoutMillis",
        "-deprecated_certificatePinner",
        "-deprecated_connectTimeoutMillis",
        "-deprecated_connectionPool",
        "-deprecated_connectionSpecs",
        "-deprecated_cookieJar",
        "-deprecated_dispatcher",
        "-deprecated_dns",
        "-deprecated_eventListenerFactory",
        "-deprecated_followRedirects",
        "-deprecated_followSslRedirects",
        "-deprecated_hostnameVerifier",
        "-deprecated_interceptors",
        "-deprecated_networkInterceptors",
        "newBuilder",
        "newCall",
        "Lokhttp3/Call;",
        "request",
        "Lokhttp3/Request;",
        "newWebSocket",
        "Lokhttp3/WebSocket;",
        "listener",
        "Lokhttp3/WebSocketListener;",
        "-deprecated_pingIntervalMillis",
        "-deprecated_protocols",
        "-deprecated_proxy",
        "-deprecated_proxyAuthenticator",
        "-deprecated_proxySelector",
        "-deprecated_readTimeoutMillis",
        "-deprecated_retryOnConnectionFailure",
        "-deprecated_socketFactory",
        "-deprecated_sslSocketFactory",
        "verifyClientState",
        "",
        "-deprecated_writeTimeoutMillis",
        "Builder",
        "Companion",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lokhttp3/OkHttpClient$b;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final A:I

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:J

.field private final G:Lokhttp3/internal/connection/f;

.field private final d:Lokhttp3/i;

.field private final e:Lokhttp3/g;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lokhttp3/k$c;

.field private final i:Z

.field private final j:Lokhttp3/b;

.field private final k:Z

.field private final l:Z

.field private final m:Lokhttp3/h;

.field private final n:Lokhttp3/Cache;

.field private final o:Lokhttp3/j;

.field private final p:Ljava/net/Proxy;

.field private final q:Ljava/net/ProxySelector;

.field private final r:Lokhttp3/b;

.field private final s:Ljavax/net/SocketFactory;

.field private final t:Ljavax/net/ssl/SSLSocketFactory;

.field private final u:Ljavax/net/ssl/X509TrustManager;

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljavax/net/ssl/HostnameVerifier;

.field private final y:Lokhttp3/CertificatePinner;

.field private final z:Lokhttp3/internal/f/c;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lokhttp3/OkHttpClient$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/OkHttpClient$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokhttp3/OkHttpClient;->a:Lokhttp3/OkHttpClient$b;

    const/4 v0, 0x2

    new-array v1, v0, [Lokhttp3/Protocol;

    sget-object v2, Lokhttp3/Protocol;->e:Lokhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/Protocol;->c:Lokhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lokhttp3/internal/Util;->immutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lokhttp3/OkHttpClient;->b:Ljava/util/List;

    new-array v0, v0, [Lokhttp3/ConnectionSpec;

    sget-object v1, Lokhttp3/ConnectionSpec;->e:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/ConnectionSpec;->g:Lokhttp3/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lokhttp3/OkHttpClient$a;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$a;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$a;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient$a;)V
    .registers 5

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->p()Lokhttp3/i;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->d:Lokhttp3/i;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->m()Lokhttp3/g;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->e:Lokhttp3/g;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->v()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->f:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->x()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->g:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->r()Lokhttp3/k$c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->h:Lokhttp3/k$c;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->E()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->i:Z

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->g()Lokhttp3/b;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/b;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->s()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->k:Z

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->t()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient;->l:Z

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->o()Lokhttp3/h;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->m:Lokhttp3/h;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->h()Lokhttp3/Cache;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->n:Lokhttp3/Cache;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->q()Lokhttp3/j;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->o:Lokhttp3/j;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->A()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->p:Ljava/net/Proxy;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->A()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_67

    sget-object v0, Lokhttp3/internal/e/a;->a:Lokhttp3/internal/e/a;

    goto :goto_75

    :cond_67
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->C()Ljava/net/ProxySelector;

    move-result-object v0

    if-nez v0, :cond_71

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    :cond_71
    if-nez v0, :cond_75

    sget-object v0, Lokhttp3/internal/e/a;->a:Lokhttp3/internal/e/a;

    :cond_75
    :goto_75
    iput-object v0, p0, Lokhttp3/OkHttpClient;->q:Ljava/net/ProxySelector;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->B()Lokhttp3/b;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->r:Lokhttp3/b;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->G()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->s:Ljavax/net/SocketFactory;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->n()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->v:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->z()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->w:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->u()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->x:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->i()I

    move-result v1

    iput v1, p0, Lokhttp3/OkHttpClient;->A:I

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->l()I

    move-result v1

    iput v1, p0, Lokhttp3/OkHttpClient;->B:I

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->D()I

    move-result v1

    iput v1, p0, Lokhttp3/OkHttpClient;->C:I

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->I()I

    move-result v1

    iput v1, p0, Lokhttp3/OkHttpClient;->D:I

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->y()I

    move-result v1

    iput v1, p0, Lokhttp3/OkHttpClient;->E:I

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->w()J

    move-result-wide v1

    iput-wide v1, p0, Lokhttp3/OkHttpClient;->F:J

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->F()Lokhttp3/internal/connection/f;

    move-result-object v1

    if-nez v1, :cond_c4

    new-instance v1, Lokhttp3/internal/connection/f;

    invoke-direct {v1}, Lokhttp3/internal/connection/f;-><init>()V

    :cond_c4
    iput-object v1, p0, Lokhttp3/OkHttpClient;->G:Lokhttp3/internal/connection/f;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_d2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d2

    goto :goto_e9

    :cond_d2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/ConnectionSpec;

    invoke-virtual {v1}, Lokhttp3/ConnectionSpec;->d()Z

    move-result v1

    if-eqz v1, :cond_d6

    const/4 v2, 0x0

    :cond_e9
    :goto_e9
    if-eqz v2, :cond_f7

    const/4 p1, 0x0

    iput-object p1, p0, Lokhttp3/OkHttpClient;->t:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p1, p0, Lokhttp3/OkHttpClient;->z:Lokhttp3/internal/f/c;

    iput-object p1, p0, Lokhttp3/OkHttpClient;->u:Ljavax/net/ssl/X509TrustManager;

    sget-object p1, Lokhttp3/CertificatePinner;->b:Lokhttp3/CertificatePinner;

    iput-object p1, p0, Lokhttp3/OkHttpClient;->y:Lokhttp3/CertificatePinner;

    goto :goto_154

    :cond_f7
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->H()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_123

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->H()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->t:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->j()Lokhttp3/internal/f/c;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lokhttp3/OkHttpClient;->z:Lokhttp3/internal/f/c;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->J()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lokhttp3/OkHttpClient;->u:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->k()Lokhttp3/CertificatePinner;

    move-result-object p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lokhttp3/CertificatePinner;->e(Lokhttp3/internal/f/c;)Lokhttp3/CertificatePinner;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/OkHttpClient;->y:Lokhttp3/CertificatePinner;

    goto :goto_154

    :cond_123
    sget-object v0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->f()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform;->n()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient;->u:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->f()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lokhttp3/internal/platform/Platform;->m(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->t:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v0, Lokhttp3/internal/f/c;->a:Lokhttp3/internal/f/c$a;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lokhttp3/internal/f/c$a;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/f/c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient;->z:Lokhttp3/internal/f/c;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$a;->k()Lokhttp3/CertificatePinner;

    move-result-object p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lokhttp3/CertificatePinner;->e(Lokhttp3/internal/f/c;)Lokhttp3/CertificatePinner;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/OkHttpClient;->y:Lokhttp3/CertificatePinner;

    :goto_154
    invoke-direct {p0}, Lokhttp3/OkHttpClient;->G()V

    return-void
.end method

.method private final G()V
    .registers 5

    iget-object v0, p0, Lokhttp3/OkHttpClient;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lokhttp3/OkHttpClient;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lokhttp3/OkHttpClient;->v:Ljava/util/List;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_21
    const/4 v0, 0x1

    goto :goto_3a

    :cond_23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/ConnectionSpec;

    invoke-virtual {v1}, Lokhttp3/ConnectionSpec;->d()Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x0

    :goto_3a
    if-eqz v0, :cond_8b

    iget-object v0, p0, Lokhttp3/OkHttpClient;->t:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_42

    const/4 v0, 0x1

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    const-string v1, "Check failed."

    if-eqz v0, :cond_81

    iget-object v0, p0, Lokhttp3/OkHttpClient;->z:Lokhttp3/internal/f/c;

    if-nez v0, :cond_4d

    const/4 v0, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    if-eqz v0, :cond_77

    iget-object v0, p0, Lokhttp3/OkHttpClient;->u:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_55

    goto :goto_56

    :cond_55
    const/4 v2, 0x0

    :goto_56
    if-eqz v2, :cond_6d

    iget-object v0, p0, Lokhttp3/OkHttpClient;->y:Lokhttp3/CertificatePinner;

    sget-object v2, Lokhttp3/CertificatePinner;->b:Lokhttp3/CertificatePinner;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_97

    :cond_63
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    iget-object v0, p0, Lokhttp3/OkHttpClient;->t:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lokhttp3/OkHttpClient;->z:Lokhttp3/internal/f/c;

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lokhttp3/OkHttpClient;->u:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_98

    :goto_97
    return-void

    :cond_98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "x509TrustManager == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "certificateChainCleaner == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sslSocketFactory == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bc
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->v()Ljava/util/List;

    move-result-object v0

    const-string v1, "Null network interceptor: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d0
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->t()Ljava/util/List;

    move-result-object v0

    const-string v1, "Null interceptor: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic access$getDEFAULT_CONNECTION_SPECS$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_PROTOCOLS$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lokhttp3/OkHttpClient;->b:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSslSocketFactoryOrNull$p(Lokhttp3/OkHttpClient;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 1

    iget-object p0, p0, Lokhttp3/OkHttpClient;->t:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method


# virtual methods
.method public final A()Lokhttp3/b;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->r:Lokhttp3/b;

    return-object v0
.end method

.method public final B()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->q:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final C()I
    .registers 2

    iget v0, p0, Lokhttp3/OkHttpClient;->C:I

    return v0
.end method

.method public final D()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->i:Z

    return v0
.end method

.method public final E()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->s:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final F()Ljavax/net/ssl/SSLSocketFactory;
    .registers 3

    iget-object v0, p0, Lokhttp3/OkHttpClient;->t:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CLEARTEXT-only client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H()I
    .registers 2

    iget v0, p0, Lokhttp3/OkHttpClient;->D:I

    return v0
.end method

.method public final I()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->u:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public b(Lokhttp3/Request;)Lokhttp3/c;
    .registers 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/internal/connection/RealCall;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lokhttp3/b;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->j:Lokhttp3/b;

    return-object v0
.end method

.method public final e()Lokhttp3/Cache;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->n:Lokhttp3/Cache;

    return-object v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lokhttp3/OkHttpClient;->A:I

    return v0
.end method

.method public final g()Lokhttp3/internal/f/c;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->z:Lokhttp3/internal/f/c;

    return-object v0
.end method

.method public final h()Lokhttp3/CertificatePinner;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->y:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lokhttp3/OkHttpClient;->B:I

    return v0
.end method

.method public final j()Lokhttp3/g;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->e:Lokhttp3/g;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/OkHttpClient;->v:Ljava/util/List;

    return-object v0
.end method

.method public final l()Lokhttp3/h;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->m:Lokhttp3/h;

    return-object v0
.end method

.method public final m()Lokhttp3/i;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->d:Lokhttp3/i;

    return-object v0
.end method

.method public final n()Lokhttp3/j;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->o:Lokhttp3/j;

    return-object v0
.end method

.method public final o()Lokhttp3/k$c;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->h:Lokhttp3/k$c;

    return-object v0
.end method

.method public final p()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->k:Z

    return v0
.end method

.method public final q()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/OkHttpClient;->l:Z

    return v0
.end method

.method public final r()Lokhttp3/internal/connection/f;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->G:Lokhttp3/internal/connection/f;

    return-object v0
.end method

.method public final s()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->x:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/OkHttpClient;->f:Ljava/util/List;

    return-object v0
.end method

.method public final u()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/OkHttpClient;->F:J

    return-wide v0
.end method

.method public final v()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/OkHttpClient;->g:Ljava/util/List;

    return-object v0
.end method

.method public w()Lokhttp3/OkHttpClient$a;
    .registers 2

    new-instance v0, Lokhttp3/OkHttpClient$a;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient$a;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public final x()I
    .registers 2

    iget v0, p0, Lokhttp3/OkHttpClient;->E:I

    return v0
.end method

.method public final y()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/OkHttpClient;->w:Ljava/util/List;

    return-object v0
.end method

.method public final z()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient;->p:Ljava/net/Proxy;

    return-object v0
.end method
