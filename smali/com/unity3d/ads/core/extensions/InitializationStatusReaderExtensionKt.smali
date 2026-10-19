###### Class com.unity3d.ads.core.extensions.InitializationStatusReaderExtensionKt (com.unity3d.ads.core.extensions.InitializationStatusReaderExtensionKt)
.class public final Lcom/unity3d/ads/core/extensions/InitializationStatusReaderExtensionKt;
.super Ljava/lang/Object;
.source "InitializationStatusReaderExtension.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/extensions/InitializationStatusReaderExtensionKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "getInitializationStateString",
        "Lcom/unity3d/ads/core/data/model/InitializationStateString;",
        "Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getInitializationStateString(Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;)Lcom/unity3d/ads/core/data/model/InitializationStateString;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/ads/core/extensions/InitializationStatusReaderExtensionKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1c

    sget-object p0, Lcom/unity3d/ads/core/data/model/InitializationStateString;->initialized_failed:Lcom/unity3d/ads/core/data/model/InitializationStateString;

    goto :goto_2a

    :cond_1c
    new-instance p0, Lkotlin/k;

    invoke-direct {p0}, Lkotlin/k;-><init>()V

    throw p0

    :cond_22
    sget-object p0, Lcom/unity3d/ads/core/data/model/InitializationStateString;->initialized_successfully:Lcom/unity3d/ads/core/data/model/InitializationStateString;

    goto :goto_2a

    :cond_25
    sget-object p0, Lcom/unity3d/ads/core/data/model/InitializationStateString;->initializing:Lcom/unity3d/ads/core/data/model/InitializationStateString;

    goto :goto_2a

    :cond_28
    sget-object p0, Lcom/unity3d/ads/core/data/model/InitializationStateString;->not_initialized:Lcom/unity3d/ads/core/data/model/InitializationStateString;

    :goto_2a
    return-object p0
.end method

###### Class com.unity3d.ads.core.extensions.InitializationStatusReaderExtensionKt.WhenMappings (com.unity3d.ads.core.extensions.InitializationStatusReaderExtensionKt$WhenMappings)
.class public final synthetic Lcom/unity3d/ads/core/extensions/InitializationStatusReaderExtensionKt$WhenMappings;
.super Ljava/lang/Object;
.source "InitializationStatusReaderExtension.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/extensions/InitializationStatusReaderExtensionKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->values()[Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->NOT_INITIALIZED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZING:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_SUCCESSFULLY:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;->INITIALIZED_FAILED:Lcom/unity3d/services/core/properties/SdkProperties$InitializationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lcom/unity3d/ads/core/extensions/InitializationStatusReaderExtensionKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
