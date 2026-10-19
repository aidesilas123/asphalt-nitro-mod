###### Class com.kidoz.sdk.api.general.ViewVisibilityEventListener.AnonymousClass1 (com.kidoz.sdk.api.general.ViewVisibilityEventListener$1)
.class Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;
.super Ljava/lang/Object;
.source "ViewVisibilityEventListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->initOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;)V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$100(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-object v5, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v5}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-eq v4, v5, :cond_2c

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2c

    iget-object v4, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v4}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$200(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$000(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$300(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_71
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$400(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewCoveredListener;

    move-result-object v0

    if-eqz v0, :cond_8f

    if-eqz v2, :cond_86

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$400(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewCoveredListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/general/IViewCoveredListener;->onViewCovered(Z)V

    goto :goto_8f

    :cond_86
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener$1;->this$0:Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;->access$400(Lcom/kidoz/sdk/api/general/ViewVisibilityEventListener;)Lcom/kidoz/sdk/api/general/IViewCoveredListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/general/IViewCoveredListener;->onViewCovered(Z)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8f} :catch_8f

    :catch_8f
    :cond_8f
    :goto_8f
    return-void
.end method
