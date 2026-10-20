###### Class com.json.k3 (com.ironsource.k3)
.class public Lcom/ironsource/k3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/j3;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/j3;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/j3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/k3;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/k3;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/k3;->c:Ljava/util/Map;

    return-void
.end method

.method private b(Lcom/ironsource/h6$e;Ljava/lang/String;Lcom/ironsource/j3;)V
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p3, :cond_11

    invoke-direct {p0, p1}, Lcom/ironsource/k3;->c(Lcom/ironsource/h6$e;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method private c(Lcom/ironsource/h6$e;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/h6$e;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/j3;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/ironsource/k3;->a:Ljava/util/Map;

    return-object p1

    :cond_13
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p1, p0, Lcom/ironsource/k3;->b:Ljava/util/Map;

    return-object p1

    :cond_26
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/ironsource/h6$e;->a:Lcom/ironsource/h6$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/ironsource/k3;->c:Ljava/util/Map;

    return-object p1

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcom/ironsource/h6$e;Lcom/ironsource/s7;)Lcom/ironsource/j3;
    .registers 4

    new-instance v0, Lcom/ironsource/j3;

    invoke-direct {v0, p2}, Lcom/ironsource/j3;-><init>(Lcom/ironsource/s7;)V

    invoke-virtual {p2}, Lcom/ironsource/s7;->d()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/k3;->b(Lcom/ironsource/h6$e;Ljava/lang/String;Lcom/ironsource/j3;)V

    return-object v0
.end method

.method public a(Lcom/ironsource/h6$e;Ljava/lang/String;)Lcom/ironsource/j3;
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0, p1}, Lcom/ironsource/k3;->c(Lcom/ironsource/h6$e;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/j3;

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/ironsource/h6$e;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/y9;)Lcom/ironsource/j3;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/h6$e;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/y9;",
            ")",
            "Lcom/ironsource/j3;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/j3;

    invoke-direct {v0, p2, p2, p3, p4}, Lcom/ironsource/j3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/y9;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/k3;->b(Lcom/ironsource/h6$e;Ljava/lang/String;Lcom/ironsource/j3;)V

    return-object v0
.end method

.method public a(Lcom/ironsource/h6$e;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/h6$e;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/ironsource/j3;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ironsource/k3;->c(Lcom/ironsource/h6$e;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public b(Lcom/ironsource/h6$e;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0, p1}, Lcom/ironsource/k3;->c(Lcom/ironsource/h6$e;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/j3;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/ironsource/j3;->a()V

    :cond_17
    return-void
.end method
