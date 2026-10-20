###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.c (com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.c)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;


# static fields
.field public static final e:I


# instance fields
.field public final a:J

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

.field public c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/d;

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "ID3"

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->e:I

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->a:J

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    const/16 p2, 0xc8

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>(I)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/l;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_11

    return p2

    :cond_11
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {p2, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {p2, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->d(I)V

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->d:Z

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/d;

    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->a:J

    iput-wide v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/d;->o:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->d:Z

    :cond_28
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/d;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/d;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)V

    return v0
.end method

.method public a(JJ)V
    .registers 5

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->d:Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/d;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/d;->c()V

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;)V
    .registers 7

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/d;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/d;

    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;-><init>(III)V

    invoke-virtual {v0, p1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/d;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;)V

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->c()V

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m$a;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;)V

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>(I)V

    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    array-length v4, v3

    invoke-direct {v2, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;-><init>([BI)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    move-object v6, p1

    check-cast v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    invoke-virtual {v6, v5, v3, v1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->n()I

    move-result v5

    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;->e:I

    if-eq v5, v7, :cond_76

    iput v3, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    invoke-virtual {v6, v4, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a(IZ)Z

    move v1, v4

    :goto_2a
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_2c
    iget-object v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v3, v8, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->q()I

    move-result v7

    const v8, 0xfff6

    and-int/2addr v7, v8

    const v8, 0xfff0

    if-eq v7, v8, :cond_51

    iput v3, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    add-int/lit8 v1, v1, 0x1

    sub-int p1, v1, v4

    const/16 v5, 0x2000

    if-lt p1, v5, :cond_4d

    return v3

    :cond_4d
    invoke-virtual {v6, v1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a(IZ)Z

    goto :goto_2a

    :cond_51
    const/4 v7, 0x1

    add-int/2addr p1, v7

    const/4 v8, 0x4

    if-lt p1, v8, :cond_5b

    const/16 v9, 0xbc

    if-le v5, v9, :cond_5b

    return v7

    :cond_5b
    iget-object v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    invoke-virtual {v6, v7, v3, v8, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    const/16 v7, 0xe

    invoke-virtual {v2, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->b(I)V

    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->a(I)I

    move-result v7

    const/4 v8, 0x6

    if-gt v7, v8, :cond_6f

    return v3

    :cond_6f
    add-int/lit8 v8, v7, -0x6

    invoke-virtual {v6, v8, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a(IZ)Z

    add-int/2addr v5, v7

    goto :goto_2c

    :cond_76
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->k()I

    move-result v5

    add-int/lit8 v7, v5, 0xa

    add-int/2addr v4, v7

    invoke-virtual {v6, v5, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a(IZ)Z

    goto :goto_11
.end method

.method public b()V
    .registers 1

    return-void
.end method
