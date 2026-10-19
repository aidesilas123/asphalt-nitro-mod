###### Class com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial.AD_TYPE (com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial$AD_TYPE)
.class public final enum Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;
.super Ljava/lang/Enum;
.source "KidozInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AD_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

.field public static final enum INTERSTITIAL:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

.field public static final enum REWARDED_VIDEO:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    sget-object v1, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->INTERSTITIAL:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->REWARDED_VIDEO:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->INTERSTITIAL:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    new-instance v0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    const-string v1, "REWARDED_VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->REWARDED_VIDEO:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    invoke-static {}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->$values()[Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->$VALUES:[Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->$VALUES:[Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->value:I

    return v0
.end method
