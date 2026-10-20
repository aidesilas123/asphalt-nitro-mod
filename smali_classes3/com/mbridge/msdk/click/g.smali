###### Class com.mbridge.msdk.click.g (com.mbridge.msdk.click.g)
.class public Lcom/mbridge/msdk/click/g;
.super Ljava/lang/Object;
.source "JavaHttpSpider.java"


# static fields
.field private static final a:Ljava/lang/String; = "g"


# instance fields
.field private b:Lcom/mbridge/msdk/c/e;

.field private c:Ljava/lang/String;

.field private d:Z

.field private final e:I

.field private f:Lcom/mbridge/msdk/click/entity/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/click/g;->d:Z

    const/high16 v0, 0x300000

    iput v0, p0, Lcom/mbridge/msdk/click/g;->e:I

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/c/f;->b(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/click/g;->b:Lcom/mbridge/msdk/c/e;

    if-nez v0, :cond_28

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/f;->b()Lcom/mbridge/msdk/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/click/g;->b:Lcom/mbridge/msdk/c/e;

    :cond_28
    return-void
.end method

.method private a(Ljava/io/InputStream;Z)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_e

    :try_start_8
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, p2

    :cond_e
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_2e
    .catchall {:try_start_8 .. :try_end_18} :catchall_2c

    :goto_18
    :try_start_18
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_29
    .catchall {:try_start_18 .. :try_end_21} :catchall_26

    goto :goto_18

    :cond_22
    :try_start_22
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_4f

    goto :goto_59

    :catchall_26
    move-exception p1

    move-object v1, p2

    goto :goto_5e

    :catch_29
    move-exception p1

    move-object v1, p2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    goto :goto_5e

    :catch_2e
    move-exception p1

    :goto_2f
    :try_start_2f
    iget-object p2, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    if-nez p2, :cond_40

    new-instance p2, Lcom/mbridge/msdk/click/entity/a;

    invoke-direct {p2}, Lcom/mbridge/msdk/click/entity/a;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    :cond_40
    sget-object p2, Lcom/mbridge/msdk/click/g;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_2f .. :try_end_49} :catchall_2c

    if-eqz v1, :cond_59

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_59

    :catch_4f
    move-exception p1

    sget-object p2, Lcom/mbridge/msdk/click/g;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    :goto_59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_5e
    if-eqz v1, :cond_6e

    :try_start_60
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_6e

    :catch_64
    move-exception p2

    sget-object v0, Lcom/mbridge/msdk/click/g;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZZLcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/click/entity/a;
    .registers 9

    const-string v0, "gzip"

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    const-string v1, " "

    const-string v3, "%20"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/mbridge/msdk/click/entity/a;

    invoke-direct {v1}, Lcom/mbridge/msdk/click/entity/a;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    :try_start_19
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_113

    :try_start_24
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_110

    const-string v2, "User-Agent"

    if-nez p2, :cond_2f

    if-eqz p3, :cond_31

    :cond_2f
    if-nez p4, :cond_38

    :cond_31
    :try_start_31
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    const/4 v3, 0x1

    if-eqz p2, :cond_4a

    if-eqz p4, :cond_4a

    invoke-virtual {p4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getcUA()I

    move-result p2

    if-ne p2, v3, :cond_4a

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    if-eqz p3, :cond_5b

    if-eqz p4, :cond_5b

    invoke-virtual {p4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpUA()I

    move-result p2

    if-ne p2, v3, :cond_5b

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    const-string p2, "Accept-Encoding"

    invoke-virtual {v1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/click/g;->b:Lcom/mbridge/msdk/c/e;

    invoke-virtual {p2}, Lcom/mbridge/msdk/c/e;->V()Z

    move-result p2

    if-eqz p2, :cond_77

    iget-object p2, p0, Lcom/mbridge/msdk/click/g;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_77

    const-string p2, "referer"

    iget-object p3, p0, Lcom/mbridge/msdk/click/g;->c:Ljava/lang/String;

    invoke-virtual {v1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    const p2, 0xea60

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    iget-object p2, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    const-string p3, "Location"

    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/mbridge/msdk/click/entity/a;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    const-string p3, "Referer"

    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/mbridge/msdk/click/entity/a;->d:Ljava/lang/String;

    iget-object p2, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    iput p3, p2, Lcom/mbridge/msdk/click/entity/a;->f:I

    iget-object p2, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/mbridge/msdk/click/entity/a;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p3

    iput p3, p2, Lcom/mbridge/msdk/click/entity/a;->e:I

    iget-object p2, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/mbridge/msdk/click/entity/a;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    iget-object p2, p2, Lcom/mbridge/msdk/click/entity/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    iget-object p3, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    iget p4, p3, Lcom/mbridge/msdk/click/entity/a;->f:I

    const/16 v0, 0xc8

    if-ne p4, v0, :cond_108

    iget-boolean p4, p0, Lcom/mbridge/msdk/click/g;->d:Z

    if-eqz p4, :cond_108

    iget p3, p3, Lcom/mbridge/msdk/click/entity/a;->e:I

    if-lez p3, :cond_108

    const/high16 p4, 0x300000

    if-ge p3, p4, :cond_108

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_db
    .catchall {:try_start_31 .. :try_end_db} :catchall_110

    if-nez p3, :cond_108

    :try_start_dd
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/mbridge/msdk/click/g;->a(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_108

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    array-length v0, p3

    if-lez v0, :cond_108

    array-length p3, p3

    if-ge p3, p4, :cond_108

    iget-object p3, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/mbridge/msdk/click/entity/a;->g:Ljava/lang/String;
    :try_end_fd
    .catchall {:try_start_dd .. :try_end_fd} :catchall_fe

    goto :goto_108

    :catchall_fe
    move-exception p2

    :try_start_ff
    sget-object p3, Lcom/mbridge/msdk/click/g;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_108
    :goto_108
    iput-object p1, p0, Lcom/mbridge/msdk/click/g;->c:Ljava/lang/String;
    :try_end_10a
    .catchall {:try_start_ff .. :try_end_10a} :catchall_110

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object p1, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    return-object p1

    :catchall_110
    move-exception p1

    move-object v2, v1

    goto :goto_114

    :catchall_113
    move-exception p1

    :goto_114
    :try_start_114
    iget-object p2, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/mbridge/msdk/click/g;->f:Lcom/mbridge/msdk/click/entity/a;
    :try_end_11e
    .catchall {:try_start_114 .. :try_end_11e} :catchall_124

    if-eqz v2, :cond_123

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_123
    return-object p1

    :catchall_124
    move-exception p1

    if-eqz v2, :cond_12a

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12a
    throw p1
.end method
