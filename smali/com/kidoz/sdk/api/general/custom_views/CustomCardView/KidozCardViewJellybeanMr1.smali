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

###### Class com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewJellybeanMr1.AnonymousClass1 (com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewJellybeanMr1$1)
.class Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewJellybeanMr1$1;
.super Ljava/lang/Object;
.source "KidozCardViewJellybeanMr1.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozRoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewJellybeanMr1;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewJellybeanMr1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewJellybeanMr1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewJellybeanMr1$1;->this$0:Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardViewJellybeanMr1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .registers 5

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
