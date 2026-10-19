###### Class com.bytedance.sdk.component.adexpress.dynamic.c.d (com.bytedance.sdk.component.adexpress.dynamic.c.d)
.class public Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;
.super Ljava/lang/Object;
.source "DynamicCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/dynamic/c/d$a;
    }
.end annotation


# instance fields
.field public a:Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;

.field protected b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

.field private c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

.field private d:Lcom/bytedance/sdk/component/adexpress/dynamic/c/d$a;


# direct methods
.method public constructor <init>(DIDLjava/lang/String;Lcom/bytedance/sdk/component/adexpress/b/m;)V
    .registers 17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    move-object v0, v8

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;-><init>(DIDLjava/lang/String;Lcom/bytedance/sdk/component/adexpress/b/m;)V

    move-object v0, p0

    iput-object v8, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;
    .registers 21

    move-object/from16 v0, p1

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->a:F

    iget v2, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->aj()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->al()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ak()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->am()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->aa()Z

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ab()Z

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ac()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ad()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->Z()Ljava/lang/String;

    move-result-object v11

    iget v12, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->c:F

    iget v13, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->d:F

    const-string v14, "0"

    invoke-static {v11, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_52

    if-eqz v7, :cond_40

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->a:F

    add-float/2addr v1, v3

    goto :goto_48

    :cond_40
    if-eqz v8, :cond_48

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->a:F

    add-float/2addr v1, v12

    sub-float/2addr v1, v5

    sub-float v1, v1, p3

    :cond_48
    :goto_48
    if-eqz v9, :cond_4d

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    goto :goto_66

    :cond_4d
    if-eqz v10, :cond_a5

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    goto :goto_6d

    :cond_52
    const-string v14, "1"

    invoke-static {v11, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v14, :cond_72

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->a:F

    sub-float v12, v12, p3

    div-float/2addr v12, v15

    add-float/2addr v1, v12

    if-eqz v9, :cond_69

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    :goto_66
    add-float v2, v0, v4

    goto :goto_a5

    :cond_69
    if-eqz v10, :cond_a5

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    :goto_6d
    add-float/2addr v0, v13

    sub-float/2addr v0, v6

    sub-float v2, v0, p4

    goto :goto_a5

    :cond_72
    const-string v4, "2"

    invoke-static {v11, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_90

    iget v2, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    sub-float v13, v13, p4

    div-float/2addr v13, v15

    add-float/2addr v2, v13

    if-eqz v7, :cond_87

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->a:F

    add-float v1, v0, v3

    goto :goto_a5

    :cond_87
    if-eqz v8, :cond_a5

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->a:F

    add-float/2addr v0, v12

    sub-float/2addr v0, v5

    sub-float v1, v0, p3

    goto :goto_a5

    :cond_90
    const-string v3, "3"

    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a5

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->a:F

    sub-float v12, v12, p3

    div-float/2addr v12, v15

    add-float/2addr v1, v12

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    sub-float v13, v13, p4

    div-float/2addr v13, v15

    add-float v2, v0, v13

    :cond_a5
    :goto_a5
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;-><init>(FF)V

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;)Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;
    .registers 12

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->aj()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->al()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ak()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->am()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->aa()Z

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ab()Z

    move-result v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ac()Z

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->ad()Z

    move-result p1

    const/4 v7, 0x0

    if-eqz v4, :cond_28

    goto :goto_3b

    :cond_28
    if-eqz v5, :cond_3a

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/c/d$a;

    iget v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d$a;->a:F

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_33

    goto :goto_35

    :cond_33
    iget v0, p2, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    :goto_35
    sub-float/2addr v0, v2

    iget v2, p3, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    sub-float/2addr v0, v2

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    if-eqz v6, :cond_3e

    goto :goto_52

    :cond_3e
    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/c/d$a;

    iget p1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d$a;->b:F

    cmpl-float v1, p1, v7

    if-eqz v1, :cond_49

    goto :goto_4b

    :cond_49
    iget p1, p2, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    :goto_4b
    sub-float/2addr p1, v3

    iget p2, p3, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    sub-float v1, p1, p2

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;

    invoke-direct {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;-><init>(FF)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;F)Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->f:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    if-nez v2, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->s()V

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->q()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3f1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1a

    goto/16 :goto_3f1

    :cond_1a
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->q()F

    move-result v5

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->p()F

    move-result v6

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->n()F

    move-result v7

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->o()F

    move-result v8

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->l()F

    move-result v9

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->L()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->M()Ljava/lang/String;

    move-result-object v11

    iget v12, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->a:F

    add-float/2addr v12, v8

    iget v13, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    add-float/2addr v13, v5

    iget v14, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->c:F

    sub-float/2addr v14, v8

    sub-float/2addr v14, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v9, v9, v6

    sub-float/2addr v14, v9

    iget v8, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->d:F

    sub-float/2addr v8, v5

    sub-float/2addr v8, v7

    sub-float/2addr v8, v9

    new-instance v5, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;

    invoke-direct {v5, v12, v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;-><init>(FF)V

    iget-object v7, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->g:Ljava/util/List;

    if-nez v7, :cond_62

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->g:Ljava/util/List;

    :cond_62
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v13, 0x0

    :cond_67
    :goto_67
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    iget-object v9, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    invoke-virtual {v9, v15}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;->a(Ljava/util/List;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object v9

    if-eqz v9, :cond_67

    iget v9, v9, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    add-float/2addr v13, v9

    goto :goto_67

    :cond_7f
    const-string v7, "space-between"

    const-string v9, "space-around"

    const-string v15, "flex-end"

    const-string v6, "center"

    move/from16 v17, v12

    const/4 v12, 0x1

    cmpg-float v18, v13, v8

    if-gez v18, :cond_d0

    invoke-static {v11, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_99

    sub-float/2addr v8, v13

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v8, v11

    goto :goto_d1

    :cond_99
    invoke-static {v11, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a1

    sub-float/2addr v8, v13

    goto :goto_d1

    :cond_a1
    invoke-static {v11, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b5

    sub-float/2addr v8, v13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v8, v11

    invoke-static {v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/i;->a(F)F

    move-result v8

    move v11, v8

    goto :goto_d2

    :cond_b5
    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v12, :cond_d0

    sub-float/2addr v8, v13

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v8, v11

    invoke-static {v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/i;->a(F)F

    move-result v8

    move v11, v8

    const/4 v8, 0x0

    goto :goto_d2

    :cond_d0
    const/4 v8, 0x0

    :goto_d1
    const/4 v11, 0x0

    :goto_d2
    iget v13, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->b:F

    add-float/2addr v13, v8

    iput v13, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->b:F

    move/from16 v13, p2

    const/4 v8, 0x0

    :goto_da
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_3ef

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v20, v3

    iget-object v3, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v8, v3, :cond_11b

    iget-object v3, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, v8, v3

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 p2, v13

    const/4 v13, 0x0

    :goto_101
    if-ge v13, v3, :cond_118

    move/from16 v21, v3

    iget-object v3, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->g:Ljava/util/List;

    move/from16 v22, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v21

    move/from16 v11, v22

    goto :goto_101

    :cond_118
    move/from16 v22, v11

    goto :goto_11f

    :cond_11b
    move/from16 v22, v11

    move/from16 p2, v13

    :goto_11f
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v11, 0x0

    :goto_124
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    move-object/from16 v21, v4

    if-eqz v13, :cond_165

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-virtual {v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->A()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v24, v3

    invoke-virtual/range {v23 .. v23}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->Y()I

    move-result v3

    const-string v1, "flex"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15e

    const/4 v1, 0x1

    if-eq v3, v1, :cond_15e

    const/4 v1, 0x2

    if-ne v3, v1, :cond_153

    goto :goto_15e

    :cond_153
    iget-object v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object v1

    if-eqz v1, :cond_15e

    iget v1, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    add-float/2addr v11, v1

    :cond_15e
    :goto_15e
    move-object/from16 v1, p1

    move-object/from16 v4, v21

    move-object/from16 v3, v24

    goto :goto_124

    :cond_165
    sub-float v1, v14, v11

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v11, 0x0

    :goto_171
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-virtual {v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->Y()I

    move-result v3

    move-object/from16 v24, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a1

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->Y()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_196

    goto :goto_1a1

    :cond_196
    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    invoke-virtual {v3, v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object v3

    if-eqz v3, :cond_1a1

    iget v3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    add-float/2addr v11, v3

    :cond_1a1
    :goto_1a1
    move-object/from16 v4, v24

    const/4 v3, 0x0

    goto :goto_171

    :cond_1a5
    cmpg-float v3, v11, v14

    if-gez v3, :cond_1f3

    invoke-static {v10, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b5

    sub-float v3, v14, v11

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    goto :goto_1f4

    :cond_1b5
    invoke-static {v10, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1be

    sub-float v3, v14, v11

    goto :goto_1f4

    :cond_1be
    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d4

    sub-float v3, v14, v11

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v13, 0x1

    add-int/2addr v4, v13

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/i;->a(F)F

    move-result v3

    move v4, v3

    goto :goto_1f5

    :cond_1d4
    const/4 v13, 0x1

    invoke-static {v10, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v13, :cond_1f3

    sub-float v3, v14, v11

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v4, v11

    div-float/2addr v3, v4

    invoke-static {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/i;->a(F)F

    move-result v3

    move v4, v3

    const/4 v3, 0x0

    goto :goto_1f5

    :cond_1f3
    const/4 v3, 0x0

    :goto_1f4
    const/4 v4, 0x0

    :goto_1f5
    iget v11, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->a:F

    add-float/2addr v11, v3

    iput v11, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->a:F

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v11, 0x0

    :goto_1ff
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_247

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    invoke-virtual {v3, v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object v3

    if-eqz v3, :cond_21e

    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    invoke-virtual {v3, v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object v3

    iget v3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    goto :goto_21f

    :cond_21e
    const/4 v3, 0x0

    :goto_21f
    invoke-virtual {v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v13

    move/from16 v24, v3

    invoke-virtual {v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->Y()I

    move-result v3

    move-object/from16 v25, v7

    const/4 v7, 0x1

    if-eq v3, v7, :cond_23d

    invoke-virtual {v13}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->Y()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_23a

    goto :goto_23d

    :cond_23a
    move/from16 v3, v24

    goto :goto_23e

    :cond_23d
    :goto_23d
    const/4 v3, 0x0

    :goto_23e
    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move-object/from16 v3, v16

    move-object/from16 v7, v25

    goto :goto_1ff

    :cond_247
    move-object/from16 v25, v7

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move/from16 v13, p2

    :goto_24f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    move-object/from16 p2, v3

    iget-object v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object v3

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    move-result-object v16

    move-object/from16 v24, v9

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v9

    move-object/from16 v16, v10

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->P()I

    move-result v10

    int-to-float v10, v10

    move/from16 v26, v13

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->S()I

    move-result v13

    int-to-float v13, v13

    move/from16 v27, v14

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->Q()I

    move-result v14

    int-to-float v14, v14

    move/from16 v28, v4

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->R()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v29, v5

    if-nez v3, :cond_28f

    const/4 v5, 0x0

    goto :goto_291

    :cond_28f
    iget v5, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    :goto_291
    if-nez v3, :cond_297

    move-object/from16 v30, v12

    const/4 v3, 0x0

    goto :goto_29b

    :cond_297
    iget v3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    move-object/from16 v30, v12

    :goto_29b
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->c()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v31, v2

    const-string v2, "root"

    invoke-static {v12, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2ab

    int-to-float v2, v8

    goto :goto_2ad

    :cond_2ab
    move/from16 v2, v26

    :goto_2ad
    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->Y()I

    move-result v12

    move/from16 v32, v8

    const/4 v8, 0x1

    if-ne v12, v8, :cond_2c5

    sub-float v8, v5, v13

    sub-float/2addr v8, v4

    sub-float v12, v3, v10

    sub-float/2addr v12, v14

    move/from16 v26, v2

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v9, v8, v12}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;

    move-result-object v8

    goto :goto_2cb

    :cond_2c5
    move/from16 v26, v2

    move-object/from16 v2, p1

    move-object/from16 v8, v29

    :goto_2cb
    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->Y()I

    move-result v12

    move-object/from16 v33, v8

    const/4 v8, 0x2

    if-ne v12, v8, :cond_2f1

    iget-object v8, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    iget-object v12, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-virtual {v8, v12}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object v8

    sub-float v12, v5, v13

    sub-float/2addr v12, v4

    sub-float v33, v3, v10

    move/from16 v34, v1

    sub-float v1, v33, v14

    move-object/from16 v35, v7

    new-instance v7, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    invoke-direct {v7, v12, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;-><init>(FF)V

    invoke-direct {v0, v9, v8, v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;)Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;

    move-result-object v8

    goto :goto_2f7

    :cond_2f1
    move/from16 v34, v1

    move-object/from16 v35, v7

    move-object/from16 v8, v33

    :goto_2f7
    invoke-virtual/range {v21 .. v21}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->an()Ljava/lang/String;

    move-result-object v1

    cmpl-float v7, v11, v3

    if-lez v7, :cond_322

    const-string v7, "flex-start"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_322

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_31c

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_317

    goto :goto_322

    :cond_317
    sub-float v1, v11, v3

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_325

    :cond_31c
    sub-float v1, v11, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v1, v7

    goto :goto_325

    :cond_322
    :goto_322
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x0

    :goto_325
    new-instance v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;

    invoke-direct {v12}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;-><init>()V

    iget v7, v8, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->a:F

    add-float/2addr v7, v4

    iput v7, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->a:F

    iget v7, v8, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->b:F

    add-float/2addr v7, v10

    add-float/2addr v7, v1

    iput v7, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    sub-float v1, v5, v13

    sub-float/2addr v1, v4

    iput v1, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->c:F

    sub-float/2addr v3, v10

    sub-float/2addr v3, v14

    iput v3, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->d:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v35 .. v35}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->e:Ljava/lang/String;

    iput-object v2, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->h:Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;

    move-object/from16 v7, v35

    iput-object v7, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->f:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    move/from16 v1, v34

    iput v1, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->i:F

    move-object/from16 v3, v30

    iput-object v3, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->j:Ljava/util/List;

    iget v4, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->a:F

    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->c(F)V

    iget-object v4, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->f:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    iget v7, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->d(F)V

    iget-object v4, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->f:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    iget v7, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->c:F

    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->e(F)V

    iget-object v4, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->f:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    iget v7, v12, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->d:F

    invoke-virtual {v4, v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->f(F)V

    move/from16 v4, v26

    invoke-virtual {v0, v12, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;F)Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;

    move-result-object v7

    iget-object v8, v2, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->g:Ljava/util/List;

    move/from16 v10, v32

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->Y()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3b0

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->Y()I

    move-result v7

    const/4 v9, 0x2

    if-eq v7, v9, :cond_3ad

    move-object/from16 v7, v29

    iget v12, v7, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->a:F

    add-float v5, v5, v28

    add-float/2addr v12, v5

    iput v12, v7, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->a:F

    goto :goto_3b3

    :cond_3ad
    move-object/from16 v7, v29

    goto :goto_3b3

    :cond_3b0
    move-object/from16 v7, v29

    const/4 v9, 0x2

    :goto_3b3
    move-object v12, v3

    move v13, v4

    move-object v5, v7

    move v8, v10

    move-object/from16 v10, v16

    move-object/from16 v9, v24

    move/from16 v14, v27

    move/from16 v4, v28

    move-object/from16 v2, v31

    move-object/from16 v3, p2

    goto/16 :goto_24f

    :cond_3c5
    move-object/from16 v31, v2

    move-object v7, v5

    move-object/from16 v24, v9

    move-object/from16 v16, v10

    move/from16 v26, v13

    move/from16 v27, v14

    move/from16 v12, v17

    move-object/from16 v2, p1

    move v10, v8

    const/4 v8, 0x1

    iput v12, v7, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->a:F

    iget v1, v7, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->b:F

    add-float v11, v11, v22

    add-float/2addr v1, v11

    iput v1, v7, Lcom/bytedance/sdk/component/adexpress/dynamic/b/i;->b:F

    move-object v1, v2

    move v8, v10

    move-object/from16 v10, v16

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v11, v22

    move-object/from16 v7, v25

    move-object/from16 v2, v31

    goto/16 :goto_da

    :cond_3ef
    move-object v2, v1

    return-object v2

    :cond_3f1
    :goto_3f1
    move-object v2, v1

    return-object v2
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;->a()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native parser: type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->f:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicCanvas"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->g:Ljava/util/List;

    if-eqz p1, :cond_83

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_56

    goto :goto_83

    :cond_56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5a
    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_6f

    goto :goto_5a

    :cond_6f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;)V

    goto :goto_73

    :cond_83
    :goto_83
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;FF)V
    .registers 8

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->c:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->h()F

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i()F

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->z()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fixed"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, v1

    goto :goto_26

    :cond_24
    const/high16 v2, 0x47800000    # 65536.0f

    :goto_26
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;->a()V

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    invoke-virtual {v3, p1, v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;->c(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->b:Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;

    invoke-direct {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;-><init>()V

    iput p2, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->a:F

    iput p3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    if-nez v2, :cond_42

    goto :goto_44

    :cond_42
    iget v0, v2, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->a:F

    :goto_44
    iput v0, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->c:F

    if-nez v2, :cond_49

    goto :goto_4b

    :cond_49
    iget v1, v2, Lcom/bytedance/sdk/component/adexpress/dynamic/c/a$c;->b:F

    :goto_4b
    iput v1, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->d:F

    const-string p3, "root"

    iput-object p3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->e:Ljava/lang/String;

    const/high16 p3, 0x44a00000    # 1280.0f

    iput p3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->i:F

    iput-object p1, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->f:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->c(F)V

    iget-object p1, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->f:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    iget p2, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->b:F

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->d(F)V

    iget-object p1, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->f:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    iget p2, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->c:F

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->e(F)V

    iget-object p1, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->f:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    iget p2, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;->d:F

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->f(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;F)Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->a:Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/b;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/dynamic/c/d$a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/c/d$a;

    return-void
.end method

###### Class com.bytedance.sdk.component.adexpress.dynamic.c.d.a (com.bytedance.sdk.component.adexpress.dynamic.c.d$a)
.class Lcom/bytedance/sdk/component/adexpress/dynamic/c/d$a;
.super Ljava/lang/Object;
.source "DynamicCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
