###### Class com.kidoz.sdk.api.PanelView.AnonymousClass1 (com.kidoz.sdk.api.PanelView$1)
.class Lcom/kidoz/sdk/api/PanelView$1;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/interfaces/KidozPlayerEventHelper$IPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/PanelView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/PanelView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/PanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView$1;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$1;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$000(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/interfaces/KidozPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$1;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$000(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/interfaces/KidozPlayerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/interfaces/KidozPlayerListener;->onPlayerClose()V

    :cond_11
    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$1;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$100(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$1;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$100(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    move-result-object v0

    instance-of v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$1;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$100(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    move-result-object v0

    check-cast v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->resumeAction(Z)V

    :cond_2e
    return-void
.end method

.method public onOpen(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$1;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$000(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/interfaces/KidozPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$1;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$000(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/interfaces/KidozPlayerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/interfaces/KidozPlayerListener;->onPlayerOpen()V

    :cond_11
    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$1;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$100(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$1;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$100(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    move-result-object v0

    instance-of v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$1;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$100(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    move-result-object v0

    check-cast v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->pauseAction(Z)V

    :cond_2e
    return-void
.end method
