###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->initHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$100(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;Landroid/view/View;)V

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
