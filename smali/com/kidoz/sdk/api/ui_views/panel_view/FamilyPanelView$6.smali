###### Class com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.AnonymousClass6 (com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView$6)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$6;
.super Ljava/lang/Object;
.source "FamilyPanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->loadAnimation()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 6

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    iget-object v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mGifView:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mWidgetProperties:Lorg/json/JSONObject;

    const-string v2, "animUrl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    :cond_1c
    return-void
.end method
