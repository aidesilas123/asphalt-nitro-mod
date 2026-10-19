###### Class com.facebook.ads.redexgen.X.XO (com.facebook.ads.redexgen.X.XO)
.class public final Lcom/facebook/ads/redexgen/X/XO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AJ;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Ljava/nio/ByteBuffer;

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Z

.field public A05:Z

.field public A06:[I

.field public A07:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A02:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A03:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A01:I

    return-void
.end method


# virtual methods
.method public final A00([I)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XO;->A07:[I

    return-void
.end method

.method public final A4N(III)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AI;
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A07:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    const/4 v3, 0x1

    xor-int/2addr v4, v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XO;->A07:[I

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:[I

    const/4 v1, 0x0

    if-nez v2, :cond_14

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A04:Z

    return v4

    :cond_14
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4c

    if-nez v4, :cond_22

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A01:I

    if-ne v0, p1, :cond_22

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:I

    if-ne v0, p2, :cond_22

    return v1

    :cond_22
    iput p1, p0, Lcom/facebook/ads/redexgen/X/XO;->A01:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:I

    array-length v0, v2

    if-eq p2, v0, :cond_43

    const/4 v0, 0x1

    :goto_2a
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A04:Z

    const/4 v2, 0x0

    :goto_2d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:[I

    array-length v0, v1

    if-ge v2, v0, :cond_4b

    aget v0, v1, v2

    if-ge v0, p2, :cond_45

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A04:Z

    if-eq v0, v2, :cond_41

    const/4 v0, 0x1

    :goto_3b
    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A04:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_41
    const/4 v0, 0x0

    goto :goto_3b

    :cond_43
    const/4 v0, 0x0

    goto :goto_2a

    :cond_45
    new-instance v0, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AI;-><init>(III)V

    throw v0

    :cond_4b
    return v3

    :cond_4c
    new-instance v0, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AI;-><init>(III)V

    throw v0
.end method

.method public final A7O()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A03:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A03:Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public final A7P()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:[I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:I

    :goto_6
    return v0

    :cond_7
    array-length v0, v0

    goto :goto_6
.end method

.method public final A7Q()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final A7R()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A01:I

    return v0
.end method

.method public final A8l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A04:Z

    return v0
.end method

.method public final A8q()Z
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A05:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A03:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    if-ne v1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final AE6()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A05:Z

    return-void
.end method

.method public final AE7(Ljava/nio/ByteBuffer;)V
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:[I

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    sub-int v1, v5, v6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:[I

    array-length v0, v0

    mul-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_52

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A02:Ljava/nio/ByteBuffer;

    :goto_33
    if-ge v6, v5, :cond_5a

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:[I

    array-length v3, v4

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v3, :cond_4c

    aget v0, v4, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XO;->A02:Ljava/nio/ByteBuffer;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_4c
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v6, v0

    goto :goto_33

    :cond_52
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_33

    :cond_58
    const/4 v0, 0x0

    goto :goto_5

    :cond_5a
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A02:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A03:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final flush()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A03:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A05:Z

    return-void
.end method

.method public final reset()V
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XO;->flush()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A02:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A01:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A06:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A07:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XO;->A04:Z

    return-void
.end method
