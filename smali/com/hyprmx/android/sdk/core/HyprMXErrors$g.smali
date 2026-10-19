###### Class com.hyprmx.android.sdk.core.HyprMXErrors.g (com.hyprmx.android.sdk.core.HyprMXErrors$g)
.class public final Lcom/hyprmx/android/sdk/core/HyprMXErrors$g;
.super Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/core/HyprMXErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "PLACEMENT_NAME_NOT_SET"

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/hyprmx/android/sdk/core/HyprMXErrors;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Please set the placement name before calling loadAd on HyprMXBannerView"

    return-object v0
.end method
