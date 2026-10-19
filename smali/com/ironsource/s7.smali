###### Class com.json.s7 (com.ironsource.s7)
.class public Lcom/ironsource/s7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/ironsource/y5;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ironsource/y9;

.field private h:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZLjava/util/Map;Lcom/ironsource/y9;Lcom/ironsource/y5;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/y9;",
            "Lcom/ironsource/y5;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/s7;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/s7;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ironsource/s7;->a:Z

    iput-boolean p4, p0, Lcom/ironsource/s7;->d:Z

    iput-object p6, p0, Lcom/ironsource/s7;->f:Ljava/util/Map;

    iput-object p7, p0, Lcom/ironsource/s7;->g:Lcom/ironsource/y9;

    iput-object p8, p0, Lcom/ironsource/s7;->e:Lcom/ironsource/y5;

    iput-boolean p5, p0, Lcom/ironsource/s7;->h:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/ironsource/s7;->b:Ljava/lang/String;

    const-string v2, "instanceId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/s7;->c:Ljava/lang/String;

    const-string v2, "instanceName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/ironsource/s7;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rewarded"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/ironsource/s7;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "inAppBidding"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/ironsource/s7;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isOneFlow"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apiVersion"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/s7;->e:Lcom/ironsource/y5;

    const-string v2, "0"

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Lcom/ironsource/y5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_4d
    move-object v1, v2

    :goto_4e
    const-string v3, "width"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/s7;->e:Lcom/ironsource/y5;

    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Lcom/ironsource/y5;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_5f
    const-string v1, "height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/s7;->e:Lcom/ironsource/y5;

    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Lcom/ironsource/y5;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    :cond_6d
    const-string v1, ""

    :goto_6f
    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ironsource/s7;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isBanner"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/s7;->f:Ljava/util/Map;

    if-eqz v1, :cond_88

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_88
    return-object v0
.end method

.method public final b()Lcom/ironsource/y9;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/s7;->g:Lcom/ironsource/y9;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/s7;->f:Ljava/util/Map;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/s7;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/s7;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/ironsource/y5;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/s7;->e:Lcom/ironsource/y5;

    return-object v0
.end method

.method public g()Z
    .registers 2

    invoke-virtual {p0}, Lcom/ironsource/s7;->f()Lcom/ironsource/y5;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/ironsource/s7;->f()Lcom/ironsource/y5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/y5;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/s7;->d:Z

    return v0
.end method

.method public i()Z
    .registers 2

    invoke-virtual {p0}, Lcom/ironsource/s7;->h()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/ironsource/s7;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/s7;->h:Z

    return v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/s7;->a:Z

    return v0
.end method
