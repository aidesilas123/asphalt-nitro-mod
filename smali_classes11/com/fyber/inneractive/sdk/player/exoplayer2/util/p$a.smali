###### Class com.fyber.inneractive.sdk.player.exoplayer2.util.p.a (com.fyber.inneractive.sdk.player.exoplayer2.util.p$a)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$a;
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
    .registers 3

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    check-cast p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    iget p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->a:I

    iget p2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->a:I

    sub-int/2addr p1, p2

    return p1
.end method
