###### Class com.facebook.ads.redexgen.X.VG (com.facebook.ads.redexgen.X.VG)
.class public final Lcom/facebook/ads/redexgen/X/VG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gb;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Lcom/facebook/ads/redexgen/X/Gb;

.field public final A02:Lcom/facebook/ads/redexgen/X/Gy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Gy<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Gc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Gy;Lcom/facebook/ads/redexgen/X/Gb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Gy<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Gc;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Gb;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A00:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:Lcom/facebook/ads/redexgen/X/Gy;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/VG;->A01:Lcom/facebook/ads/redexgen/X/Gb;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gy;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Gy<",
            "-",
            "Lcom/facebook/ads/redexgen/X/Gc;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/facebook/ads/redexgen/X/2P;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/2P;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gy;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/VG;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Gy;Lcom/facebook/ads/redexgen/X/Gb;)V

    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/VH;
    .registers 5

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VG;->A00:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VG;->A02:Lcom/facebook/ads/redexgen/X/Gy;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VG;->A01:Lcom/facebook/ads/redexgen/X/Gb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Gb;->A4U()Lcom/facebook/ads/redexgen/X/Gc;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VH;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/VH;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Gy;Lcom/facebook/ads/redexgen/X/Gc;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A4U()Lcom/facebook/ads/redexgen/X/Gc;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VG;->A00()Lcom/facebook/ads/redexgen/X/VH;

    move-result-object v0

    return-object v0
.end method
