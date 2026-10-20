###### Class com.fyber.inneractive.sdk.cache.session.h (com.fyber.inneractive.sdk.cache.session.h)
.class public Lcom/fyber/inneractive/sdk/cache/session/h;
.super Ljava/util/PriorityQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/PriorityQueue<",
        "Lcom/fyber/inneractive/sdk/cache/session/e;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    new-instance v0, Lcom/fyber/inneractive/sdk/cache/session/i;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/cache/session/i;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput p1, p0, Lcom/fyber/inneractive/sdk/cache/session/h;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/cache/session/e;)Z
    .registers 4

    invoke-super {p0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-super {p0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/cache/session/h;->a:I

    if-le v0, v1, :cond_f

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    :cond_f
    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/fyber/inneractive/sdk/cache/session/e;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/cache/session/h;->a(Lcom/fyber/inneractive/sdk/cache/session/e;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    invoke-super {p0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    return v0
.end method
