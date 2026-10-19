###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog (com.kidoz.sdk.api.dialogs.ParentalLockDialog)
.class public Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;
.super Lcom/kidoz/sdk/api/general/BaseDialog;
.source "ParentalLockDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;,
        Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;
    }
.end annotation


# static fields
.field private static final DIALOG_BACKGROUND:I

.field private static final DIALOG_BACKGROUND_CORNER_RADIUS:I = 0x4

.field public static final PARENTAL_LOCK_ACTIVE_KEY:Ljava/lang/String; = "PARENTAL_LOCK_ACTIVE_KEY_BOOLEAN"

.field public static final PIVOT_X_FACTOR:F = 0.722f

.field public static final PIVOT_Y_FACTOR:F = 0.04f


# instance fields
.field private final NUMBER_OF_COLUMNS:I

.field private final TAG:Ljava/lang/String;

.field private mAnimatableView:Landroid/view/View;

.field private mCounter:I

.field private mDialogMessage:Landroid/widget/TextView;

.field private mDialogTitleTextView:Landroid/widget/TextView;

.field private mEquationContainerView:Landroid/widget/LinearLayout;

.field private mEquationTextView:Landroid/widget/TextView;

.field private mFeedbackMessage:Landroid/widget/TextView;

.field private mFeedbackMessageAction:Landroid/widget/TextView;

.field private mFeedbackMessageContainer:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mInnerViewContainer:Landroid/widget/RelativeLayout;

.field private mIsGateToGooglePlay:Z

.field private mIsLockActive:Z

.field private mIsLockChangeSuccessfully:Z

.field private mParentLockDialogListener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;

