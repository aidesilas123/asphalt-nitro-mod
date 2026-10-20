###### Class com.facebook.ads.redexgen.X.PW (com.facebook.ads.redexgen.X.PW)
.class public final synthetic Lcom/facebook/ads/redexgen/X/PW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Re;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic A00:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/ads/redexgen/X/J7;->values()[Lcom/facebook/ads/redexgen/X/J7;

    move-result-object v0

    array-length v0, v0

    new-array v2, v0, [I

    sput-object v2, Lcom/facebook/ads/redexgen/X/PW;->A00:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/redexgen/X/J7;->A0A:Lcom/facebook/ads/redexgen/X/J7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J7;->ordinal()I

    move-result v1

    const/4 v0, 0x1

    aput v0, v2, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v2, Lcom/facebook/ads/redexgen/X/PW;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/J7;->A06:Lcom/facebook/ads/redexgen/X/J7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J7;->ordinal()I

    move-result v1

    const/4 v0, 0x2

    aput v0, v2, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/PW;->A00:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/J7;->A07:Lcom/facebook/ads/redexgen/X/J7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J7;->ordinal()I

    move-result v1

    const/4 v0, 0x3

    aput v0, v2, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
