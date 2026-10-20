###### Class com.mbridge.msdk.dycreator.e.a (com.mbridge.msdk.dycreator.e.a)
.class public final Lcom/mbridge/msdk/dycreator/e/a;
.super Ljava/lang/Object;
.source "AttributeUtil.java"


# direct methods
.method public static a(Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "AttributeUtil"

    if-eqz v1, :cond_6ea

    if-nez v2, :cond_c

    goto/16 :goto_6ea

    :cond_c
    :try_start_c
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/a/b;->c()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_6e1

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_6e1

    :cond_1e
    invoke-interface/range {p1 .. p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_27
    if-ge v7, v5, :cond_6ea

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/mbridge/msdk/dycreator/a/c;

    if-nez v12, :cond_3d

    move-object/from16 v18, v4

    move/from16 v19, v5

    const/4 v4, 0x0

    goto/16 :goto_6d9

    :cond_3d
    sget-object v0, Lcom/mbridge/msdk/dycreator/e/a$1;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v0, v0, v13
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_45} :catch_6e2

    const-string v13, "drawable"

    const-string v6, "@drawable/"

    const-string v15, "@+id/"

    const-string v16, ""

    packed-switch v0, :pswitch_data_6ec

    goto :goto_b0

    :pswitch_51
    :try_start_51
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v0

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/mbridge/msdk/dycreator/a/b;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v8, v11, v0, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b0

    :pswitch_61
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v0

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/mbridge/msdk/dycreator/a/b;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0, v11, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b0

    :pswitch_71
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v0

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mbridge/msdk/dycreator/a/b;->b(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v8, v11, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b0

    :pswitch_81
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v0

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mbridge/msdk/dycreator/a/b;->b(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8, v11, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b0

    :pswitch_91
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v0

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/mbridge/msdk/dycreator/a/b;->b(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v8, v11, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b0

    :pswitch_a1
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v0

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/mbridge/msdk/dycreator/a/b;->b(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v8, v11, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    :cond_b0
    :goto_b0
    move-object/from16 v18, v4

    :cond_b2
    :goto_b2
    move/from16 v19, v5

    goto/16 :goto_1f4

    :pswitch_b6
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v0

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/mbridge/msdk/dycreator/a/b;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b0

    :pswitch_c6
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_ca} :catch_6e2

    :try_start_ca
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b0

    sget-object v14, Lcom/mbridge/msdk/dycreator/e/b;->a:Ljava/util/HashMap;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d2} :catch_ec

    move-object/from16 v18, v4

    const/16 v4, 0x8

    :try_start_d6
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b2

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_e9} :catch_ea

    goto :goto_b2

    :catch_ea
    move-exception v0

    goto :goto_ef

    :catch_ec
    move-exception v0

    move-object/from16 v18, v4

    :goto_ef
    :try_start_ef
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    :pswitch_f7
    move-object/from16 v18, v4

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fd} :catch_6e2

    :try_start_fd
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b2

    const-string v4, "invisible"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_110

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b2

    :cond_110
    const-string v4, "gone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_11d} :catch_11e

    goto :goto_b2

    :catch_11e
    move-exception v0

    :try_start_11f
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b2

    :pswitch_127
    move-object/from16 v18, v4

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_12d} :catch_6e2

    :try_start_12d
    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_133} :catch_1af

    if-eqz v4, :cond_16a

    :try_start_135
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_13b} :catch_13c

    goto :goto_13d

    :catch_13c
    const/4 v4, 0x0

    :goto_13d
    if-eqz v4, :cond_146

    :try_start_13f
    array-length v14, v4
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_140} :catch_1af

    move/from16 v19, v5

    const/4 v5, 0x2

    if-gt v14, v5, :cond_148

    goto :goto_15d

    :cond_146
    move/from16 v19, v5

    :cond_148
    if-eqz v4, :cond_1f4

    :try_start_14a
    array-length v5, v4

    const/4 v14, 0x3

    if-ne v5, v14, :cond_1f4

    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/dycreator/a/b;->a([Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    if-eqz v4, :cond_15d

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1f4

    :cond_15d
    :goto_15d
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/dycreator/a/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1f4

    :cond_16a
    move/from16 v19, v5

    const-string v4, "@color/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_181

    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/dycreator/a/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1f4

    :cond_181
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f4

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v13, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_1ac} :catch_1ad

    goto :goto_1f4

    :catch_1ad
    move-exception v0

    goto :goto_1b2

    :catch_1af
    move-exception v0

    move/from16 v19, v5

    :goto_1b2
    :try_start_1b2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f4

    :pswitch_1ba
    move-object/from16 v18, v4

    move/from16 v19, v5

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1c2} :catch_6e2

    :try_start_1c2
    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ce

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1de

    :cond_1ce
    const-string v4, "@id/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1dc

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1de

    :cond_1dc
    move-object/from16 v0, v16

    :goto_1de
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1eb} :catch_1ec

    goto :goto_1f4

    :catch_1ec
    move-exception v0

    :try_start_1ed
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f4
    :goto_1f4
    instance-of v0, v1, Landroid/widget/EditText;

    if-eqz v0, :cond_1fd

    move/from16 v17, v8

    :cond_1fa
    :goto_1fa
    const/4 v4, 0x0

    goto/16 :goto_6d7

    :cond_1fd
    instance-of v0, v1, Landroid/widget/Button;
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_1ff} :catch_6e2

    const-string v4, "R.style."

    const-string v5, "/"

    const-string v14, "bold"

    move/from16 v17, v8

    const/4 v8, 0x1

    if-eqz v0, :cond_2ff

    :try_start_20a
    move-object v0, v1

    check-cast v0, Landroid/widget/Button;
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_20d} :catch_6e2

    :try_start_20d
    sget-object v6, Lcom/mbridge/msdk/dycreator/e/a$1;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v6, v6, v12

    packed-switch v6, :pswitch_data_706

    goto :goto_1fa

    :pswitch_219
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_1fa

    :pswitch_21d
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fa

    sget-object v5, Lcom/mbridge/msdk/dycreator/e/b;->a:Ljava/util/HashMap;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fa

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_1fa

    :pswitch_23f
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/mbridge/msdk/dycreator/a/b;->d(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1fa

    :pswitch_26f
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    invoke-static {v8}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1fa

    :pswitch_282
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fa

    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/dycreator/a/b;->b(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextSize(F)V

    goto/16 :goto_1fa

    :pswitch_29a
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v4

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/a/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1fa

    :pswitch_2ab
    const/4 v4, 0x0

    invoke-interface {v2, v7, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setHorizontallyScrolling(Z)V

    goto/16 :goto_1fa

    :pswitch_2b5
    const/4 v4, 0x0

    invoke-interface {v2, v7, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setHorizontalFadingEdgeEnabled(Z)V

    goto/16 :goto_1fa

    :pswitch_2bf
    const/4 v4, 0x0

    invoke-interface {v2, v7, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    if-eqz v5, :cond_1fa

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setFocusable(Z)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setSingleLine(Z)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setMarqueeRepeatLimit(I)V

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setHorizontallyScrolling(Z)V

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto/16 :goto_1fa

    :pswitch_2e4
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v4

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_2f3
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_2f3} :catch_2f5

    goto/16 :goto_1fa

    :catch_2f5
    move-exception v0

    :try_start_2f6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fa

    :cond_2ff
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_48b

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;
    :try_end_306
    .catch Ljava/lang/Exception; {:try_start_2f6 .. :try_end_306} :catch_6e2

    :try_start_306
    sget-object v15, Lcom/mbridge/msdk/dycreator/e/a$1;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v15, v12

    packed-switch v12, :pswitch_data_71e

    packed-switch v12, :pswitch_data_736

    goto/16 :goto_1fa

    :pswitch_316
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v4

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/a/b;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_1fa

    :pswitch_327
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_337

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :cond_337
    move-object/from16 v4, v16

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fa

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v13}, Lcom/mbridge/msdk/foundation/tools/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1fa

    :pswitch_359
    invoke-interface {v2, v7, v8}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_1fa

    :pswitch_362
    const/4 v4, 0x0

    invoke-interface {v2, v7, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto/16 :goto_1fa

    :pswitch_36c
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v4

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/a/b;->c(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_1fa

    :pswitch_37d
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_389

    goto/16 :goto_1fa

    :cond_389
    sget-object v5, Lcom/mbridge/msdk/dycreator/e/b;->a:Ljava/util/HashMap;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_39f

    goto/16 :goto_1fa

    :cond_39f
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1fa

    :pswitch_3a4
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mbridge/msdk/dycreator/a/b;->d(Ljava/lang/String;)I

    goto/16 :goto_1fa

    :pswitch_3c9
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    invoke-static {v8}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1fa

    :pswitch_3dc
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fa

    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/dycreator/a/b;->b(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_1fa

    :pswitch_3f4
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v4

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/a/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1fa

    :pswitch_405
    const/4 v4, 0x0

    invoke-interface {v2, v7, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_1fa

    :pswitch_40f
    const/4 v4, 0x0

    invoke-interface {v2, v7, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    goto/16 :goto_1fa

    :pswitch_419
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fa

    const-string v5, "end"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_430

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_430
    const-string v5, "start"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43d

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_43d
    const-string v5, "middle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44a

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_44a
    const-string v5, "marquee"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_1fa

    :pswitch_459
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fa

    const-string v5, "@string/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47c

    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v4

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1fa

    :cond_47c
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_47f
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_47f} :catch_481

    goto/16 :goto_1fa

    :catch_481
    move-exception v0

    :try_start_482
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fa

    :cond_48b
    instance-of v0, v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_4f2

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;
    :try_end_492
    .catch Ljava/lang/Exception; {:try_start_482 .. :try_end_492} :catch_6e2

    :try_start_492
    sget-object v4, Lcom/mbridge/msdk/dycreator/e/a$1;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4db

    const/16 v5, 0x21

    if-eq v4, v5, :cond_4a4

    goto/16 :goto_1fa

    :cond_4a4
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fa

    const-string v5, "fitXY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4bd

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1fa

    :cond_4bd
    const-string v5, "centerInside"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4cc

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1fa

    :cond_4cc
    const-string v5, "centerCrop"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_1fa

    :cond_4db
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/mbridge/msdk/dycreator/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_4e6
    .catch Ljava/lang/Exception; {:try_start_492 .. :try_end_4e6} :catch_4e8

    goto/16 :goto_1fa

    :catch_4e8
    move-exception v0

    :try_start_4e9
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fa

    :cond_4f2
    instance-of v0, v1, Landroid/widget/ListView;
    :try_end_4f4
    .catch Ljava/lang/Exception; {:try_start_4e9 .. :try_end_4f4} :catch_6e2

    const-string v4, "false"

    if-eqz v0, :cond_58a

    :try_start_4f8
    move-object v0, v1

    check-cast v0, Landroid/widget/ListView;
    :try_end_4fb
    .catch Ljava/lang/Exception; {:try_start_4f8 .. :try_end_4fb} :catch_6e2

    :try_start_4fb
    sget-object v5, Lcom/mbridge/msdk/dycreator/e/a$1;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x19

    if-eq v5, v6, :cond_572

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_561

    packed-switch v5, :pswitch_data_742

    goto/16 :goto_1fa

    :pswitch_510
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fa

    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/dycreator/a/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelector(I)V

    goto/16 :goto_1fa

    :pswitch_527
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1fa

    const-string v6, "none"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53d

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    :cond_53d
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    goto/16 :goto_1fa

    :pswitch_549
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1fa

    const-string v5, "@null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1fa

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1fa

    :cond_561
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v4

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/a/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    goto/16 :goto_1fa

    :cond_572
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setMotionEventSplittingEnabled(Z)V
    :try_end_57e
    .catch Ljava/lang/Exception; {:try_start_4fb .. :try_end_57e} :catch_580

    goto/16 :goto_1fa

    :catch_580
    move-exception v0

    :try_start_581
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fa

    :cond_58a
    instance-of v0, v1, Landroid/widget/GridView;

    if-eqz v0, :cond_627

    move-object v0, v1

    check-cast v0, Landroid/widget/GridView;
    :try_end_591
    .catch Ljava/lang/Exception; {:try_start_581 .. :try_end_591} :catch_6e2

    :try_start_591
    sget-object v5, Lcom/mbridge/msdk/dycreator/e/a$1;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v8, :cond_605

    packed-switch v5, :pswitch_data_74c

    goto/16 :goto_1fa

    :pswitch_5a0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v5

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/dycreator/a/b;->b(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/mbridge/msdk/dycreator/e/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    goto/16 :goto_1fa

    :pswitch_5be
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v4

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/a/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setCacheColorHint(I)V

    goto/16 :goto_1fa

    :pswitch_5cf
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setMotionEventSplittingEnabled(Z)V

    goto/16 :goto_1fa

    :pswitch_5dd
    const/4 v4, 0x2

    invoke-interface {v2, v7, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    goto/16 :goto_1fa

    :pswitch_5e7
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v5

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/dycreator/a/b;->b(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/mbridge/msdk/dycreator/e/e;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    goto/16 :goto_1fa

    :cond_605
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1fa

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setId(I)V
    :try_end_61b
    .catch Ljava/lang/Exception; {:try_start_591 .. :try_end_61b} :catch_61d

    goto/16 :goto_1fa

    :catch_61d
    move-exception v0

    :try_start_61e
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fa

    :cond_627
    instance-of v0, v1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_630

    move-object v0, v1

    check-cast v0, Landroid/widget/ScrollView;

    goto/16 :goto_1fa

    :cond_630
    instance-of v0, v1, Lcom/mbridge/msdk/playercommon/PlayerView;
    :try_end_632
    .catch Ljava/lang/Exception; {:try_start_61e .. :try_end_632} :catch_6e2

    const-string v4, "horizontal"

    const/16 v5, 0xc

    if-eqz v0, :cond_666

    :try_start_638
    move-object v0, v1

    check-cast v0, Lcom/mbridge/msdk/playercommon/PlayerView;
    :try_end_63b
    .catch Ljava/lang/Exception; {:try_start_638 .. :try_end_63b} :catch_6e2

    :try_start_63b
    sget-object v6, Lcom/mbridge/msdk/dycreator/e/a$1;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v6, v6, v12

    if-eq v6, v5, :cond_647

    goto/16 :goto_1fa

    :cond_647
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_657

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_1fa

    :cond_657
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V
    :try_end_65a
    .catch Ljava/lang/Exception; {:try_start_63b .. :try_end_65a} :catch_65c

    goto/16 :goto_1fa

    :catch_65c
    move-exception v0

    :try_start_65d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fa

    :cond_666
    instance-of v0, v1, Lcom/mbridge/msdk/dycreator/baseview/MBHorizontalScrollView;

    if-eqz v0, :cond_66f

    move-object v0, v1

    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/MBHorizontalScrollView;

    goto/16 :goto_1fa

    :cond_66f
    instance-of v0, v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6a2

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;
    :try_end_676
    .catch Ljava/lang/Exception; {:try_start_65d .. :try_end_676} :catch_6e2

    :try_start_676
    sget-object v6, Lcom/mbridge/msdk/dycreator/e/a$1;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v6, v6, v12

    if-eq v6, v5, :cond_682

    goto/16 :goto_1fa

    :cond_682
    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_68a
    .catch Ljava/lang/Exception; {:try_start_676 .. :try_end_68a} :catch_698

    if-eqz v4, :cond_691

    const/4 v4, 0x0

    :try_start_68d
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_6d7

    :cond_691
    const/4 v4, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V
    :try_end_695
    .catch Ljava/lang/Exception; {:try_start_68d .. :try_end_695} :catch_696

    goto :goto_6d7

    :catch_696
    move-exception v0

    goto :goto_69a

    :catch_698
    move-exception v0

    const/4 v4, 0x0

    :goto_69a
    :try_start_69a
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d7

    :cond_6a2
    const/4 v4, 0x0

    instance-of v0, v1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6d0

    move-object v0, v1

    check-cast v0, Landroid/widget/RelativeLayout;
    :try_end_6aa
    .catch Ljava/lang/Exception; {:try_start_69a .. :try_end_6aa} :catch_6e2

    :try_start_6aa
    sget-object v5, Lcom/mbridge/msdk/dycreator/e/a$1;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x16

    if-eq v5, v6, :cond_6b7

    goto :goto_6d7

    :cond_6b7
    invoke-static {}, Lcom/mbridge/msdk/dycreator/a/b;->a()Lcom/mbridge/msdk/dycreator/a/b;

    move-result-object v5

    invoke-interface {v2, v7}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/dycreator/a/b;->c(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V
    :try_end_6c6
    .catch Ljava/lang/Exception; {:try_start_6aa .. :try_end_6c6} :catch_6c7

    goto :goto_6d7

    :catch_6c7
    move-exception v0

    :try_start_6c8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d7

    :cond_6d0
    instance-of v0, v1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6d7

    move-object v0, v1

    check-cast v0, Landroid/widget/FrameLayout;
    :try_end_6d7
    .catch Ljava/lang/Exception; {:try_start_6c8 .. :try_end_6d7} :catch_6e2

    :cond_6d7
    :goto_6d7
    move/from16 v8, v17

    :goto_6d9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v18

    move/from16 v5, v19

    goto/16 :goto_27

    :cond_6e1
    :goto_6e1
    return-void

    :catch_6e2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6ea
    :goto_6ea
    return-void

    nop

    :pswitch_data_6ec
    .packed-switch 0x1
        :pswitch_1ba
        :pswitch_127
        :pswitch_f7
        :pswitch_c6
        :pswitch_b6
        :pswitch_a1
        :pswitch_91
        :pswitch_81
        :pswitch_71
        :pswitch_61
        :pswitch_51
    .end packed-switch

    :pswitch_data_706
    .packed-switch 0xd
        :pswitch_2e4
        :pswitch_2bf
        :pswitch_2b5
        :pswitch_2ab
        :pswitch_29a
        :pswitch_282
        :pswitch_26f
        :pswitch_23f
        :pswitch_21d
        :pswitch_219
    .end packed-switch

    :pswitch_data_71e
    .packed-switch 0xd
        :pswitch_459
        :pswitch_419
        :pswitch_40f
        :pswitch_405
        :pswitch_3f4
        :pswitch_3dc
        :pswitch_3c9
        :pswitch_3a4
        :pswitch_37d
        :pswitch_36c
    .end packed-switch

    :pswitch_data_736
    .packed-switch 0x1c
        :pswitch_362
        :pswitch_359
        :pswitch_327
        :pswitch_316
    .end packed-switch

    :pswitch_data_742
    .packed-switch 0x22
        :pswitch_549
        :pswitch_527
        :pswitch_510
    .end packed-switch

    :pswitch_data_74c
    .packed-switch 0x17
        :pswitch_5e7
        :pswitch_5dd
        :pswitch_5cf
        :pswitch_5be
        :pswitch_5a0
    .end packed-switch
.end method
