###### Class com.facebook.ads.redexgen.X.C08889t (com.facebook.ads.redexgen.X.9t)
.class public final Lcom/facebook/ads/redexgen/X/9t;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A01:Lcom/facebook/ads/redexgen/X/9t;


# instance fields
.field public final A00:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/9t;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9t;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9t;->A01:Lcom/facebook/ads/redexgen/X/9t;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/9t;->A00:I

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
    check-cast p1, Lcom/facebook/ads/redexgen/X/9t;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9t;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9t;->A00:I

    if-ne v1, v0, :cond_1b

    :goto_1a
    return v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9t;->A00:I

    return v0
.end method
