###### Class com.json.j3 (com.ironsource.j3)
.class public Lcom/ironsource/j3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3

.field public static final m:I = -0x1


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Lcom/ironsource/y9;

.field private h:Lcom/ironsource/s7;


# direct methods
.method public constructor <init>(Lcom/ironsource/s7;)V
    .registers 6

    invoke-virtual {p1}, Lcom/ironsource/s7;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/s7;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/s7;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/s7;->b()Lcom/ironsource/y9;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ironsource/j3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/y9;)V

    iput-object p1, p0, Lcom/ironsource/j3;->h:Lcom/ironsource/s7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/y9;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/y9;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ironsource/j3;->c:I

    iput-object p1, p0, Lcom/ironsource/j3;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/j3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/j3;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/ironsource/j3;->g:Lcom/ironsource/y9;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ironsource/j3;->e:I

    iput-boolean p1, p0, Lcom/ironsource/j3;->f:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ironsource/j3;->h:Lcom/ironsource/s7;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/j3;->g:Lcom/ironsource/y9;

    iget-object v1, p0, Lcom/ironsource/j3;->d:Ljava/util/Map;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_a
    iput-object v0, p0, Lcom/ironsource/j3;->d:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/j3;->f:Z

    return-void
.end method

.method public a(I)Z
    .registers 3

    iget v0, p0, Lcom/ironsource/j3;->c:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public b()Ljava/util/Map;
    .registers 4
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

    iget-object v1, p0, Lcom/ironsource/j3;->b:Ljava/lang/String;

    const-string v2, "demandSourceId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/j3;->a:Ljava/lang/String;

    const-string v2, "demandSourceName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ironsource/j3;->d:Ljava/util/Map;

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1a
    return-object v0
.end method

.method public declared-synchronized b(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/ironsource/j3;->e:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Lcom/ironsource/s7;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j3;->h:Lcom/ironsource/s7;

    return-object v0
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/ironsource/j3;->c:I

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/j3;->f:Z

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/ironsource/j3;->e:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j3;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/ironsource/j3;->d:Ljava/util/Map;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j3;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/ironsource/y9;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/j3;->g:Lcom/ironsource/y9;

    return-object v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/ironsource/j3;->c:I

    return v0
.end method

.method public k()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/j3;->d:Ljava/util/Map;

    if-eqz v0, :cond_19

    const-string v1, "rewarded"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ironsource/j3;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method
