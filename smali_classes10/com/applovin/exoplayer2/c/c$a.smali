###### Class com.applovin.exoplayer2.c.c.a (com.applovin.exoplayer2.c.c$a)
.class final Lcom/applovin/exoplayer2/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final rs:Landroid/media/MediaCodec$CryptoInfo;

.field private final ru:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec$CryptoInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/c/c$a;->rs:Landroid/media/MediaCodec$CryptoInfo;

    new-instance p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/c/c$a;->ru:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/applovin/exoplayer2/c/c$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/c/c$a;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/c/c$a;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/c/c$a;->x(II)V

    return-void
.end method

.method private x(II)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/c$a;->ru:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/c/c$a;->rs:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p2, p0, Lcom/applovin/exoplayer2/c/c$a;->ru:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    return-void
.end method
