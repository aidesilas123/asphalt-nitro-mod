###### Class com.facebook.ads.redexgen.X.C07353i (com.facebook.ads.redexgen.X.3i)
.class public final Lcom/facebook/ads/redexgen/X/3i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/EH;,
        Lcom/facebook/ads/redexgen/X/EI;,
        Lcom/facebook/ads/redexgen/X/ZG;,
        Lcom/facebook/ads/redexgen/X/3h;
    }
.end annotation


# static fields
.field public static final A01:Lcom/facebook/ads/redexgen/X/3h;


# instance fields
.field public final A00:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_e

    new-instance v0, Lcom/facebook/ads/redexgen/X/EH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EH;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    :goto_d
    return-void

    :cond_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_1c

    new-instance v0, Lcom/facebook/ads/redexgen/X/EI;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EI;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    goto :goto_d

    :cond_1c
    new-instance v0, Lcom/facebook/ads/redexgen/X/ZG;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ZG;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/3i;->A01:Lcom/facebook/ads/redexgen/X/3h;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/3h;->AAC(Lcom/facebook/ads/redexgen/X/3i;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/3g;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/3g;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final A02()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3i;->A00:Ljava/lang/Object;

    return-object v0
.end method

.method public final A03(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3g;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final A04(IILandroid/os/Bundle;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method
