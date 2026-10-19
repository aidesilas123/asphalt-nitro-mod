###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass3 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$3)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->loadHandleAssets(Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

.field final synthetic val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

.field final synthetic val$listener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    iput-object p3, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->val$listener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 5

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$600(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setDrawSign(Z)V

    goto :goto_17

    :cond_d
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$600(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setDrawSign(Z)V

    :goto_17
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$900(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->openBtnAssetBg:Ljava/io/File;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$600(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method
