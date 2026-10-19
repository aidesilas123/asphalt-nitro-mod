###### Class com.fyber.inneractive.sdk.player.exoplayer2.util.p.b (com.fyber.inneractive.sdk.player.exoplayer2.util.p$b)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;",
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
    .registers 4

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    check-cast p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    iget p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->c:F

    iget p2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->c:F

    cmpg-float v0, p1, p2

    if-gez v0, :cond_e

    const/4 p1, -0x1

    goto :goto_15

    :cond_e
    cmpg-float p1, p2, p1

    if-gez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method
