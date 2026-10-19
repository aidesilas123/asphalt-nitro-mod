###### Class com.facebook.ads.redexgen.X.Y0 (com.facebook.ads.redexgen.X.Y0)
.class public final Lcom/facebook/ads/redexgen/X/Y0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/7p;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AGS(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/7S;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/7S;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7v;->A00()Lcom/facebook/ads/redexgen/X/7u;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7u;->AGS(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/7S;)V

    return-void
.end method
