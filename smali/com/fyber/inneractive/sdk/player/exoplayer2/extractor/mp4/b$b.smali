###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.b.C0184b (com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.b$b)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/i;

.field public b:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/i;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b$b;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/i;

    const/4 p1, 0x0

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b$b;->d:I

    return-void
.end method
