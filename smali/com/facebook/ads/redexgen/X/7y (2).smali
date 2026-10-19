###### Class com.facebook.ads.redexgen.X.C08427y (com.facebook.ads.redexgen.X.7y)
.class public final Lcom/facebook/ads/redexgen/X/7y;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lorg/json/JSONObject;

.field public A03:Z

.field public A04:Z

.field public A05:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A05:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A04:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/7y;->A03:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A01:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A05:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A04:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/7y;->A03:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A01:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A05:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A04:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/7y;->A03:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A01:I

    return-void
.end method


# virtual methods
.method public final A00()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    return v0
.end method

.method public final A01()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A01:I

    return v0
.end method

.method public final A02()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A02:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final A03(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/7y;->A00:I

    return-void
.end method

.method public final A04(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/7y;->A01:I

    return-void
.end method

.method public final A05(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7y;->A02:Lorg/json/JSONObject;

    return-void
.end method

.method public final A06(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/7y;->A04:Z

    return-void
.end method

.method public final A07(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/7y;->A03:Z

    return-void
.end method

.method public final A08(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/7y;->A05:Z

    return-void
.end method

.method public final A09()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A04:Z

    return v0
.end method

.method public final A0A()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A03:Z

    return v0
.end method

.method public final A0B()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A05:Z

    return v0
.end method
