###### Class com.bytedance.sdk.component.adexpress.dynamic.interact.i (com.bytedance.sdk.component.adexpress.dynamic.interact.i)
.class public Lcom/bytedance/sdk/component/adexpress/dynamic/interact/i;
.super Ljava/lang/Object;
.source "InteractViewFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;IIII)Lcom/bytedance/sdk/component/adexpress/dynamic/interact/g;
    .registers 16

    const/4 v0, 0x0

    if-eqz p0, :cond_1ab

    if-eqz p1, :cond_1ab

    if-nez p2, :cond_9

    goto/16 :goto_1ab

    :cond_9
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_1ac

    goto/16 :goto_10c

    :sswitch_1b
    const-string v6, "29"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    goto/16 :goto_10c

    :cond_25
    const/16 v5, 0x12

    goto/16 :goto_10c

    :sswitch_29
    const-string v6, "24"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    goto/16 :goto_10c

    :cond_33
    const/16 v5, 0x11

    goto/16 :goto_10c

    :sswitch_37
    const-string v6, "22"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    goto/16 :goto_10c

    :cond_41
    const/16 v5, 0x10

    goto/16 :goto_10c

    :sswitch_45
    const-string v6, "20"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    goto/16 :goto_10c

    :cond_4f
    const/16 v5, 0xf

    goto/16 :goto_10c

    :sswitch_53
    const-string v6, "18"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    goto/16 :goto_10c

    :cond_5d
    const/16 v5, 0xe

    goto/16 :goto_10c

    :sswitch_61
    const-string v6, "17"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6b

    goto/16 :goto_10c

    :cond_6b
    const/16 v5, 0xd

    goto/16 :goto_10c

    :sswitch_6f
    const-string v6, "16"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    goto/16 :goto_10c

    :cond_79
    const/16 v5, 0xc

    goto/16 :goto_10c

    :sswitch_7d
    const-string v6, "14"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87

    goto/16 :goto_10c

    :cond_87
    const/16 v5, 0xb

    goto/16 :goto_10c

    :sswitch_8b
    const-string v6, "13"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_95

    goto/16 :goto_10c

    :cond_95
    const/16 v5, 0xa

    goto/16 :goto_10c

    :sswitch_99
    const-string v6, "12"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a3

    goto/16 :goto_10c

    :cond_a3
    const/16 v5, 0x9

    goto/16 :goto_10c

    :sswitch_a7
    const-string v6, "11"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b1

    goto/16 :goto_10c

    :cond_b1
    const/16 v5, 0x8

    goto/16 :goto_10c

    :sswitch_b5
    const-string v6, "10"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_be

    goto :goto_10c

    :cond_be
    const/4 v5, 0x7

    goto :goto_10c

    :sswitch_c0
    const-string v6, "9"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c9

    goto :goto_10c

    :cond_c9
    const/4 v5, 0x6

    goto :goto_10c

    :sswitch_cb
    const-string v6, "8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d4

    goto :goto_10c

    :cond_d4
    const/4 v5, 0x5

    goto :goto_10c

    :sswitch_d6
    const-string v6, "7"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_df

    goto :goto_10c

    :cond_df
    const/4 v5, 0x4

    goto :goto_10c

    :sswitch_e1
    const-string v6, "6"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ea

    goto :goto_10c

    :cond_ea
    const/4 v5, 0x3

    goto :goto_10c

    :sswitch_ec
    const-string v6, "5"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f5

    goto :goto_10c

    :cond_f5
    const/4 v5, 0x2

    goto :goto_10c

    :sswitch_f7
    const-string v6, "2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_100

    goto :goto_10c

    :cond_100
    const/4 v5, 0x1

    goto :goto_10c

    :sswitch_102
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10b

    goto :goto_10c

    :cond_10b
    const/4 v5, 0x0

    :goto_10c
    packed-switch v5, :pswitch_data_1fa

    goto/16 :goto_1ab

    :pswitch_111
    new-instance v7, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/f;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;III)V

    goto/16 :goto_1ab

    :pswitch_11f
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->b()Z

    move-result v0

    if-eqz v0, :cond_12c

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto/16 :goto_1ab

    :cond_12c
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/o;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto/16 :goto_1ab

    :pswitch_133
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/d;->b()Z

    move-result v0

    if-eqz v0, :cond_140

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/o;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto/16 :goto_1ab

    :cond_140
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/q;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto/16 :goto_1ab

    :pswitch_147
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto/16 :goto_1ab

    :pswitch_14e
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/r;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/r;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;Ljava/lang/String;I)V

    goto :goto_1ab

    :pswitch_159
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto :goto_1ab

    :pswitch_15f
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/n;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto :goto_1ab

    :pswitch_165
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto :goto_1ab

    :pswitch_16b
    new-instance v8, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/m;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/m;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;Ljava/lang/String;III)V

    goto :goto_1ab

    :pswitch_178
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/k;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto :goto_1ab

    :pswitch_17e
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/j;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto :goto_1ab

    :pswitch_184
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/l;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto :goto_1ab

    :pswitch_18a
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->L()I

    move-result v0

    if-ne v0, v7, :cond_19a

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;->X()I

    move-result v4

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/p;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;I)V

    goto :goto_1ab

    :cond_19a
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/n;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto :goto_1ab

    :pswitch_1a0
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    goto :goto_1ab

    :pswitch_1a6
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/interact/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicBaseWidget;Lcom/bytedance/sdk/component/adexpress/dynamic/b/g;)V

    :cond_1ab
    :goto_1ab
    return-object v0

    :sswitch_data_1ac
    .sparse-switch
        0x30 -> :sswitch_102
        0x32 -> :sswitch_f7
        0x35 -> :sswitch_ec
        0x36 -> :sswitch_e1
        0x37 -> :sswitch_d6
        0x38 -> :sswitch_cb
        0x39 -> :sswitch_c0
        0x61f -> :sswitch_b5
        0x620 -> :sswitch_a7
        0x621 -> :sswitch_99
        0x622 -> :sswitch_8b
        0x623 -> :sswitch_7d
        0x625 -> :sswitch_6f
        0x626 -> :sswitch_61
        0x627 -> :sswitch_53
        0x63e -> :sswitch_45
        0x640 -> :sswitch_37
        0x642 -> :sswitch_29
        0x647 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_1fa
    .packed-switch 0x0
        :pswitch_1a6
        :pswitch_1a0
        :pswitch_18a
        :pswitch_184
        :pswitch_17e
        :pswitch_178
        :pswitch_16b
        :pswitch_165
        :pswitch_184
        :pswitch_15f
        :pswitch_159
        :pswitch_17e
        :pswitch_16b
        :pswitch_14e
        :pswitch_14e
        :pswitch_147
        :pswitch_133
        :pswitch_11f
        :pswitch_111
    .end packed-switch
.end method
