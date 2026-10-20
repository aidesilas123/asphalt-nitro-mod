###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$2$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->onAssetLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 5

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$200(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;->setDrawSign(Z)V

    goto :goto_1b

    :cond_f
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$300(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1b
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$500(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->val$helper:Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/panel_view/LocalAssetHelper;->legacyBtnCloseAsset:Ljava/io/File;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$400(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/custom_drawables/DefaultPanelDrawable;

    move-result-object v0

    new-instance v2, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$1;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;->loadAsset(Ljava/io/File;Landroid/graphics/drawable/Drawable;Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;)V

    return-void
.end method
