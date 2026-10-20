###### Class com.facebook.ads.redexgen.X.C0929Bl (com.facebook.ads.redexgen.X.Bl)
.class public final Lcom/facebook/ads/redexgen/X/Bl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoData"
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "h73SRN04xx9GKM0Q116IBzLVfoAHdt6S"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "61WNQ6jcFYZeo4haiLT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EyZhmJMsuDDThnYHJcpUVdPGrs5jP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TnJHvhzl2eIFPCvspzGh2UrXG1fvsdQe"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "l4BIQ9QQurpAuznw483RtfLanfJA913P"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gUiFEUth"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CESv2iJEZOXF88qxXwTFJw16ZR0ZYHcV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lPNbV4orIJCU5KxXMzdOHz5Kw4N4woU7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Bl;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I[BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Bl;->A01:I

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Bl;->A03:[B

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Bl;->A02:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Bl;->A00:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x1

    if-ne p0, p1, :cond_4

    return v5

    :cond_4
    const/4 v4, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bl;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_47

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bl;->A04:[Ljava/lang/String;

    const-string v1, "ISIjD6Kq"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v3, v0, :cond_26

    :cond_25
    return v4

    :cond_26
    check-cast p1, Lcom/facebook/ads/redexgen/X/Bl;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bl;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Bl;->A01:I

    if-ne v1, v0, :cond_45

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bl;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Bl;->A02:I

    if-ne v1, v0, :cond_45

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bl;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Bl;->A00:I

    if-ne v1, v0, :cond_45

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bl;->A03:[B

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Bl;->A03:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_45

    :goto_44
    return v5

    :cond_45
    const/4 v5, 0x0

    goto :goto_44

    :cond_47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bl;->A01:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bl;->A03:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bl;->A02:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bl;->A00:I

    add-int/2addr v1, v0

    return v1
.end method
