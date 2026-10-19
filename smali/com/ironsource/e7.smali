###### Class com.json.e7 (com.ironsource.e7)
.class public Lcom/ironsource/e7;
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

    sget-object v0, Lcom/ironsource/t;->b:Lcom/ironsource/t;

    invoke-virtual {p0, v0}, Lcom/ironsource/zd;->a(Lcom/ironsource/t;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->c:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

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

    sget-object p1, Lcom/ironsource/t;->d:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ext1"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ironsource/t;->a:Lcom/ironsource/t;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/zd;->b(Lcom/ironsource/t;Ljava/util/Map;)V

    return-void
.end method
