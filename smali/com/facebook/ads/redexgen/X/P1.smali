###### Class com.facebook.ads.redexgen.X.P1 (com.facebook.ads.redexgen.X.P1)
.class public final Lcom/facebook/ads/redexgen/X/P1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/P3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/1M;

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;

.field public final A04:Lcom/facebook/ads/redexgen/X/1K;

.field public final A05:Lcom/facebook/ads/redexgen/X/1X;

.field public final A06:Lcom/facebook/ads/redexgen/X/YA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1K;Lcom/facebook/ads/redexgen/X/1X;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1M;->A01(Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/P1;->A01:Lcom/facebook/ads/redexgen/X/1M;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/P1;->A00:I

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P1;->A06:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/P1;->A04:Lcom/facebook/ads/redexgen/X/1K;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/P1;->A05:Lcom/facebook/ads/redexgen/X/1X;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/P1;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/P1;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/P1;)Lcom/facebook/ads/redexgen/X/1K;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P1;->A04:Lcom/facebook/ads/redexgen/X/1K;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/P1;)Lcom/facebook/ads/redexgen/X/1M;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P1;->A01:Lcom/facebook/ads/redexgen/X/1M;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/P1;)Lcom/facebook/ads/redexgen/X/1X;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P1;->A05:Lcom/facebook/ads/redexgen/X/1X;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/P1;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P1;->A06:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/P1;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P1;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/P1;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/P1;->A02:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final A07(I)Lcom/facebook/ads/redexgen/X/P1;
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/P1;->A00:I

    return-object p0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/1M;)Lcom/facebook/ads/redexgen/X/P1;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P1;->A01:Lcom/facebook/ads/redexgen/X/1M;

    return-object p0
.end method

.method public final A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/P1;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P1;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public final A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/P1;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P1;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public final A0B()Lcom/facebook/ads/redexgen/X/P3;
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/P3;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/P3;-><init>(Lcom/facebook/ads/redexgen/X/P1;Lcom/facebook/ads/redexgen/X/S8;)V

    return-object v0
.end method
