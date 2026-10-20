###### Class com.json.adqualitysdk.sdk.i.ho (com.ironsource.adqualitysdk.sdk.i.ho)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ho;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/ho$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/adqualitysdk/sdk/i/di;

.field private b:Lcom/ironsource/adqualitysdk/sdk/i/ho;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/di;Lcom/ironsource/adqualitysdk/sdk/i/ho;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho;->a:Lcom/ironsource/adqualitysdk/sdk/i/di;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho;->b:Lcom/ironsource/adqualitysdk/sdk/i/ho;

    return-void
.end method

.method private static a(Ljava/lang/Class;ZI)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "ZI)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/reflect/Method;

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ([Ljava/lang/reflect/Method;[Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez p1, :cond_18

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_18
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    :goto_1c
    if-eqz p0, :cond_37

    if-eq v0, p2, :cond_37

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ([Ljava/lang/reflect/Method;[Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ([Ljava/lang/reflect/Method;[Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_37
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hn;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hn;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;-><init>(B)V

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/hn;)V

    invoke-static {p0, v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->c(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ho$a;Ljava/util/List;)V

    return-void
.end method

.method private static c(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ho$a;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ho$a;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hn;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﻛ()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﻛ()Z

    move-result v1

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﾒ()I

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->a(Ljava/lang/Class;ZI)Ljava/util/List;

    move-result-object p0

    goto :goto_21

    :cond_19
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_25
    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->ﾇ(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3b
    return-void
.end method

.method public static ﻐ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hn;)Ljava/lang/reflect/Method;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->b(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hn;Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hn;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hn;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->b(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hn;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final ﻐ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho;->a:Lcom/ironsource/adqualitysdk/sdk/i/di;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/di;->ｋ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ｋ()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho;->a:Lcom/ironsource/adqualitysdk/sdk/i/di;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/di;->ﾒ()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho;->b:Lcom/ironsource/adqualitysdk/sdk/i/ho;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ｋ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_16
    return-object v0
.end method

.method public final ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dk;
    .registers 4

    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ho;->a:Lcom/ironsource/adqualitysdk/sdk/i/di;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/di;->ﱟ()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/dk;

    if-nez v1, :cond_14

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ho;->b:Lcom/ironsource/adqualitysdk/sdk/i/ho;

    if-eqz v0, :cond_14

    goto :goto_1

    :cond_14
    return-object v1
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ho;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho;->b:Lcom/ironsource/adqualitysdk/sdk/i/ho;

    return-object v0
.end method

.method public final ﾒ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/dn;
    .registers 4

    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ho;->a:Lcom/ironsource/adqualitysdk/sdk/i/di;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/di;->ﻛ()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/dn;

    if-nez v1, :cond_14

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ho;->b:Lcom/ironsource/adqualitysdk/sdk/i/ho;

    if-eqz v0, :cond_14

    goto :goto_1

    :cond_14
    return-object v1
.end method

.method public final ﾒ()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/dg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho;->a:Lcom/ironsource/adqualitysdk/sdk/i/di;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/di;->ﺙ()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho;->b:Lcom/ironsource/adqualitysdk/sdk/i/ho;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ho;->ﾒ()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_16
    return-object v0
.end method
