###### Class com.kidoz.sdk.api.general.ViewVisibilityEventListener.AnonymousClass2 (com.kidoz.sdk.api.general.ViewVisibilityEventListener$2)
.class Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;
.super Ljava/lang/Object;
.source "ViewVisibilityEventListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initOnWindowAttachListener(Landroid/view/ViewTreeObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-ne v0, v1, :cond_2d

    :cond_14
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;->onViewBecameVisible(Z)V

    :cond_2d
    return-void
.end method

.method public onWindowDetached()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-ne v0, v1, :cond_2d

    :cond_14
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    sget-object v1, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$2;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;->onViewBecameVisible(Z)V

    :cond_2d
    return-void
.end method
