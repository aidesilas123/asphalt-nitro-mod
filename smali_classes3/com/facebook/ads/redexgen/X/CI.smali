###### Class com.facebook.ads.redexgen.X.CI (com.facebook.ads.redexgen.X.CI)
.class public final Lcom/facebook/ads/redexgen/X/CI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/CJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PsshAtom"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/UUID;

.field public final A02:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CI;->A01:Ljava/util/UUID;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/CI;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/CI;->A02:[B

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/CI;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/CI;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/CI;)Ljava/util/UUID;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/CI;->A01:Ljava/util/UUID;

    return-object p0
.end method
