###### Class com.kidoz.sdk.api.general.BaseDialog (com.kidoz.sdk.api.general.BaseDialog)
.class public Lcom/kidoz/sdk/api/general/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/BaseDialog$DialogException;,
        Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCallingActivity:Landroid/app/Activity;

.field protected mCurrentOrientationState:I

.field private mDisplayDuration:J

.field private mIsAllowedToChangeOrientation:Z

.field protected mIsWaitingToOpen:Z

.field private mStaticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCurrentOrientationState:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kidoz/sdk/api/general/BaseDialog;->initDialog(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-class p2, Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->TAG:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCurrentOrientationState:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/kidoz/sdk/api/general/BaseDialog;->initDialog(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-class p2, Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->TAG:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCurrentOrientationState:I

    invoke-direct {p0, p1, p3}, Lcom/kidoz/sdk/api/general/BaseDialog;->initDialog(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/general/BaseDialog;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mIsAllowedToChangeOrientation:Z

    return p0
.end method

.method private initConfigurationHelperView(Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;-><init>(Lcom/kidoz/sdk/api/general/BaseDialog;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_12
    return-void
.end method

.method private initDialog(Landroid/content/Context;Z)V
    .registers 4

    if-eqz p1, :cond_19

    :try_start_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    goto :goto_19

    :cond_b
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_19

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    :goto_19
    iput-boolean p2, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mIsAllowedToChangeOrientation:Z

    new-instance p1, Lcom/kidoz/sdk/api/general/BaseDialog$1;

    invoke-direct {p1, p0}, Lcom/kidoz/sdk/api/general/BaseDialog$1;-><init>(Lcom/kidoz/sdk/api/general/BaseDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public closeDialog()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_d
    return-void
.end method

.method public getIsCanOpen()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getMyHandlerInstance()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mStaticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    if-nez v0, :cond_f

    new-instance v0, Lcom/kidoz/sdk/api/general/BaseDialog$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kidoz/sdk/api/general/BaseDialog$2;-><init>(Lcom/kidoz/sdk/api/general/BaseDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mStaticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    :cond_f
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mStaticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    return-object v0
.end method

.method public getTotalDisplayDuration()I
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mDisplayDuration:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mIsAllowedToChangeOrientation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->restoreUserOriginalOrientation()V

    :cond_b
    return-void
.end method

.method protected onDialogFocusChange(Z)V
    .registers 2

    return-void
.end method

.method protected onDialogOrientationChange(Z)V
    .registers 2

    return-void
.end method

.method protected onDialogVisibilityChange(I)V
    .registers 2

    return-void
.end method

.method protected onDialogWindowVisibilityChange(Z)V
    .registers 2

    return-void
.end method

.method public openDialog()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mDisplayDuration:J

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_4e
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mIsAllowedToChangeOrientation:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_79

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->saveUserOriginalOrientation()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_79
    return-void
.end method

.method public restoreUserOriginalOrientation()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCurrentOrientationState:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public saveUserOriginalOrientation()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCurrentOrientationState:I

    :cond_12
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->initConfigurationHelperView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->initConfigurationHelperView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/kidoz/sdk/api/general/BaseDialog$DialogException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kidoz/sdk/api/general/BaseDialog$DialogException;-><init>(Lcom/kidoz/sdk/api/general/BaseDialog;Lcom/kidoz/sdk/api/general/BaseDialog$1;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    move-exception v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to open dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.general.BaseDialog.AnonymousClass1 (com.kidoz.sdk.api.general.BaseDialog$1)
.class Lcom/kidoz/sdk/api/general/BaseDialog$1;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/BaseDialog;->initDialog(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/BaseDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/BaseDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$1;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$1;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    iget-object p1, p1, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$1;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->access$000(Lcom/kidoz/sdk/api/general/BaseDialog;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$1;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->restoreUserOriginalOrientation()V

    :cond_1a
    return-void
.end method

###### Class com.kidoz.sdk.api.general.BaseDialog.AnonymousClass2 (com.kidoz.sdk.api.general.BaseDialog$2)
.class Lcom/kidoz/sdk/api/general/BaseDialog$2;
.super Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/BaseDialog;->getMyHandlerInstance()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/BaseDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/BaseDialog;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$2;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-direct {p0, p2}, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

###### Class com.kidoz.sdk.api.general.BaseDialog.ConfigurationHelperView (com.kidoz.sdk.api.general.BaseDialog$ConfigurationHelperView)
.class public Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;
.super Landroid/view/View;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigurationHelperView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/BaseDialog;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/general/BaseDialog;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogOrientationChange(Z)V

    goto :goto_15

    :cond_f
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogOrientationChange(Z)V

    :goto_15
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-virtual {p1, p2}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogVisibilityChange(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogFocusChange(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogWindowVisibilityChange(Z)V

    goto :goto_19

    :cond_c
    const/16 v0, 0x8

    if-eq p1, v0, :cond_13

    const/4 v0, 0x4

    if-ne p1, v0, :cond_19

    :cond_13
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$ConfigurationHelperView;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/general/BaseDialog;->onDialogWindowVisibilityChange(Z)V

    :cond_19
    :goto_19
    return-void
.end method

###### Class com.kidoz.sdk.api.general.BaseDialog.DialogException (com.kidoz.sdk.api.general.BaseDialog$DialogException)
.class Lcom/kidoz/sdk/api/general/BaseDialog$DialogException;
.super Ljava/lang/Exception;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/BaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/BaseDialog;


# direct methods
.method private constructor <init>(Lcom/kidoz/sdk/api/general/BaseDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/BaseDialog$DialogException;->this$0:Lcom/kidoz/sdk/api/general/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kidoz/sdk/api/general/BaseDialog;Lcom/kidoz/sdk/api/general/BaseDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog$DialogException;-><init>(Lcom/kidoz/sdk/api/general/BaseDialog;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    const-string v0, "Don\'t use the show() method\nUse openDialog() instead!"

    return-object v0
.end method
