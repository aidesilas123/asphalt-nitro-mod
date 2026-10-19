###### Class com.json.k (com.ironsource.k)
.class public Lcom/ironsource/k;
.super Lcom/ironsource/zd;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ironsource/v;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/zd;-><init>(Lcom/ironsource/v;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    sget-object v0, Lcom/ironsource/t;->R:Lcom/ironsource/t;

    invoke-virtual {p0, v0}, Lcom/ironsource/zd;->a(Lcom/ironsource/t;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_13

    const-string p1, "ext1"

    const-string p2, "init_context_flow"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    sget-object p1, Lcom/ironsource/t;->n:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->v:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "errorCode"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, "ext1"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    sget-object p1, Lcom/ironsource/t;->q:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    const-string p1, "ext1"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    sget-object p1, Lcom/ironsource/t;->w:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JLjava/util/Map;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rewardName"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "rewardAmount"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "transId"

    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p1, 0x0

    cmp-long p3, p7, p1

    if-eqz p3, :cond_2c

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "duration"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    if-eqz p9, :cond_31

    invoke-interface {v0, p9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_31
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3c

    const-string p1, "dynamicUserId"

    invoke-interface {v0, p1, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    sget-object p1, Lcom/ironsource/t;->A:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/ironsource/zd;->c(Lcom/ironsource/t;Ljava/util/Map;J)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "true"

    goto :goto_c

    :cond_a
    const-string p1, "false"

    :goto_c
    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->o:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->z:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->s:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->x:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->u:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->y:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->r:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->t:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->Q:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "placement"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->p:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method
