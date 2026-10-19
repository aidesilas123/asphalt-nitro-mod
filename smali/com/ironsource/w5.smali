###### Class com.json.w5 (com.ironsource.w5)
.class public Lcom/ironsource/w5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/w5$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/wa;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ironsource/wa;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Lcom/ironsource/w5$a$a;

    invoke-direct {v0}, Lcom/ironsource/w5$a$a;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ironsource/w5$a$a;->d(Ljava/lang/String;)Lcom/ironsource/w5$a$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ironsource/w5$a$a;->a(Ljava/lang/String;)Lcom/ironsource/w5$a$a;

    move-result-object p0

    const-string p1, "GET"

    invoke-virtual {p0, p1}, Lcom/ironsource/w5$a$a;->e(Ljava/lang/String;)Lcom/ironsource/w5$a$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ironsource/w5$a$a;->b(Ljava/util/List;)Lcom/ironsource/w5$a$a;

    invoke-virtual {v0}, Lcom/ironsource/w5$a$a;->c()Lcom/ironsource/w5$a;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/w5;->b(Lcom/ironsource/w5$a;)Lcom/ironsource/wa;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/ironsource/w5$a;)Lcom/ironsource/wa;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/w5$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/w5$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/w5;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    new-instance v0, Lcom/ironsource/wa;

    invoke-direct {v0}, Lcom/ironsource/wa;-><init>()V

    const/4 v1, 0x0

    :try_start_10
    invoke-static {p0}, Lcom/ironsource/w5;->c(Lcom/ironsource/w5$a;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_3b
    .catchall {:try_start_10 .. :try_end_14} :catchall_38

    :try_start_14
    iget-object v3, p0, Lcom/ironsource/w5$a;->g:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/ironsource/w5;->e(Ljava/net/HttpURLConnection;Ljava/util/List;)V

    invoke-static {v2, p0}, Lcom/ironsource/w5;->d(Ljava/net/HttpURLConnection;Lcom/ironsource/w5$a;)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v0, Lcom/ironsource/wa;->a:I

    if-eqz v1, :cond_2e

    invoke-static {v1}, Lcom/ironsource/yc;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, v0, Lcom/ironsource/wa;->b:[B
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2e} :catch_33
    .catchall {:try_start_14 .. :try_end_2e} :catchall_31

    :cond_2e
    if-eqz v1, :cond_75

    goto :goto_70

    :catchall_31
    move-exception p0

    goto :goto_7e

    :catch_33
    move-exception v3

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3d

    :catchall_38
    move-exception p0

    move-object v2, v1

    goto :goto_7e

    :catch_3b
    move-exception v3

    move-object v2, v1

    :goto_3d
    if-eqz v1, :cond_79

    :try_start_3f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, v0, Lcom/ironsource/wa;->a:I

    const/16 v5, 0x190

    if-lt v4, v5, :cond_79

    const-string v3, "ISHttpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed post to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ironsource/w5$a;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " StatusCode: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/ironsource/wa;->a:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_3f .. :try_end_6b} :catchall_7a

    if-eqz v2, :cond_74

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_70
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_75

    :cond_74
    move-object v2, v1

    :cond_75
    :goto_75
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :cond_79
    :try_start_79
    throw v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    :catchall_7a
    move-exception p0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_7e
    if-eqz v1, :cond_83

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_83
    if-eqz v2, :cond_88

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_88
    throw p0

    :cond_89
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string v0, "not valid params"

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/wa;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ironsource/wa;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/ironsource/w5$a$a;

    invoke-direct {v0}, Lcom/ironsource/w5$a$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/ironsource/w5$a$a;->d(Ljava/lang/String;)Lcom/ironsource/w5$a$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ironsource/w5$a$a;->a(Ljava/lang/String;)Lcom/ironsource/w5$a$a;

    move-result-object p0

    const-string p1, "POST"

    invoke-virtual {p0, p1}, Lcom/ironsource/w5$a$a;->e(Ljava/lang/String;)Lcom/ironsource/w5$a$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ironsource/w5$a$a;->b(Ljava/util/List;)Lcom/ironsource/w5$a$a;

    invoke-virtual {v0}, Lcom/ironsource/w5$a$a;->c()Lcom/ironsource/w5$a;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/w5;->b(Lcom/ironsource/w5$a;)Lcom/ironsource/wa;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/ironsource/w5$a;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/ironsource/w5$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/ironsource/w5$a;->d:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v1, p0, Lcom/ironsource/w5$a;->e:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object p0, p0, Lcom/ironsource/w5$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object v0
.end method

.method private static d(Ljava/net/HttpURLConnection;Lcom/ironsource/w5$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ironsource/w5$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p1, Lcom/ironsource/w5$a;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/w5$a;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/ironsource/w5;->f(Ljava/net/HttpURLConnection;[B)V

    :cond_1b
    return-void
.end method

.method private static e(Ljava/net/HttpURLConnection;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_1c
    return-void
.end method

.method private static f(Ljava/net/HttpURLConnection;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_d
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception p0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

###### Class com.ironsource.w5.a (com.ironsource.w5$a)
.class public Lcom/ironsource/w5$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/w5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/w5$a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ironsource/w5$a$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/ironsource/w5$a$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/w5$a;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/ironsource/w5$a$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/w5$a;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/ironsource/w5$a$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/w5$a;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/ironsource/w5$a$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ironsource/w5$a;->g:Ljava/util/ArrayList;

    iget v0, p1, Lcom/ironsource/w5$a$a;->e:I

    iput v0, p0, Lcom/ironsource/w5$a;->d:I

    iget v0, p1, Lcom/ironsource/w5$a$a;->f:I

    iput v0, p0, Lcom/ironsource/w5$a;->e:I

    iget-object p1, p1, Lcom/ironsource/w5$a$a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/ironsource/w5$a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/w5$a;->b:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

###### Class com.ironsource.w5.a.C0371a (com.ironsource.w5$a$a)
.class Lcom/ironsource/w5$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/w5$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/w5$a$a;->a:Ljava/util/List;

    const-string v0, "POST"

    iput-object v0, p0, Lcom/ironsource/w5$a$a;->c:Ljava/lang/String;

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/ironsource/w5$a$a;->e:I

    iput v0, p0, Lcom/ironsource/w5$a$a;->f:I

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/ironsource/w5$a$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/ironsource/w5$a$a;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/w5$a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method b(Ljava/util/List;)Lcom/ironsource/w5$a$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ironsource/w5$a$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/w5$a$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method c()Lcom/ironsource/w5$a;
    .registers 2

    new-instance v0, Lcom/ironsource/w5$a;

    invoke-direct {v0, p0}, Lcom/ironsource/w5$a;-><init>(Lcom/ironsource/w5$a$a;)V

    return-object v0
.end method

.method d(Ljava/lang/String;)Lcom/ironsource/w5$a$a;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/w5$a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method e(Ljava/lang/String;)Lcom/ironsource/w5$a$a;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/w5$a$a;->c:Ljava/lang/String;

    return-object p0
.end method
