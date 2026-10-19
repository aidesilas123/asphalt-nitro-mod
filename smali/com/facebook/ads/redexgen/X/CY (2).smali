###### Class com.facebook.ads.redexgen.X.CY (com.facebook.ads.redexgen.X.CY)
.class public final Lcom/facebook/ads/redexgen/X/CY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/WT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisSetup"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Ca;

.field public final A02:Lcom/facebook/ads/redexgen/X/Cc;

.field public final A03:[B

.field public final A04:[Lcom/facebook/ads/redexgen/X/Cb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cc;Lcom/facebook/ads/redexgen/X/Ca;[B[Lcom/facebook/ads/redexgen/X/Cb;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CY;->A02:Lcom/facebook/ads/redexgen/X/Cc;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/CY;->A01:Lcom/facebook/ads/redexgen/X/Ca;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/CY;->A03:[B

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/CY;->A04:[Lcom/facebook/ads/redexgen/X/Cb;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/CY;->A00:I

    return-void
.end method
