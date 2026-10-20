###### Class okhttp3.OkHttpClient.a (okhttp3.OkHttpClient$a)
.class public final Lokhttp3/OkHttpClient$a;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J?\u0010\u009e\u0001\u001a\u00020\u00002*\u0008\u0004\u0010\u009f\u0001\u001a#\u0012\u0017\u0012\u00150\u00a1\u0001\u00a2\u0006\u000f\u0008\u00a2\u0001\u0012\n\u0008\u00a3\u0001\u0012\u0005\u0008\u0008(\u00a4\u0001\u0012\u0005\u0012\u00030\u00a5\u00010\u00a0\u0001H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0003\u0008\u00a6\u0001J\u0010\u0010\u009e\u0001\u001a\u00020\u00002\u0007\u0010\u00a7\u0001\u001a\u00020]J?\u0010\u00a8\u0001\u001a\u00020\u00002*\u0008\u0004\u0010\u009f\u0001\u001a#\u0012\u0017\u0012\u00150\u00a1\u0001\u00a2\u0006\u000f\u0008\u00a2\u0001\u0012\n\u0008\u00a3\u0001\u0012\u0005\u0008\u0008(\u00a4\u0001\u0012\u0005\u0012\u00030\u00a5\u00010\u00a0\u0001H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0003\u0008\u00a9\u0001J\u0010\u0010\u00a8\u0001\u001a\u00020\u00002\u0007\u0010\u00a7\u0001\u001a\u00020]J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0007\u0010\u00aa\u0001\u001a\u00020\u0003J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0012\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u0001H\u0007J\u0019\u0010\u0012\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020`2\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u0001J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001fJ\u0012\u0010$\u001a\u00020\u00002\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u0001H\u0007J\u0019\u0010$\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020`2\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u0001J\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020(J\u0014\u0010-\u001a\u00020\u00002\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.J\u000e\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u000205J\u000e\u0010:\u001a\u00020\u00002\u0006\u0010:\u001a\u00020;J\u000e\u0010@\u001a\u00020\u00002\u0006\u0010@\u001a\u00020AJ\u0011\u0010\u00b0\u0001\u001a\u00020\u00002\u0008\u0010\u00b0\u0001\u001a\u00030\u00b1\u0001J\u000e\u0010F\u001a\u00020\u00002\u0006\u0010F\u001a\u00020GJ\u000e\u0010L\u001a\u00020\u00002\u0006\u0010L\u001a\u00020MJ\u000f\u0010R\u001a\u00020\u00002\u0007\u0010\u00b2\u0001\u001a\u00020MJ\u000e\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020VJ\u000c\u0010[\u001a\u0008\u0012\u0004\u0012\u00020]0\\J\u000f\u0010_\u001a\u00020\u00002\u0007\u0010\u00b3\u0001\u001a\u00020`J\u000c\u0010e\u001a\u0008\u0012\u0004\u0012\u00020]0\\J\u0012\u0010g\u001a\u00020\u00002\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u0001H\u0007J\u0019\u0010g\u001a\u00020\u00002\u0007\u0010\u00b4\u0001\u001a\u00020`2\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u0001J\u0014\u0010j\u001a\u00020\u00002\u000c\u0010j\u001a\u0008\u0012\u0004\u0012\u00020k0.J\u0010\u0010n\u001a\u00020\u00002\u0008\u0010n\u001a\u0004\u0018\u00010oJ\u000e\u0010t\u001a\u00020\u00002\u0006\u0010t\u001a\u00020\u0007J\u000e\u0010w\u001a\u00020\u00002\u0006\u0010w\u001a\u00020xJ\u0012\u0010}\u001a\u00020\u00002\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u0001H\u0007J\u0019\u0010}\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020`2\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u0001J\u0010\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0080\u0001\u001a\u00020MJ\u0011\u0010\u0089\u0001\u001a\u00020\u00002\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u0001J\u0013\u0010\u00b5\u0001\u001a\u00020\u00002\u0008\u0010\u00b5\u0001\u001a\u00030\u0090\u0001H\u0007J\u001b\u0010\u00b5\u0001\u001a\u00020\u00002\u0008\u0010\u00b5\u0001\u001a\u00030\u0090\u00012\u0008\u0010\u00b6\u0001\u001a\u00030\u0099\u0001J\u0013\u0010\u0095\u0001\u001a\u00020\u00002\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u0001H\u0007J\u001a\u0010\u0095\u0001\u001a\u00020\u00002\u0007\u0010\u00ad\u0001\u001a\u00020`2\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0015\"\u0004\u0008&\u0010\u0017R\u001a\u0010\'\u001a\u00020(X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R \u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00104\u001a\u000205X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001a\u0010:\u001a\u00020;X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001a\u0010@\u001a\u00020AX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u001a\u0010F\u001a\u00020GX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u001a\u0010L\u001a\u00020MX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\u001a\u0010R\u001a\u00020MX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010O\"\u0004\u0008T\u0010QR\u001a\u0010U\u001a\u00020VX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\u001a\u0010[\u001a\u0008\u0012\u0004\u0012\u00020]0\\X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u00101R\u001a\u0010_\u001a\u00020`X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR\u001a\u0010e\u001a\u0008\u0012\u0004\u0012\u00020]0\\X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008f\u00101R\u001a\u0010g\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010\u0015\"\u0004\u0008i\u0010\u0017R \u0010j\u001a\u0008\u0012\u0004\u0012\u00020k0.X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008l\u00101\"\u0004\u0008m\u00103R\u001c\u0010n\u001a\u0004\u0018\u00010oX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008p\u0010q\"\u0004\u0008r\u0010sR\u001a\u0010t\u001a\u00020\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010\t\"\u0004\u0008v\u0010\u000bR\u001c\u0010w\u001a\u0004\u0018\u00010xX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008y\u0010z\"\u0004\u0008{\u0010|R\u001a\u0010}\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008~\u0010\u0015\"\u0004\u0008\u007f\u0010\u0017R\u001d\u0010\u0080\u0001\u001a\u00020MX\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0081\u0001\u0010O\"\u0005\u0008\u0082\u0001\u0010QR\"\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u0001X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R \u0010\u0089\u0001\u001a\u00030\u008a\u0001X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001\"\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\"\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0090\u0001X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0091\u0001\u0010\u0092\u0001\"\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u001d\u0010\u0095\u0001\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0096\u0001\u0010\u0015\"\u0005\u0008\u0097\u0001\u0010\u0017R\"\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0099\u0001X\u0080\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u009a\u0001\u0010\u009b\u0001\"\u0006\u0008\u009c\u0001\u0010\u009d\u0001\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u00b7\u0001"
    }
    d2 = {
        "Lokhttp3/OkHttpClient$Builder;",
        "",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "(Lokhttp3/OkHttpClient;)V",
        "()V",
        "authenticator",
        "Lokhttp3/Authenticator;",
        "getAuthenticator$okhttp",
        "()Lokhttp3/Authenticator;",
        "setAuthenticator$okhttp",
        "(Lokhttp3/Authenticator;)V",
        "cache",
        "Lokhttp3/Cache;",
        "getCache$okhttp",
        "()Lokhttp3/Cache;",
        "setCache$okhttp",
        "(Lokhttp3/Cache;)V",
        "callTimeout",
        "",
        "getCallTimeout$okhttp",
        "()I",
        "setCallTimeout$okhttp",
        "(I)V",
        "certificateChainCleaner",
        "Lokhttp3/internal/tls/CertificateChainCleaner;",
        "getCertificateChainCleaner$okhttp",
        "()Lokhttp3/internal/tls/CertificateChainCleaner;",
        "setCertificateChainCleaner$okhttp",
        "(Lokhttp3/internal/tls/CertificateChainCleaner;)V",
        "certificatePinner",
        "Lokhttp3/CertificatePinner;",
        "getCertificatePinner$okhttp",
        "()Lokhttp3/CertificatePinner;",
        "setCertificatePinner$okhttp",
        "(Lokhttp3/CertificatePinner;)V",
        "connectTimeout",
        "getConnectTimeout$okhttp",
        "setConnectTimeout$okhttp",
        "connectionPool",
        "Lokhttp3/ConnectionPool;",
        "getConnectionPool$okhttp",
        "()Lokhttp3/ConnectionPool;",
        "setConnectionPool$okhttp",
        "(Lokhttp3/ConnectionPool;)V",
        "connectionSpecs",
        "",
        "Lokhttp3/ConnectionSpec;",
        "getConnectionSpecs$okhttp",
        "()Ljava/util/List;",
        "setConnectionSpecs$okhttp",
        "(Ljava/util/List;)V",
        "cookieJar",
        "Lokhttp3/CookieJar;",
        "getCookieJar$okhttp",
        "()Lokhttp3/CookieJar;",
        "setCookieJar$okhttp",
        "(Lokhttp3/CookieJar;)V",
        "dispatcher",
        "Lokhttp3/Dispatcher;",
        "getDispatcher$okhttp",
        "()Lokhttp3/Dispatcher;",
        "setDispatcher$okhttp",
        "(Lokhttp3/Dispatcher;)V",
        "dns",
        "Lokhttp3/Dns;",
        "getDns$okhttp",
        "()Lokhttp3/Dns;",
        "setDns$okhttp",
        "(Lokhttp3/Dns;)V",
        "eventListenerFactory",
        "Lokhttp3/EventListener$Factory;",
        "getEventListenerFactory$okhttp",
        "()Lokhttp3/EventListener$Factory;",
        "setEventListenerFactory$okhttp",
        "(Lokhttp3/EventListener$Factory;)V",
        "followRedirects",
        "",
        "getFollowRedirects$okhttp",
        "()Z",
        "setFollowRedirects$okhttp",
        "(Z)V",
        "followSslRedirects",
        "getFollowSslRedirects$okhttp",
        "setFollowSslRedirects$okhttp",
        "hostnameVerifier",
        "Ljavax/net/ssl/HostnameVerifier;",
        "getHostnameVerifier$okhttp",
        "()Ljavax/net/ssl/HostnameVerifier;",
        "setHostnameVerifier$okhttp",
        "(Ljavax/net/ssl/HostnameVerifier;)V",
        "interceptors",
        "",
        "Lokhttp3/Interceptor;",
        "getInterceptors$okhttp",
        "minWebSocketMessageToCompress",
        "",
        "getMinWebSocketMessageToCompress$okhttp",
        "()J",
        "setMinWebSocketMessageToCompress$okhttp",
        "(J)V",
        "networkInterceptors",
        "getNetworkInterceptors$okhttp",
        "pingInterval",
        "getPingInterval$okhttp",
        "setPingInterval$okhttp",
        "protocols",
        "Lokhttp3/Protocol;",
        "getProtocols$okhttp",
        "setProtocols$okhttp",
        "proxy",
        "Ljava/net/Proxy;",
        "getProxy$okhttp",
        "()Ljava/net/Proxy;",
        "setProxy$okhttp",
        "(Ljava/net/Proxy;)V",
        "proxyAuthenticator",
        "getProxyAuthenticator$okhttp",
        "setProxyAuthenticator$okhttp",
        "proxySelector",
        "Ljava/net/ProxySelector;",
        "getProxySelector$okhttp",
        "()Ljava/net/ProxySelector;",
        "setProxySelector$okhttp",
        "(Ljava/net/ProxySelector;)V",
        "readTimeout",
        "getReadTimeout$okhttp",
        "setReadTimeout$okhttp",
        "retryOnConnectionFailure",
        "getRetryOnConnectionFailure$okhttp",
        "setRetryOnConnectionFailure$okhttp",
        "routeDatabase",
        "Lokhttp3/internal/connection/RouteDatabase;",
        "getRouteDatabase$okhttp",
        "()Lokhttp3/internal/connection/RouteDatabase;",
        "setRouteDatabase$okhttp",
        "(Lokhttp3/internal/connection/RouteDatabase;)V",
        "socketFactory",
        "Ljavax/net/SocketFactory;",
        "getSocketFactory$okhttp",
        "()Ljavax/net/SocketFactory;",
        "setSocketFactory$okhttp",
        "(Ljavax/net/SocketFactory;)V",
        "sslSocketFactoryOrNull",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "getSslSocketFactoryOrNull$okhttp",
        "()Ljavax/net/ssl/SSLSocketFactory;",
        "setSslSocketFactoryOrNull$okhttp",
        "(Ljavax/net/ssl/SSLSocketFactory;)V",
        "writeTimeout",
        "getWriteTimeout$okhttp",
        "setWriteTimeout$okhttp",
        "x509TrustManagerOrNull",
        "Ljavax/net/ssl/X509TrustManager;",
        "getX509TrustManagerOrNull$okhttp",
        "()Ljavax/net/ssl/X509TrustManager;",
        "setX509TrustManagerOrNull$okhttp",
        "(Ljavax/net/ssl/X509TrustManager;)V",
        "addInterceptor",
        "block",
        "Lkotlin/Function1;",
        "Lokhttp3/Interceptor$Chain;",
        "Lkotlin/ParameterName;",
        "name",
        "chain",
        "Lokhttp3/Response;",
        "-addInterceptor",
        "interceptor",
        "addNetworkInterceptor",
        "-addNetworkInterceptor",
        "build",
        "duration",
        "Ljava/time/Duration;",
        "timeout",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "eventListener",
        "Lokhttp3/EventListener;",
        "followProtocolRedirects",
        "bytes",
        "interval",
        "sslSocketFactory",
        "trustManager",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:Lokhttp3/internal/connection/f;

.field private a:Lokhttp3/i;

.field private b:Lokhttp3/g;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lokhttp3/k$c;

.field private f:Z

.field private g:Lokhttp3/b;

.field private h:Z

.field private i:Z

.field private j:Lokhttp3/h;

.field private k:Lokhttp3/Cache;

.field private l:Lokhttp3/j;

.field private m:Ljava/net/Proxy;

.field private n:Ljava/net/ProxySelector;

.field private o:Lokhttp3/b;

.field private p:Ljavax/net/SocketFactory;

.field private q:Ljavax/net/ssl/SSLSocketFactory;

.field private r:Ljavax/net/ssl/X509TrustManager;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljavax/net/ssl/HostnameVerifier;

.field private v:Lokhttp3/CertificatePinner;

.field private w:Lokhttp3/internal/f/c;

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/i;

    invoke-direct {v0}, Lokhttp3/i;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->a:Lokhttp3/i;

    new-instance v0, Lokhttp3/g;

    invoke-direct {v0}, Lokhttp3/g;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->b:Lokhttp3/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->d:Ljava/util/List;

    sget-object v0, Lokhttp3/k;->b:Lokhttp3/k;

    invoke-static {v0}, Lokhttp3/internal/Util;->asFactory(Lokhttp3/k;)Lokhttp3/k$c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->e:Lokhttp3/k$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$a;->f:Z

    sget-object v1, Lokhttp3/b;->b:Lokhttp3/b;

    iput-object v1, p0, Lokhttp3/OkHttpClient$a;->g:Lokhttp3/b;

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$a;->h:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$a;->i:Z

    sget-object v0, Lokhttp3/h;->b:Lokhttp3/h;

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->j:Lokhttp3/h;

    sget-object v0, Lokhttp3/j;->b:Lokhttp3/j;

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->l:Lokhttp3/j;

    iput-object v1, p0, Lokhttp3/OkHttpClient$a;->o:Lokhttp3/b;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->p:Ljavax/net/SocketFactory;

    sget-object v0, Lokhttp3/OkHttpClient;->a:Lokhttp3/OkHttpClient$b;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$b;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/OkHttpClient$a;->s:Ljava/util/List;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->t:Ljava/util/List;

    sget-object v0, Lokhttp3/internal/f/d;->a:Lokhttp3/internal/f/d;

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->u:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lokhttp3/CertificatePinner;->b:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->v:Lokhttp3/CertificatePinner;

    const/16 v0, 0x2710

    iput v0, p0, Lokhttp3/OkHttpClient$a;->y:I

    iput v0, p0, Lokhttp3/OkHttpClient$a;->z:I

    iput v0, p0, Lokhttp3/OkHttpClient$a;->A:I

    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lokhttp3/OkHttpClient$a;->C:J

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 4

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/OkHttpClient$a;-><init>()V

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->m()Lokhttp3/i;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->a:Lokhttp3/i;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->j()Lokhttp3/g;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->b:Lokhttp3/g;

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->c:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->t()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/p;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->d:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->v()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/p;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->o()Lokhttp3/k$c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->e:Lokhttp3/k$c;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->D()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$a;->f:Z

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->d()Lokhttp3/b;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->g:Lokhttp3/b;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->p()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$a;->h:Z

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->q()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$a;->i:Z

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->l()Lokhttp3/h;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->j:Lokhttp3/h;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->e()Lokhttp3/Cache;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->k:Lokhttp3/Cache;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->n()Lokhttp3/j;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->l:Lokhttp3/j;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->z()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->m:Ljava/net/Proxy;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->B()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->n:Ljava/net/ProxySelector;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->A()Lokhttp3/b;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->o:Lokhttp3/b;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->E()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->p:Ljavax/net/SocketFactory;

    invoke-static {p1}, Lokhttp3/OkHttpClient;->access$getSslSocketFactoryOrNull$p(Lokhttp3/OkHttpClient;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->I()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->r:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->k()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->s:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->y()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->t:Ljava/util/List;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->s()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->u:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->h()Lokhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->v:Lokhttp3/CertificatePinner;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->g()Lokhttp3/internal/f/c;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$a;->w:Lokhttp3/internal/f/c;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->f()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$a;->x:I

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->i()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$a;->y:I

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->C()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$a;->z:I

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->H()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$a;->A:I

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->x()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$a;->B:I

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->u()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/OkHttpClient$a;->C:J

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->r()Lokhttp3/internal/connection/f;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/OkHttpClient$a;->D:Lokhttp3/internal/connection/f;

    return-void
.end method


# virtual methods
.method public final A()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->m:Ljava/net/Proxy;

    return-object v0
.end method

.method public final B()Lokhttp3/b;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->o:Lokhttp3/b;

    return-object v0
.end method

.method public final C()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->n:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final D()I
    .registers 2

    iget v0, p0, Lokhttp3/OkHttpClient$a;->z:I

    return v0
.end method

.method public final E()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/OkHttpClient$a;->f:Z

    return v0
.end method

.method public final F()Lokhttp3/internal/connection/f;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->D:Lokhttp3/internal/connection/f;

    return-object v0
.end method

.method public final G()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->p:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final H()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->q:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final I()I
    .registers 2

    iget v0, p0, Lokhttp3/OkHttpClient$a;->A:I

    return v0
.end method

.method public final J()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->r:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public final K(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$a;
    .registers 3

    const-string v0, "proxySelector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$a;->C()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$a;->S(Lokhttp3/internal/connection/f;)V

    :cond_13
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$a;->Q(Ljava/net/ProxySelector;)V

    return-object p0
.end method

.method public final L(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$a;
    .registers 5

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$a;->R(I)V

    return-object p0
.end method

.method public final M(Lokhttp3/Cache;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/OkHttpClient$a;->k:Lokhttp3/Cache;

    return-void
.end method

.method public final N(I)V
    .registers 2

    iput p1, p0, Lokhttp3/OkHttpClient$a;->y:I

    return-void
.end method

.method public final O(Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/OkHttpClient$a;->h:Z

    return-void
.end method

.method public final P(Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/OkHttpClient$a;->i:Z

    return-void
.end method

.method public final Q(Ljava/net/ProxySelector;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/OkHttpClient$a;->n:Ljava/net/ProxySelector;

    return-void
.end method

.method public final R(I)V
    .registers 2

    iput p1, p0, Lokhttp3/OkHttpClient$a;->z:I

    return-void
.end method

.method public final S(Lokhttp3/internal/connection/f;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/OkHttpClient$a;->D:Lokhttp3/internal/connection/f;

    return-void
.end method

.method public final a(Lokhttp3/l;)Lokhttp3/OkHttpClient$a;
    .registers 3

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$a;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b()Lokhttp3/OkHttpClient;
    .registers 2

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$a;)V

    return-object v0
.end method

.method public final c(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$a;
    .registers 2

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$a;->M(Lokhttp3/Cache;)V

    return-object p0
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$a;
    .registers 5

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$a;->N(I)V

    return-object p0
.end method

.method public final e(Z)Lokhttp3/OkHttpClient$a;
    .registers 2

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$a;->O(Z)V

    return-object p0
.end method

.method public final f(Z)Lokhttp3/OkHttpClient$a;
    .registers 2

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$a;->P(Z)V

    return-object p0
.end method

.method public final g()Lokhttp3/b;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->g:Lokhttp3/b;

    return-object v0
.end method

.method public final h()Lokhttp3/Cache;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->k:Lokhttp3/Cache;

    return-object v0
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lokhttp3/OkHttpClient$a;->x:I

    return v0
.end method

.method public final j()Lokhttp3/internal/f/c;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->w:Lokhttp3/internal/f/c;

    return-object v0
.end method

.method public final k()Lokhttp3/CertificatePinner;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->v:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public final l()I
    .registers 2

    iget v0, p0, Lokhttp3/OkHttpClient$a;->y:I

    return v0
.end method

.method public final m()Lokhttp3/g;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->b:Lokhttp3/g;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->s:Ljava/util/List;

    return-object v0
.end method

.method public final o()Lokhttp3/h;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->j:Lokhttp3/h;

    return-object v0
.end method

.method public final p()Lokhttp3/i;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->a:Lokhttp3/i;

    return-object v0
.end method

.method public final q()Lokhttp3/j;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->l:Lokhttp3/j;

    return-object v0
.end method

.method public final r()Lokhttp3/k$c;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->e:Lokhttp3/k$c;

    return-object v0
.end method

.method public final s()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/OkHttpClient$a;->h:Z

    return v0
.end method

.method public final t()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/OkHttpClient$a;->i:Z

    return v0
.end method

.method public final u()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->u:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
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

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final w()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/OkHttpClient$a;->C:J

    return-wide v0
.end method

.method public final x()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final y()I
    .registers 2

    iget v0, p0, Lokhttp3/OkHttpClient$a;->B:I

    return v0
.end method

.method public final z()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/OkHttpClient$a;->t:Ljava/util/List;

    return-object v0
.end method
