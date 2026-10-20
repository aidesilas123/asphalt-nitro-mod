###### Class com.fyber.inneractive.sdk.cache.session.i (com.fyber.inneractive.sdk.cache.session.i)
.class public Lcom/fyber/inneractive/sdk/cache/session/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/fyber/inneractive/sdk/cache/session/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Lcom/fyber/inneractive/sdk/cache/session/e;

    check-cast p2, Lcom/fyber/inneractive/sdk/cache/session/e;

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    iget-wide v0, p1, Lcom/fyber/inneractive/sdk/cache/session/e;->d:J

    iget-wide p1, p2, Lcom/fyber/inneractive/sdk/cache/session/e;->d:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_12

    const/4 p1, -0x1

    goto :goto_15

    :cond_12
    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method
