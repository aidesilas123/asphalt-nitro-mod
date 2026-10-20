###### Class com.pgl.ssdk.l (com.pgl.ssdk.l)
.class public abstract Lcom/pgl/ssdk/l;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:[B

.field private f:I

.field private g:[B

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Landroid/os/HandlerThread;

.field private m:Landroid/os/Handler;

.field private n:Z

.field private o:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/pgl/ssdk/l;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/pgl/ssdk/l;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pgl/ssdk/l;->g:[B

    const/16 v1, 0x2710

    iput v1, p0, Lcom/pgl/ssdk/l;->h:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/pgl/ssdk/l;->i:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/pgl/ssdk/l;->j:I

    iput-boolean v1, p0, Lcom/pgl/ssdk/l;->k:Z

    iput-boolean v1, p0, Lcom/pgl/ssdk/l;->n:Z

    iput-object v0, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_26

    :cond_25
    move-object p2, p1

    :cond_26
    iput-object p2, p0, Lcom/pgl/ssdk/l;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/pgl/ssdk/l;)I
    .registers 1

    iget p0, p0, Lcom/pgl/ssdk/l;->j:I

    return p0
.end method

.method static synthetic a(Lcom/pgl/ssdk/l;I)I
    .registers 2

    iput p1, p0, Lcom/pgl/ssdk/l;->j:I

    return p1
.end method

.method private a(I)V
    .registers 7

    const-string v0, "Accept-Language"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    const-string p1, ""

    goto :goto_10

    :cond_b
    const-string p1, "application/octet-stream"

    goto :goto_10

    :cond_e
    const-string p1, "application/json; charset=utf-8"

    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    iget-object v1, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    iget-object p1, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pgl/ssdk/l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_37
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "zh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_89

    const-string v2, ","

    if-eqz v1, :cond_6b

    :try_start_49
    iget-object v1, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";q=0.9"

    :goto_63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_86

    :cond_6b
    iget-object v1, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";q=0.9,en-US;q=0.6,en;q=0.4"

    goto :goto_63

    :goto_86
    invoke-virtual {v1, v0, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_49 .. :try_end_89} :catchall_89

    :catchall_89
    return-void
.end method

.method private a()Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/pgl/ssdk/l;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/pgl/ssdk/l;->n:Z

    if-eqz v4, :cond_24

    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v3, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    :goto_21
    check-cast v3, Ljava/net/HttpURLConnection;

    goto :goto_29

    :cond_24
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    goto :goto_21

    :goto_29
    iput-object v3, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    iget v4, p0, Lcom/pgl/ssdk/l;->h:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v3, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    iget v4, p0, Lcom/pgl/ssdk/l;->h:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget v3, p0, Lcom/pgl/ssdk/l;->c:I
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_b9

    if-eq v3, v0, :cond_56

    const/4 v4, 0x3

    if-eq v3, v4, :cond_53

    const/4 v4, 0x4

    if-eq v3, v4, :cond_50

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4d

    const/4 v4, 0x6

    if-eq v3, v4, :cond_4a

    const-string v3, "GET"

    goto :goto_58

    :cond_4a
    const-string v3, "TRACE"

    goto :goto_58

    :cond_4d
    const-string v3, "HEAD"

    goto :goto_58

    :cond_50
    const-string v3, "DELETE"

    goto :goto_58

    :cond_53
    const-string v3, "PUT"

    goto :goto_58

    :cond_56
    const-string v3, "POST"

    :goto_58
    :try_start_58
    iget-object v4, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v3, p0, Lcom/pgl/ssdk/l;->d:I

    invoke-direct {p0, v3}, Lcom/pgl/ssdk/l;->a(I)V

    iget-object v3, p0, Lcom/pgl/ssdk/l;->e:[B

    if-eqz v3, :cond_7f

    array-length v3, v3

    if-lez v3, :cond_7f

    iget-object v3, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v3, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/pgl/ssdk/l;->e:[B

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_7f
    iget-object v3, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_84
    .catchall {:try_start_58 .. :try_end_84} :catchall_b9

    :try_start_84
    iget-object v3, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p0, Lcom/pgl/ssdk/l;->f:I

    iget-object v3, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_af

    :try_start_92
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    new-array v6, v5, [B

    :goto_9b
    invoke-virtual {v3, v6, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_a5

    invoke-virtual {v4, v6, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9b

    :cond_a5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/pgl/ssdk/l;->g:[B
    :try_end_ab
    .catchall {:try_start_92 .. :try_end_ab} :catchall_b0

    :goto_ab
    :try_start_ab
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_b9

    goto :goto_b3

    :catchall_af
    move-object v3, v1

    :catchall_b0
    if-eqz v3, :cond_b3

    goto :goto_ab

    :cond_b3
    :goto_b3
    iget-object v3, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    if-eqz v3, :cond_c7

    goto :goto_c2

    :catchall_b9
    move-exception v3

    :try_start_ba
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_ed

    iget-object v3, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    const/4 v4, 0x0

    if-eqz v3, :cond_c7

    :goto_c2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    :cond_c7
    if-eqz v4, :cond_ec

    iget v3, p0, Lcom/pgl/ssdk/l;->f:I

    iget-object v5, p0, Lcom/pgl/ssdk/l;->g:[B

    const/16 v6, 0xc8

    if-ne v3, v6, :cond_ec

    if-eqz v5, :cond_ec

    :try_start_d3
    array-length v3, v5

    if-lez v3, :cond_ec

    const/16 v3, 0xdf

    invoke-static {v3, v1, v5}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_e7

    sput-boolean v0, Lcom/pgl/ssdk/ces/e;->l:Z

    goto :goto_ec

    :cond_e7
    sput-boolean v2, Lcom/pgl/ssdk/ces/e;->l:Z
    :try_end_e9
    .catchall {:try_start_d3 .. :try_end_e9} :catchall_ea

    goto :goto_ec

    :catchall_ea
    sput-boolean v2, Lcom/pgl/ssdk/ces/e;->l:Z

    :cond_ec
    :goto_ec
    return v4

    :catchall_ed
    move-exception v0

    iget-object v2, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_f7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/pgl/ssdk/l;->o:Ljava/net/HttpURLConnection;

    :cond_f7
    throw v0
.end method

.method static synthetic a(Lcom/pgl/ssdk/l;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/pgl/ssdk/l;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/pgl/ssdk/l;)I
    .registers 3

    iget v0, p0, Lcom/pgl/ssdk/l;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pgl/ssdk/l;->j:I

    return v0
.end method

.method static synthetic c(Lcom/pgl/ssdk/l;)I
    .registers 1

    iget p0, p0, Lcom/pgl/ssdk/l;->i:I

    return p0
.end method

.method static synthetic d(Lcom/pgl/ssdk/l;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/pgl/ssdk/l;->l:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic e(Lcom/pgl/ssdk/l;)Z
    .registers 1

    invoke-direct {p0}, Lcom/pgl/ssdk/l;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/pgl/ssdk/l;)I
    .registers 1

    iget p0, p0, Lcom/pgl/ssdk/l;->h:I

    return p0
.end method

.method static synthetic g(Lcom/pgl/ssdk/l;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/pgl/ssdk/l;->m:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(II[B)V
    .registers 5

    iget-boolean v0, p0, Lcom/pgl/ssdk/l;->k:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/pgl/ssdk/l;->c:I

    iput p2, p0, Lcom/pgl/ssdk/l;->d:I

    iput-object p3, p0, Lcom/pgl/ssdk/l;->e:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/pgl/ssdk/l;->k:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/pgl/ssdk/l;->j:I

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "request"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/pgl/ssdk/l;->l:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/pgl/ssdk/l;->l:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance v0, Lcom/pgl/ssdk/k;

    invoke-direct {v0, p0}, Lcom/pgl/ssdk/k;-><init>(Lcom/pgl/ssdk/l;)V

    invoke-direct {p2, p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/pgl/ssdk/l;->m:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
