###### Class com.fyber.inneractive.sdk.protobuf.g1.b (com.fyber.inneractive.sdk.protobuf.g1$b)
.class public Lcom/fyber/inneractive/sdk/protobuf/g1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/fyber/inneractive/sdk/protobuf/g1;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/protobuf/g1;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->c:Lcom/fyber/inneractive/sdk/protobuf/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/protobuf/g1;->a(Lcom/fyber/inneractive/sdk/protobuf/g1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->a:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->b:Ljava/util/Iterator;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->c:Lcom/fyber/inneractive/sdk/protobuf/g1;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/protobuf/g1;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->b:Ljava/util/Iterator;

    :cond_12
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->a:I

    if-lez v0, :cond_e

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->c:Lcom/fyber/inneractive/sdk/protobuf/g1;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/protobuf/g1;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_18

    :cond_e
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_25

    :cond_15
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->c:Lcom/fyber/inneractive/sdk/protobuf/g1;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/protobuf/g1;->b:Ljava/util/List;

    iget v1, p0, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/protobuf/g1$b;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_25
    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
