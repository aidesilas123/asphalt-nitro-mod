###### Class com.kidoz.sdk.api.platforms.KidozPopupWindow.AnonymousClass3 (com.kidoz.sdk.api.platforms.KidozPopupWindow$3)
.class Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$3;
.super Ljava/lang/Object;
.source "KidozPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->hide()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$3;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$3;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$800(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow$3;->this$0:Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;

    invoke-static {v0}, Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;->access$700(Lcom/kidoz/sdk/api/platforms/KidozPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
