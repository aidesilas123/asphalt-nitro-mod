###### Class com.kidoz.sdk.api.platforms.KidozPopupWindow.AnonymousClass2 (com.kidoz.sdk.api.platforms.KidozPopupWindow$2)
.class Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;
.super Ljava/lang/Object;
.source "KidozPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$700(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v1}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$100(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v2}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$200(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v3}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$300(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v4}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$400(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v4}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$500(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v4

    iget-object v5, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$2;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v5}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$600(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
