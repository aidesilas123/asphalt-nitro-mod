###### Class com.kidoz.sdk.api.general.utils.Utils.AnonymousClass1 (com.kidoz.sdk.api.general.utils.Utils$1)
.class Lcom/kidoz/sdk/api/general/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/utils/Utils;->setOnGlobalLayoutFinishListener(Landroid/view/View;Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$layoutFinishedListener:Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/utils/Utils$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/utils/Utils$1;->val$layoutFinishedListener:Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/Utils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_19

    :cond_10
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/Utils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_19
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/Utils$1;->val$layoutFinishedListener:Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;->onLayoutFinished()V

    :cond_20
    return-void
.end method
