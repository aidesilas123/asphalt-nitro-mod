###### Class com.kidoz.sdk.api.general.ViewVisibilityEventListener.AnonymousClass3 (com.kidoz.sdk.api.general.ViewVisibilityEventListener$3)
.class Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;
.super Ljava/lang/Object;
.source "ViewVisibilityEventListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver;)V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .registers 3

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-eq p1, v0, :cond_16

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-ne p1, v0, :cond_5d

    :cond_16
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;->onViewBecameVisible(Z)V

    goto :goto_5d

    :cond_30
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->UNKNOWN:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-eq p1, v0, :cond_44

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$500(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    move-result-object p1

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->NOT_VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    if-ne p1, v0, :cond_5d

    :cond_44
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    sget-object v0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;->VISIBLE:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$502(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;)Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$ViewState;

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$3;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$600(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;->onViewBecameVisible(Z)V

    :cond_5d
    :goto_5d
    return-void
.end method
