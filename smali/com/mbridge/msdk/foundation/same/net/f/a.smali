###### Class com.mbridge.msdk.foundation.same.net.f.a (com.mbridge.msdk.foundation.same.net.f.a)
.class public Lcom/mbridge/msdk/foundation/same/net/f/a;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/net/h;


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private final b:Lcom/mbridge/msdk/foundation/same/net/stack/b;

.field private final c:Lcom/mbridge/msdk/foundation/same/net/c;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/foundation/same/net/stack/b;Lcom/mbridge/msdk/foundation/same/net/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/f/a;->b:Lcom/mbridge/msdk/foundation/same/net/stack/b;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/f/a;->c:Lcom/mbridge/msdk/foundation/same/net/c;

    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/j<",
            "*>;",
            "Lcom/mbridge/msdk/foundation/same/net/b/a;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/foundation/same/net/b/a;
        }
    .end annotation

    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/net/j;->n()Lcom/mbridge/msdk/foundation/same/net/m;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Lcom/mbridge/msdk/foundation/same/net/m;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, p2}, Lcom/mbridge/msdk/foundation/same/net/m;->a(Lcom/mbridge/msdk/foundation/same/net/b/a;)Z

    move-result v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_1d

    if-eqz v1, :cond_1e

    cmp-long v1, p3, v2

    if-gez v1, :cond_1e

    const/4 p3, 0x1

    const/4 v0, 0x1

    goto :goto_1e

    :catch_1d
    nop

    :cond_1e
    :goto_1e
    if-eqz v0, :cond_26

    iget-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/f/a;->c:Lcom/mbridge/msdk/foundation/same/net/c;

    invoke-interface {p2, p1}, Lcom/mbridge/msdk/foundation/same/net/c;->e(Lcom/mbridge/msdk/foundation/same/net/j;)V

    return-void

    :cond_26
    throw p2

    :cond_27
    new-instance p1, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 p2, 0x4

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/mbridge/msdk/foundation/same/net/j;)Lcom/mbridge/msdk/foundation/same/net/f/c;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/j<",
            "*>;)",
            "Lcom/mbridge/msdk/foundation/same/net/f/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/foundation/same/net/b/a;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_8

    return-object v3

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/same/net/j;->n()Lcom/mbridge/msdk/foundation/same/net/m;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/mbridge/msdk/foundation/same/net/m;->a()I

    move-result v6

    :cond_17
    const/16 v8, 0x1f3

    const/16 v10, 0x190

    const-string v13, "IOException ex= "

    const-string v15, "UnknownHostException ex= "

    const-string v14, "MalformedURLException ex= "

    const-string v12, "SSLProtocolException ex= "

    const-string v3, "ConnectException ex= "

    const-string v11, "ConnectTimeoutException ex= "

    const-string v7, "SocketTimeoutException ex= "

    const-string v9, "perform-discard-cancelled"

    if-gtz v6, :cond_18b

    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/same/net/j;->d()Z

    move-result v0

    if-nez v0, :cond_17b

    :try_start_33
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/same/net/j;->g()V

    iget-object v0, v1, Lcom/mbridge/msdk/foundation/same/net/f/a;->b:Lcom/mbridge/msdk/foundation/same/net/stack/b;

    invoke-interface {v0, v2}, Lcom/mbridge/msdk/foundation/same/net/stack/b;->performRequest(Lcom/mbridge/msdk/foundation/same/net/j;)Lcom/mbridge/msdk/foundation/same/net/f/b;

    move-result-object v4
    :try_end_3c
    .catch Ljava/net/SocketTimeoutException; {:try_start_33 .. :try_end_3c} :catch_15c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_33 .. :try_end_3c} :catch_13e
    .catch Ljava/net/ConnectException; {:try_start_33 .. :try_end_3c} :catch_11f
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_33 .. :try_end_3c} :catch_100
    .catch Ljava/net/MalformedURLException; {:try_start_33 .. :try_end_3c} :catch_e2
    .catch Ljava/net/UnknownHostException; {:try_start_33 .. :try_end_3c} :catch_c3
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_66

    :try_start_3c
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/same/net/f/b;->a()I

    move-result v0

    iget-object v5, v1, Lcom/mbridge/msdk/foundation/same/net/f/a;->c:Lcom/mbridge/msdk/foundation/same/net/c;

    invoke-virtual {v2, v4, v5}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Lcom/mbridge/msdk/foundation/same/net/f/b;Lcom/mbridge/msdk/foundation/same/net/c;)[B

    move-result-object v2
    :try_end_46
    .catch Ljava/net/SocketTimeoutException; {:try_start_3c .. :try_end_46} :catch_15c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3c .. :try_end_46} :catch_13e
    .catch Ljava/net/ConnectException; {:try_start_3c .. :try_end_46} :catch_11f
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_3c .. :try_end_46} :catch_100
    .catch Ljava/net/MalformedURLException; {:try_start_3c .. :try_end_46} :catch_e2
    .catch Ljava/net/UnknownHostException; {:try_start_3c .. :try_end_46} :catch_c3
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_46} :catch_63

    :try_start_46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/16 v5, 0xc8

    if-lt v0, v5, :cond_5b

    const/16 v5, 0x18f

    if-gt v0, v5, :cond_5b

    new-instance v5, Lcom/mbridge/msdk/foundation/same/net/f/c;

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/same/net/f/b;->b()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v0, v2, v6}, Lcom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    return-object v5

    :cond_5b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_61
    .catch Ljava/net/SocketTimeoutException; {:try_start_46 .. :try_end_61} :catch_15c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_46 .. :try_end_61} :catch_13e
    .catch Ljava/net/ConnectException; {:try_start_46 .. :try_end_61} :catch_11f
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_46 .. :try_end_61} :catch_100
    .catch Ljava/net/MalformedURLException; {:try_start_46 .. :try_end_61} :catch_e2
    .catch Ljava/net/UnknownHostException; {:try_start_46 .. :try_end_61} :catch_c3
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_61} :catch_61

    :catch_61
    move-exception v0

    goto :goto_69

    :catch_63
    move-exception v0

    const/4 v2, 0x0

    goto :goto_69

    :catch_66
    move-exception v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v4, :cond_ba

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/same/net/f/b;->a()I

    move-result v0

    if-eqz v2, :cond_b1

    new-instance v3, Lcom/mbridge/msdk/foundation/same/net/f/c;

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/same/net/f/b;->b()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v0, v2, v4}, Lcom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    if-lt v0, v10, :cond_9b

    if-le v0, v8, :cond_94

    goto :goto_9b

    :cond_94
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :cond_9b
    :goto_9b
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_aa

    const/16 v2, 0x257

    if-gt v0, v2, :cond_aa

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v2, 0x7

    invoke-direct {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :cond_aa
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :cond_b1
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :cond_ba
    const/4 v3, 0x0

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/16 v2, 0xe

    invoke-direct {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :catch_c3
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :catch_e2
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :catch_100
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :catch_11f
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :catch_13e
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :catch_15c
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :cond_17b
    const/4 v3, 0x0

    invoke-virtual {v2, v9}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mbridge/msdk/foundation/same/net/f/a;->c:Lcom/mbridge/msdk/foundation/same/net/c;

    invoke-interface {v0, v2}, Lcom/mbridge/msdk/foundation/same/net/c;->b(Lcom/mbridge/msdk/foundation/same/net/j;)V

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :cond_18b
    :goto_18b
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/same/net/j;->d()Z

    move-result v0

    if-nez v0, :cond_3d1

    :try_start_191
    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/foundation/same/net/j;->g()V
    :try_end_194
    .catch Ljava/net/SocketTimeoutException; {:try_start_191 .. :try_end_194} :catch_39f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_191 .. :try_end_194} :catch_371
    .catch Ljava/net/ConnectException; {:try_start_191 .. :try_end_194} :catch_347
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_191 .. :try_end_194} :catch_31e
    .catch Ljava/net/MalformedURLException; {:try_start_191 .. :try_end_194} :catch_2f4
    .catch Ljava/net/UnknownHostException; {:try_start_191 .. :try_end_194} :catch_2c9
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_194} :catch_245

    :try_start_194
    iget-object v0, v1, Lcom/mbridge/msdk/foundation/same/net/f/a;->b:Lcom/mbridge/msdk/foundation/same/net/stack/b;

    invoke-interface {v0, v2}, Lcom/mbridge/msdk/foundation/same/net/stack/b;->performRequest(Lcom/mbridge/msdk/foundation/same/net/j;)Lcom/mbridge/msdk/foundation/same/net/f/b;

    move-result-object v6
    :try_end_19a
    .catch Ljava/net/SocketTimeoutException; {:try_start_194 .. :try_end_19a} :catch_23e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_194 .. :try_end_19a} :catch_237
    .catch Ljava/net/ConnectException; {:try_start_194 .. :try_end_19a} :catch_230
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_194 .. :try_end_19a} :catch_229
    .catch Ljava/net/MalformedURLException; {:try_start_194 .. :try_end_19a} :catch_222
    .catch Ljava/net/UnknownHostException; {:try_start_194 .. :try_end_19a} :catch_21b
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_19a} :catch_245

    :try_start_19a
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/same/net/f/b;->a()I

    move-result v0
    :try_end_19e
    .catch Ljava/net/SocketTimeoutException; {:try_start_19a .. :try_end_19e} :catch_23e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_19a .. :try_end_19e} :catch_237
    .catch Ljava/net/ConnectException; {:try_start_19a .. :try_end_19e} :catch_230
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_19a .. :try_end_19e} :catch_229
    .catch Ljava/net/MalformedURLException; {:try_start_19a .. :try_end_19e} :catch_222
    .catch Ljava/net/UnknownHostException; {:try_start_19a .. :try_end_19e} :catch_21b
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19e} :catch_217

    :try_start_19e
    iget-object v8, v1, Lcom/mbridge/msdk/foundation/same/net/f/a;->c:Lcom/mbridge/msdk/foundation/same/net/c;

    invoke-virtual {v2, v6, v8}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Lcom/mbridge/msdk/foundation/same/net/f/b;Lcom/mbridge/msdk/foundation/same/net/c;)[B

    move-result-object v8
    :try_end_1a4
    .catch Ljava/net/SocketTimeoutException; {:try_start_19e .. :try_end_1a4} :catch_20d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_19e .. :try_end_1a4} :catch_202
    .catch Ljava/net/ConnectException; {:try_start_19e .. :try_end_1a4} :catch_1f7
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_19e .. :try_end_1a4} :catch_1ed
    .catch Ljava/net/MalformedURLException; {:try_start_19e .. :try_end_1a4} :catch_1e2
    .catch Ljava/net/UnknownHostException; {:try_start_19e .. :try_end_1a4} :catch_1d7
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a4} :catch_217

    :try_start_1a4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/16 v10, 0xc8

    if-lt v0, v10, :cond_1bb

    const/16 v10, 0x18f

    if-gt v0, v10, :cond_1bb

    new-instance v10, Lcom/mbridge/msdk/foundation/same/net/f/c;
    :try_end_1b1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1a4 .. :try_end_1b1} :catch_20d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1a4 .. :try_end_1b1} :catch_202
    .catch Ljava/net/ConnectException; {:try_start_1a4 .. :try_end_1b1} :catch_1f7
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1a4 .. :try_end_1b1} :catch_1ed
    .catch Ljava/net/MalformedURLException; {:try_start_1a4 .. :try_end_1b1} :catch_1e2
    .catch Ljava/net/UnknownHostException; {:try_start_1a4 .. :try_end_1b1} :catch_1d7
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1b1} :catch_1d2

    move-object/from16 v16, v9

    :try_start_1b3
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/same/net/f/b;->b()Ljava/util/List;

    move-result-object v9

    invoke-direct {v10, v0, v8, v9}, Lcom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    return-object v10

    :cond_1bb
    move-object/from16 v16, v9

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1c3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b3 .. :try_end_1c3} :catch_1d0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1b3 .. :try_end_1c3} :catch_1ce
    .catch Ljava/net/ConnectException; {:try_start_1b3 .. :try_end_1c3} :catch_1cc
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1b3 .. :try_end_1c3} :catch_1ca
    .catch Ljava/net/MalformedURLException; {:try_start_1b3 .. :try_end_1c3} :catch_1c8
    .catch Ljava/net/UnknownHostException; {:try_start_1b3 .. :try_end_1c3} :catch_1c6
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1c3} :catch_1c3

    :catch_1c3
    move-exception v0

    goto/16 :goto_24a

    :catch_1c6
    move-exception v0

    goto :goto_1da

    :catch_1c8
    move-exception v0

    goto :goto_1e5

    :catch_1ca
    move-exception v0

    goto :goto_1f0

    :catch_1cc
    move-exception v0

    goto :goto_1fa

    :catch_1ce
    move-exception v0

    goto :goto_205

    :catch_1d0
    move-exception v0

    goto :goto_210

    :catch_1d2
    move-exception v0

    move-object/from16 v16, v9

    goto/16 :goto_24a

    :catch_1d7
    move-exception v0

    move-object/from16 v16, v9

    :goto_1da
    move-object/from16 v17, v7

    const/16 v6, 0xf

    const/16 v8, 0x1f3

    goto/16 :goto_2d0

    :catch_1e2
    move-exception v0

    move-object/from16 v16, v9

    :goto_1e5
    move-object/from16 v17, v7

    const/16 v7, 0x9

    const/16 v8, 0x1f3

    goto/16 :goto_2fb

    :catch_1ed
    move-exception v0

    move-object/from16 v16, v9

    :goto_1f0
    move-object/from16 v17, v7

    const/4 v6, 0x4

    const/16 v8, 0x1f3

    goto/16 :goto_324

    :catch_1f7
    move-exception v0

    move-object/from16 v16, v9

    :goto_1fa
    move-object/from16 v17, v7

    const/16 v7, 0xb

    const/16 v8, 0x1f3

    goto/16 :goto_34e

    :catch_202
    move-exception v0

    move-object/from16 v16, v9

    :goto_205
    move-object/from16 v17, v7

    const/16 v6, 0xc

    const/16 v8, 0x1f3

    goto/16 :goto_378

    :catch_20d
    move-exception v0

    move-object/from16 v16, v9

    :goto_210
    move-object/from16 v17, v7

    const/4 v7, 0x3

    const/16 v8, 0x1f3

    goto/16 :goto_3a5

    :catch_217
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_249

    :catch_21b
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v17, v7

    goto/16 :goto_2ce

    :catch_222
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v17, v7

    goto/16 :goto_2f9

    :catch_229
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v17, v7

    goto/16 :goto_323

    :catch_230
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v17, v7

    goto/16 :goto_34c

    :catch_237
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v17, v7

    goto/16 :goto_376

    :catch_23e
    move-exception v0

    move-object/from16 v16, v9

    move-object/from16 v17, v7

    goto/16 :goto_3a4

    :catch_245
    move-exception v0

    move-object/from16 v16, v9

    const/4 v6, 0x0

    :goto_249
    const/4 v8, 0x0

    :goto_24a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    move-object/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v6, :cond_272

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v6, 0x0

    const/16 v7, 0xe

    invoke-direct {v0, v7, v6}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-direct {v1, v2, v0, v9, v10}, Lcom/mbridge/msdk/foundation/same/net/f/a;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;J)V

    goto/16 :goto_399

    :cond_272
    const/16 v7, 0xe

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/same/net/f/b;->a()I

    move-result v0

    if-eqz v8, :cond_2b9

    new-instance v7, Lcom/mbridge/msdk/foundation/same/net/f/c;

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/same/net/f/b;->b()Ljava/util/List;

    move-result-object v6

    invoke-direct {v7, v0, v8, v6}, Lcom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    const/16 v6, 0x190

    const/16 v8, 0x1f3

    if-lt v0, v6, :cond_298

    if-gt v0, v8, :cond_298

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v7, 0x6

    const/4 v6, 0x0

    invoke-direct {v0, v7, v6}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-direct {v1, v2, v0, v9, v10}, Lcom/mbridge/msdk/foundation/same/net/f/a;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;J)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    goto :goto_2b2

    :cond_298
    const/16 v6, 0x1f4

    if-lt v0, v6, :cond_2a8

    const/16 v6, 0x257

    if-le v0, v6, :cond_2a1

    goto :goto_2a8

    :cond_2a1
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v2, 0x7

    invoke-direct {v0, v2, v7}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0

    :cond_2a8
    :goto_2a8
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-direct {v1, v2, v0, v9, v10}, Lcom/mbridge/msdk/foundation/same/net/f/a;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;J)V

    :goto_2b2
    move-object v8, v7

    move-object/from16 v7, v17

    const/16 v6, 0xa

    goto/16 :goto_3c9

    :cond_2b9
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/16 v8, 0x1f3

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/16 v6, 0xf

    invoke-direct {v0, v6, v7}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-direct {v1, v2, v0, v9, v10}, Lcom/mbridge/msdk/foundation/same/net/f/a;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;J)V

    goto/16 :goto_399

    :catch_2c9
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v16, v9

    :goto_2ce
    const/16 v6, 0xf

    :goto_2d0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v6, 0x0

    const/16 v7, 0x9

    invoke-direct {v0, v7, v6}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-direct {v1, v2, v0, v9, v10}, Lcom/mbridge/msdk/foundation/same/net/f/a;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;J)V

    goto/16 :goto_399

    :catch_2f4
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v16, v9

    :goto_2f9
    const/16 v7, 0x9

    :goto_2fb
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-direct {v1, v2, v0, v9, v10}, Lcom/mbridge/msdk/foundation/same/net/f/a;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;J)V

    goto/16 :goto_399

    :catch_31e
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v16, v9

    :goto_323
    const/4 v6, 0x4

    :goto_324
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v6, 0x0

    const/16 v7, 0xb

    invoke-direct {v0, v7, v6}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-direct {v1, v2, v0, v9, v10}, Lcom/mbridge/msdk/foundation/same/net/f/a;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;J)V

    goto :goto_399

    :catch_347
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v16, v9

    :goto_34c
    const/16 v7, 0xb

    :goto_34e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-direct {v1, v2, v0, v9, v10}, Lcom/mbridge/msdk/foundation/same/net/f/a;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;J)V

    goto :goto_399

    :catch_371
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v16, v9

    :goto_376
    const/16 v6, 0xc

    :goto_378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-direct {v0, v7, v6}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-direct {v1, v2, v0, v9, v10}, Lcom/mbridge/msdk/foundation/same/net/f/a;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;J)V

    :goto_399
    move-object/from16 v7, v17

    const/16 v6, 0xa

    const/4 v8, 0x0

    goto :goto_3c9

    :catch_39f
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v16, v9

    :goto_3a4
    const/4 v7, 0x3

    :goto_3a5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v17

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/16 v6, 0xa

    const/4 v8, 0x0

    invoke-direct {v0, v6, v8}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    invoke-direct {v1, v2, v0, v9, v10}, Lcom/mbridge/msdk/foundation/same/net/f/a;->a(Lcom/mbridge/msdk/foundation/same/net/j;Lcom/mbridge/msdk/foundation/same/net/b/a;J)V

    :goto_3c9
    move-object/from16 v9, v16

    const/16 v8, 0x1f3

    const/16 v10, 0x190

    goto/16 :goto_18b

    :cond_3d1
    const/4 v8, 0x0

    invoke-virtual {v2, v9}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mbridge/msdk/foundation/same/net/f/a;->c:Lcom/mbridge/msdk/foundation/same/net/c;

    invoke-interface {v0, v2}, Lcom/mbridge/msdk/foundation/same/net/c;->b(Lcom/mbridge/msdk/foundation/same/net/j;)V

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/b/a;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v8}, Lcom/mbridge/msdk/foundation/same/net/b/a;-><init>(ILcom/mbridge/msdk/foundation/same/net/f/c;)V

    throw v0
.end method
