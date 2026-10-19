###### Class com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewJellybeanMr1 (com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewJellybeanMr1)
.class Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewJellybeanMr1;
.super Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;
.source "KidozCardViewJellybeanMr1.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewEclairMr1;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .registers 2

    new-instance v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewJellybeanMr1$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewJellybeanMr1$1;-><init>(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewJellybeanMr1;)V

    sput-object v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow;->sRoundRectHelper:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow$RoundRectHelper;

    return-void
.end method
