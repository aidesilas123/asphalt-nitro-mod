###### Class com.facebook.ads.redexgen.X.HR (com.facebook.ads.redexgen.X.HR)
.class public final Lcom/facebook/ads/redexgen/X/HR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qh;


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/7w;

.field public A01:Ljava/util/concurrent/Executor;

.field public A02:Z

.field public A03:Lcom/facebook/ads/redexgen/X/Qm;

.field public final A04:Lcom/facebook/ads/redexgen/X/Qr;

.field public final A05:Lcom/facebook/ads/redexgen/X/Qw;

.field public final A06:Lcom/facebook/ads/redexgen/X/Qx;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Z3ZBH3trhaxMswGoeO0i3WMhBsCqcWgs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P814sFImmOC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "INcscN3Z5kcfIuBeknVxelrdNm8ANoXs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RvJjsajerkLdUat3TDI8NPR3DDSWtO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZLSXhw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wxtWSqUF9a7Aw2d1StIocmcoa4QX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "58xAXbC3p"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Zj1UZNXOzFX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HR;->A0A()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Qh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HR;->A09:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qm;Lcom/facebook/ads/redexgen/X/7w;Ljava/util/concurrent/Executor;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hn;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hn;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A04:Lcom/facebook/ads/redexgen/X/Qr;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HR;->A0B()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HR;->A03:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qm;->A04()Z

    move-result v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/HH;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/HH;-><init>(Z)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4U;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/4U;-><init>(Lcom/facebook/ads/redexgen/X/HR;Lcom/facebook/ads/redexgen/X/Qx;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A05:Lcom/facebook/ads/redexgen/X/Qw;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/HR;->A01:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/HR;->A00:Lcom/facebook/ads/redexgen/X/7w;

    return-void
.end method

.method private final A00(Ljava/net/HttpURLConnection;[B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A05:Lcom/facebook/ads/redexgen/X/Qw;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Qw;->ADg(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A05:Lcom/facebook/ads/redexgen/X/Qw;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/Qw;->AGV(Ljava/io/OutputStream;[B)V

    :cond_e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-eqz v1, :cond_17
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_18

    :try_start_14
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return v0

    :catchall_18
    move-exception v0

    if-eqz v1, :cond_1e

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_1e
    throw v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/Qt;)Lcom/facebook/ads/redexgen/X/Qg;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Qu;
        }
    .end annotation

    const/16 v2, 0xdc

    const/4 v1, 0x7

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    :try_start_b
    iput-boolean v8, p0, Lcom/facebook/ads/redexgen/X/HR;->A02:Z

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ke;->A04()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HR;->A09()Ljava/net/Proxy;

    move-result-object v1

    :goto_18
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qt;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/HR;->A08(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/HR;->A0H(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/Qt;)V

    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/HR;->A0G(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/Qt;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qx;->A8x()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qt;->A06()[B

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Qx;->A9c(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V

    :cond_37
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A02:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A03:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A01()Ljava/util/Set;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A03:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A02()Ljava/util/Set;

    move-result-object v4

    if-eqz v6, :cond_54

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_56

    :cond_52
    move-object v1, v5

    goto :goto_18

    :cond_54
    const/4 v1, 0x0

    goto :goto_57

    :goto_56
    const/4 v1, 0x1

    :goto_57
    if-eqz v4, :cond_60

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    const/4 v8, 0x1

    :cond_60
    instance-of v0, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_8b

    if-nez v1, :cond_68

    if-eqz v8, :cond_8b
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_68} :catch_c1
    .catchall {:try_start_b .. :try_end_68} :catchall_164

    :cond_68
    :try_start_68
    move-object v0, v3

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v6, v4}, Lcom/facebook/ads/redexgen/X/Qy;->A03(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_8b
    :try_end_6f
    .catch Ljava/security/cert/CertificateException; {:try_start_68 .. :try_end_6f} :catch_71
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6f} :catch_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_164

    :catch_6f
    move-exception v6

    goto :goto_7f

    :catch_71
    :try_start_71
    move-exception v6

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HR;->A00:Lcom/facebook/ads/redexgen/X/7w;

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A1y:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9g(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    goto :goto_8b

    :goto_7f
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/HR;->A00:Lcom/facebook/ads/redexgen/X/7w;

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A1x:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v7, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9g(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :cond_8b
    :goto_8b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qt;->A06()[B

    move-result-object v0

    if-eqz v0, :cond_9e

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qt;->A06()[B

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/HR;->A00(Ljava/net/HttpURLConnection;[B)I

    :cond_9e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/HR;->A06(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/HT;

    move-result-object v1

    goto :goto_ae

    :cond_a9
    new-instance v1, Lcom/facebook/ads/redexgen/X/HT;

    invoke-direct {v1, v3, v5}, Lcom/facebook/ads/redexgen/X/HT;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_ae} :catch_c1
    .catchall {:try_start_71 .. :try_end_ae} :catchall_164

    :goto_ae
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qx;->A8x()Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Qx;->A9d(Lcom/facebook/ads/redexgen/X/Qg;)V

    :cond_bb
    if-eqz v3, :cond_c0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c0
    return-object v1

    :catch_c1
    move-exception v6

    :try_start_c2
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/HR;->A05(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/HT;

    move-result-object v2

    if-eqz v2, :cond_15e
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c8} :catch_e1
    .catchall {:try_start_c2 .. :try_end_c8} :catchall_13d

    :try_start_c8
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/HT;->A7v()I

    move-result v0

    if-lez v0, :cond_15e
    :try_end_ce
    .catchall {:try_start_c8 .. :try_end_ce} :catchall_164

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qx;->A8x()Z

    move-result v0

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Qx;->A9d(Lcom/facebook/ads/redexgen/X/Qg;)V

    :cond_db
    if-eqz v3, :cond_e0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e0
    return-object v2

    :catch_e1
    :try_start_e1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x75

    const/16 v1, 0xd

    const/16 v0, 0x35

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_137
    :try_end_f8
    .catchall {:try_start_e1 .. :try_end_f8} :catchall_13d

    :try_start_f8
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A7v()I

    move-result v0

    if-lez v0, :cond_137
    :try_end_fe
    .catchall {:try_start_f8 .. :try_end_fe} :catchall_164

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qx;->A8x()Z

    move-result v0

    if-eqz v0, :cond_12b

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    sget-object v4, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/4 v0, 0x2

    aget-object v4, v4, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_131

    sget-object v4, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const-string v1, "IlkFDbfWlXmKaUvETbHYmdNk6OEHYi1H"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "BN3YcSqfdOqAJI6hng3gZMbRThXyngdJ"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-interface {v5, v2}, Lcom/facebook/ads/redexgen/X/Qx;->A9d(Lcom/facebook/ads/redexgen/X/Qg;)V

    :cond_12b
    if-eqz v3, :cond_130

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_130
    return-object v2

    :cond_131
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_137
    :try_start_137
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qu;

    invoke-direct {v0, v6, v2}, Lcom/facebook/ads/redexgen/X/Qu;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/Qg;)V

    goto :goto_163
    :try_end_13d
    .catchall {:try_start_137 .. :try_end_13d} :catchall_164

    :catchall_13d
    if-eqz v2, :cond_158

    :try_start_13f
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A7v()I

    move-result v0

    if-lez v0, :cond_158
    :try_end_145
    .catchall {:try_start_13f .. :try_end_145} :catchall_164

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qx;->A8x()Z

    move-result v0

    if-eqz v0, :cond_152

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Qx;->A9d(Lcom/facebook/ads/redexgen/X/Qg;)V

    :cond_152
    if-eqz v3, :cond_157

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_157
    return-object v2

    :cond_158
    :try_start_158
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qu;

    invoke-direct {v0, v6, v2}, Lcom/facebook/ads/redexgen/X/Qu;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/Qg;)V

    goto :goto_163

    :cond_15e
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qu;

    invoke-direct {v0, v6, v2}, Lcom/facebook/ads/redexgen/X/Qu;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/Qg;)V

    :goto_163
    throw v0
    :try_end_164
    .catchall {:try_start_158 .. :try_end_164} :catchall_164

    :catchall_164
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qx;->A8x()Z

    move-result v0

    if-eqz v0, :cond_172

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Qx;->A9d(Lcom/facebook/ads/redexgen/X/Qg;)V

    :cond_172
    if-eqz v3, :cond_177

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_177
    throw v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/Qt;)Lcom/facebook/ads/redexgen/X/Qg;
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A03:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A04()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/HR;->A0C(Lcom/facebook/ads/redexgen/X/Qt;)V

    :cond_b
    const/4 v3, 0x0

    :try_start_c
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/HR;->A01(Lcom/facebook/ads/redexgen/X/Qt;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v3

    goto :goto_23
    :try_end_11
    .catch Lcom/facebook/ads/redexgen/X/Qu; {:try_start_c .. :try_end_11} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_11

    :catch_11
    move-exception v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HR;->A05:Lcom/facebook/ads/redexgen/X/Qw;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Qu;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Qu;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/Qg;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Qw;->ABK(Lcom/facebook/ads/redexgen/X/Qu;)Z

    goto :goto_23

    :catch_1d
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A05:Lcom/facebook/ads/redexgen/X/Qw;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Qw;->ABK(Lcom/facebook/ads/redexgen/X/Qu;)Z

    :goto_23
    return-object v3
.end method

.method private final A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qv;Lcom/facebook/ads/redexgen/X/Qp;)Lcom/facebook/ads/redexgen/X/Qg;
    .registers 5

    new-instance v0, Lcom/facebook/ads/redexgen/X/He;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/He;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qv;Lcom/facebook/ads/redexgen/X/Qp;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HR;->A02(Lcom/facebook/ads/redexgen/X/Qt;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v0

    return-object v0
.end method

.method private final A04(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qp;)Lcom/facebook/ads/redexgen/X/Qg;
    .registers 11

    new-instance v0, Lcom/facebook/ads/redexgen/X/HW;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/HW;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qv;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qp;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/HR;->A02(Lcom/facebook/ads/redexgen/X/Qt;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v0

    return-object v0
.end method

.method private final A05(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/HT;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A05:Lcom/facebook/ads/redexgen/X/Qw;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/Qw;->AEG(Ljava/io/InputStream;)[B

    move-result-object v1

    :cond_e
    new-instance v0, Lcom/facebook/ads/redexgen/X/HT;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/HT;-><init>(Ljava/net/HttpURLConnection;[B)V

    if-eqz v4, :cond_18
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_19

    :try_start_15
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_18

    :catch_18
    :cond_18
    return-object v0

    :catchall_19
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_2d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2d
    sget-object v2, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const-string v1, "eS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_39

    :try_start_36
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_39

    :catch_39
    :cond_39
    throw v3
.end method

.method private final A06(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/HT;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A05:Lcom/facebook/ads/redexgen/X/Qw;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Qw;->ADf(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A05:Lcom/facebook/ads/redexgen/X/Qw;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Qw;->AEG(Ljava/io/InputStream;)[B

    move-result-object v1

    :cond_10
    new-instance v0, Lcom/facebook/ads/redexgen/X/HT;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/HT;-><init>(Ljava/net/HttpURLConnection;[B)V

    if-eqz v2, :cond_1a
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_1b

    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1a

    :catch_1a
    :cond_1a
    return-object v0

    :catchall_1b
    move-exception v0

    if-eqz v2, :cond_21

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    :cond_21
    throw v0
.end method

.method public static A07(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/HR;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A08(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_12

    const v0, 0xf00d

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A05:Lcom/facebook/ads/redexgen/X/Qw;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Qw;->ADe(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :catch_12
    move-exception v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x12

    const/16 v1, 0x13

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A09()Ljava/net/Proxy;
    .registers 7

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/16 v3, 0xc0

    const/16 v2, 0xe

    const/16 v1, 0x2d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0xce

    const/16 v2, 0xe

    const/16 v1, 0x4a

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    if-eqz v1, :cond_27

    :try_start_21
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_27
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_26} :catch_26

    :catch_26
    return-object v0

    :cond_27
    :goto_27
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    sget-object v3, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v3, v1

    const/4 v1, 0x2

    aget-object v3, v3, v1

    const/16 v1, 0x1c

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_61

    sget-object v3, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const-string v2, "UW2PAxLqNCWQ7bdKo0A7Pw4nSyNkIv"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    const-string v2, "26yRDH09B"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    if-nez v6, :cond_60

    if-lez v4, :cond_60

    const v1, 0xffff

    if-gt v4, v1, :cond_60

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v5, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Proxy;

    invoke-direct {v0, v2, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :cond_60
    return-object v0

    :cond_61
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0A()V
    .registers 1

    const/16 v0, 0xe3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/HR;->A07:[B

    return-void

    :array_a
    .array-data 1
        0x10t
        0x12t
        0x37t
        0x3at
        0x5ft
        0x37t
        0x35t
        0x4at
        0x47t
        0xet
        0x4at
        0x48t
        0xft
        0x4ct
        0x5at
        0x5dt
        0x43t
        0xft
        0xet
        0x47t
        0x5dt
        0xet
        0x40t
        0x41t
        0x5at
        0xet
        0x4ft
        0xet
        0x58t
        0x4ft
        0x42t
        0x47t
        0x4at
        0xet
        0x7bt
        0x7ct
        0x62t
        0xet
        0x41t
        0x48t
        0xet
        0x5et
        0x66t
        0x6at
        0x9t
        0x1et
        0x6at
        0x77t
        0x6at
        0x1ct
        0x10t
        0x62t
        0x64t
        0x10t
        0xdt
        0x10t
        0x37t
        0x3bt
        0x6ft
        0x69t
        0x62t
        0x72t
        0x75t
        0x7ct
        0x3bt
        0x51t
        0x11t
        0x3bt
        0x32t
        0x3ft
        0x2et
        0x2dt
        0x3bt
        0x3at
        0x5et
        0x2at
        0x37t
        0x33t
        0x3bt
        0x5et
        0x43t
        0x5et
        0x1t
        0x23t
        0x32t
        0x32t
        0x2ft
        0x28t
        0x21t
        0x66t
        0x32t
        0x2et
        0x23t
        0x66t
        0x2et
        0x32t
        0x32t
        0x36t
        0x66t
        0x34t
        0x23t
        0x35t
        0x36t
        0x29t
        0x28t
        0x35t
        0x23t
        0x66t
        0x32t
        0x2ft
        0x2bt
        0x23t
        0x22t
        0x66t
        0x29t
        0x33t
        0x32t
        0x26t
        0xdt
        0x1ct
        0x1ft
        0x7t
        0x1at
        0x3t
        0x48t
        0xdt
        0x1at
        0x1at
        0x7t
        0x1at
        0x22t
        0x23t
        0x31t
        0x5at
        0x4ft
        0x7at
        0x6bt
        0x6bt
        0x77t
        0x72t
        0x78t
        0x7at
        0x6ft
        0x72t
        0x74t
        0x75t
        0x34t
        0x63t
        0x36t
        0x6ct
        0x6ct
        0x6ct
        0x36t
        0x7dt
        0x74t
        0x69t
        0x76t
        0x36t
        0x6et
        0x69t
        0x77t
        0x7et
        0x75t
        0x78t
        0x74t
        0x7ft
        0x7et
        0x7ft
        0x20t
        0x78t
        0x73t
        0x7at
        0x69t
        0x68t
        0x7et
        0x6ft
        0x26t
        0x4et
        0x4ft
        0x5dt
        0x36t
        0x23t
        0x2ft
        0x39t
        0x3et
        0x20t
        0x6ct
        0x61t
        0x27t
        0x6ct
        0x61t
        0x25t
        0x18t
        0x4t
        0x4t
        0x0t
        0x5et
        0x0t
        0x2t
        0x1ft
        0x8t
        0x9t
        0x38t
        0x1ft
        0x3t
        0x4t
        0x7ft
        0x63t
        0x63t
        0x67t
        0x39t
        0x67t
        0x65t
        0x78t
        0x6ft
        0x6et
        0x47t
        0x78t
        0x65t
        0x63t
        0x34t
        0x3ft
        0x2et
        0x2dt
        0x35t
        0x28t
        0x31t
    .end array-data
.end method

.method public static declared-synchronized A0B()V
    .registers 2

    const-class v1, Lcom/facebook/ads/redexgen/X/HR;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/Qt;)V
    .registers 9

    const/16 v2, 0xb6

    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qt;->A03()Lcom/facebook/ads/redexgen/X/Qs;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qs;->A06:Lcom/facebook/ads/redexgen/X/Qs;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qs;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v2, 0x29

    const/4 v1, 0x1

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_51

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qt;->A06()[B

    move-result-object v0

    if-eqz v0, :cond_51

    const/4 v2, 0x7

    const/4 v1, 0x5

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qt;->A06()[B

    move-result-object v5

    const/16 v2, 0x82

    const/4 v1, 0x5

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qt;->A02()Lcom/facebook/ads/redexgen/X/Qp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qp;->A06()Ljava/util/Map;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_71

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_71
    sget-object v2, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const-string v1, "s0c02ga9sXqOOqZgqzjFkG4II3gfLx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "iECV1gT3x"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_85
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const/4 v2, 0x2

    const/4 v1, 0x5

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x42

    const/4 v1, 0x1

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_85

    :cond_be
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qt;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v1, v0, 0xfa0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/HR;->A0E(Ljava/lang/String;II)V

    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Qt;Lcom/facebook/ads/redexgen/X/Qi;)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/HR;->A04:Lcom/facebook/ads/redexgen/X/Qr;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/Qr;->A5y(Lcom/facebook/ads/redexgen/X/HR;Lcom/facebook/ads/redexgen/X/Qi;Ljava/util/concurrent/Executor;)Lcom/facebook/ads/redexgen/X/Hf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Hf;->A04(Lcom/facebook/ads/redexgen/X/Qt;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A03:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A04()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/HR;->A0C(Lcom/facebook/ads/redexgen/X/Qt;)V

    :cond_16
    return-void
.end method

.method private A0E(Ljava/lang/String;II)V
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/HR;->A09:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x41

    const/4 v1, 0x1

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_45

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/HR;->A0E(Ljava/lang/String;II)V

    :cond_45
    return-void
.end method

.method private A0F(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qi;Lcom/facebook/ads/redexgen/X/Qp;)V
    .registers 12

    new-instance v0, Lcom/facebook/ads/redexgen/X/HW;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/HW;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qv;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qp;)V

    invoke-direct {p0, v0, p4}, Lcom/facebook/ads/redexgen/X/HR;->A0D(Lcom/facebook/ads/redexgen/X/Qt;Lcom/facebook/ads/redexgen/X/Qi;)V

    return-void
.end method

.method private A0G(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/Qt;)V
    .registers 8

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qt;->A02()Lcom/facebook/ads/redexgen/X/Qp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qp;->A06()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qt;->A02()Lcom/facebook/ads/redexgen/X/Qp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qp;->A05()Lcom/facebook/ads/redexgen/X/Qf;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_2e
    if-eqz v3, :cond_58

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A03:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A03()Z

    move-result v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Qf;->A5k(Z)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_58
    return-void
.end method

.method private final A0H(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/Qt;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qt;->A02()Lcom/facebook/ads/redexgen/X/Qp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qp;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Qp;->A02()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/HR;->A05:Lcom/facebook/ads/redexgen/X/Qw;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qt;->A03()Lcom/facebook/ads/redexgen/X/Qs;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Qt;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Qw;->ADw(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/Qs;Ljava/lang/String;)V

    return-void
.end method

.method private final A0I(Ljava/lang/Throwable;JLcom/facebook/ads/redexgen/X/Qt;)Z
    .registers 13

    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/Qt;->A02()Lcom/facebook/ads/redexgen/X/Qp;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-wide/16 v3, 0xa

    add-long/2addr v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qx;->A8x()Z

    move-result v0

    if-eqz v0, :cond_58

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x43

    const/16 v3, 0xf

    const/16 v0, 0x23

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v4, 0x2a

    const/4 v3, 0x7

    const/16 v0, 0x17

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Qp;->A00()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v4, 0x31

    const/4 v3, 0x7

    const/16 v0, 0x6d

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Qp;->A02()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_58
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A02:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_69

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Qp;->A02()I

    move-result v0

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_67

    :goto_66
    return v7

    :cond_67
    const/4 v7, 0x0

    goto :goto_66

    :cond_69
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Qp;->A00()I

    move-result v0

    int-to-long v4, v0

    sget-object v3, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x1c

    if-eq v3, v0, :cond_81

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_81
    sget-object v6, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const-string v3, "UT6xnSlzbr9JaeC9T1uoRQiwoDXC3Y"

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const-string v3, "g5URFCrsk"

    const/4 v0, 0x6

    aput-object v3, v6, v0

    cmp-long v0, v1, v4

    if-ltz v0, :cond_92

    :goto_91
    return v7

    :cond_92
    const/4 v7, 0x0

    goto :goto_91
.end method


# virtual methods
.method public final A0J(Lcom/facebook/ads/redexgen/X/Qt;)Lcom/facebook/ads/redexgen/X/Qg;
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Qu;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object v8, v8

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qt;->A02()Lcom/facebook/ads/redexgen/X/Qp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qp;->A01()I

    move-result v6

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qt;->A02()Lcom/facebook/ads/redexgen/X/Qp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qp;->A03()I

    move-result v3

    int-to-long v9, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qt;->A02()Lcom/facebook/ads/redexgen/X/Qp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qp;->A04()I

    move-result v3

    int-to-long v3, v3

    add-long v16, v16, v3

    :goto_2a
    const-wide/16 v4, 0x0

    sget-object v11, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v3, v11, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v3, 0x1c

    if-eq v11, v3, :cond_3f

    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3f
    sget-object v12, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const-string v11, "uw7CndVwumsNWx3tR5uVNB4kWYqq"

    const/4 v3, 0x5

    aput-object v11, v12, v3

    if-ge v7, v6, :cond_17b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long v3, v16, v11

    if-lez v3, :cond_17b

    :try_start_50
    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/HR;->A06:Lcom/facebook/ads/redexgen/X/Qx;

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Qx;->A8x()Z

    move-result v3

    if-eqz v3, :cond_8d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0x25

    const/4 v11, 0x4

    const/16 v3, 0x73

    invoke-static {v12, v11, v3}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v12, 0x38

    const/16 v11, 0x9

    const/16 v3, 0x46

    invoke-static {v12, v11, v3}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qt;->A05()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_8d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v8, v0}, Lcom/facebook/ads/redexgen/X/HR;->A01(Lcom/facebook/ads/redexgen/X/Qt;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v15

    if-eqz v15, :cond_cd

    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/HR;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v1

    invoke-interface {v15}, Lcom/facebook/ads/redexgen/X/Qg;->A63()[B

    move-result-object v11

    array-length v11, v11

    int-to-long v13, v11

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/Qt;->A04:[B

    if-nez v11, :cond_ab

    move-wide v11, v4

    goto :goto_af

    :cond_ab
    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/Qt;->A04:[B

    array-length v11, v11

    int-to-long v11, v11

    :goto_af
    invoke-interface {v15}, Lcom/facebook/ads/redexgen/X/Qg;->A7v()I

    move-result v27

    const/16 v28, 0x0

    move-wide/from16 v23, v13

    move-wide/from16 v25, v11

    move-object/from16 v18, v3

    move-wide/from16 v19, v1

    invoke-interface/range {v18 .. v28}, Lcom/facebook/ads/redexgen/X/7w;->A9X(JJJJILjava/lang/Exception;)V

    goto/16 :goto_15f
    :try_end_c2
    .catch Lcom/facebook/ads/redexgen/X/Qu; {:try_start_50 .. :try_end_c2} :catch_c2

    :catch_c2
    move-exception v3

    invoke-direct {v8, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/HR;->A0I(Ljava/lang/Throwable;JLcom/facebook/ads/redexgen/X/Qt;)Z

    move-result v11

    if-eqz v11, :cond_d1

    add-int/lit8 v11, v6, -0x1

    if-ge v7, v11, :cond_d1

    :cond_cd
    :goto_cd
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2a

    :cond_d1
    iget-object v14, v8, Lcom/facebook/ads/redexgen/X/HR;->A05:Lcom/facebook/ads/redexgen/X/Qw;

    sget-object v12, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const/4 v11, 0x5

    aget-object v11, v12, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v11, 0x1c

    if-eq v12, v11, :cond_f6

    sget-object v13, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const-string v12, "RTCgSwX4E1qAS9DeUF79c1CzYGzjCcSq"

    const/4 v11, 0x4

    aput-object v12, v13, v11

    invoke-interface {v14, v3}, Lcom/facebook/ads/redexgen/X/Qw;->ABK(Lcom/facebook/ads/redexgen/X/Qu;)Z

    move-result v11

    if-eqz v11, :cond_108

    :goto_ed
    add-int/lit8 v11, v6, -0x1

    if-ge v7, v11, :cond_108

    cmp-long v11, v9, v4

    if-lez v11, :cond_cd

    goto :goto_104

    :cond_f6
    sget-object v13, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const-string v12, "QCV1DKlppK5B8d9XgS0nl0pavHf"

    const/4 v11, 0x4

    aput-object v12, v13, v11

    invoke-interface {v14, v3}, Lcom/facebook/ads/redexgen/X/Qw;->ABK(Lcom/facebook/ads/redexgen/X/Qu;)Z

    move-result v11

    if-eqz v11, :cond_108

    goto :goto_ed

    :goto_104
    :try_start_104
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_cd
    :try_end_108
    .catch Ljava/lang/InterruptedException; {:try_start_104 .. :try_end_108} :catch_160

    :cond_108
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qu;->A00()Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v9

    iget-object v8, v8, Lcom/facebook/ads/redexgen/X/HR;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v1

    if-eqz v9, :cond_11b

    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/Qg;->A63()[B

    move-result-object v4

    if-nez v4, :cond_13a

    :cond_11b
    const-wide/16 v6, 0x0

    :goto_11d
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Qt;->A04:[B

    if-nez v4, :cond_135

    const-wide/16 v4, 0x0

    :goto_123
    if-nez v9, :cond_130

    const/16 v17, 0x0

    :goto_127
    move-wide v13, v6

    move-wide v15, v4

    move-object/from16 v18, v3

    move-wide v9, v1

    invoke-interface/range {v8 .. v18}, Lcom/facebook/ads/redexgen/X/7w;->A9X(JJJJILjava/lang/Exception;)V

    throw v3

    :cond_130
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/Qg;->A7v()I

    move-result v17

    goto :goto_127

    :cond_135
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Qt;->A04:[B

    array-length v0, v0

    int-to-long v4, v0

    goto :goto_123

    :cond_13a
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/Qg;->A63()[B

    move-result-object v7

    sget-object v6, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v5, v6, v4

    const/4 v4, 0x6

    aget-object v4, v6, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v5, v4, :cond_39

    sget-object v6, Lcom/facebook/ads/redexgen/X/HR;->A08:[Ljava/lang/String;

    const-string v5, "kZCGiI5zGihRv0GXktBIsysHbk9bX5"

    const/4 v4, 0x3

    aput-object v5, v6, v4

    const-string v5, "FynZg164G"

    const/4 v4, 0x6

    aput-object v5, v6, v4

    array-length v4, v7

    int-to-long v6, v4

    goto :goto_11d

    :goto_15f
    return-object v15

    :catch_160
    move-exception v17

    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/HR;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    const-wide/16 v12, 0x0

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Qt;->A04:[B

    if-nez v6, :cond_176

    :goto_16e
    const/16 v16, 0x0

    move-wide v14, v4

    move-wide v8, v1

    invoke-interface/range {v7 .. v17}, Lcom/facebook/ads/redexgen/X/7w;->A9X(JJJJILjava/lang/Exception;)V

    throw v3

    :cond_176
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Qt;->A04:[B

    array-length v0, v0

    int-to-long v4, v0

    goto :goto_16e

    :cond_17b
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/HR;->A00:Lcom/facebook/ads/redexgen/X/7w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    const-wide/16 v12, 0x0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Qt;->A04:[B

    if-nez v3, :cond_1a4

    const-wide/16 v3, 0x0

    :goto_18a
    const/16 v16, 0x0

    const/16 v6, 0x52

    const/16 v5, 0x23

    const/16 v0, 0x1b

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0, v5}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    move-wide v14, v3

    move-object/from16 v17, v0

    move-wide v8, v1

    invoke-interface/range {v7 .. v17}, Lcom/facebook/ads/redexgen/X/7w;->A9X(JJJJILjava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1a4
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Qt;->A04:[B

    array-length v0, v0

    int-to-long v3, v0

    goto :goto_18a
.end method

.method public final A0K()Lcom/facebook/ads/redexgen/X/Qm;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A03:Lcom/facebook/ads/redexgen/X/Qm;

    return-object v0
.end method

.method public final ADo(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Qg;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Qg;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Lcom/facebook/ads/redexgen/X/Qv;

    invoke-direct {v1, p2}, Lcom/facebook/ads/redexgen/X/Qv;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A03:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A00()Lcom/facebook/ads/redexgen/X/Qp;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qv;Lcom/facebook/ads/redexgen/X/Qp;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v0

    return-object v0
.end method

.method public final ADp(Ljava/lang/String;[B)Lcom/facebook/ads/redexgen/X/Qg;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A03:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A00()Lcom/facebook/ads/redexgen/X/Qp;

    move-result-object v3

    const/16 v2, 0x87

    const/16 v1, 0x2f

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/HR;->A04(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qp;)Lcom/facebook/ads/redexgen/X/Qg;

    move-result-object v0

    return-object v0
.end method

.method public final ADq(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qi;)V
    .registers 10

    const/16 v2, 0x87

    const/16 v1, 0x2f

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HR;->A07(III)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HR;->A03:Lcom/facebook/ads/redexgen/X/Qm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qm;->A00()Lcom/facebook/ads/redexgen/X/Qp;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/HR;->A0F(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/Qi;Lcom/facebook/ads/redexgen/X/Qp;)V

    return-void
.end method
