###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.e (com.fyber.inneractive.sdk.player.exoplayer2.extractor.ogg.e)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:I


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public final f:[I

.field public final g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "OggS"

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->h:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->f:[I

    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-direct {v1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>(I)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->a:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->b:J

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->c:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->d:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->e:I

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;Z)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->r()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->a()V

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    iget-wide v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->b:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_24

    iget-wide v4, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    iget v6, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1b

    cmp-long v6, v0, v4

    if-ltz v6, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    :goto_25
    if-eqz v0, :cond_111

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_111

    :cond_35
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->m()J

    move-result-wide v4

    sget v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->h:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4d

    if-eqz p2, :cond_45

    return v2

    :cond_45
    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string p2, "expected OggS capture pattern at begin of page"

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result v0

    if-eqz v0, :cond_60

    if-eqz p2, :cond_58

    return v2

    :cond_58
    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string p2, "unsupported bit stream revision"

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result p2

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->a:I

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v0, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    iget v4, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    aget-byte v4, v0, v4

    int-to-long v6, v4

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    add-int/lit8 v4, v5, 0x1

    iput v4, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    aget-byte v5, v0, v5

    int-to-long v10, v5

    and-long/2addr v10, v8

    const/16 v5, 0x8

    shl-long/2addr v10, v5

    or-long v5, v6, v10

    add-int/lit8 v7, v4, 0x1

    iput v7, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    aget-byte v4, v0, v4

    int-to-long v10, v4

    and-long/2addr v10, v8

    const/16 v4, 0x10

    shl-long/2addr v10, v4

    or-long v4, v5, v10

    add-int/lit8 v6, v7, 0x1

    iput v6, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    aget-byte v7, v0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x18

    shl-long/2addr v10, v7

    or-long/2addr v4, v10

    add-int/lit8 v7, v6, 0x1

    iput v7, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    aget-byte v6, v0, v6

    int-to-long v10, v6

    and-long/2addr v10, v8

    const/16 v6, 0x20

    shl-long/2addr v10, v6

    or-long/2addr v4, v10

    add-int/lit8 v6, v7, 0x1

    iput v6, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    aget-byte v7, v0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x28

    shl-long/2addr v10, v7

    or-long/2addr v4, v10

    add-int/lit8 v7, v6, 0x1

    iput v7, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    aget-byte v6, v0, v6

    int-to-long v10, v6

    and-long/2addr v10, v8

    const/16 v6, 0x30

    shl-long/2addr v10, v6

    or-long/2addr v4, v10

    add-int/lit8 v6, v7, 0x1

    iput v6, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    aget-byte v0, v0, v7

    int-to-long v6, v0

    and-long/2addr v6, v8

    const/16 v0, 0x38

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    iput-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->b:J

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f()J

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f()J

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f()J

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result p2

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->d:I

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->r()V

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->c:I

    invoke-virtual {p1, p2, v2, v0, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    :goto_f6
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->c:I

    if-ge v2, p1, :cond_110

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->f:[I

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->l()I

    move-result p2

    aput p2, p1, v2

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->e:I

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->f:[I

    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ogg/e;->e:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_f6

    :cond_110
    return v3

    :cond_111
    :goto_111
    if-eqz p2, :cond_114

    return v2

    :cond_114
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method
