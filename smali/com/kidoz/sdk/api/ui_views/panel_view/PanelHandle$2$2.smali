###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass2.C03882 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$2$2)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$2;
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$2;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2$2;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$2;->val$listener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;->onPanelPrepared()V

    :cond_9
    return-void
.end method
