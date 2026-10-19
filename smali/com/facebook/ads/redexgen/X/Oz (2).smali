###### Class com.facebook.ads.redexgen.X.C1257Oz (com.facebook.ads.redexgen.X.Oz)
.class public final Lcom/facebook/ads/redexgen/X/Oz;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A06:I

.field public static A07:I


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/1M;

.field public final A03:Ljava/lang/String;

.field public final A04:Z

.field public final A05:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/facebook/ads/redexgen/X/Oz;->A06:I

    const/4 v0, 0x1

    sput v0, Lcom/facebook/ads/redexgen/X/Oz;->A07:I

    return-void
.end method

.method public constructor <init>(ZILcom/facebook/ads/redexgen/X/1M;ZILjava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Oz;->A05:Z

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Oz;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Oz;->A02:Lcom/facebook/ads/redexgen/X/1M;

    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/Oz;->A04:Z

    iput p5, p0, Lcom/facebook/ads/redexgen/X/Oz;->A01:I

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Oz;->A03:Ljava/lang/String;

    return-void
.end method
