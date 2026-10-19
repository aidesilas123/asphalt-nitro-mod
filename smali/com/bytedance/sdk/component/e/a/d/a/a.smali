###### Class com.bytedance.sdk.component.e.a.d.a.a (com.bytedance.sdk.component.e.a.d.a.a)
.class public Lcom/bytedance/sdk/component/e/a/d/a/a;
.super Ljava/lang/Object;
.source "AdLogEvent.java"

# interfaces
.implements Lcom/bytedance/sdk/component/e/a/d/a;


# instance fields
.field protected a:Lorg/json/JSONObject;

.field private b:Lcom/bytedance/sdk/component/e/a/d/a/b;

.field private c:B

.field private d:B

.field private e:J

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:B

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/component/e/a/d/a/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->b:Lcom/bytedance/sdk/component/e/a/d/a/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/bytedance/sdk/component/e/a/d/a;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "type"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const-string v1, "priority"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/component/e/a/d/a/a;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/e/a/d/a/a;-><init>()V

    int-to-byte p0, p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/e/a/d/a;->a(B)V

    int-to-byte p0, v1

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/e/a/d/a;->b(B)V

    const-string p0, "event"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/e/a/d/a;->a(Lorg/json/JSONObject;)V

    const-string p0, "localId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/e/a/d/a;->a(Ljava/lang/String;)V

    const-string p0, "genTime"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/e/a/d/a;->b(Ljava/lang/String;)V

    const-string p0, "channel"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Lcom/bytedance/sdk/component/e/a/d/a;->a(I)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_42} :catch_43

    return-object v2

    :catch_43
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/e/a/d/a/b;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->b:Lcom/bytedance/sdk/component/e/a/d/a/b;

    return-object v0
.end method

.method public a(B)V
    .registers 2

    iput-byte p1, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->c:B

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->l:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public b()B
    .registers 2

    iget-byte v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->j:B

    return v0
.end method

.method public b(B)V
    .registers 2

    iput-byte p1, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->d:B

    return-void
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->f:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c(B)V
    .registers 2

    iput-byte p1, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->j:B

    return-void
.end method

.method public c(J)V
    .registers 3

    iput-wide p1, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->g:J

    return-void
.end method

.method public d()B
    .registers 2

    iget-byte v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->c:B

    return v0
.end method

.method public e()B
    .registers 2

    iget-byte v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->d:B

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_d
    const-string v1, "localId"

    iget-object v2, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event"

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/e/a/d/a/a;->g()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "genTime"

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/e/a/d/a/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "priority"

    iget-byte v2, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->d:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-byte v2, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->c:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "channel"

    iget v2, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_3b

    :catchall_3b
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_40
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized g()Lorg/json/JSONObject;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->b:Lcom/bytedance/sdk/component/e/a/d/a/b;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/e/a/d/a/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/e/a/d/a/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->a:Lorg/json/JSONObject;

    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->a:Lorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->e:J

    return-wide v0
.end method

.method public i()J
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->f:J

    return-wide v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->l:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/d/a/a;->h:Ljava/lang/String;

    return-object v0
.end method
