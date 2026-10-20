###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.wav.c.a (com.fyber.inneractive.sdk.player.exoplayer2.extractor.wav.c$a)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/wav/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/wav/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/wav/c$a;->a:I

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/wav/c$a;->b:J

    return-void
.end method

.method public static a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/wav/c$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    check-cast p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    invoke-virtual {p1, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result p0

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f()J

    move-result-wide v0

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/wav/c$a;

    invoke-direct {p1, p0, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/wav/c$a;-><init>(IJ)V

    return-object p1
.end method
