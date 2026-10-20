###### Class com.applovin.exoplayer2.c.c (com.applovin.exoplayer2.c.c)
.class public final Lcom/applovin/exoplayer2/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/c/c$a;
    }
.end annotation


# instance fields
.field public rk:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public rl:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public rm:I

.field public rn:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public ro:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public rp:I

.field public rq:I

.field public rr:I

.field private final rs:Landroid/media/MediaCodec$CryptoInfo;

.field private final rt:Lcom/applovin/exoplayer2/c/c$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/c/c;->rs:Landroid/media/MediaCodec$CryptoInfo;

    sget v1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v1, v3, :cond_17

    new-instance v1, Lcom/applovin/exoplayer2/c/c$a;

    invoke-direct {v1, v0, v2}, Lcom/applovin/exoplayer2/c/c$a;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/applovin/exoplayer2/c/c$1;)V

    move-object v2, v1

    :cond_17
    iput-object v2, p0, Lcom/applovin/exoplayer2/c/c;->rt:Lcom/applovin/exoplayer2/c/c$a;

    return-void
.end method


# virtual methods
.method public a(I[I[I[B[BIII)V
    .registers 10

    iput p1, p0, Lcom/applovin/exoplayer2/c/c;->rp:I

    iput-object p2, p0, Lcom/applovin/exoplayer2/c/c;->rn:[I

    iput-object p3, p0, Lcom/applovin/exoplayer2/c/c;->ro:[I

    iput-object p4, p0, Lcom/applovin/exoplayer2/c/c;->rl:[B

    iput-object p5, p0, Lcom/applovin/exoplayer2/c/c;->rk:[B

    iput p6, p0, Lcom/applovin/exoplayer2/c/c;->rm:I

    iput p7, p0, Lcom/applovin/exoplayer2/c/c;->rq:I

    iput p8, p0, Lcom/applovin/exoplayer2/c/c;->rr:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/c;->rs:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput-object p2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object p3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object p4, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object p5, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput p6, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    sget p1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_2f

    iget-object p1, p0, Lcom/applovin/exoplayer2/c/c;->rt:Lcom/applovin/exoplayer2/c/c$a;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/c/c$a;

    invoke-static {p1, p7, p8}, Lcom/applovin/exoplayer2/c/c$a;->a(Lcom/applovin/exoplayer2/c/c$a;II)V

    :cond_2f
    return-void
.end method

.method public bw(I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/applovin/exoplayer2/c/c;->rn:[I

    if-nez v0, :cond_10

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/applovin/exoplayer2/c/c;->rn:[I

    iget-object v1, p0, Lcom/applovin/exoplayer2/c/c;->rs:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_10
    iget-object v0, p0, Lcom/applovin/exoplayer2/c/c;->rn:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-void
.end method

.method public hb()Landroid/media/MediaCodec$CryptoInfo;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/c/c;->rs:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method
