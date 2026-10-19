###### Class com.facebook.ads.redexgen.X.VX (com.facebook.ads.redexgen.X.VX)
.class public final Lcom/facebook/ads/redexgen/X/VX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FW;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A6T(J)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VX;->A00:Ljava/util/List;

    return-object v0
.end method

.method public final A6t(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final A6u()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final A7L(J)I
    .registers 4

    const/4 v0, -0x1

    return v0
.end method
