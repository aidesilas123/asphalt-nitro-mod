###### Class com.applovin.exoplayer2.e.e.d.b (com.applovin.exoplayer2.e.e.d$b)
.class final Lcom/applovin/exoplayer2/e/e/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public bs:I

.field public dC:Lcom/applovin/exoplayer2/d/e;

.field public dE:I

.field public dI:[B

.field public dJ:I

.field public dL:I

.field public dM:I

.field private dq:Ljava/lang/String;

.field public height:I

.field public name:Ljava/lang/String;

.field public wl:Lcom/applovin/exoplayer2/e/x;

.field public wo:I

.field public xS:Ljava/lang/String;

.field public xT:I

.field public xU:I

.field public xV:I

.field private xW:I

.field public xX:Z

.field public xY:[B

.field public xZ:Lcom/applovin/exoplayer2/e/x$a;

.field public yA:J

.field public yB:J

.field public yC:Lcom/applovin/exoplayer2/e/e/d$c;

.field public yD:Z

.field public yE:Z

.field public ya:[B

.field public yb:I

.field public yc:I

.field public yd:I

.field public ye:I

.field public yf:F

.field public yg:F

.field public yh:F

.field public yi:Z

.field public yj:I

.field public yk:I

.field public yl:I

.field public ym:I

.field public yn:I

.field public yo:F

.field public yp:F

.field public yq:F

.field public yr:F

.field public ys:F

.field public yt:F

.field public yu:F

.field public yv:F

.field public yw:F

.field public yx:F

.field public yy:[B

.field public yz:I


# direct methods
.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->dE:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->height:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yb:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yc:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yd:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->ye:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yf:F

    iput v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yg:F

    iput v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yh:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->dI:[B

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->dJ:I

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yi:Z

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yj:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yk:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yl:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->ym:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yn:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yo:F

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yp:F

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yq:F

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yr:F

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->ys:F

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yt:F

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yu:F

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yv:F

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yw:F

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yx:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->dL:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yz:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->dM:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yA:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yB:J

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yE:Z

    const-string v0, "eng"

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->dq:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/e/e/d$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d$b;-><init>()V

    return-void
.end method

.method private H(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->ya:[B

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing CodecPrivate for codec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/e/d$b;I)I
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->xW:I

    return p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/e/d$b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/e/d$b;->dq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/e/d$b;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/e/d$b;->iD()V

    return-void
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/e/e/d$b;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->xW:I

    return p0
.end method

.method private iC()[B
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yo:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yp:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yq:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yr:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->ys:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yt:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yu:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yv:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yw:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c4

    iget v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yx:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_40

    goto/16 :goto_c4

    :cond_40
    const/16 v0, 0x19

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yo:F

    const v3, 0x47435000    # 50000.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yp:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yq:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yr:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->ys:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yt:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yu:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yv:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yw:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yx:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->ym:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yn:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_c4
    :goto_c4
    const/4 v0, 0x0

    return-object v0
.end method

.method private iD()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static n(Lcom/applovin/exoplayer2/l/y;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/l/y;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pw()J

    move-result-wide v2

    const-wide/32 v4, 0x58564944

    cmp-long v0, v2, v4

    if-nez v0, :cond_19

    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/divx"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_19
    const-wide/32 v4, 0x33363248

    cmp-long v0, v2, v4

    if-nez v0, :cond_28

    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/3gpp"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_28
    const-wide/32 v4, 0x31435657

    cmp-long v0, v2, v4

    if-nez v0, :cond_72

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p0

    :goto_39
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_6b

    aget-byte v2, p0, v0

    if-nez v2, :cond_68

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    if-nez v2, :cond_68

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_68

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_68

    array-length v2, p0

    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    new-instance v0, Landroid/util/Pair;

    const-string v2, "video/wvc1"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_6b
    const-string p0, "Failed to find FourCC VC1 initialization data"

    invoke-static {p0, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
    :try_end_72
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_72} :catch_81

    :cond_72
    const-string p0, "MatroskaExtractor"

    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/x-unknown"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_81
    const-string p0, "Error parsing FourCC private data"

    invoke-static {p0, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
.end method

.method private static o(Lcom/applovin/exoplayer2/l/y;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pq()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_36

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pz()J

    move-result-wide v4

    invoke-static {}, Lcom/applovin/exoplayer2/e/e/d;->iA()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pz()J

    move-result-wide v4

    invoke-static {}, Lcom/applovin/exoplayer2/e/e/d;->iA()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_2f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2f} :catch_37

    cmp-long p0, v4, v6

    if-nez p0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    return v1

    :cond_36
    return v3

    :catch_37
    const/4 p0, 0x0

    const-string v0, "Error parsing MS/ACM codec private"

    invoke-static {v0, p0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
.end method

.method private static v([B)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    aget-byte v3, p0, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_68

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_c
    aget-byte v7, p0, v5

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_18

    add-int/lit16 v6, v6, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_18
    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p0, v5

    and-int/2addr v5, v8

    add-int/2addr v6, v5

    const/4 v5, 0x0

    :goto_1f
    aget-byte v9, p0, v7

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_29

    add-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_29
    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p0, v7

    and-int/2addr v7, v8

    add-int/2addr v5, v7

    aget-byte v7, p0, v9

    if-ne v7, v3, :cond_63

    new-array v3, v6, [B

    invoke-static {p0, v9, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v6

    aget-byte v6, p0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5e

    add-int/2addr v9, v5

    aget-byte v5, p0, v9

    const/4 v6, 0x5

    if-ne v5, v6, :cond_59

    array-length v5, p0

    sub-int/2addr v5, v9

    new-array v5, v5, [B

    array-length v6, p0

    sub-int/2addr v6, v9

    invoke-static {p0, v9, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_59
    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_5e
    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_63
    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0

    :cond_68
    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
    :try_end_6d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_6d} :catch_6d

    :catch_6d
    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public Y()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yC:Lcom/applovin/exoplayer2/e/e/d$c;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/e/d$c;->Y()V

    :cond_7
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/j;I)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x10

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    sparse-switch v2, :sswitch_data_5c0

    :goto_15
    const/4 v1, -0x1

    goto/16 :goto_1be

    :sswitch_18
    const-string v2, "A_OPUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_15

    :cond_21
    const/16 v1, 0x1f

    goto/16 :goto_1be

    :sswitch_25
    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_15

    :cond_2e
    const/16 v1, 0x1e

    goto/16 :goto_1be

    :sswitch_32
    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_15

    :cond_3b
    const/16 v1, 0x1d

    goto/16 :goto_1be

    :sswitch_3f
    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_15

    :cond_48
    const/16 v1, 0x1c

    goto/16 :goto_1be

    :sswitch_4c
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    goto :goto_15

    :cond_55
    const/16 v1, 0x1b

    goto/16 :goto_1be

    :sswitch_59
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    goto :goto_15

    :cond_62
    const/16 v1, 0x1a

    goto/16 :goto_1be

    :sswitch_66
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    goto :goto_15

    :cond_6f
    const/16 v1, 0x19

    goto/16 :goto_1be

    :sswitch_73
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    goto :goto_15

    :cond_7c
    const/16 v1, 0x18

    goto/16 :goto_1be

    :sswitch_80
    const-string v2, "A_PCM/INT/BIG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    goto :goto_15

    :cond_89
    const/16 v1, 0x17

    goto/16 :goto_1be

    :sswitch_8d
    const-string v2, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_97

    goto/16 :goto_15

    :cond_97
    const/16 v1, 0x16

    goto/16 :goto_1be

    :sswitch_9b
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    goto/16 :goto_15

    :cond_a5
    const/16 v1, 0x15

    goto/16 :goto_1be

    :sswitch_a9
    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    goto/16 :goto_15

    :cond_b3
    const/16 v1, 0x14

    goto/16 :goto_1be

    :sswitch_b7
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    goto/16 :goto_15

    :cond_c1
    const/16 v1, 0x13

    goto/16 :goto_1be

    :sswitch_c5
    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    goto/16 :goto_15

    :cond_cf
    const/16 v1, 0x12

    goto/16 :goto_1be

    :sswitch_d3
    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dd

    goto/16 :goto_15

    :cond_dd
    const/16 v1, 0x11

    goto/16 :goto_1be

    :sswitch_e1
    const-string v2, "V_AV1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_eb

    goto/16 :goto_15

    :cond_eb
    const/16 v1, 0x10

    goto/16 :goto_1be

    :sswitch_ef
    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f9

    goto/16 :goto_15

    :cond_f9
    const/16 v1, 0xf

    goto/16 :goto_1be

    :sswitch_fd
    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_107

    goto/16 :goto_15

    :cond_107
    const/16 v1, 0xe

    goto/16 :goto_1be

    :sswitch_10b
    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_115

    goto/16 :goto_15

    :cond_115
    const/16 v1, 0xd

    goto/16 :goto_1be

    :sswitch_119
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_123

    goto/16 :goto_15

    :cond_123
    const/16 v1, 0xc

    goto/16 :goto_1be

    :sswitch_127
    const-string v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_131

    goto/16 :goto_15

    :cond_131
    const/16 v1, 0xb

    goto/16 :goto_1be

    :sswitch_135
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13f

    goto/16 :goto_15

    :cond_13f
    const/16 v1, 0xa

    goto/16 :goto_1be

    :sswitch_143
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14d

    goto/16 :goto_15

    :cond_14d
    const/16 v1, 0x9

    goto/16 :goto_1be

    :sswitch_151
    const-string v2, "S_DVBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15b

    goto/16 :goto_15

    :cond_15b
    const/16 v1, 0x8

    goto/16 :goto_1be

    :sswitch_15f
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_169

    goto/16 :goto_15

    :cond_169
    const/4 v1, 0x7

    goto :goto_1be

    :sswitch_16b
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_175

    goto/16 :goto_15

    :cond_175
    const/4 v1, 0x6

    goto :goto_1be

    :sswitch_177
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_181

    goto/16 :goto_15

    :cond_181
    const/4 v1, 0x5

    goto :goto_1be

    :sswitch_183
    const-string v2, "A_VORBIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18d

    goto/16 :goto_15

    :cond_18d
    const/4 v1, 0x4

    goto :goto_1be

    :sswitch_18f
    const-string v2, "A_TRUEHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_199

    goto/16 :goto_15

    :cond_199
    const/4 v1, 0x3

    goto :goto_1be

    :sswitch_19b
    const-string v2, "A_MS/ACM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a5

    goto/16 :goto_15

    :cond_1a5
    const/4 v1, 0x2

    goto :goto_1be

    :sswitch_1a7
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b1

    goto/16 :goto_15

    :cond_1b1
    const/4 v1, 0x1

    goto :goto_1be

    :sswitch_1b3
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bd

    goto/16 :goto_15

    :cond_1bd
    const/4 v1, 0x0

    :goto_1be
    const-string v2, "application/dvbsubs"

    const-string v11, "application/pgs"

    const-string v12, "application/vobsub"

    const-string v13, "text/x-ssa"

    const-string v14, "application/x-subrip"

    const-string v4, ". Setting mimeType to "

    const-string v16, "audio/raw"

    const-string v5, "MatroskaExtractor"

    const-string v15, "audio/x-unknown"

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_642

    const-string v1, "Unrecognized codec identifier."

    invoke-static {v1, v10}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v1

    throw v1

    :pswitch_1db
    const/16 v15, 0x1680

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/applovin/exoplayer2/e/e/d$b;->H(Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v17, v11

    iget-wide v10, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yA:J

    invoke-virtual {v3, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yB:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v16, "audio/opus"

    goto/16 :goto_3c0

    :pswitch_21d
    move-object/from16 v17, v11

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/e/e/d$b;->H(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v16, "audio/flac"

    goto/16 :goto_304

    :pswitch_22d
    move-object/from16 v17, v11

    const-string v16, "audio/eac3"

    goto/16 :goto_303

    :pswitch_233
    move-object/from16 v17, v11

    const-string v16, "video/mpeg2"

    goto/16 :goto_303

    :pswitch_239
    move-object/from16 v17, v11

    move-object/from16 v16, v14

    goto/16 :goto_303

    :pswitch_23f
    move-object/from16 v17, v11

    new-instance v1, Lcom/applovin/exoplayer2/l/y;

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/applovin/exoplayer2/e/e/d$b;->H(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    invoke-static {v1}, Lcom/applovin/exoplayer2/m/f;->av(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/m/f;

    move-result-object v1

    iget-object v3, v1, Lcom/applovin/exoplayer2/m/f;->dB:Ljava/util/List;

    iget v4, v1, Lcom/applovin/exoplayer2/m/f;->wo:I

    iput v4, v0, Lcom/applovin/exoplayer2/e/e/d$b;->wo:I

    iget-object v1, v1, Lcom/applovin/exoplayer2/m/f;->dw:Ljava/lang/String;

    const-string v16, "video/hevc"

    goto/16 :goto_366

    :pswitch_25c
    move-object/from16 v17, v11

    invoke-static {}, Lcom/applovin/exoplayer2/e/e/d;->iy()[B

    move-result-object v1

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/applovin/exoplayer2/e/e/d$b;->H(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/applovin/exoplayer2/common/a/s;->k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v1

    move-object/from16 v16, v13

    goto/16 :goto_304

    :pswitch_270
    move-object/from16 v17, v11

    iget v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yz:I

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->fI(I)I

    move-result v7

    if-nez v7, :cond_298

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported little endian PCM bit depth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yz:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_41c

    :cond_298
    :goto_298
    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_306

    :pswitch_29c
    move-object/from16 v17, v11

    iget v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yz:I

    if-ne v1, v6, :cond_2a6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x3

    goto :goto_306

    :cond_2a6
    if-ne v1, v3, :cond_2ab

    const/high16 v7, 0x10000000

    goto :goto_298

    :cond_2ab
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported big endian PCM bit depth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yz:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_41c

    :pswitch_2c9
    move-object/from16 v17, v11

    iget v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yz:I

    const/16 v3, 0x20

    if-ne v1, v3, :cond_2d2

    goto :goto_298

    :cond_2d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported floating point PCM bit depth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yz:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_41c

    :pswitch_2f0
    move-object/from16 v17, v11

    const-string v16, "video/x-unknown"

    goto :goto_303

    :pswitch_2f5
    move-object/from16 v17, v11

    move-object/from16 v16, v17

    goto :goto_303

    :pswitch_2fa
    move-object/from16 v17, v11

    const-string v16, "video/x-vnd.on2.vp9"

    goto :goto_303

    :pswitch_2ff
    move-object/from16 v17, v11

    const-string v16, "video/x-vnd.on2.vp8"

    :goto_303
    const/4 v1, 0x0

    :goto_304
    const/4 v3, 0x0

    :goto_305
    const/4 v7, -0x1

    :goto_306
    const/4 v15, -0x1

    goto/16 :goto_430

    :pswitch_309
    move-object/from16 v17, v11

    const-string v16, "video/av01"

    goto :goto_303

    :pswitch_30e
    move-object/from16 v17, v11

    const-string v16, "audio/vnd.dts"

    goto :goto_303

    :pswitch_313
    move-object/from16 v17, v11

    const-string v16, "audio/ac3"

    goto :goto_303

    :pswitch_318
    move-object/from16 v17, v11

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/e/e/d$b;->H(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/e/d$b;->ya:[B

    invoke-static {v3}, Lcom/applovin/exoplayer2/b/a;->b([B)Lcom/applovin/exoplayer2/b/a$a;

    move-result-object v3

    iget v4, v3, Lcom/applovin/exoplayer2/b/a$a;->js:I

    iput v4, v0, Lcom/applovin/exoplayer2/e/e/d$b;->dM:I

    iget v4, v3, Lcom/applovin/exoplayer2/b/a$a;->dL:I

    iput v4, v0, Lcom/applovin/exoplayer2/e/e/d$b;->dL:I

    iget-object v3, v3, Lcom/applovin/exoplayer2/b/a$a;->dw:Ljava/lang/String;

    const-string v16, "audio/mp4a-latm"

    goto :goto_305

    :pswitch_337
    move-object/from16 v17, v11

    const-string v16, "audio/vnd.dts.hd"

    goto :goto_303

    :pswitch_33c
    move-object/from16 v17, v11

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/e/e/d$b;->H(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/common/a/s;->u(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v1

    move-object/from16 v16, v12

    goto :goto_304

    :pswitch_34b
    move-object/from16 v17, v11

    new-instance v1, Lcom/applovin/exoplayer2/l/y;

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/applovin/exoplayer2/e/e/d$b;->H(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    invoke-static {v1}, Lcom/applovin/exoplayer2/m/a;->as(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/m/a;

    move-result-object v1

    iget-object v3, v1, Lcom/applovin/exoplayer2/m/a;->dB:Ljava/util/List;

    iget v4, v1, Lcom/applovin/exoplayer2/m/a;->wo:I

    iput v4, v0, Lcom/applovin/exoplayer2/e/e/d$b;->wo:I

    iget-object v1, v1, Lcom/applovin/exoplayer2/m/a;->dw:Ljava/lang/String;

    const-string v16, "video/avc"

    :goto_366
    const/4 v7, -0x1

    const/4 v15, -0x1

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v1, v18

    goto/16 :goto_430

    :pswitch_36f
    move-object/from16 v17, v11

    new-array v1, v7, [B

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/applovin/exoplayer2/e/e/d$b;->H(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v9, v1, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/applovin/exoplayer2/common/a/s;->u(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v1

    move-object/from16 v16, v2

    goto :goto_304

    :pswitch_383
    move-object/from16 v17, v11

    new-instance v1, Lcom/applovin/exoplayer2/l/y;

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/applovin/exoplayer2/e/e/d$b;->H(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/e/d$b;->n(Lcom/applovin/exoplayer2/l/y;)Landroid/util/Pair;

    move-result-object v1

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    goto/16 :goto_304

    :pswitch_3a0
    move-object/from16 v17, v11

    const-string v16, "audio/mpeg"

    goto :goto_3a9

    :pswitch_3a5
    move-object/from16 v17, v11

    const-string v16, "audio/mpeg-L2"

    :goto_3a9
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/16 v15, 0x1000

    goto/16 :goto_430

    :pswitch_3b0
    move-object/from16 v17, v11

    const/16 v15, 0x2000

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/e/e/d$b;->H(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/e/d$b;->v([B)Ljava/util/List;

    move-result-object v1

    const-string v16, "audio/vorbis"

    :goto_3c0
    const/4 v3, 0x0

    const/4 v7, -0x1

    goto :goto_430

    :pswitch_3c3
    move-object/from16 v17, v11

    new-instance v1, Lcom/applovin/exoplayer2/e/e/d$c;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/e/e/d$c;-><init>()V

    iput-object v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yC:Lcom/applovin/exoplayer2/e/e/d$c;

    const-string v16, "audio/true-hd"

    goto/16 :goto_303

    :pswitch_3d0
    move-object/from16 v17, v11

    new-instance v1, Lcom/applovin/exoplayer2/l/y;

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xS:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/applovin/exoplayer2/e/e/d$b;->H(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/e/d$b;->o(Lcom/applovin/exoplayer2/l/y;)Z

    move-result v1

    if-eqz v1, :cond_408

    iget v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yz:I

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->fI(I)I

    move-result v7

    if-nez v7, :cond_298

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported PCM bit depth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yz:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41c

    :cond_408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_41c
    move-object/from16 v16, v15

    goto/16 :goto_303

    :pswitch_420
    move-object/from16 v17, v11

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/e/d$b;->ya:[B

    if-nez v1, :cond_428

    const/4 v1, 0x0

    goto :goto_42c

    :cond_428
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_42c
    const-string v16, "video/mp4v-es"

    goto/16 :goto_304

    :goto_430
    iget-object v4, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yy:[B

    if-eqz v4, :cond_443

    new-instance v5, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {v5, v4}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    invoke-static {v5}, Lcom/applovin/exoplayer2/m/c;->au(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/m/c;

    move-result-object v4

    if-eqz v4, :cond_443

    iget-object v3, v4, Lcom/applovin/exoplayer2/m/c;->dw:Ljava/lang/String;

    const-string v16, "video/dolby-vision"

    :cond_443
    move-object/from16 v4, v16

    iget-boolean v5, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yE:Z

    or-int/2addr v5, v9

    iget-boolean v6, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yD:Z

    if-eqz v6, :cond_44e

    const/4 v6, 0x2

    goto :goto_44f

    :cond_44e
    const/4 v6, 0x0

    :goto_44f
    or-int/2addr v5, v6

    new-instance v6, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v6}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    invoke-static {v4}, Lcom/applovin/exoplayer2/l/u;->aW(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_46d

    iget v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->dL:I

    invoke-virtual {v6, v2}, Lcom/applovin/exoplayer2/v$a;->N(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    iget v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->dM:I

    invoke-virtual {v2, v8}, Lcom/applovin/exoplayer2/v$a;->O(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/applovin/exoplayer2/v$a;->P(I)Lcom/applovin/exoplayer2/v$a;

    const/4 v8, 0x1

    goto/16 :goto_573

    :cond_46d
    invoke-static {v4}, Lcom/applovin/exoplayer2/l/u;->aX(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_54a

    iget v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yd:I

    if-nez v2, :cond_489

    iget v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yb:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_47e

    iget v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->dE:I

    :cond_47e
    iput v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yb:I

    iget v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yc:I

    if-ne v2, v7, :cond_486

    iget v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->height:I

    :cond_486
    iput v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yc:I

    goto :goto_48a

    :cond_489
    const/4 v7, -0x1

    :goto_48a
    const/high16 v2, -0x40800000    # -1.0f

    iget v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yb:I

    if-eq v8, v7, :cond_49f

    iget v10, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yc:I

    if-eq v10, v7, :cond_49f

    iget v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->height:I

    mul-int v2, v2, v8

    int-to-float v2, v2

    iget v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->dE:I

    mul-int v8, v8, v10

    int-to-float v8, v8

    div-float/2addr v2, v8

    :cond_49f
    iget-boolean v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yi:Z

    if-eqz v8, :cond_4b3

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/e/e/d$b;->iC()[B

    move-result-object v8

    new-instance v10, Lcom/applovin/exoplayer2/m/b;

    iget v11, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yj:I

    iget v12, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yl:I

    iget v13, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yk:I

    invoke-direct {v10, v11, v12, v13, v8}, Lcom/applovin/exoplayer2/m/b;-><init>(III[B)V

    goto :goto_4b4

    :cond_4b3
    const/4 v10, 0x0

    :goto_4b4
    iget-object v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->name:Ljava/lang/String;

    if-eqz v8, :cond_4d4

    invoke-static {}, Lcom/applovin/exoplayer2/e/e/d;->iz()Ljava/util/Map;

    move-result-object v8

    iget-object v11, v0, Lcom/applovin/exoplayer2/e/e/d$b;->name:Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d4

    invoke-static {}, Lcom/applovin/exoplayer2/e/e/d;->iz()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->name:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_4d4
    iget v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->ye:I

    if-nez v8, :cond_524

    iget v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yf:F

    const/4 v11, 0x0

    invoke-static {v8, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_524

    iget v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yg:F

    invoke-static {v8, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_524

    iget v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yh:F

    invoke-static {v8, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_4f2

    goto :goto_525

    :cond_4f2
    iget v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yg:F

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_4ff

    const/16 v9, 0x5a

    goto :goto_525

    :cond_4ff
    iget v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yg:F

    const/high16 v9, -0x3ccc0000    # -180.0f

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_521

    iget v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yg:F

    const/high16 v9, 0x43340000    # 180.0f

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_514

    goto :goto_521

    :cond_514
    iget v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->yg:F

    const/high16 v9, -0x3d4c0000    # -90.0f

    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_524

    const/16 v9, 0x10e

    goto :goto_525

    :cond_521
    :goto_521
    const/16 v9, 0xb4

    goto :goto_525

    :cond_524
    move v9, v7

    :goto_525
    iget v7, v0, Lcom/applovin/exoplayer2/e/e/d$b;->dE:I

    invoke-virtual {v6, v7}, Lcom/applovin/exoplayer2/v$a;->J(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v7

    iget v8, v0, Lcom/applovin/exoplayer2/e/e/d$b;->height:I

    invoke-virtual {v7, v8}, Lcom/applovin/exoplayer2/v$a;->K(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/applovin/exoplayer2/v$a;->e(F)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/applovin/exoplayer2/v$a;->L(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    iget-object v7, v0, Lcom/applovin/exoplayer2/e/e/d$b;->dI:[B

    invoke-virtual {v2, v7}, Lcom/applovin/exoplayer2/v$a;->a([B)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    iget v7, v0, Lcom/applovin/exoplayer2/e/e/d$b;->dJ:I

    invoke-virtual {v2, v7}, Lcom/applovin/exoplayer2/v$a;->M(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/applovin/exoplayer2/v$a;->a(Lcom/applovin/exoplayer2/m/b;)Lcom/applovin/exoplayer2/v$a;

    const/4 v8, 0x2

    goto :goto_573

    :cond_54a
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_573

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_573

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_573

    move-object/from16 v7, v17

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_573

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56b

    goto :goto_573

    :cond_56b
    const-string v1, "Unexpected MIME type."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v1

    throw v1

    :cond_573
    :goto_573
    iget-object v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->name:Ljava/lang/String;

    if-eqz v2, :cond_588

    invoke-static {}, Lcom/applovin/exoplayer2/e/e/d;->iz()Ljava/util/Map;

    move-result-object v2

    iget-object v7, v0, Lcom/applovin/exoplayer2/e/e/d$b;->name:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_588

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/applovin/exoplayer2/v$a;->h(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    :cond_588
    move/from16 v2, p2

    invoke-virtual {v6, v2}, Lcom/applovin/exoplayer2/v$a;->D(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/applovin/exoplayer2/v$a;->I(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    iget-object v4, v0, Lcom/applovin/exoplayer2/e/e/d$b;->dq:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/applovin/exoplayer2/v$a;->j(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/applovin/exoplayer2/v$a;->E(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/applovin/exoplayer2/v$a;->c(Ljava/util/List;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/v$a;->k(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->dC:Lcom/applovin/exoplayer2/d/e;

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/v$a;->a(Lcom/applovin/exoplayer2/d/e;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v1

    iget v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->xT:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v8}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v2

    iput-object v2, v0, Lcom/applovin/exoplayer2/e/e/d$b;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v2, v1}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    return-void

    :sswitch_data_5c0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1b3
        -0x7ce7f3b0 -> :sswitch_1a7
        -0x76567dc0 -> :sswitch_19b
        -0x6a615338 -> :sswitch_18f
        -0x672350af -> :sswitch_183
        -0x585f4fce -> :sswitch_177
        -0x585f4fcd -> :sswitch_16b
        -0x51dc40b2 -> :sswitch_15f
        -0x37a9c464 -> :sswitch_151
        -0x2016c535 -> :sswitch_143
        -0x2016c4e5 -> :sswitch_135
        -0x19552dbd -> :sswitch_127
        -0x1538b2ba -> :sswitch_119
        0x3c02325 -> :sswitch_10b
        0x3c02353 -> :sswitch_fd
        0x3c030c5 -> :sswitch_ef
        0x4e81333 -> :sswitch_e1
        0x4e86155 -> :sswitch_d3
        0x4e86156 -> :sswitch_c5
        0x5e8da3e -> :sswitch_b7
        0x1a8350d6 -> :sswitch_a9
        0x2056f406 -> :sswitch_9b
        0x25e26ee2 -> :sswitch_8d
        0x2b45174d -> :sswitch_80
        0x2b453ce4 -> :sswitch_73
        0x2c0618eb -> :sswitch_66
        0x32fdf009 -> :sswitch_59
        0x54c61e47 -> :sswitch_4c
        0x6bd6c624 -> :sswitch_3f
        0x7446132a -> :sswitch_32
        0x7446b0a6 -> :sswitch_25
        0x744ad97d -> :sswitch_18
    .end sparse-switch

    :pswitch_data_642
    .packed-switch 0x0
        :pswitch_420
        :pswitch_420
        :pswitch_3d0
        :pswitch_3c3
        :pswitch_3b0
        :pswitch_3a5
        :pswitch_3a0
        :pswitch_383
        :pswitch_36f
        :pswitch_420
        :pswitch_34b
        :pswitch_33c
        :pswitch_337
        :pswitch_318
        :pswitch_313
        :pswitch_30e
        :pswitch_309
        :pswitch_2ff
        :pswitch_2fa
        :pswitch_2f5
        :pswitch_2f0
        :pswitch_30e
        :pswitch_2c9
        :pswitch_29c
        :pswitch_270
        :pswitch_25c
        :pswitch_23f
        :pswitch_239
        :pswitch_233
        :pswitch_22d
        :pswitch_21d
        :pswitch_1db
    .end packed-switch
.end method

.method public iB()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/e/d$b;->yC:Lcom/applovin/exoplayer2/e/e/d$c;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/applovin/exoplayer2/e/e/d$c;->c(Lcom/applovin/exoplayer2/e/e/d$b;)V

    :cond_7
    return-void
.end method
