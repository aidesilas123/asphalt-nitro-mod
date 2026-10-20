###### Class com.unity3d.ads.adplayer.WebViewAdPlayer.WhenMappings (com.unity3d.ads.adplayer.WebViewAdPlayer$WhenMappings)
.class public final synthetic Lcom/unity3d/ads/adplayer/WebViewAdPlayer$WhenMappings;
.super Ljava/lang/Object;
.source "WebViewAdPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/adplayer/WebViewAdPlayer;
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

    invoke-static {}, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->values()[Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->STARTED:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->CLICKED:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->COMPLETED:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->FAILED:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->CANCEL_SHOW_TIMEOUT:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->REQUEST_GET:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->REQUEST_POST:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;->REQUEST_HEAD:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    sput-object v0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
