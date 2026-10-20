###### Class com.kidoz.sdk.api.ads.banner.KidozBannerView.Position (com.kidoz.sdk.api.ads.banner.KidozBannerView$Position)
.class public final enum Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;
.super Ljava/lang/Enum;
.source "KidozBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum BOTTOM_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum BOTTOM_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum BOTTOM_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum TOP_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum TOP_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

.field public static final enum TOP_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "TOP_CENTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->TOP_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_LEFT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_RIGHT:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->BOTTOM_CENTER:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-static {}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->$values()[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->$VALUES:[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->$VALUES:[Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/ads/banner/KidozBannerView$Position;

    return-object v0
.end method
