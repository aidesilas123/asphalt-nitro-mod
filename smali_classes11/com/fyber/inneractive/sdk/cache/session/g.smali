###### Class com.fyber.inneractive.sdk.cache.session.g (com.fyber.inneractive.sdk.cache.session.g)
.class public Lcom/fyber/inneractive/sdk/cache/session/g;
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
.method public constructor <init>(Lcom/fyber/inneractive/sdk/cache/session/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Lcom/fyber/inneractive/sdk/cache/session/e;

    check-cast p2, Lcom/fyber/inneractive/sdk/cache/session/e;

    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    iget-wide v0, p2, Lcom/fyber/inneractive/sdk/cache/session/e;->d:J

    iget-wide p1, p1, Lcom/fyber/inneractive/sdk/cache/session/e;->d:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-lez v2, :cond_15

    const/4 p1, 0x1

    goto :goto_18

    :cond_15
    const/4 p1, -0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method
