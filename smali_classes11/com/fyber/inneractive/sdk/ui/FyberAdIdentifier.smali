###### Class com.fyber.inneractive.sdk.ui.FyberAdIdentifier (com.fyber.inneractive.sdk.ui.FyberAdIdentifier)
.class public Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;,
        Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$ClickListener;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/view/View;

.field public c:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;

.field public d:Z

.field public e:Landroid/animation/Animator;

.field public f:F

.field public g:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$ClickListener;

.field public h:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;->BOTTOM_LEFT:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->c:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->f:F

    return-void
.end method

.method public static a(Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;)Z
    .registers 2

    iget-object p0, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->c:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;

    sget-object v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;->TOP_LEFT:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;->BOTTOM_LEFT:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$Corner;

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static synthetic a(Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->d:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$ClickListener;)Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->g:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$ClickListener;

    return-object p0
.end method

.method public final a()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->d:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a:Landroid/widget/ImageView;

    sget v1, Lcom/fyber/inneractive/sdk/R$drawable;->fyber_info_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->e:Landroid/animation/Animator;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->e:Landroid/animation/Animator;

    :cond_1a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_aa

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->e:Landroid/animation/Animator;

    if-eqz p1, :cond_12

    goto/16 :goto_c2

    :cond_12
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x1c2

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a:Landroid/widget/ImageView;

    const/4 v5, 0x2

    new-array v6, v5, [I

    fill-array-data v6, :array_c4

    const-string v8, "imageAlpha"

    invoke-static {v3, v8, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v9, v5, [Landroid/animation/Animator;

    aput-object v2, v9, v7

    aput-object v3, v9, v4

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Lcom/fyber/inneractive/sdk/ui/c;

    invoke-direct {v2, p0, p1}, Lcom/fyber/inneractive/sdk/ui/c;-><init>(Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0xe1

    invoke-virtual {v6, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iput-object v6, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->e:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v10, v4, [F

    const/4 v11, 0x0

    aput v11, v10, v7

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v9, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a:Landroid/widget/ImageView;

    new-array v10, v5, [I

    fill-array-data v10, :array_cc

    invoke-static {v9, v8, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v10, v5, [Landroid/animation/Animator;

    aput-object v6, v10, v7

    aput-object v8, v10, v4

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v9, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v4, [F

    iget-boolean v8, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->d:Z

    if-eqz v8, :cond_8c

    iget v11, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->f:F

    :cond_8c
    aput v11, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v0, v5, [Landroid/animation/Animator;

    aput-object v2, v0, v7

    aput-object v9, v0, v4

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lcom/fyber/inneractive/sdk/ui/d;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/ui/d;-><init>(Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_c2

    :cond_aa
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_c2

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->g:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$ClickListener;

    if-eqz p1, :cond_c2

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->a()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier;->g:Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$ClickListener;

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/ui/FyberAdIdentifier$ClickListener;->a()V

    :cond_c2
    :goto_c2
    return-void

    nop

    :array_c4
    .array-data 4
        0xff
        0x19
    .end array-data

    :array_cc
    .array-data 4
        0x19
        0xff
    .end array-data
.end method
