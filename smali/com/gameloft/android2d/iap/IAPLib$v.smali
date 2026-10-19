###### Class com.gameloft.android2d.iap.IAPLib.v (com.gameloft.android2d.iap.IAPLib$v)
.class Lcom/gameloft/android2d/iap/IAPLib$v;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->redeemCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/gameloft/android2d/iap/billings/a;


# direct methods
.method constructor <init>(ZILcom/gameloft/android2d/iap/billings/a;)V
    .registers 4

    iput-boolean p1, p0, Lcom/gameloft/android2d/iap/IAPLib$v;->a:Z

    iput p2, p0, Lcom/gameloft/android2d/iap/IAPLib$v;->b:I

    iput-object p3, p0, Lcom/gameloft/android2d/iap/IAPLib$v;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$1100(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$1100(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const v0, 0x7f120157

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12014c

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120149

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    :cond_30
    const v0, 0x7f120156

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12014b

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120148

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    :goto_45
    iget-boolean v3, p0, Lcom/gameloft/android2d/iap/IAPLib$v;->a:Z

    const/4 v4, 0x7

    if-eqz v3, :cond_61

    iget v3, p0, Lcom/gameloft/android2d/iap/IAPLib$v;->b:I

    if-eq v3, v4, :cond_61

    const v0, 0x7f12046a

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\n"

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_61
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->access$1100(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_83

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->access$1100(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "th"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    const-string v3, "|"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_83
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_96

    const/16 v4, 0xa

    :cond_96
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    new-instance v7, Landroid/app/Dialog;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v8

    iget-object v8, v8, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v7, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0d00c5

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v5

    iget-object v5, v5, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->setContentView(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v5, 0x7f0a00cd

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v5

    iget-object v5, v5, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v7, 0x7f0a00ce

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v7

    iget-object v7, v7, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v8, 0x7f0a0427

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v8

    iget-object v8, v8, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v9, 0x7f0a0019

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v9

    iget-object v9, v9, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v10, 0x7f0a00cf

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/16 v10, 0x2bc

    if-le v9, v10, :cond_166

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_166

    mul-int/lit8 v9, v9, 0x46

    div-int/lit8 v9, v9, 0x64

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_166
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    new-instance v0, Lcom/gameloft/android2d/iap/IAPLib$v$a;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/IAPLib$v$a;-><init>(Lcom/gameloft/android2d/iap/IAPLib$v;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/gameloft/android2d/iap/IAPLib$v$b;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/IAPLib$v$b;-><init>(Lcom/gameloft/android2d/iap/IAPLib$v;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$v$c;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/IAPLib$v$c;-><init>(Lcom/gameloft/android2d/iap/IAPLib$v;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method
