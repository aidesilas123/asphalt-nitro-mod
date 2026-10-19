###### Class com.gameloft.android2d.iap.utils.IABRequestHandler (com.gameloft.android2d.iap.utils.IABRequestHandler)
.class public Lcom/gameloft/android2d/iap/utils/IABRequestHandler;
.super Ljava/lang/Object;
.source "IABRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;
    }
.end annotation


# static fields
.field private static a:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->f:I

    return-void
.end method

.method private a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 16

    const-string v0, "?"

    const-string v1, "a7"

    const-string v2, "a4"

    const-string v3, "a5"

    :try_start_8
    const-string v4, "a1"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "a2"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "a3"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_152

    const-string v8, ""

    if-nez v5, :cond_23

    move-object v5, v8

    :cond_23
    :try_start_23
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2b

    const-string v0, "&"

    :cond_2b
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v7, v10, :cond_50

    if-eq v7, v9, :cond_50

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_38

    goto :goto_50

    :cond_38
    new-instance v11, Ljava/net/URL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_55

    :cond_50
    :goto_50
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_55
    invoke-direct {p0, v11, v7}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->h(Ljava/net/URL;I)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5d} :catch_152

    if-nez v4, :cond_85

    :try_start_5f
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :cond_68
    :goto_68
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_85

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_68

    invoke-virtual {v0, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_83} :catch_84
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_83} :catch_152

    goto :goto_68

    :catch_84
    nop

    :cond_85
    if-eq v7, v10, :cond_89

    if-ne v7, v9, :cond_a9

    :cond_89
    :try_start_89
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v6, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    :cond_a9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_111

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :catch_c3
    :goto_c3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_111

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_cf} :catch_152

    :try_start_cf
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_d6

    goto :goto_c3

    :cond_d6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_ec
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ff

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_ec

    :cond_ff
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_110
    .catch Lorg/json/JSONException; {:try_start_cf .. :try_end_110} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_110} :catch_152

    goto :goto_c3

    :cond_111
    :try_start_111
    const-string v6, "a6"

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v6, 0xc8

    if-eq v4, v6, :cond_135

    const/16 v6, 0xc9

    if-ne v4, v6, :cond_122

    goto :goto_135

    :cond_122
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_131

    move-object v8, v0

    :cond_131
    invoke-virtual {p1, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14a

    :cond_135
    :goto_135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_147

    move-object v8, v0

    :cond_147
    invoke-virtual {p1, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14a
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_151} :catch_152

    goto :goto_161

    :catch_152
    move-exception v0

    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    const/4 v1, -0x1

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_161
    return-object p1
.end method

.method static synthetic access$000(Lcom/gameloft/android2d/iap/utils/IABRequestHandler;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/gameloft/android2d/iap/utils/IABRequestHandler;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->a:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    if-nez v0, :cond_b

    new-instance v0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    invoke-direct {v0}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;-><init>()V

    sput-object v0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->a:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    :cond_b
    sget-object v0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->a:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    return-object v0
.end method

.method private h(Ljava/net/URL;I)Ljava/net/HttpURLConnection;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_18

    :cond_12
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    :goto_18
    move-object v0, p1

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->g()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-static {p1}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, p1, :cond_3d

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "POST"

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_50

    :cond_3d
    if-nez p2, :cond_45

    const-string p1, "GET"

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_50

    :cond_45
    const/4 v1, 0x2

    if-ne p2, v1, :cond_50

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "PUT"

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_50

    :catch_50
    :cond_50
    :goto_50
    return-object v0
.end method

.method private i(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/d;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/d;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/gameloft/android2d/iap/utils/d;)V
    .registers 7

    invoke-virtual {p0, p4}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->k(I)V

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "a1"

    invoke-virtual {p4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "a2"

    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "a7"

    invoke-virtual {p4, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "a3"

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;

    invoke-direct {p1, p0, p5}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;-><init>(Lcom/gameloft/android2d/iap/utils/IABRequestHandler;Lcom/gameloft/android2d/iap/utils/d;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p2}, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->b(Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/d;)V
    .registers 11

    const/16 v4, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/gameloft/android2d/iap/utils/d;)V

    return-void
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    const-string p1, ""

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->c:Ljava/lang/String;

    return-object v0
.end method

.method g()I
    .registers 2

    iget v0, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->b:I

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->c:Ljava/lang/String;

    return-void
.end method

.method k(I)V
    .registers 2

    iput p1, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->b:I

    return-void
.end method

###### Class com.gameloft.android2d.iap.utils.IABRequestHandler.a (com.gameloft.android2d.iap.utils.IABRequestHandler$a)
.class Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;
.super Lcom/gameloft/android2d/iap/utils/IABAsyncTask;
.source "IABRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/utils/IABRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field c:Lcom/gameloft/android2d/iap/utils/d;

.field final synthetic d:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;


# direct methods
.method public constructor <init>(Lcom/gameloft/android2d/iap/utils/IABRequestHandler;Lcom/gameloft/android2d/iap/utils/d;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;->d:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;->c:Lcom/gameloft/android2d/iap/utils/d;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;->c:Lcom/gameloft/android2d/iap/utils/d;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;->d:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    invoke-static {v0, p1}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->access$000(Lcom/gameloft/android2d/iap/utils/IABRequestHandler;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;->c:Lcom/gameloft/android2d/iap/utils/d;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/d;->a(Landroid/os/Bundle;)V

    :cond_d
    new-instance p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method
