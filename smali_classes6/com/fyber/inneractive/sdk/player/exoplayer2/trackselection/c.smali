###### Class com.fyber.inneractive.sdk.player.exoplayer2.trackselection.c (com.fyber.inneractive.sdk.player.exoplayer2.trackselection.c)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;IILjava/lang/Object;)V
    .registers 6

    const/4 p4, 0x1

    new-array p4, p4, [I

    const/4 v0, 0x0

    aput p2, p4, v0

    invoke-direct {p0, p1, p4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;[I)V

    iput p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;->g:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 3

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;->g:I

    return v0
.end method

.method public e()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/c;->h:Ljava/lang/Object;

    return-object v0
.end method
