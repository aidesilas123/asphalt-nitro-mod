###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass3.AnonymousClass1.C03891.C03901 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$3$1$1$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1$1;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView$IOnAssetLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;->onAssetLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1$1;->this$3:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetLoaded(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1$1;->this$3:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$3;->val$listener:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IonPanelHandlePreparedListener;->onPanelPrepared()V

    :cond_d
    return-void
.end method
