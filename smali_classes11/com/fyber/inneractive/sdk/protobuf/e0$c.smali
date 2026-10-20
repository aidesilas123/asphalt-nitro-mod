###### Class com.fyber.inneractive.sdk.protobuf.e0.c (com.fyber.inneractive.sdk.protobuf.e0$c)
.class public final Lcom/fyber/inneractive/sdk/protobuf/e0$c;
.super Lcom/fyber/inneractive/sdk/protobuf/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/protobuf/e0;-><init>(Lcom/fyber/inneractive/sdk/protobuf/e0$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;J)V
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/protobuf/y$j;->b()V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p1, p3, p4}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-static {p2, p3, p4}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_26

    if-lez v2, :cond_26

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/protobuf/y$j;->d()Z

    move-result v3

    if-nez v3, :cond_23

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/fyber/inneractive/sdk/protobuf/y$j;->b(I)Lcom/fyber/inneractive/sdk/protobuf/y$j;

    move-result-object v0

    :cond_23
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_26
    if-lez v1, :cond_29

    move-object p2, v0

    :cond_29
    invoke-static {p1, p3, p4, p2}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/fyber/inneractive/sdk/protobuf/p1;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/protobuf/y$j;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/protobuf/y$j;->d()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0xa

    goto :goto_17

    :cond_15
    mul-int/lit8 v1, v1, 0x2

    :goto_17
    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/y$j;->b(I)Lcom/fyber/inneractive/sdk/protobuf/y$j;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/fyber/inneractive/sdk/protobuf/p1;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1e
    return-object v0
.end method
