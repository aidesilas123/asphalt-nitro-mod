###### Class com.kidoz.sdk.api.platforms.KidozPopupWindow.AnonymousClass1 (com.kidoz.sdk.api.platforms.KidozPopupWindow$1)
.class Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$1;
.super Ljava/lang/Object;
.source "KidozPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->addView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$1;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    iput-object p2, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$1;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$000(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
