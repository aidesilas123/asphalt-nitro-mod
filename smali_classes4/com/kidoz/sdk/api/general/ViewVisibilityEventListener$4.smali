###### Class com.kidoz.sdk.api.general.ViewVisibilityEventListener.AnonymousClass4 (com.kidoz.sdk.api.general.ViewVisibilityEventListener$4)
.class Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;
.super Ljava/lang/Object;
.source "ViewVisibilityEventListener.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initialiseListeners()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$702(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$700(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$800(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/ViewTreeObserver;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-eq p1, v0, :cond_2a

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-ne p1, v0, :cond_43

    :cond_2a
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;->onViewBecameVisible(Z)V

    :cond_43
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-eq p1, v0, :cond_14

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-ne p1, v0, :cond_2d

    :cond_14
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;->onViewBecameVisible(Z)V

    :cond_2d
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$4;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$700(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$900(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/ViewTreeObserver;)V

    return-void
.end method
