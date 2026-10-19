###### Class com.fyber.inneractive.sdk.player.exoplayer2.h.c (com.fyber.inneractive.sdk.player.exoplayer2.h$c)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;->b:I

    iput-wide p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;->c:J

    return-void
.end method
