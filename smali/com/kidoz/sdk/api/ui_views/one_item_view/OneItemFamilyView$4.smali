###### Class com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.AnonymousClass4 (com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView$4)
.class Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$4;
.super Ljava/lang/Object;
.source "OneItemFamilyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->initMaximizeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$4$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$4$1;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$4;)V

    const/16 v1, 0x46

    invoke-static {p1, v1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method
