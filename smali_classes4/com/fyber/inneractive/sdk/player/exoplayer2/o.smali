###### Class com.fyber.inneractive.sdk.player.exoplayer2.o (com.fyber.inneractive.sdk.player.exoplayer2.o)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/o;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/o;-><init>(I)V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/o;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/o;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/o;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/o;

    if-eq v3, v2, :cond_10

    goto :goto_1b

    :cond_10
    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/o;

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/o;->a:I

    iget p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/o;->a:I

    if-ne v2, p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    :cond_1b
    :goto_1b
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/o;->a:I

    return v0
.end method
