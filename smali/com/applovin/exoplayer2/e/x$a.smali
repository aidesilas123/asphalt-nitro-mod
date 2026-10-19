###### Class com.applovin.exoplayer2.e.x.a (com.applovin.exoplayer2.e.x$a)
.class public final Lcom/applovin/exoplayer2/e/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final rq:I

.field public final rr:I

.field public final uU:I

.field public final uV:[B


# direct methods
.method public constructor <init>(I[BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/e/x$a;->uU:I

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/x$a;->uV:[B

    iput p3, p0, Lcom/applovin/exoplayer2/e/x$a;->rq:I

    iput p4, p0, Lcom/applovin/exoplayer2/e/x$a;->rr:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_31

    const-class v2, Lcom/applovin/exoplayer2/e/x$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_31

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/e/x$a;

    iget v2, p0, Lcom/applovin/exoplayer2/e/x$a;->uU:I

    iget v3, p1, Lcom/applovin/exoplayer2/e/x$a;->uU:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/applovin/exoplayer2/e/x$a;->rq:I

    iget v3, p1, Lcom/applovin/exoplayer2/e/x$a;->rq:I

    if-ne v2, v3, :cond_2f

    iget v2, p0, Lcom/applovin/exoplayer2/e/x$a;->rr:I

    iget v3, p1, Lcom/applovin/exoplayer2/e/x$a;->rr:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/x$a;->uV:[B

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/x$a;->uV:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    return v0

    :cond_31
    :goto_31
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/e/x$a;->uU:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/x$a;->uV:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/exoplayer2/e/x$a;->rq:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/exoplayer2/e/x$a;->rr:I

    add-int/2addr v0, v1

    return v0
.end method
