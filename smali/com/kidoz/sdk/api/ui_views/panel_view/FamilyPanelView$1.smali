###### Class com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$1;
.super Ljava/lang/Object;
.source "FamilyPanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnOneItemActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->initInnerPanelView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$OneItemAction;)V
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$7;->$SwitchMap$com$kidoz$sdk$api$ui_views$one_item_view$OneItemFamilyView$OneItemAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    goto :goto_2c

    :cond_12
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->getStaticHandler()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_1d
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mGifView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->startGifAnim()V

    goto :goto_2c

    :cond_25
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mGifView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->stopGifAnim()V

    :goto_2c
    return-void
.end method