.field private mPopLocation:[I

.field private mResTextView1:Landroid/widget/TextView;

.field private mResTextView2:Landroid/widget/TextView;

.field private mResTextView3:Landroid/widget/TextView;

.field private mResTextView4:Landroid/widget/TextView;

.field private mRightResultIndex:I

.field private mRootView:Landroid/view/View;

.field private mSize:I

.field private random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "#0fcaf7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->DIALOG_BACKGROUND:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z[I)V
    .registers 5

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Lcom/kidoz/sdk/api/general/BaseDialog;-><init>(Landroid/content/Context;I)V

    const-class p1, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->TAG:Ljava/lang/String;

    const/4 p1, 0x4

    iput p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->NUMBER_OF_COLUMNS:I

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->random:Ljava/util/Random;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iput-object p3, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mPopLocation:[I

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mIsGateToGooglePlay:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->prepareDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mIsLockChangeSuccessfully:Z

    return p0
.end method

.method static synthetic access$102(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mIsLockChangeSuccessfully:Z

    return p1
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->animateFeedBackMessageBack()V

    return-void
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->checkResolutionResult(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)[I
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mPopLocation:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mAnimatableView:Landroid/view/View;

    return-object p0
.end method

.method private animateFeedBackMessageBack()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mFeedbackMessageContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mEquationContainerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private animateFeedBackMessageError()V
    .registers 12

    iget v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mCounter:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/kidoz/events/EventManager;->b:I

    iget v10, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mCounter:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "Parental Lock"

    const-string v8, "Incorrect Password"

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/kidoz/events/EventManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "parentalLockDialogWrongSelectionTryAgain"

    invoke-static {v0, v2}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->getLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "parentalLockDialogWrongSelection"

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->getLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mFeedbackMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mFeedbackMessageAction:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mFeedbackMessageContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mEquationContainerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private animateFeedBackMessageSuccess(Z)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->closeParentalDialog()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SdkToast;->getSdkInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/general/utils/SdkToast;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parentalLockDialogLockDeactivatedTitle"

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->getLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/kidoz/sdk/api/general/utils/SdkToast;->showToast(Ljava/lang/String;I)V

    goto :goto_34

    :cond_1c
    invoke-virtual {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->closeParentalDialog()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SdkToast;->getSdkInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/general/utils/SdkToast;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parentalLockDialogLockActivatedTitle"

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->getLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/kidoz/sdk/api/general/utils/SdkToast;->showToast(Ljava/lang/String;I)V

    :goto_34
    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mFeedbackMessageContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mInnerViewContainer:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private checkResolutionResult(I)V
    .registers 12

    :try_start_0
    iget v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRightResultIndex:I

    if-ne p1, v0, :cond_70

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mIsLockChangeSuccessfully:Z

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mIsGateToGooglePlay:Z

    if-ne v0, p1, :cond_f

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->closeParentalDialog()V

    goto :goto_49

    :cond_f
    iget-boolean v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mIsLockActive:Z

    if-ne v0, p1, :cond_1c

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->saveParentalLockState(Landroid/content/Context;Z)V

    goto :goto_23

    :cond_1c
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->saveParentalLockState(Landroid/content/Context;Z)V

    :goto_23
    iget-boolean v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mIsLockActive:Z

    invoke-direct {p0, v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->animateFeedBackMessageSuccess(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mParentLockDialogListener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;

    if-eqz v0, :cond_49

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;->onPasswordEntered(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/kidoz/events/EventManager;->b:I

    const-string v6, "Parental Lock"

    const-string v7, "Correct Password"

    const/4 v8, 0x0

    iget v9, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mCounter:I

    invoke-virtual/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mParentLockDialogListener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;

    if-eqz v0, :cond_8f

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;->onPasswordEntered(Z)V

    iget v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mCounter:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mCounter:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/kidoz/events/EventManager;->b:I

    const-string v5, "Parental Lock"

    const-string v6, "Correct Password"

    const/4 v7, 0x0

    iget v8, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mCounter:I

    invoke-virtual/range {v0 .. v8}, Lcom/kidoz/events/EventManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_8f

    :cond_70
    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->animateFeedBackMessageError()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_73} :catch_74

    goto :goto_8f

    :catch_74
    move-exception p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to handle lock icon click: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    :goto_8f
    return-void
.end method

.method private generateQuestionAnswerSequence()V
    .registers 12

    const/16 v0, 0x14

    new-array v0, v0, [I

    const/4 v1, 0x4

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->random:Ljava/util/Random;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iget-object v5, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->random:Ljava/util/Random;

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    iget-object v5, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->random:Ljava/util/Random;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iput v5, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRightResultIndex:I

    add-int v7, v3, v4

    aput v7, v2, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_24
    const/4 v8, 0x1

    if-ge v7, v1, :cond_4a

    iget v9, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRightResultIndex:I

    if-eq v7, v9, :cond_47

    :cond_2b
    iget-object v9, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->random:Ljava/util/Random;

    const/16 v10, 0x13

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    aput v9, v2, v7

    aget v9, v2, v7

    aget v9, v0, v9

    if-nez v9, :cond_2b

    aget v9, v2, v7

    iget v10, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRightResultIndex:I

    aget v10, v2, v10

    if-eq v9, v10, :cond_2b

    aget v9, v2, v7

    aput v8, v0, v9

    :cond_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    :cond_4a
    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mEquationTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " + "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_6e
    if-ge v0, v1, :cond_d8

    if-eqz v0, :cond_bf

    if-eq v0, v8, :cond_a8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_91

    if-eq v0, v6, :cond_7a

    goto :goto_d5

    :cond_7a
    iget-object v3, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mResTextView4:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d5

    :cond_91
    iget-object v4, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mResTextView3:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d5

    :cond_a8
    iget-object v3, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mResTextView2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d5

    :cond_bf
    iget-object v3, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mResTextView1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d5
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    :cond_d8
    return-void
.end method

.method private initDialog()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initDialogBackgroundView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initTitle()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initDialogWidth()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initExitButton()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initQuestionAnswerView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initMessageTextView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initFeedbackMessageView()V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->prepareDialog()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mCounter:I

    return-void
.end method

.method private initDialogBackgroundView()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->PARENTAL_CARDVIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->dpTOpx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->setRadius(F)V

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->DIALOG_BACKGROUND:I

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;->setCardBackgroundColor(I)V

    return-void
.end method

.method private initDialogWidth()V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->ANIMATABLE_VIEW:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mAnimatableView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getIsTablet(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mAnimatableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_56

    :cond_33
    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mAnimatableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_56
    return-void
.end method

.method private initExitButton()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->EXIT_BUTTON_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initFeedbackMessageView()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->FEEDBACK_MESSAGE_CONTAINER_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mFeedbackMessageContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mFeedbackMessageContainer:Landroid/view/View;

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->FEEDBACK_MESSAGE_TEXT_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mFeedbackMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->FEEDBACK_ACTION_TEXT_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mFeedbackMessageAction:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->INNER_VIEW_CONTAINER_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mInnerViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mInnerViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mSize:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    const v2, 0x3feccccd    # 1.85f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private initMessageTextView()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->PARENTAL_LOCK_DIALOG_MESSAGE_TEXTVIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mDialogMessage:Landroid/widget/TextView;

    return-void
.end method

.method private initQuestionAnswerView()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->EQUATION_VIEW_CONTAINER_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mEquationContainerView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->EQUATION_TEXT_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mEquationTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->ANSWER_1_TEXT_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mResTextView1:Landroid/widget/TextView;

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->ANSWER_2_TEXT_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mResTextView2:Landroid/widget/TextView;

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->ANSWER_3_TEXT_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mResTextView3:Landroid/widget/TextView;

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->ANSWER_4_TEXT_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mResTextView4:Landroid/widget/TextView;

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTitle()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    sget v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->PARENTAL_DIALOG_TITLE_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mDialogTitleTextView:Landroid/widget/TextView;

    return-void
.end method

.method public static isLockStateChanged(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "PARENTAL_LOCK_ACTIVE_KEY_BOOLEAN"

    invoke-static {p0, v0}, Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;->hasBooleanSharedPreferencesData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isParentalLockActive(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "PARENTAL_LOCK_ACTIVE_KEY_BOOLEAN"

    invoke-static {p0, v0}, Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;->loadBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private prepareDialog()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mIsLockActive:Z

    iget-boolean v1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mIsGateToGooglePlay:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mDialogTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "parentalLockDialogTitleForGooglePlay"

    invoke-static {v1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->getLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_40

    :cond_1f
    if-ne v0, v2, :cond_31

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mDialogTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "parentalLockDialogTitleDeActivate"

    invoke-static {v1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->getLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_40

    :cond_31
    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mDialogTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "parentalLockDialogTitleActivate"

    invoke-static {v1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->getLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_40
    iget-boolean v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mIsGateToGooglePlay:Z

    if-ne v0, v2, :cond_54

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mDialogMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parentalLockDialogMessageGooglePlayGateNew"

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->getLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_93

    :cond_54
    iget-boolean v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mIsLockActive:Z

    if-ne v0, v2, :cond_68

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mDialogMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parentalLockDialogMessageParentalLockDeactivationNew"

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->getLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_93

    :cond_68
    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mDialogMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parentalLockDialogMessageParentalLockActivationNew"

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->getLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_77} :catch_78

    goto :goto_93

    :catch_78
    move-exception v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to prepareDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_93
    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->generateQuestionAnswerSequence()V

    return-void
.end method

.method public static saveParentalLockState(Landroid/content/Context;Z)V
    .registers 3

    const-string v0, "PARENTAL_LOCK_ACTIVE_KEY_BOOLEAN"

    invoke-static {p0, v0, p1}, Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;->saveBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static startParentalDialog(Landroid/content/Context;ZFFLcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    float-to-int p2, v2

    const/4 v2, 0x0

    aput p2, v0, v2

    invoke-static {p0, v2}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p3

    float-to-int p2, p2

    aput p2, v0, v1

    new-instance p2, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-direct {p2, p0, p1, v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;-><init>(Landroid/content/Context;Z[I)V

    new-instance p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$8;

    invoke-direct {p0, p4}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$8;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)V

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$9;

    invoke-direct {p0, p4}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$9;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)V

    invoke-virtual {p2, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->setParentLockDialogListener(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;)V

    invoke-virtual {p2}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->show()V

    return-object p2
.end method


# virtual methods
.method public closeDialog()V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/kidoz/sdk/api/general/WidgetEventMessage;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->PARENTAL_DIALOG_CLOSE:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    sget-object v2, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-direct {v0, v1, v2}, Lcom/kidoz/sdk/api/general/WidgetEventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/enums/WidgetType;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_2c

    :catch_11
    move-exception v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to send parental dialog close message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    invoke-super {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->closeDialog()V

    return-void
.end method

.method public closeParentalDialog()V
    .registers 11

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mParentLockDialogListener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;->onPasswordEntered(Z)V

    :cond_e
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/BaseDialog;->mCallingActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/kidoz/events/EventManager;->b:I

    const/4 v8, 0x0

    iget v9, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mCounter:I

    const-string v6, "Parental Lock"

    const-string v7, "Dialog Dismiss"

    invoke-virtual/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->closeDialog()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mSize:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getIsTablet(Landroid/content/Context;)Z

    move-result p1

    if-ne p1, v0, :cond_30

    const p1, 0x3f4ccccd    # 0.8f

    iget v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mSize:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mSize:I

    :cond_30
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mSize:I

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockLayoutGenerator;->generateParentalLockView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/BaseDialog;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initDialog()V

    return-void
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method public setParentLockDialogListener(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mParentLockDialogListener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;

    return-void
.end method

.method public show()V
    .registers 11

    invoke-super {p0}, Lcom/kidoz/sdk/api/general/BaseDialog;->openDialog()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/kidoz/events/EventManager;->b:I

    iget v9, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mCounter:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v6, "Parental Lock"

    const-string v7, "Dialog Show"

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mAnimatableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->mAnimatableView:Landroid/view/View;

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->setOnGlobalLayoutFinishListener(Landroid/view/View;Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass1 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$1)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initFeedbackMessageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$000(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$100(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$102(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;Z)Z

    :cond_14
    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$1;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$200(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass2 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$2)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initExitButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2$1;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;)V

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/utils/SdkAnimationsUtils;->animateClick(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$2$1)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2$1;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->closeParentalDialog()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass3 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$3)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initQuestionAnswerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3$1;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;)V

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playClickAnimation(Landroid/view/View;Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass3.AnonymousClass1 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$3$1)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3$1;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickFinished()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$3;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$300(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;I)V

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass4 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$4)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initQuestionAnswerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4$1;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4;)V

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playClickAnimation(Landroid/view/View;Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass4.AnonymousClass1 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$4$1)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4$1;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickFinished()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$4;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$300(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;I)V

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass5 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$5)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initQuestionAnswerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5$1;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5;)V

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playClickAnimation(Landroid/view/View;Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass5.AnonymousClass1 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$5$1)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5$1;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickFinished()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5;

    iget-object v0, v0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$5;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$300(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;I)V

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass6 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$6)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->initQuestionAnswerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6$1;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;)V

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playClickAnimation(Landroid/view/View;Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;)Landroid/animation/AnimatorSet;

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass6.AnonymousClass1 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$6$1)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6$1;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickFinished()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$6;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$300(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;I)V

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass7 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$7)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutFinished()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$400(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)[I

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$500(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {v1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$400(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)[I

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7$1;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;)V

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playPopInFromRightTop(Landroid/view/View;[ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    goto :goto_27

    :cond_1d
    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$500(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_27
    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass7.AnonymousClass1 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$7$1)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7$1;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;->onLayoutFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;

    iget-object p1, p1, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$500(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass8 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$8)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$8;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->startParentalDialog(Landroid/content/Context;ZFFLcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$8;->val$listener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$8;->val$listener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;

    invoke-interface {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;->onCloseDialog()V

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass9 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$9)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$9;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->startParentalDialog(Landroid/content/Context;ZFFLcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$9;->val$listener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPasswordEntered(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$9;->val$listener:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;->onInputPass(Z)V

    return-void
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.IOnParentalDialogListener (com.kidoz.sdk.api.dialogs.ParentalLockDialog$IOnParentalDialogListener)
.class public interface abstract Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnParentalDialogListener"
.end annotation


# virtual methods
.method public abstract onCloseDialog()V
.end method

.method public abstract onInputPass(Z)V
.end method

###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.ParentLockDialogListener (com.kidoz.sdk.api.dialogs.ParentalLockDialog$ParentLockDialogListener)
.class public interface abstract Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$ParentLockDialogListener;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParentLockDialogListener"
.end annotation


# virtual methods
.method public abstract onPasswordEntered(Z)V
.end method
