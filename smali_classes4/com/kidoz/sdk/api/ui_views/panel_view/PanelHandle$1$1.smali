###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass1.RunnableC03861 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$1$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$1$1;->val$v:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$000(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;Landroid/view/View;)V

    return-void
.end method
