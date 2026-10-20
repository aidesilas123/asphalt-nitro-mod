###### Class com.facebook.ads.redexgen.X.D6 (com.facebook.ads.redexgen.X.D6)
.class public final Lcom/facebook/ads/redexgen/X/D6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecKey"
.end annotation


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/D6;->A01:Z

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

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v0, Lcom/facebook/ads/redexgen/X/D6;

    if-eq v1, v0, :cond_10

    :cond_f
    return v2

    :cond_10
    check-cast p1, Lcom/facebook/ads/redexgen/X/D6;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/D6;->A00:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/D6;->A01:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/D6;->A01:Z

    if-ne v1, v0, :cond_23

    :goto_22
    return v3

    :cond_23
    const/4 v3, 0x0

    goto :goto_22
.end method

.method public final hashCode()I
    .registers 3

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D6;->A00:Ljava/lang/String;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_8
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D6;->A01:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x4cf

    :goto_11
    add-int/2addr v1, v0

    return v1

    :cond_13
    const/16 v0, 0x4d5

    goto :goto_11

    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8
.end method
