###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass3.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$3$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->onAssetLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 5

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$500(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->closeBtnAssetFrg:Ljava/io/File;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method
