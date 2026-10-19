###### Class com.facebook.ads.redexgen.X.C1081Ia (com.facebook.ads.redexgen.X.Ia)
.class public final Lcom/facebook/ads/redexgen/X/Ia;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/IW;,
        Lcom/facebook/ads/redexgen/X/IZ;,
        Lcom/facebook/ads/redexgen/X/IY;,
        Lcom/facebook/ads/redexgen/X/IX;
    }
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/IW;

.field public A01:Lcom/facebook/ads/redexgen/X/IX;

.field public A02:Lcom/facebook/ads/redexgen/X/IY;

.field public A03:Lcom/facebook/ads/redexgen/X/IZ;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VLi8WrXKJp9LAfXNm4uZETrUUakGZ0WJ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "E0EVlIE69utJBkpy2DAhge3Hway87PLR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qesF58zlzdTn3lZrcRPwRcXAd51VIYsw"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DEhD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3RGnWFLj1o7mNylLhDHkdliNsrvaqEmP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "q3CsqlllThy2l0WXj26QCfAwDyJHO8xz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YGqlmSv0HhFp83FTVTLuq2K4C5WSoxDU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sGX8UiLG8Isc3yhet7ELjp1Y4Ecy5PZh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ia;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/IX;->A02:Lcom/facebook/ads/redexgen/X/IX;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A01:Lcom/facebook/ads/redexgen/X/IX;

    sget-object v0, Lcom/facebook/ads/redexgen/X/IY;->A07:Lcom/facebook/ads/redexgen/X/IY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A02:Lcom/facebook/ads/redexgen/X/IY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/IZ;->A02:Lcom/facebook/ads/redexgen/X/IZ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A03:Lcom/facebook/ads/redexgen/X/IZ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/IW;->A02:Lcom/facebook/ads/redexgen/X/IW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Lcom/facebook/ads/redexgen/X/IW;

    return-void
.end method


# virtual methods
.method public final A00()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/IW;->A03:Lcom/facebook/ads/redexgen/X/IW;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Lcom/facebook/ads/redexgen/X/IW;

    return-void
.end method

.method public final A01()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/IY;->A05:Lcom/facebook/ads/redexgen/X/IY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A02:Lcom/facebook/ads/redexgen/X/IY;

    return-void
.end method

.method public final A02()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/IY;->A06:Lcom/facebook/ads/redexgen/X/IY;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A02:Lcom/facebook/ads/redexgen/X/IY;

    return-void
.end method

.method public final A03()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/IZ;->A03:Lcom/facebook/ads/redexgen/X/IZ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A03:Lcom/facebook/ads/redexgen/X/IZ;

    return-void
.end method

.method public final A04()Z
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A02:Lcom/facebook/ads/redexgen/X/IY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/IY;->A07:Lcom/facebook/ads/redexgen/X/IY;

    if-eq v1, v0, :cond_33

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A02:Lcom/facebook/ads/redexgen/X/IY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/IY;->A03:Lcom/facebook/ads/redexgen/X/IY;

    if-eq v1, v0, :cond_33

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ia;->A02:Lcom/facebook/ads/redexgen/X/IY;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ia;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ia;->A04:[Ljava/lang/String;

    const-string v1, "MUDNUnKN31103IrO48BPEmRZSZgb6Srw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "6QfhYTpMJgBL3pE6aQQCkQeTlukRlAkO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/IY;->A06:Lcom/facebook/ads/redexgen/X/IY;

    if-ne v3, v0, :cond_35

    :cond_33
    const/4 v0, 0x1

    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method public final A05()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A02:Lcom/facebook/ads/redexgen/X/IY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/IY;->A07:Lcom/facebook/ads/redexgen/X/IY;

    if-eq v1, v0, :cond_c

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A02:Lcom/facebook/ads/redexgen/X/IY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/IY;->A03:Lcom/facebook/ads/redexgen/X/IY;

    if-ne v1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final A06()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A03:Lcom/facebook/ads/redexgen/X/IZ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/IZ;->A03:Lcom/facebook/ads/redexgen/X/IZ;

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final A07()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Lcom/facebook/ads/redexgen/X/IW;

    sget-object v0, Lcom/facebook/ads/redexgen/X/IW;->A03:Lcom/facebook/ads/redexgen/X/IW;

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
