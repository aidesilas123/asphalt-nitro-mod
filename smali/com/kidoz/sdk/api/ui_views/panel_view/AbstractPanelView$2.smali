###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.AnonymousClass2 (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$2)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$2;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initPanelHandleBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleClick()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->access$000(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelState:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    if-ne v1, v2, :cond_24

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    if-eqz v0, :cond_24

    const/4 v1, 0x0

    const-string v2, "lounchInterstitialOnOpen"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInterstitial:Lcom/kidoz/sdk/api/ui_views/interstitial/LocalIntrst;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/LocalIntrst;->loadAd()V

    :cond_24
    return-void
.end method
