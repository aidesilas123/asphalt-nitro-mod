###### Class com.facebook.ads.redexgen.X.GE (com.facebook.ads.redexgen.X.GE)
.class public final Lcom/facebook/ads/redexgen/X/GE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioConfigurationTuple"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/GE;->A01:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/GE;->A02:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x1

    if-ne p0, p1, :cond_4

    return v3

    :cond_4
    const/4 v2, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_12

    :cond_11
    return v2

    :cond_12
    check-cast p1, Lcom/facebook/ads/redexgen/X/GE;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GE;->A00:I

    if-ne v1, v0, :cond_2b

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GE;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GE;->A01:I

    if-ne v1, v0, :cond_2b

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GE;->A02:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/GE;->A02:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :goto_2a
    return v3

    :cond_2b
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A00:I

    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A01:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GE;->A02:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v1, v0

    return v1

    :cond_13
    const/4 v0, 0x0

    goto :goto_11
.end method
