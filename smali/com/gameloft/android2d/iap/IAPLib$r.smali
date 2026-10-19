###### Class com.gameloft.android2d.iap.IAPLib.r (com.gameloft.android2d.iap.IAPLib$r)
.class Lcom/gameloft/android2d/iap/IAPLib$r;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->SendRequest(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:J


# direct methods
.method constructor <init>(ILjava/lang/String;IJ)V
    .registers 6

    iput p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r;->a:I

    iput-object p2, p0, Lcom/gameloft/android2d/iap/IAPLib$r;->b:Ljava/lang/String;

    iput p3, p0, Lcom/gameloft/android2d/iap/IAPLib$r;->c:I

    iput-wide p4, p0, Lcom/gameloft/android2d/iap/IAPLib$r;->d:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    move-object/from16 v0, p0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->access$700(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->O()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->N()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v6

    invoke-static {v6}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gameloft/android2d/iap/utils/h;->C()Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Lcom/gameloft/android2d/iap/IAPLib$r;->a:I

    iget-object v8, v0, Lcom/gameloft/android2d/iap/IAPLib$r;->b:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/gameloft/android2d/iap/IAPLib;->GetBillingType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gameloft/android2d/iap/IAPLib;->isCCBilling(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f12030d

    invoke-static {v8}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    if-eqz v7, :cond_79

    const v3, 0x7f120483

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f12014a

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120146

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v5

    :cond_79
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$900()Z

    move-result v9

    const-string v10, ""

    if-eqz v9, :cond_9b

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->R()Ljava/lang/String;

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->S()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->Q()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->P()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v5

    move-object v5, v4

    move-object v4, v9

    move-object/from16 v9, v22

    goto :goto_9e

    :cond_9b
    move-object v11, v5

    move-object v5, v10

    move-object v9, v5

    :goto_9e
    const-string v12, "|"

    invoke-virtual {v3, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "line.separator"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "\\n"

    invoke-virtual {v3, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_424

    if-eqz v4, :cond_424

    if-nez v11, :cond_b8

    goto/16 :goto_424

    :cond_b8
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->access$1000(Lcom/gameloft/android2d/iap/utils/g;)I

    move-result v13

    iget v14, v0, Lcom/gameloft/android2d/iap/IAPLib$r;->c:I

    const v15, 0x7f0d00c6

    if-eqz v14, :cond_cc

    sget-boolean v14, Lcom/gameloft/android2d/iap/IAPLib;->H:Z

    if-eqz v14, :cond_cc

    if-ne v13, v15, :cond_cc

    const v13, 0x7f0d00c5

    :cond_cc
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e0

    const/16 v14, 0xa

    goto :goto_e1

    :cond_e0
    const/4 v14, 0x7

    :goto_e1
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v8

    const/4 v15, 0x0

    iput-object v15, v8, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v8

    new-instance v15, Landroid/app/Dialog;

    move-object/from16 v19, v3

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    invoke-direct {v15, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v15, v8, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/4 v15, 0x0

    invoke-direct {v8, v15}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3, v13}, Landroid/app/Dialog;->setContentView(I)V

    const v3, 0x7f0d00c7

    const v8, 0x7f0d00c8

    if-eq v13, v3, :cond_1d8

    if-ne v13, v8, :cond_12d

    goto/16 :goto_1d8

    :cond_12d
    if-eqz v7, :cond_1d3

    const v13, 0x7f0d00c9

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3, v13}, Landroid/app/Dialog;->setContentView(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v13, 0x7f0a0010

    invoke-virtual {v3, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v13, 0x7f0a000d

    invoke-virtual {v3, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v13

    iget-object v13, v13, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v8, 0x7f0a000e

    invoke-virtual {v13, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v13

    iget-object v13, v13, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v15, 0x7f0a000f

    invoke-virtual {v13, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    const v15, 0x7f12030f

    invoke-static {v15}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/gameloft/android2d/iap/utils/g;->O(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v21, v6

    const/16 v6, 0x8

    if-eqz v15, :cond_192

    const-string v15, "PayPal"

    invoke-virtual {v8, v15}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_196

    :cond_192
    const/4 v15, 0x1

    invoke-virtual {v8, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_196
    const v8, 0x7f12030c

    invoke-static {v8}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/gameloft/android2d/iap/utils/g;->O(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1ac

    const-string v8, "Amazon"

    invoke-virtual {v13, v8}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1af

    :cond_1ac
    invoke-virtual {v13, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_1af
    const v8, 0x7f12030d

    invoke-static {v8}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/gameloft/android2d/iap/utils/g;->O(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1ca

    const v6, 0x7f120183

    invoke-static {v6}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1cd

    :cond_1ca
    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_1cd
    move-object/from16 v3, v19

    const v13, 0x7f0d00c9

    goto :goto_204

    :cond_1d3
    move-object/from16 v21, v6

    move-object/from16 v3, v19

    goto :goto_204

    :cond_1d8
    :goto_1d8
    move-object/from16 v21, v6

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v6, 0x7f0a0428

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->L()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->K()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v8

    :goto_204
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v6

    iget-object v6, v6, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v6

    iget-object v6, v6, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v6

    iget-object v6, v6, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v8, 0x7f0a00cd

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v8

    iget-object v8, v8, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v15, 0x7f0a00ce

    invoke-virtual {v8, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v6, v15}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v8, v15}, Landroid/widget/Button;->setTextSize(F)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v15

    iget-object v15, v15, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    move-object/from16 v17, v3

    const v3, 0x7f0a0427

    invoke-virtual {v15, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v15

    iget-object v15, v15, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v0, 0x7f0a0019

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getLanguage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v5

    const-string v5, "AR"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v15, 0x5

    if-eqz v5, :cond_270

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setGravity(I)V

    :cond_270
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v15, "window"

    invoke-virtual {v5, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v15, 0x2bc

    move-object/from16 v20, v9

    if-le v5, v15, :cond_2bc

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v15, v9, :cond_2bc

    const v9, 0x7f0d00cc

    if-eq v13, v9, :cond_2b6

    const v9, 0x7f0d00c6

    if-eq v13, v9, :cond_2b6

    const v9, 0x7f0d00c8

    if-ne v13, v9, :cond_2af

    goto :goto_2b6

    :cond_2af
    mul-int/lit8 v5, v5, 0x46

    div-int/lit8 v5, v5, 0x64

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2bc

    :cond_2b6
    :goto_2b6
    mul-int/lit8 v5, v5, 0x5a

    div-int/lit8 v5, v5, 0x64

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2bc
    :goto_2bc
    const-string v0, "0"

    if-nez v7, :cond_2e5

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/g;->C()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e5

    const v5, 0x7f0d00c8

    if-eq v13, v5, :cond_2e5

    const v5, 0x7f0d00c7

    if-eq v13, v5, :cond_2e5

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->M()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e5

    invoke-virtual {v2, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e7

    :cond_2e5
    move-object/from16 v2, v17

    :goto_2e7
    const v5, 0x7f0d00cc

    if-eq v13, v5, :cond_2fb

    const v5, 0x7f0d00c6

    if-eq v13, v5, :cond_2fb

    const v5, 0x7f0d00c8

    if-ne v13, v5, :cond_2f7

    goto :goto_2fb

    :cond_2f7
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2ff

    :cond_2fb
    :goto_2fb
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_2ff
    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {v2, v1}, Lcom/gameloft/android2d/iap/IAPLib;->CorrectTextConfirmation(Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$900()Z

    move-result v2

    if-eqz v2, :cond_32c

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    invoke-static {v5, v4}, Lcom/gameloft/android2d/iap/IAPLib;->setTextForConfirmationScreenWP8(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32c
    new-instance v2, Lcom/gameloft/android2d/iap/IAPLib$r$a;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v7}, Lcom/gameloft/android2d/iap/IAPLib$r$a;-><init>(Lcom/gameloft/android2d/iap/IAPLib$r;Z)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/gameloft/android2d/iap/IAPLib$r$b;

    invoke-direct {v2, v3}, Lcom/gameloft/android2d/iap/IAPLib$r$b;-><init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v2

    iget-object v2, v2, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    new-instance v4, Lcom/gameloft/android2d/iap/IAPLib$r$c;

    invoke-direct {v4, v3}, Lcom/gameloft/android2d/iap/IAPLib$r$c;-><init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const v2, 0x7f0d00cc

    if-eq v13, v2, :cond_35b

    const v2, 0x7f0d00c6

    if-eq v13, v2, :cond_35b

    const v2, 0x7f0d00c8

    if-ne v13, v2, :cond_423

    :cond_35b
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v2

    iget-object v2, v2, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v4, 0x7f0a00cb

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/g;->C()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38e

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38e

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v4

    invoke-static {v4}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gameloft/android2d/iap/utils/h;->D()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38e

    move-object v6, v4

    goto :goto_390

    :cond_38e
    move-object/from16 v6, v21

    :goto_390
    invoke-virtual {v6, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v5, 0x0

    sput-boolean v5, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    new-instance v5, Lcom/gameloft/android2d/iap/IAPLib$r$d;

    invoke-direct {v5, v3}, Lcom/gameloft/android2d/iap/IAPLib$r$d;-><init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0d00c6

    if-eq v13, v5, :cond_3b5

    const v5, 0x7f0d00c8

    if-ne v13, v5, :cond_423

    :cond_3b5
    if-eqz v1, :cond_3d4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d4

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d4

    move-object v4, v0

    :cond_3d4
    invoke-virtual {v4, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v1

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v2, 0x7f0a0426

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x33

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    new-instance v0, Lcom/gameloft/android2d/iap/IAPLib$r$e;

    invoke-direct {v0, v3}, Lcom/gameloft/android2d/iap/IAPLib$r$e;-><init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_423
    return-void

    :cond_424
    :goto_424
    move-object v3, v0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$700(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/gameloft/android2d/iap/IAPLib;->SendRequestExec(ILjava/lang/String;J)V

    return-void
.end method
