###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.AnonymousClass10.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$10$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10$1;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$10;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->collapsePanelView()V

    return-void
.end method
