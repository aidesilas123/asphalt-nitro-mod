###### Class com.mbridge.msdk.c.a (com.mbridge.msdk.c.a)
.class public final Lcom/mbridge/msdk/c/a;
.super Ljava/lang/Object;
.source "BCP.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/c/a;->d:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/mbridge/msdk/c/a;->e:I

    iput v0, p0, Lcom/mbridge/msdk/c/a;->f:I

    iput v0, p0, Lcom/mbridge/msdk/c/a;->g:I

    iput v0, p0, Lcom/mbridge/msdk/c/a;->h:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mbridge/msdk/c/a;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/mbridge/msdk/c/a;

    invoke-direct {p0}, Lcom/mbridge/msdk/c/a;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_66

    :try_start_b
    const-string v0, "http_domain"

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v2

    iget-object v2, v2, Lcom/mbridge/msdk/foundation/same/net/g/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/c/a;->a:Ljava/lang/String;

    const-string v0, "tcp_domain"

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v2

    iget-object v2, v2, Lcom/mbridge/msdk/foundation/same/net/g/d;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/c/a;->b:Ljava/lang/String;

    const-string v0, "tcp_port"

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v2

    iget v2, v2, Lcom/mbridge/msdk/foundation/same/net/g/d;->m:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/c/a;->c:I

    const-string v0, "type"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/c/a;->d:I

    const-string v0, "batch_size"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v3, :cond_48

    goto :goto_49

    :cond_48
    move v3, v0

    :goto_49
    iput v3, p0, Lcom/mbridge/msdk/c/a;->e:I

    const-string v0, "duration"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/c/a;->f:I

    const-string v0, "disable"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/c/a;->g:I

    const-string v0, "e_t_l"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/c/a;->h:I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_63} :catch_64

    goto :goto_6d

    :catch_64
    move-exception v0

    goto :goto_6a

    :catch_66
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_6a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6d
    return-object p0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/a;->h:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/c/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/a;->c:I

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/a;->d:I

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/a;->e:I

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/a;->f:I

    return v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/c/a;->g:I

    return v0
.end method
