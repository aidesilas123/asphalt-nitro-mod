###### Class com.facebook.ads.redexgen.X.RN (com.facebook.ads.redexgen.X.RN)
.class public final synthetic Lcom/facebook/ads/redexgen/X/RN;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic A00:[I

.field public static final synthetic A01:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RG;->values()[Lcom/facebook/ads/redexgen/X/RG;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    sput-object v1, Lcom/facebook/ads/redexgen/X/RN;->A00:[I

    const/4 v3, 0x1

    :try_start_a
    sget-object v0, Lcom/facebook/ads/redexgen/X/RG;->A04:Lcom/facebook/ads/redexgen/X/RG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RG;->ordinal()I

    move-result v0

    aput v3, v1, v0
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v2, 0x2

    :try_start_13
    sget-object v1, Lcom/facebook/ads/redexgen/X/RN;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/RG;->A05:Lcom/facebook/ads/redexgen/X/RG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RG;->ordinal()I

    move-result v0

    aput v2, v1, v0
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    invoke-static {}, Lcom/facebook/ads/redexgen/X/RT;->values()[Lcom/facebook/ads/redexgen/X/RT;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [I

    sput-object v1, Lcom/facebook/ads/redexgen/X/RN;->A01:[I

    :try_start_26
    sget-object v0, Lcom/facebook/ads/redexgen/X/RT;->A03:Lcom/facebook/ads/redexgen/X/RT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RT;->ordinal()I

    move-result v0

    aput v3, v1, v0
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/facebook/ads/redexgen/X/RN;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/RT;->A04:Lcom/facebook/ads/redexgen/X/RT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RT;->ordinal()I

    move-result v0

    aput v2, v1, v0
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method
