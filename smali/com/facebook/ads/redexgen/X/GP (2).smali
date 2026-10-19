###### Class com.facebook.ads.redexgen.X.GP (com.facebook.ads.redexgen.X.GP)
.class public final Lcom/facebook/ads/redexgen/X/GP;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:[Lcom/facebook/ads/redexgen/X/GO;


# direct methods
.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/GO;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GP;->A02:[Lcom/facebook/ads/redexgen/X/GO;

    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A01:I

    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/GO;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A02:[Lcom/facebook/ads/redexgen/X/GO;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A01()[Lcom/facebook/ads/redexgen/X/GO;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A02:[Lcom/facebook/ads/redexgen/X/GO;

    invoke-virtual {v0}, [Lcom/facebook/ads/redexgen/X/GO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/GO;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    return v0

    :cond_12
    check-cast p1, Lcom/facebook/ads/redexgen/X/GP;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GP;->A02:[Lcom/facebook/ads/redexgen/X/GO;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/GP;->A02:[Lcom/facebook/ads/redexgen/X/GO;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:I

    if-nez v0, :cond_11

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A02:[Lcom/facebook/ads/redexgen/X/GO;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:I

    :cond_11
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GP;->A00:I

    return v0
.end method
