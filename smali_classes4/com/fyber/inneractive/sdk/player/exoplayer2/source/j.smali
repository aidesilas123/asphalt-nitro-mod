###### Class com.fyber.inneractive.sdk.player.exoplayer2.source.j (com.fyber.inneractive.sdk.player.exoplayer2.source.j)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/source/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/j;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/j;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/j;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;->b()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    :cond_c
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/j;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_27

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/j;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->o:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_27
    return-void
.end method
