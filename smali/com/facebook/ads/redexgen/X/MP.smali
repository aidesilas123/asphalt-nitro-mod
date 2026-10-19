###### Class com.facebook.ads.redexgen.X.MP (com.facebook.ads.redexgen.X.MP)
.class public final Lcom/facebook/ads/redexgen/X/MP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/MQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/Ld;

.field public A02:Lcom/facebook/ads/redexgen/X/MT;

.field public A03:Ljava/lang/String;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/YA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/MT;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MP;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MP;->A0B:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MP;->A09:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MP;->A07:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MP;->A08:Z

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MP;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MP;->A02:Lcom/facebook/ads/redexgen/X/MT;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/MP;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/Ld;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A01:Lcom/facebook/ads/redexgen/X/Ld;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/MT;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A02:Lcom/facebook/ads/redexgen/X/MT;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/MP;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/MP;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A05:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/MP;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A04:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/MP;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/MP;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A09:Z

    return p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/MP;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A0B:Z

    return p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/MP;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A07:Z

    return p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/MP;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A08:Z

    return p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/MP;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/MP;->A0A:Z

    return p0
.end method


# virtual methods
.method public final A0D(I)Lcom/facebook/ads/redexgen/X/MP;
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/MP;->A00:I

    return-object p0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/Ld;)Lcom/facebook/ads/redexgen/X/MP;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MP;->A01:Lcom/facebook/ads/redexgen/X/Ld;

    return-object p0
.end method

.method public final A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MP;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MP;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public final A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MP;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MP;->A04:Ljava/lang/String;

    return-object p0
.end method

.method public final A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MP;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MP;->A05:Ljava/lang/String;

    return-object p0
.end method

.method public final A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MP;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MP;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public final A0J(Z)Lcom/facebook/ads/redexgen/X/MP;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/MP;->A09:Z

    return-object p0
.end method

.method public final A0K(Z)Lcom/facebook/ads/redexgen/X/MP;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/MP;->A0A:Z

    return-object p0
.end method

.method public final A0L(Z)Lcom/facebook/ads/redexgen/X/MP;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/MP;->A0B:Z

    return-object p0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/MQ;
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/MQ;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/MQ;-><init>(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/MN;)V

    return-object v0
.end method
