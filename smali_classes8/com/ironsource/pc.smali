###### Class com.json.pc (com.ironsource.pc)
.class public Lcom/ironsource/pc;
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
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/ironsource/t;->D:Lcom/ironsource/t;

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public a(J)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "duration"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->E:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "reason"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    sget-object p1, Lcom/ironsource/t;->F:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_10
    sget-object p1, Lcom/ironsource/t;->G:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/util/Map;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "duration"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_19

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_19

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_19
    sget-object p1, Lcom/ironsource/t;->H:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/util/Map;JLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "duration"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_19

    const-string p2, "reason"

    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_24

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_24
    sget-object p1, Lcom/ironsource/t;->I:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/util/Map;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "duration"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_19

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_19

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_19
    sget-object p1, Lcom/ironsource/t;->J:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method
