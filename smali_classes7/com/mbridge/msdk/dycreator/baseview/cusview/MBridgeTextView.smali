###### Class com.mbridge.msdk.dycreator.baseview.cusview.MBridgeTextView (com.mbridge.msdk.dycreator.baseview.cusview.MBridgeTextView)
.class public Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;
.super Landroid/widget/TextView;
.source "MBridgeTextView.java"


# instance fields
.field private a:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;->a:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;->a:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method

.method public setObjectAnimator(Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;->a:Landroid/animation/ObjectAnimator;

    return-void
.end method
