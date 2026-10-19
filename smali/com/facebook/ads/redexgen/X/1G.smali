###### Class com.facebook.ads.redexgen.X.C1G (com.facebook.ads.redexgen.X.1G)
.class public final Lcom/facebook/ads/redexgen/X/1G;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1F;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x3ba6bcbd8943c62L


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:J

.field public final A06:Lcom/facebook/ads/redexgen/X/1Z;

.field public final A07:Ljava/lang/String;

.field public final A08:Ljava/lang/String;

.field public final A09:Z

.field public final A0A:Z

.field public final A0B:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1F;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1F;->A07(Lcom/facebook/ads/redexgen/X/1F;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A08:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1F;->A05(Lcom/facebook/ads/redexgen/X/1F;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A05:J

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1F;->A01(Lcom/facebook/ads/redexgen/X/1F;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A03:I

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1F;->A02(Lcom/facebook/ads/redexgen/X/1F;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A04:I

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1F;->A0A(Lcom/facebook/ads/redexgen/X/1F;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A0A:Z

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1F;->A0B(Lcom/facebook/ads/redexgen/X/1F;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A09:Z

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1F;->A08(Lcom/facebook/ads/redexgen/X/1F;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A07:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1F;->A03(Lcom/facebook/ads/redexgen/X/1F;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A01:I

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1F;->A04(Lcom/facebook/ads/redexgen/X/1F;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A00:I

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1F;->A06(Lcom/facebook/ads/redexgen/X/1F;)Lcom/facebook/ads/redexgen/X/1Z;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A06:Lcom/facebook/ads/redexgen/X/1Z;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1F;->A00(Lcom/facebook/ads/redexgen/X/1F;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A02:I

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1F;->A09(Lcom/facebook/ads/redexgen/X/1F;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A0B:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/1F;Lcom/facebook/ads/redexgen/X/1E;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1G;-><init>(Lcom/facebook/ads/redexgen/X/1F;)V

    return-void
.end method


# virtual methods
.method public final A00()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A00:I

    return v0
.end method

.method public final A01()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A01:I

    return v0
.end method

.method public final A02()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A02:I

    return v0
.end method

.method public final A03()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A03:I

    return v0
.end method

.method public final A04()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A04:I

    return v0
.end method

.method public final A05()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A05:J

    return-wide v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/1Z;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A06:Lcom/facebook/ads/redexgen/X/1Z;

    return-object v0
.end method

.method public final A07()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A07:Ljava/lang/String;

    return-object v0
.end method

.method public final A08()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A08:Ljava/lang/String;

    return-object v0
.end method

.method public final A09()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A09:Z

    return v0
.end method

.method public final A0A()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1G;->A0B:Z

    return v0
.end method
