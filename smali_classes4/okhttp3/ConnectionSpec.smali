###### Class okhttp3.ConnectionSpec (okhttp3.ConnectionSpec)
.class public final Lokhttp3/ConnectionSpec;
.super Ljava/lang/Object;
.source "ConnectionSpec.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/ConnectionSpec$a;,
        Lokhttp3/ConnectionSpec$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u0000 $2\u00020\u0001:\u0002#$B7\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\tJ\u001d\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\u0017J\u0015\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0007\u00a2\u0006\u0002\u0008\u0018J\u0013\u0010\u0019\u001a\u00020\u00032\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u000e\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0015J\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003H\u0002J\r\u0010\u0004\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0008 J\u0015\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000bH\u0007\u00a2\u0006\u0002\u0008!J\u0008\u0010\"\u001a\u00020\u0007H\u0016R\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b8G\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\rR\u0018\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u0013\u0010\u0002\u001a\u00020\u00038\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u000fR\u0013\u0010\u0004\u001a\u00020\u00038\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000fR\u0019\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000b8G\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\rR\u0018\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000e\u00a8\u0006%"
    }
    d2 = {
        "Lokhttp3/ConnectionSpec;",
        "",
        "isTls",
        "",
        "supportsTlsExtensions",
        "cipherSuitesAsString",
        "",
        "",
        "tlsVersionsAsString",
        "(ZZ[Ljava/lang/String;[Ljava/lang/String;)V",
        "cipherSuites",
        "",
        "Lokhttp3/CipherSuite;",
        "()Ljava/util/List;",
        "[Ljava/lang/String;",
        "()Z",
        "tlsVersions",
        "Lokhttp3/TlsVersion;",
        "apply",
        "",
        "sslSocket",
        "Ljavax/net/ssl/SSLSocket;",
        "isFallback",
        "apply$okhttp",
        "-deprecated_cipherSuites",
        "equals",
        "other",
        "hashCode",
        "",
        "isCompatible",
        "socket",
        "supportedSpec",
        "-deprecated_supportsTlsExtensions",
        "-deprecated_tlsVersions",
        "toString",
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
.field public static final a:Lokhttp3/ConnectionSpec$b;

.field private static final b:[Lokhttp3/CipherSuite;

.field private static final c:[Lokhttp3/CipherSuite;

.field public static final d:Lokhttp3/ConnectionSpec;

.field public static final e:Lokhttp3/ConnectionSpec;

.field public static final f:Lokhttp3/ConnectionSpec;

.field public static final g:Lokhttp3/ConnectionSpec;


# instance fields
.field private final h:Z

.field private final i:Z

.field private final j:[Ljava/lang/String;

.field private final k:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 20

    new-instance v0, Lokhttp3/ConnectionSpec$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/ConnectionSpec$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokhttp3/ConnectionSpec;->a:Lokhttp3/ConnectionSpec$b;

    const/16 v0, 0x9

    new-array v1, v0, [Lokhttp3/CipherSuite;

    sget-object v2, Lokhttp3/CipherSuite;->n1:Lokhttp3/CipherSuite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Lokhttp3/CipherSuite;->o1:Lokhttp3/CipherSuite;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sget-object v6, Lokhttp3/CipherSuite;->p1:Lokhttp3/CipherSuite;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v8, Lokhttp3/CipherSuite;->Z0:Lokhttp3/CipherSuite;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    sget-object v10, Lokhttp3/CipherSuite;->d1:Lokhttp3/CipherSuite;

    const/4 v11, 0x4

    aput-object v10, v1, v11

    sget-object v12, Lokhttp3/CipherSuite;->a1:Lokhttp3/CipherSuite;

    const/4 v13, 0x5

    aput-object v12, v1, v13

    sget-object v14, Lokhttp3/CipherSuite;->e1:Lokhttp3/CipherSuite;

    const/4 v15, 0x6

    aput-object v14, v1, v15

    sget-object v16, Lokhttp3/CipherSuite;->k1:Lokhttp3/CipherSuite;

    const/16 v17, 0x7

    aput-object v16, v1, v17

    sget-object v18, Lokhttp3/CipherSuite;->j1:Lokhttp3/CipherSuite;

    const/16 v19, 0x8

    aput-object v18, v1, v19

    sput-object v1, Lokhttp3/ConnectionSpec;->b:[Lokhttp3/CipherSuite;

    const/16 v0, 0x10

    new-array v0, v0, [Lokhttp3/CipherSuite;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    aput-object v6, v0, v7

    aput-object v8, v0, v9

    aput-object v10, v0, v11

    aput-object v12, v0, v13

    aput-object v14, v0, v15

    aput-object v16, v0, v17

    aput-object v18, v0, v19

    sget-object v2, Lokhttp3/CipherSuite;->K0:Lokhttp3/CipherSuite;

    const/16 v4, 0x9

    aput-object v2, v0, v4

    sget-object v2, Lokhttp3/CipherSuite;->L0:Lokhttp3/CipherSuite;

    const/16 v4, 0xa

    aput-object v2, v0, v4

    sget-object v2, Lokhttp3/CipherSuite;->i0:Lokhttp3/CipherSuite;

    const/16 v4, 0xb

    aput-object v2, v0, v4

    sget-object v2, Lokhttp3/CipherSuite;->j0:Lokhttp3/CipherSuite;

    const/16 v4, 0xc

    aput-object v2, v0, v4

    sget-object v2, Lokhttp3/CipherSuite;->G:Lokhttp3/CipherSuite;

    const/16 v4, 0xd

    aput-object v2, v0, v4

    sget-object v2, Lokhttp3/CipherSuite;->K:Lokhttp3/CipherSuite;

    const/16 v4, 0xe

    aput-object v2, v0, v4

    sget-object v2, Lokhttp3/CipherSuite;->k:Lokhttp3/CipherSuite;

    const/16 v4, 0xf

    aput-object v2, v0, v4

    sput-object v0, Lokhttp3/ConnectionSpec;->c:[Lokhttp3/CipherSuite;

    new-instance v2, Lokhttp3/ConnectionSpec$a;

    invoke-direct {v2, v5}, Lokhttp3/ConnectionSpec$a;-><init>(Z)V

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lokhttp3/CipherSuite;

    invoke-virtual {v2, v1}, Lokhttp3/ConnectionSpec$a;->c([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$a;

    move-result-object v1

    new-array v2, v7, [Lokhttp3/TlsVersion;

    sget-object v4, Lokhttp3/TlsVersion;->b:Lokhttp3/TlsVersion;

    aput-object v4, v2, v3

    sget-object v6, Lokhttp3/TlsVersion;->c:Lokhttp3/TlsVersion;

    aput-object v6, v2, v5

    invoke-virtual {v1, v2}, Lokhttp3/ConnectionSpec$a;->j([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lokhttp3/ConnectionSpec$a;->h(Z)Lokhttp3/ConnectionSpec$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ConnectionSpec$a;->a()Lokhttp3/ConnectionSpec;

    move-result-object v1

    sput-object v1, Lokhttp3/ConnectionSpec;->d:Lokhttp3/ConnectionSpec;

    new-instance v1, Lokhttp3/ConnectionSpec$a;

    invoke-direct {v1, v5}, Lokhttp3/ConnectionSpec$a;-><init>(Z)V

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lokhttp3/CipherSuite;

    invoke-virtual {v1, v2}, Lokhttp3/ConnectionSpec$a;->c([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$a;

    move-result-object v1

    new-array v2, v7, [Lokhttp3/TlsVersion;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    invoke-virtual {v1, v2}, Lokhttp3/ConnectionSpec$a;->j([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lokhttp3/ConnectionSpec$a;->h(Z)Lokhttp3/ConnectionSpec$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ConnectionSpec$a;->a()Lokhttp3/ConnectionSpec;

    move-result-object v1

    sput-object v1, Lokhttp3/ConnectionSpec;->e:Lokhttp3/ConnectionSpec;

    new-instance v1, Lokhttp3/ConnectionSpec$a;

    invoke-direct {v1, v5}, Lokhttp3/ConnectionSpec$a;-><init>(Z)V

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/CipherSuite;

    invoke-virtual {v1, v0}, Lokhttp3/ConnectionSpec$a;->c([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$a;

    move-result-object v0

    new-array v1, v11, [Lokhttp3/TlsVersion;

    aput-object v4, v1, v3

    aput-object v6, v1, v5

    sget-object v2, Lokhttp3/TlsVersion;->d:Lokhttp3/TlsVersion;

    aput-object v2, v1, v7

    sget-object v2, Lokhttp3/TlsVersion;->e:Lokhttp3/TlsVersion;

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$a;->j([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lokhttp3/ConnectionSpec$a;->h(Z)Lokhttp3/ConnectionSpec$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$a;->a()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp3/ConnectionSpec;->f:Lokhttp3/ConnectionSpec;

    new-instance v0, Lokhttp3/ConnectionSpec$a;

    invoke-direct {v0, v3}, Lokhttp3/ConnectionSpec$a;-><init>(Z)V

    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$a;->a()Lokhttp3/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lokhttp3/ConnectionSpec;->g:Lokhttp3/ConnectionSpec;

    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/ConnectionSpec;->h:Z

    iput-boolean p2, p0, Lokhttp3/ConnectionSpec;->i:Z

    iput-object p3, p0, Lokhttp3/ConnectionSpec;->j:[Ljava/lang/String;

    iput-object p4, p0, Lokhttp3/ConnectionSpec;->k:[Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCipherSuitesAsString$p(Lokhttp3/ConnectionSpec;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lokhttp3/ConnectionSpec;->j:[Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTlsVersionsAsString$p(Lokhttp3/ConnectionSpec;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lokhttp3/ConnectionSpec;->k:[Ljava/lang/String;

    return-object p0
.end method

.method private final e(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/ConnectionSpec;
    .registers 7

    iget-object v0, p0, Lokhttp3/ConnectionSpec;->j:[Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "sslSocket.enabledCipherSuites"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/ConnectionSpec;->j:[Ljava/lang/String;

    sget-object v2, Lokhttp3/CipherSuite;->a:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v2}, Lokhttp3/CipherSuite$Companion;->b()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lokhttp3/internal/Util;->intersect([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_1a
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    :goto_1e
    iget-object v1, p0, Lokhttp3/ConnectionSpec;->k:[Ljava/lang/String;

    if-eqz v1, :cond_36

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "sslSocket.enabledProtocols"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/ConnectionSpec;->k:[Ljava/lang/String;

    invoke-static {}, Lkotlin/comparisons/f;->naturalOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lokhttp3/internal/Util;->intersect([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_3a

    :cond_36
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    :goto_3a
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    const-string v2, "supportedCipherSuites"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lokhttp3/CipherSuite;->a:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v2}, Lokhttp3/CipherSuite$Companion;->b()Ljava/util/Comparator;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {p1, v3, v2}, Lokhttp3/internal/Util;->indexOf([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I

    move-result v2

    const-string v3, "cipherSuitesIntersection"

    if-eqz p2, :cond_64

    const/4 p2, -0x1

    if-eq v2, p2, :cond_64

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object p1, p1, v2

    const-string p2, "supportedCipherSuites[indexOfFallbackScsv]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lokhttp3/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_64
    new-instance p1, Lokhttp3/ConnectionSpec$a;

    invoke-direct {p1, p0}, Lokhttp3/ConnectionSpec$a;-><init>(Lokhttp3/ConnectionSpec;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, v0

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lokhttp3/ConnectionSpec$a;->b([Ljava/lang/String;)Lokhttp3/ConnectionSpec$a;

    move-result-object p1

    const-string p2, "tlsVersionsIntersection"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lokhttp3/ConnectionSpec$a;->i([Ljava/lang/String;)Lokhttp3/ConnectionSpec$a;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ConnectionSpec$a;->a()Lokhttp3/ConnectionSpec;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lokhttp3/ConnectionSpec;->e(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/ConnectionSpec;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ConnectionSpec;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p2, Lokhttp3/ConnectionSpec;->k:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p2}, Lokhttp3/ConnectionSpec;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object p2, p2, Lokhttp3/ConnectionSpec;->j:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public final b()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/CipherSuite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/ConnectionSpec;->j:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_22

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    array-length v3, v0

    :goto_e
    if-ge v2, v3, :cond_1e

    aget-object v4, v0, v2

    sget-object v5, Lokhttp3/CipherSuite;->a:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v5, v4}, Lokhttp3/CipherSuite$Companion;->a(Ljava/lang/String;)Lokhttp3/CipherSuite;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    invoke-static {v1}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_22
    return-object v0
.end method

.method public final c(Ljavax/net/ssl/SSLSocket;)Z
    .registers 6

    const-string v0, "socket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->k:[Ljava/lang/String;

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lkotlin/comparisons/f;->naturalOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lokhttp3/internal/Util;->hasIntersection([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    :cond_1e
    iget-object v0, p0, Lokhttp3/ConnectionSpec;->j:[Ljava/lang/String;

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lokhttp3/CipherSuite;->a:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v2}, Lokhttp3/CipherSuite$Companion;->b()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, p1, v2}, Lokhttp3/internal/Util;->hasIntersection([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result p1

    if-nez p1, :cond_33

    return v1

    :cond_33
    const/4 p1, 0x1

    return p1
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->h:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lokhttp3/ConnectionSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    :cond_a
    iget-boolean v2, p0, Lokhttp3/ConnectionSpec;->h:Z

    check-cast p1, Lokhttp3/ConnectionSpec;

    iget-boolean v3, p1, Lokhttp3/ConnectionSpec;->h:Z

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    if-eqz v2, :cond_32

    iget-object v2, p0, Lokhttp3/ConnectionSpec;->j:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/ConnectionSpec;->j:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    :cond_20
    iget-object v2, p0, Lokhttp3/ConnectionSpec;->k:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/ConnectionSpec;->k:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    :cond_2b
    iget-boolean v2, p0, Lokhttp3/ConnectionSpec;->i:Z

    iget-boolean p1, p1, Lokhttp3/ConnectionSpec;->i:Z

    if-eq v2, p1, :cond_32

    return v1

    :cond_32
    return v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->i:Z

    return v0
.end method

.method public final g()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/ConnectionSpec;->k:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_22

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    array-length v3, v0

    :goto_e
    if-ge v2, v3, :cond_1e

    aget-object v4, v0, v2

    sget-object v5, Lokhttp3/TlsVersion;->a:Lokhttp3/TlsVersion$a;

    invoke-virtual {v5, v4}, Lokhttp3/TlsVersion$a;->a(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    invoke-static {v1}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_22
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->h:Z

    if-eqz v0, :cond_26

    const/16 v0, 0x20f

    iget-object v1, p0, Lokhttp3/ConnectionSpec;->j:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/ConnectionSpec;->k:[Ljava/lang/String;

    if-nez v1, :cond_19

    goto :goto_1d

    :cond_19
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lokhttp3/ConnectionSpec;->i:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_28

    :cond_26
    const/16 v0, 0x11

    :goto_28
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lokhttp3/ConnectionSpec;->h:Z

    if-nez v0, :cond_7

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionSpec(cipherSuites="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/ConnectionSpec;->b()Ljava/util/List;

    move-result-object v1

    const-string v2, "[all enabled]"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/ConnectionSpec;->g()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/ConnectionSpec;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
