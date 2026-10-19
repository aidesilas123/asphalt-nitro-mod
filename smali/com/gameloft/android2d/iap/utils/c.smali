###### Class com.gameloft.android2d.iap.utils.c (com.gameloft.android2d.iap.utils.c)
.class public final Lcom/gameloft/android2d/iap/utils/c;
.super Ljava/lang/Object;
.source "HTTP.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/gameloft/android2d/iap/utils/XPlayer;

.field private c:Lcom/gameloft/android2d/iap/utils/b;

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private final g:I

.field private h:Ljava/lang/Thread;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/net/HttpURLConnection;

.field private l:Ljava/net/HttpURLConnection;

.field private m:Ljavax/net/ssl/HttpsURLConnection;

.field private n:Ljava/io/InputStream;

.field private o:Ljava/io/OutputStream;

.field public p:Ljava/lang/String;

.field q:Z

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "GET"

    const-string v1, "POST"

    const-string v2, "PUT"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/utils/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/gameloft/android2d/iap/utils/XPlayer;ZLjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->c:Lcom/gameloft/android2d/iap/utils/b;

    const/4 v1, 0x0

    iput v1, p0, Lcom/gameloft/android2d/iap/utils/c;->d:I

    const-string v2, ""

    iput-object v2, p0, Lcom/gameloft/android2d/iap/utils/c;->f:Ljava/lang/String;

    const/16 v2, 0x10

    iput v2, p0, Lcom/gameloft/android2d/iap/utils/c;->g:I

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->h:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->k:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->n:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->o:Ljava/io/OutputStream;

    iput-boolean v1, p0, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    iput-boolean v1, p0, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    iput-boolean p2, p0, Lcom/gameloft/android2d/iap/utils/c;->e:Z

    iput-object p3, p0, Lcom/gameloft/android2d/iap/utils/c;->f:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->i:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->c:Lcom/gameloft/android2d/iap/utils/b;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/b;->b()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->k:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    :try_start_5
    monitor-enter v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6} :catch_10

    :try_start_6
    iget-object v2, p0, Lcom/gameloft/android2d/iap/utils/c;->n:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    monitor-exit v0

    goto :goto_10

    :catchall_d
    move-exception v2

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    :try_start_f
    throw v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_10} :catch_10

    :catch_10
    :goto_10
    :try_start_10
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->k:Ljava/net/HttpURLConnection;

    monitor-enter v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_1d

    :try_start_13
    iget-object v2, p0, Lcom/gameloft/android2d/iap/utils/c;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    monitor-exit v0

    goto :goto_1e

    :catchall_1a
    move-exception v2

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1d} :catch_1d

    :catch_1d
    nop

    :goto_1e
    iget v0, p0, Lcom/gameloft/android2d/iap/utils/c;->d:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_26

    const/4 v2, 0x2

    if-ne v0, v2, :cond_35

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->o:Ljava/io/OutputStream;

    monitor-enter v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_33

    :try_start_29
    iget-object v2, p0, Lcom/gameloft/android2d/iap/utils/c;->o:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    monitor-exit v0

    goto :goto_33

    :catchall_30
    move-exception v2

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    :try_start_32
    throw v2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33} :catch_33

    :catch_33
    :goto_33
    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/c;->o:Ljava/io/OutputStream;

    :cond_35
    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/c;->n:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/c;->k:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/c;->h:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :goto_0
    iget-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    const-wide/32 v1, 0xea60

    if-eqz v0, :cond_24

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    iget-wide v5, v0, Lcom/gameloft/android2d/iap/utils/XPlayer;->k:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_17

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/c;->b()V

    :cond_17
    monitor-enter p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_22

    const-wide/16 v0, 0x32

    :try_start_1a
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0

    goto :goto_0

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    :try_start_21
    throw v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_22} :catch_22

    :catch_22
    nop

    goto :goto_0

    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    iget v3, p0, Lcom/gameloft/android2d/iap/utils/c;->d:I

    if-eq v3, v0, :cond_66

    const/4 v0, 0x2

    if-ne v3, v0, :cond_2f

    goto :goto_66

    :cond_2f
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/c;->i:Ljava/lang/String;

    goto :goto_6a

    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/c;->i:Ljava/lang/String;

    goto :goto_6a

    :cond_66
    :goto_66
    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/c;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/utils/c;->j:Ljava/lang/String;

    :goto_6a
    sget-object p1, Lcom/gameloft/android2d/iap/utils/XPlayer;->d:Ljava/lang/String;

    const-string p2, "TextHtml"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bd

    sget-object p1, Lcom/gameloft/android2d/iap/utils/XPlayer;->d:Ljava/lang/String;

    const-string p2, "texthtml"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bd

    sget-object p1, Lcom/gameloft/android2d/iap/utils/XPlayer;->d:Ljava/lang/String;

    const-string p2, "TEXTHTML"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_89

    goto :goto_bd

    :cond_89
    sget-object p1, Lcom/gameloft/android2d/iap/utils/XPlayer;->d:Ljava/lang/String;

    const-string p2, "TextPlain"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    sget-object p1, Lcom/gameloft/android2d/iap/utils/XPlayer;->d:Ljava/lang/String;

    const-string p2, "textplain"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a7

    sget-object p1, Lcom/gameloft/android2d/iap/utils/XPlayer;->d:Ljava/lang/String;

    const-string p2, "TEXTPLAIN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d2

    :cond_a7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/c;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&textplain=1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/c;->i:Ljava/lang/String;

    goto :goto_d2

    :cond_bd
    :goto_bd
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/c;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&texthtml=1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/c;->i:Ljava/lang/String;

    :cond_d2
    :goto_d2
    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/c;->h:Ljava/lang/Thread;

    if-eqz p1, :cond_d9

    :try_start_d6
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d9} :catch_d9

    :catch_d9
    :cond_d9
    new-instance p1, Lcom/gameloft/android2d/iap/utils/b;

    invoke-direct {p1}, Lcom/gameloft/android2d/iap/utils/b;-><init>()V

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/c;->c:Lcom/gameloft/android2d/iap/utils/b;

    invoke-virtual {p1, v1, v2, p0}, Lcom/gameloft/android2d/iap/utils/b;->a(JLcom/gameloft/android2d/iap/utils/c;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/c;->h:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public f(I)V
    .registers 2

    iput p1, p0, Lcom/gameloft/android2d/iap/utils/c;->d:I

    return-void
.end method

.method public run()V
    .registers 19

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->a()Z

    move-result v0

    const v7, 0x7f120394

    const v8, 0x7f120393

    const v9, 0x7f12039e

    const v10, 0x7f120390

    const v11, 0x7f120391

    const v12, 0x7f12039d

    const v13, 0x7f12039a

    const v14, 0x7f12039b

    const v15, 0x7f1203a8

    const v16, 0x7f12038d

    const v17, 0x7f1203ab

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_446

    iget v0, v1, Lcom/gameloft/android2d/iap/utils/c;->d:I

    if-eq v0, v3, :cond_32

    if-ne v0, v2, :cond_41

    :cond_32
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->j:Ljava/lang/String;

    if-nez v0, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->b()V

    iput-boolean v3, v1, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    iput-boolean v4, v1, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    invoke-direct/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->d()V

    return-void

    :cond_41
    :try_start_41
    iput-boolean v4, v1, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getCarrier()Lcom/gameloft/android2d/iap/utils/a;

    move-result-object v0

    const-string v4, "http.keepAlive"

    const-string v5, "false"

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Ljava/net/URL;

    iget-object v5, v1, Lcom/gameloft/android2d/iap/utils/c;->i:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/a;->f()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->isUsing3G()Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/a;->a()I

    move-result v0

    invoke-direct {v6, v5, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v4, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    goto :goto_8a

    :cond_82
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    :goto_8a
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    sget-object v4, Lcom/gameloft/android2d/iap/utils/c;->a:[Ljava/lang/String;

    iget v5, v1, Lcom/gameloft/android2d/iap/utils/c;->d:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget v0, v1, Lcom/gameloft/android2d/iap/utils/c;->d:I

    if-eq v0, v3, :cond_a0

    if-ne v0, v2, :cond_a5

    :cond_a0
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_a5
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const-string v4, "Connection"

    const-string v5, "close"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->m:Ljava/lang/String;

    if-eqz v0, :cond_c6

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-static/range {v17 .. v17}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android2d/iap/IAPLib;->m:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d6

    :cond_c6
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-static/range {v17 .. v17}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d6
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-static/range {v16 .. v16}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-static {v15}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getLineNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v0

    if-eq v0, v2, :cond_108

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-static {v14}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_108
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v0

    if-eqz v0, :cond_11f

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-static {v13}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11f
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->isUsingWIFI()Z

    move-result v0

    if-eqz v0, :cond_158

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->GetSerialKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_138

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-static {v11}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->GetSerialKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_138
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-static {v12}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getLineNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getLineNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_158
    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetUserCredential()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16a

    const-string v4, "null:null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16c

    :cond_16a
    const-string v0, ""

    :cond_16c
    iget-object v4, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-static {v10}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-static {v8}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-static {v7}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetDatacenter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f1203a6

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f1203a7

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f1203a5

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f1203a0

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f1203a1

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f12039f

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f1203a2

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gameloft/android2d/iap/utils/Device;->e()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f1203a9

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f12032a

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_249

    const-string v0, "0"

    :cond_249
    iget-object v4, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v5, 0x7f120395

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f1203a4

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getWAPPurchaseID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f12038a

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android2d/iap/IAPLib;->Z:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f12039c

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android2d/iap/IAPLib;->T:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->d0:Z

    if-eqz v0, :cond_2be

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f1203b1

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getVersionNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f1203b0

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f12032b

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f1203af

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/XPlayer;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2be
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d6

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f12038b

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/gameloft/android2d/iap/utils/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d6
    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetAnonymousCredential()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2f4

    const-string v4, "null:null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f4

    iget-object v4, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v5, 0x7f120397

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f4
    iget v0, v1, Lcom/gameloft/android2d/iap/utils/c;->d:I

    if-eq v0, v3, :cond_2fa

    if-ne v0, v2, :cond_34f

    :cond_2fa
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v2, 0x7f12038f

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/gameloft/android2d/iap/IAPLib;->a0:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/gameloft/android2d/iap/utils/c;->e:Z

    if-eqz v0, :cond_320

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_322

    :cond_320
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->j:Ljava/lang/String;

    :goto_322
    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f12038e

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_34f
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v2, 0x7f120392

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_360

    sput-object v0, Lcom/gameloft/android2d/iap/IAPLib;->T:Ljava/lang/String;

    :cond_360
    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->d0:Z

    if-eqz v0, :cond_376

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    const v4, 0x7f1203b2

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->q(Ljava/lang/String;)V

    :cond_376
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    invoke-virtual {v2, v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->r(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a5

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x199

    if-ne v0, v2, :cond_3a5

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    const/16 v2, 0x1ad

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->s(I)V

    goto :goto_3b0

    :cond_3a5
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->s(I)V

    :goto_3b0
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_3d0

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_3d0

    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->b()V

    iput-boolean v3, v1, Lcom/gameloft/android2d/iap/utils/c;->r:Z
    :try_end_3c9
    .catch Ljava/net/SocketException; {:try_start_41 .. :try_end_3c9} :catch_431
    .catch Ljava/net/UnknownHostException; {:try_start_41 .. :try_end_3c9} :catch_425
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_3c9} :catch_41f

    const/4 v2, 0x0

    :try_start_3ca
    iput-boolean v2, v1, Lcom/gameloft/android2d/iap/utils/c;->q:Z
    :try_end_3cc
    .catch Ljava/net/SocketException; {:try_start_3ca .. :try_end_3cc} :catch_432
    .catch Ljava/net/UnknownHostException; {:try_start_3ca .. :try_end_3cc} :catch_426
    .catch Ljava/lang/Exception; {:try_start_3ca .. :try_end_3cc} :catch_41f

    :try_start_3cc
    invoke-direct/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->d()V

    return-void

    :cond_3d0
    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    monitor-enter v2
    :try_end_3d3
    .catch Ljava/net/SocketException; {:try_start_3cc .. :try_end_3d3} :catch_431
    .catch Ljava/net/UnknownHostException; {:try_start_3cc .. :try_end_3d3} :catch_425
    .catch Ljava/lang/Exception; {:try_start_3cc .. :try_end_3d3} :catch_41f

    :try_start_3d3
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->n:Ljava/io/InputStream;

    monitor-exit v2
    :try_end_3dc
    .catchall {:try_start_3d3 .. :try_end_3dc} :catchall_41c

    :try_start_3dc
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x10

    new-array v4, v2, [B

    const/4 v5, 0x0

    :goto_3e6
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3f8

    iget-object v5, v1, Lcom/gameloft/android2d/iap/utils/c;->n:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v6, :cond_3f5

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_3f5
    const/16 v2, 0x10

    goto :goto_3e6

    :cond_3f8
    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_409

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    goto :goto_413

    :cond_409
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/GZip;->Decompress([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    :goto_413
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->r(Ljava/lang/String;)V
    :try_end_41a
    .catch Ljava/net/SocketException; {:try_start_3dc .. :try_end_41a} :catch_431
    .catch Ljava/net/UnknownHostException; {:try_start_3dc .. :try_end_41a} :catch_425
    .catch Ljava/lang/Exception; {:try_start_3dc .. :try_end_41a} :catch_41f

    const/4 v2, 0x0

    goto :goto_43c

    :catchall_41c
    move-exception v0

    :try_start_41d
    monitor-exit v2
    :try_end_41e
    .catchall {:try_start_41d .. :try_end_41e} :catchall_41c

    :try_start_41e
    throw v0
    :try_end_41f
    .catch Ljava/net/SocketException; {:try_start_41e .. :try_end_41f} :catch_431
    .catch Ljava/net/UnknownHostException; {:try_start_41e .. :try_end_41f} :catch_425
    .catch Ljava/lang/Exception; {:try_start_41e .. :try_end_41f} :catch_41f

    :catch_41f
    iput-boolean v3, v1, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    goto :goto_43c

    :catch_425
    const/4 v2, 0x0

    :catch_426
    iput-boolean v3, v1, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    iput-boolean v2, v1, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Lcom/gameloft/android2d/iap/utils/XPlayer;->s(I)V

    goto :goto_43c

    :catch_431
    const/4 v2, 0x0

    :catch_432
    const/4 v4, -0x2

    iput-boolean v3, v1, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    iput-boolean v2, v1, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    invoke-virtual {v0, v4}, Lcom/gameloft/android2d/iap/utils/XPlayer;->s(I)V

    :goto_43c
    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->b()V

    iput-boolean v2, v1, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    invoke-direct/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->d()V

    goto/16 :goto_88d

    :cond_446
    iget v0, v1, Lcom/gameloft/android2d/iap/utils/c;->d:I

    if-eq v0, v3, :cond_44c

    if-ne v0, v2, :cond_45c

    :cond_44c
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->j:Ljava/lang/String;

    if-nez v0, :cond_45c

    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->b()V

    iput-boolean v3, v1, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    invoke-direct/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->d()V

    return-void

    :cond_45c
    const/4 v4, 0x0

    :try_start_45d
    iput-boolean v4, v1, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getCarrier()Lcom/gameloft/android2d/iap/utils/a;

    move-result-object v0

    const-string v4, "http.keepAlive"

    const-string v5, "false"

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Ljava/net/URL;

    iget-object v5, v1, Lcom/gameloft/android2d/iap/utils/c;->i:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/a;->f()Z

    move-result v5

    if-eqz v5, :cond_49e

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->isUsing3G()Z

    move-result v5

    if-eqz v5, :cond_49e

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/a;->a()I

    move-result v0

    invoke-direct {v6, v5, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v4, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_4a6

    :cond_49e
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    :goto_4a6
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    sget-object v4, Lcom/gameloft/android2d/iap/utils/c;->a:[Ljava/lang/String;

    iget v5, v1, Lcom/gameloft/android2d/iap/utils/c;->d:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    iget v0, v1, Lcom/gameloft/android2d/iap/utils/c;->d:I

    if-eq v0, v3, :cond_4bc

    if-ne v0, v2, :cond_4c1

    :cond_4bc
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    :cond_4c1
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const-string v4, "Connection"

    const-string v5, "close"

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->m:Ljava/lang/String;

    if-eqz v0, :cond_4e2

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e2

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static/range {v17 .. v17}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android2d/iap/IAPLib;->m:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f2

    :cond_4e2
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static/range {v17 .. v17}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f2
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static/range {v16 .. v16}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v15}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getLineNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v0

    if-eq v0, v2, :cond_524

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v14}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_524
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v0

    if-eqz v0, :cond_53b

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v13}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53b
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->isUsingWIFI()Z

    move-result v0

    if-eqz v0, :cond_574

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->GetSerialKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_554

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v11}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->GetSerialKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_554
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v12}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getLineNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v9}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getLineNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_574
    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetUserCredential()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_586

    const-string v4, "null:null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_588

    :cond_586
    const-string v0, ""

    :cond_588
    iget-object v4, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v10}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v8}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v7}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetDatacenter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203a6

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203a7

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203a5

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203a0

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203a1

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f12039f

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/Device;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203a2

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/XPlayer;->getDevice()Lcom/gameloft/android2d/iap/utils/Device;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gameloft/android2d/iap/utils/Device;->e()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203a9

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f12032a

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_665

    const-string v0, "0"

    :cond_665
    iget-object v4, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v5, 0x7f120395

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203a4

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getWAPPurchaseID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f12038a

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android2d/iap/IAPLib;->Z:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f12039c

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android2d/iap/IAPLib;->T:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->d0:Z

    if-eqz v0, :cond_6fa

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203ae

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getDemoCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203b1

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getVersionNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203b0

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f12032b

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203af

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/XPlayer;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203ad

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getUserID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6fa
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_712

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f12038b

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/gameloft/android2d/iap/utils/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_712
    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetAnonymousCredential()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_730

    const-string v4, "null:null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_730

    iget-object v4, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v5, 0x7f120397

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_730
    iget v0, v1, Lcom/gameloft/android2d/iap/utils/c;->d:I

    if-eq v0, v3, :cond_736

    if-ne v0, v2, :cond_78b

    :cond_736
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v2, 0x7f12038f

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/gameloft/android2d/iap/IAPLib;->a0:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/gameloft/android2d/iap/utils/c;->e:Z

    if-eqz v0, :cond_75c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_75e

    :cond_75c
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->j:Ljava/lang/String;

    :goto_75e
    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f12038e

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->o:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_78b
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v2, 0x7f120392

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79c

    sput-object v0, Lcom/gameloft/android2d/iap/IAPLib;->T:Ljava/lang/String;

    :cond_79c
    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->d0:Z

    if-eqz v0, :cond_7b2

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    const v4, 0x7f1203b2

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->q(Ljava/lang/String;)V

    :cond_7b2
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    invoke-virtual {v2, v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->r(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e1

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x199

    if-ne v0, v2, :cond_7e1

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    const/16 v2, 0x1ad

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->s(I)V

    goto :goto_7ec

    :cond_7e1
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->s(I)V

    :goto_7ec
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_80c

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_80c

    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->b()V

    iput-boolean v3, v1, Lcom/gameloft/android2d/iap/utils/c;->r:Z
    :try_end_805
    .catch Ljava/net/SocketException; {:try_start_45d .. :try_end_805} :catch_87a
    .catch Ljava/net/UnknownHostException; {:try_start_45d .. :try_end_805} :catch_86e
    .catch Ljava/lang/Exception; {:try_start_45d .. :try_end_805} :catch_868

    const/4 v2, 0x0

    :try_start_806
    iput-boolean v2, v1, Lcom/gameloft/android2d/iap/utils/c;->q:Z
    :try_end_808
    .catch Ljava/net/SocketException; {:try_start_806 .. :try_end_808} :catch_87b
    .catch Ljava/net/UnknownHostException; {:try_start_806 .. :try_end_808} :catch_86f
    .catch Ljava/lang/Exception; {:try_start_806 .. :try_end_808} :catch_868

    :try_start_808
    invoke-direct/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->d()V

    return-void

    :cond_80c
    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    monitor-enter v2
    :try_end_80f
    .catch Ljava/net/SocketException; {:try_start_808 .. :try_end_80f} :catch_87a
    .catch Ljava/net/UnknownHostException; {:try_start_808 .. :try_end_80f} :catch_86e
    .catch Ljava/lang/Exception; {:try_start_808 .. :try_end_80f} :catch_868

    :try_start_80f
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->m:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->n:Ljava/io/InputStream;

    monitor-exit v2
    :try_end_818
    .catchall {:try_start_80f .. :try_end_818} :catchall_865

    :try_start_818
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x10

    new-array v4, v2, [B

    const/4 v5, 0x0

    const/4 v6, -0x1

    :cond_823
    :goto_823
    if-eq v5, v6, :cond_832

    iget-object v5, v1, Lcom/gameloft/android2d/iap/utils/c;->n:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v6, :cond_823

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_823

    :cond_832
    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->f:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_843

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    goto :goto_84d

    :cond_843
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/GZip;->Decompress([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    :goto_84d
    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    iget-object v2, v1, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;->r(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->p:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    :goto_85d
    array-length v2, v0
    :try_end_85e
    .catch Ljava/net/SocketException; {:try_start_818 .. :try_end_85e} :catch_87a
    .catch Ljava/net/UnknownHostException; {:try_start_818 .. :try_end_85e} :catch_86e
    .catch Ljava/lang/Exception; {:try_start_818 .. :try_end_85e} :catch_868

    if-ge v5, v2, :cond_863

    add-int/lit8 v5, v5, 0x1

    goto :goto_85d

    :cond_863
    const/4 v2, 0x0

    goto :goto_885

    :catchall_865
    move-exception v0

    :try_start_866
    monitor-exit v2
    :try_end_867
    .catchall {:try_start_866 .. :try_end_867} :catchall_865

    :try_start_867
    throw v0
    :try_end_868
    .catch Ljava/net/SocketException; {:try_start_867 .. :try_end_868} :catch_87a
    .catch Ljava/net/UnknownHostException; {:try_start_867 .. :try_end_868} :catch_86e
    .catch Ljava/lang/Exception; {:try_start_867 .. :try_end_868} :catch_868

    :catch_868
    iput-boolean v3, v1, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    goto :goto_885

    :catch_86e
    const/4 v2, 0x0

    :catch_86f
    iput-boolean v3, v1, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    iput-boolean v2, v1, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Lcom/gameloft/android2d/iap/utils/XPlayer;->s(I)V

    goto :goto_885

    :catch_87a
    const/4 v2, 0x0

    :catch_87b
    const/4 v4, -0x2

    iput-boolean v3, v1, Lcom/gameloft/android2d/iap/utils/c;->r:Z

    iput-boolean v2, v1, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    iget-object v0, v1, Lcom/gameloft/android2d/iap/utils/c;->b:Lcom/gameloft/android2d/iap/utils/XPlayer;

    invoke-virtual {v0, v4}, Lcom/gameloft/android2d/iap/utils/XPlayer;->s(I)V

    :goto_885
    invoke-virtual/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->b()V

    iput-boolean v2, v1, Lcom/gameloft/android2d/iap/utils/c;->q:Z

    invoke-direct/range {p0 .. p0}, Lcom/gameloft/android2d/iap/utils/c;->d()V

    :goto_88d
    return-void
.end method
