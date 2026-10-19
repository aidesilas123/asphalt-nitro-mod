###### Class com.tapjoy.internal.b7 (com.tapjoy.internal.b7)
.class public final Lcom/tapjoy/internal/b7;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Lcom/tapjoy/internal/t5;

.field public final b:Lcom/tapjoy/internal/w7;

.field public c:Lcom/tapjoy/internal/l1;

.field public d:I

.field public e:I

.field public f:Lcom/tapjoy/internal/o2;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/t5;Lcom/tapjoy/internal/w7;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/tapjoy/internal/l1;->a:Lcom/tapjoy/internal/l1;

    iput-object p1, p0, Lcom/tapjoy/internal/b7;->c:Lcom/tapjoy/internal/l1;

    const/4 p1, 0x0

    iput p1, p0, Lcom/tapjoy/internal/b7;->d:I

    iput p1, p0, Lcom/tapjoy/internal/b7;->e:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/b7;->f:Lcom/tapjoy/internal/o2;

    iput-object p1, p0, Lcom/tapjoy/internal/b7;->g:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/tapjoy/internal/b7;->h:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/tapjoy/internal/b7;->a:Lcom/tapjoy/internal/t5;

    iput-object p3, p0, Lcom/tapjoy/internal/b7;->b:Lcom/tapjoy/internal/w7;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 16

    iget-object v0, p0, Lcom/tapjoy/internal/b7;->a:Lcom/tapjoy/internal/t5;

    iget-object v0, v0, Lcom/tapjoy/internal/t5;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/o2;

    iget-object v4, v3, Lcom/tapjoy/internal/o2;->b:Lcom/tapjoy/internal/l1;

    iget-object v5, p0, Lcom/tapjoy/internal/b7;->c:Lcom/tapjoy/internal/l1;

    if-ne v4, v5, :cond_1e

    move-object v2, v3

    goto :goto_24

    :cond_1e
    sget-object v5, Lcom/tapjoy/internal/l1;->a:Lcom/tapjoy/internal/l1;

    if-ne v4, v5, :cond_a

    move-object v2, v3

    goto :goto_a

    :cond_24
    :goto_24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/tapjoy/internal/b7;->g:Ljava/util/ArrayList;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/internal/o7;

    if-eqz v5, :cond_31

    iput-boolean v4, v5, Lcom/tapjoy/internal/o7;->d:Z

    iput-boolean v4, v5, Lcom/tapjoy/internal/o7;->e:Z

    iput-boolean v3, v5, Lcom/tapjoy/internal/o7;->f:Z

    invoke-virtual {v5}, Lcom/tapjoy/internal/o7;->b()V

    iget-object v6, v5, Lcom/tapjoy/internal/o7;->c:Landroid/os/Handler;

    iget-object v5, v5, Lcom/tapjoy/internal/o7;->j:Lcom/tapjoy/internal/h6;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    :cond_56
    iget-object v0, p0, Lcom/tapjoy/internal/b7;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5b
    iget-object v0, p0, Lcom/tapjoy/internal/b7;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_63
    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/internal/o7;

    if-eqz v5, :cond_63

    iput-boolean v4, v5, Lcom/tapjoy/internal/o7;->d:Z

    iput-boolean v4, v5, Lcom/tapjoy/internal/o7;->e:Z

    iput-boolean v3, v5, Lcom/tapjoy/internal/o7;->f:Z

    invoke-virtual {v5}, Lcom/tapjoy/internal/o7;->b()V

    iget-object v6, v5, Lcom/tapjoy/internal/o7;->c:Landroid/os/Handler;

    iget-object v5, v5, Lcom/tapjoy/internal/o7;->j:Lcom/tapjoy/internal/h6;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_63

    :cond_88
    iget-object v0, p0, Lcom/tapjoy/internal/b7;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_8d
    if-eqz v2, :cond_1d5

    iput-object v2, p0, Lcom/tapjoy/internal/b7;->f:Lcom/tapjoy/internal/o2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v2, Lcom/tapjoy/internal/o2;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/internal/u0;

    new-instance v12, Landroid/widget/RelativeLayout;

    invoke-direct {v12, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v6, v5, Lcom/tapjoy/internal/u0;->l:Lcom/tapjoy/internal/n3;

    iget-object v6, v6, Lcom/tapjoy/internal/n3;->e:[B

    const/4 v7, -0x1

    if-eqz v6, :cond_111

    new-instance v6, Lcom/tapjoy/internal/o7;

    invoke-direct {v6, v0}, Lcom/tapjoy/internal/o7;-><init>(Landroid/content/Context;)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v8, v5, Lcom/tapjoy/internal/u0;->l:Lcom/tapjoy/internal/n3;

    iget-object v9, v8, Lcom/tapjoy/internal/n3;->f:Lcom/tapjoy/internal/s4;

    iget-object v8, v8, Lcom/tapjoy/internal/n3;->e:[B

    :try_start_c3
    new-instance v10, Lcom/tapjoy/internal/s3;

    new-instance v11, Lcom/tapjoy/internal/v;

    invoke-direct {v11}, Lcom/tapjoy/internal/v;-><init>()V

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v10, v11}, Lcom/tapjoy/internal/s3;-><init>(Lcom/tapjoy/internal/v;)V

    invoke-virtual {v10, v9, v8}, Lcom/tapjoy/internal/s3;->d(Lcom/tapjoy/internal/s4;Ljava/nio/ByteBuffer;)V

    iput-object v10, v6, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d6} :catch_f8

    iget-boolean v8, v6, Lcom/tapjoy/internal/o7;->d:Z

    if-eqz v8, :cond_de

    invoke-virtual {v6}, Lcom/tapjoy/internal/o7;->a()V

    goto :goto_fa

    :cond_de
    iget v9, v10, Lcom/tapjoy/internal/s3;->n:I

    if-nez v9, :cond_e3

    goto :goto_fa

    :cond_e3
    iget-object v9, v10, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    iget v9, v9, Lcom/tapjoy/internal/s4;->c:I

    if-lt v7, v9, :cond_eb

    const/4 v9, 0x0

    goto :goto_ee

    :cond_eb
    iput v7, v10, Lcom/tapjoy/internal/s3;->n:I

    const/4 v9, 0x1

    :goto_ee
    if-eqz v9, :cond_fa

    if-nez v8, :cond_fa

    iput-boolean v3, v6, Lcom/tapjoy/internal/o7;->e:Z

    invoke-virtual {v6}, Lcom/tapjoy/internal/o7;->a()V

    goto :goto_fa

    :catch_f8
    iput-object v1, v6, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;

    :cond_fa
    :goto_fa
    iget-object v8, p0, Lcom/tapjoy/internal/b7;->g:Ljava/util/ArrayList;

    if-nez v8, :cond_105

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/tapjoy/internal/b7;->g:Ljava/util/ArrayList;

    :cond_105
    iget-object v8, p0, Lcom/tapjoy/internal/b7;->g:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v6

    goto :goto_112

    :cond_111
    move-object v10, v1

    :goto_112
    iget-object v6, v5, Lcom/tapjoy/internal/u0;->m:Lcom/tapjoy/internal/n3;

    if-eqz v6, :cond_178

    iget-object v6, v6, Lcom/tapjoy/internal/n3;->e:[B

    if-eqz v6, :cond_178

    new-instance v6, Lcom/tapjoy/internal/o7;

    invoke-direct {v6, v0}, Lcom/tapjoy/internal/o7;-><init>(Landroid/content/Context;)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v8, v5, Lcom/tapjoy/internal/u0;->m:Lcom/tapjoy/internal/n3;

    iget-object v9, v8, Lcom/tapjoy/internal/n3;->f:Lcom/tapjoy/internal/s4;

    iget-object v8, v8, Lcom/tapjoy/internal/n3;->e:[B

    :try_start_12a
    new-instance v11, Lcom/tapjoy/internal/s3;

    new-instance v13, Lcom/tapjoy/internal/v;

    invoke-direct {v13}, Lcom/tapjoy/internal/v;-><init>()V

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v11, v13}, Lcom/tapjoy/internal/s3;-><init>(Lcom/tapjoy/internal/v;)V

    invoke-virtual {v11, v9, v8}, Lcom/tapjoy/internal/s3;->d(Lcom/tapjoy/internal/s4;Ljava/nio/ByteBuffer;)V

    iput-object v11, v6, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_13d} :catch_15f

    iget-boolean v8, v6, Lcom/tapjoy/internal/o7;->d:Z

    if-eqz v8, :cond_145

    invoke-virtual {v6}, Lcom/tapjoy/internal/o7;->a()V

    goto :goto_161

    :cond_145
    iget v9, v11, Lcom/tapjoy/internal/s3;->n:I

    if-nez v9, :cond_14a

    goto :goto_161

    :cond_14a
    iget-object v9, v11, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    iget v9, v9, Lcom/tapjoy/internal/s4;->c:I

    if-lt v7, v9, :cond_152

    const/4 v9, 0x0

    goto :goto_155

    :cond_152
    iput v7, v11, Lcom/tapjoy/internal/s3;->n:I

    const/4 v9, 0x1

    :goto_155
    if-eqz v9, :cond_161

    if-nez v8, :cond_161

    iput-boolean v3, v6, Lcom/tapjoy/internal/o7;->e:Z

    invoke-virtual {v6}, Lcom/tapjoy/internal/o7;->a()V

    goto :goto_161

    :catch_15f
    iput-object v1, v6, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;

    :cond_161
    :goto_161
    iget-object v8, p0, Lcom/tapjoy/internal/b7;->h:Ljava/util/ArrayList;

    if-nez v8, :cond_16c

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/tapjoy/internal/b7;->h:Ljava/util/ArrayList;

    :cond_16c
    iget-object v8, p0, Lcom/tapjoy/internal/b7;->h:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v6

    goto :goto_179

    :cond_178
    move-object v8, v1

    :goto_179
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v13, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v7, v5, Lcom/tapjoy/internal/u0;->l:Lcom/tapjoy/internal/n3;

    iget-object v7, v7, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    iget-object v9, v5, Lcom/tapjoy/internal/u0;->m:Lcom/tapjoy/internal/n3;

    if-eqz v9, :cond_18e

    iget-object v9, v9, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    goto :goto_18f

    :cond_18e
    move-object v9, v1

    :goto_18f
    if-eqz v7, :cond_197

    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_198

    :cond_197
    move-object v11, v1

    :goto_198
    if-eqz v9, :cond_1a0

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1a1

    :cond_1a0
    move-object v7, v1

    :goto_1a1
    if-eqz v11, :cond_1a6

    invoke-static {v12, v11}, Lcom/tapjoy/internal/ta;->a(Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_1a6
    if-eqz v10, :cond_1b0

    invoke-virtual {v12, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v3, v10, Lcom/tapjoy/internal/o7;->d:Z

    invoke-virtual {v10}, Lcom/tapjoy/internal/o7;->a()V

    :cond_1b0
    if-eqz v8, :cond_1b9

    invoke-virtual {v12, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x4

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1b9
    new-instance v6, Lcom/tapjoy/internal/f6;

    invoke-direct {v6, v8, v7, v10, v11}, Lcom/tapjoy/internal/f6;-><init>(Lcom/tapjoy/internal/o7;Landroid/graphics/drawable/BitmapDrawable;Lcom/tapjoy/internal/o7;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v12, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v14, Lcom/tapjoy/internal/q6;

    move-object v6, v14

    move-object v7, p0

    move-object v9, v12

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/tapjoy/internal/q6;-><init>(Lcom/tapjoy/internal/b7;Lcom/tapjoy/internal/o7;Landroid/widget/RelativeLayout;Lcom/tapjoy/internal/o7;Lcom/tapjoy/internal/u0;)V

    invoke-virtual {v12, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v12, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9b

    :cond_1d5
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/tapjoy/internal/b7;->b:Lcom/tapjoy/internal/w7;

    iget-object v0, v0, Lcom/tapjoy/internal/w7;->c:Lcom/tapjoy/internal/p8;

    invoke-virtual {v0}, Lcom/tapjoy/internal/p8;->e()V

    return-void
.end method

.method public final onMeasure(II)V
    .registers 20

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-lt v1, v2, :cond_18

    iget-object v3, v0, Lcom/tapjoy/internal/b7;->c:Lcom/tapjoy/internal/l1;

    sget-object v4, Lcom/tapjoy/internal/l1;->c:Lcom/tapjoy/internal/l1;

    if-eq v3, v4, :cond_23

    iput-object v4, v0, Lcom/tapjoy/internal/b7;->c:Lcom/tapjoy/internal/l1;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/internal/b7;->a()V

    goto :goto_23

    :cond_18
    iget-object v3, v0, Lcom/tapjoy/internal/b7;->c:Lcom/tapjoy/internal/l1;

    sget-object v4, Lcom/tapjoy/internal/l1;->b:Lcom/tapjoy/internal/l1;

    if-eq v3, v4, :cond_23

    iput-object v4, v0, Lcom/tapjoy/internal/b7;->c:Lcom/tapjoy/internal/l1;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/internal/b7;->a()V

    :cond_23
    :goto_23
    iget v3, v0, Lcom/tapjoy/internal/b7;->d:I

    if-ne v3, v1, :cond_2b

    iget v3, v0, Lcom/tapjoy/internal/b7;->e:I

    if-eq v3, v2, :cond_f7

    :cond_2b
    iput v1, v0, Lcom/tapjoy/internal/b7;->d:I

    iput v2, v0, Lcom/tapjoy/internal/b7;->e:I

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v3, v0, Lcom/tapjoy/internal/b7;->f:Lcom/tapjoy/internal/o2;

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_5b

    iget-object v3, v3, Lcom/tapjoy/internal/o2;->c:Landroid/graphics/PointF;

    if-eqz v3, :cond_5b

    iget v6, v3, Landroid/graphics/PointF;->y:F

    mul-float v7, v1, v6

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, v3

    div-float v8, v7, v2

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v10, v8, v9

    if-gez v10, :cond_50

    sub-float/2addr v2, v7

    div-float/2addr v2, v5

    move v3, v2

    move v2, v7

    goto :goto_5c

    :cond_50
    cmpl-float v7, v8, v9

    if-lez v7, :cond_5b

    mul-float v3, v3, v2

    div-float/2addr v3, v6

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    move v4, v1

    move v1, v3

    :cond_5b
    const/4 v3, 0x0

    :goto_5c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v8, 0x0

    :goto_61
    if-ge v8, v6, :cond_65

    const/4 v9, 0x1

    goto :goto_66

    :cond_65
    const/4 v9, 0x0

    :goto_66
    if-eqz v9, :cond_f7

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tapjoy/internal/u0;

    iget-object v11, v8, Lcom/tapjoy/internal/u0;->b:Lcom/tapjoy/internal/d5;

    invoke-virtual {v11, v1, v2}, Lcom/tapjoy/internal/d5;->a(FF)F

    move-result v11

    iget-object v12, v8, Lcom/tapjoy/internal/u0;->c:Lcom/tapjoy/internal/d5;

    invoke-virtual {v12, v1, v2}, Lcom/tapjoy/internal/d5;->a(FF)F

    move-result v12

    iget-object v13, v8, Lcom/tapjoy/internal/u0;->d:Lcom/tapjoy/internal/d5;

    invoke-virtual {v13, v1, v2}, Lcom/tapjoy/internal/d5;->a(FF)F

    move-result v13

    iget-object v14, v8, Lcom/tapjoy/internal/u0;->e:Lcom/tapjoy/internal/d5;

    invoke-virtual {v14, v1, v2}, Lcom/tapjoy/internal/d5;->a(FF)F

    move-result v14

    iget v15, v8, Lcom/tapjoy/internal/u0;->f:I

    iget v8, v8, Lcom/tapjoy/internal/u0;->g:I

    const/16 v7, 0xe

    if-ne v15, v7, :cond_a4

    sub-float v7, v1, v13

    const/high16 v16, 0x40000000    # 2.0f

    div-float v7, v7, v16

    add-float/2addr v11, v7

    const/16 v15, 0x9

    goto :goto_a6

    :cond_a4
    const/high16 v16, 0x40000000    # 2.0f

    :goto_a6
    const/16 v7, 0xf

    const/16 v5, 0xa

    if-ne v8, v7, :cond_b3

    sub-float v7, v2, v14

    div-float v7, v7, v16

    add-float/2addr v12, v7

    const/16 v8, 0xa

    :cond_b3
    const/4 v7, -0x1

    invoke-virtual {v10, v15, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v10, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v10, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v10, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v7, 0x9

    if-ne v15, v7, :cond_d2

    add-float/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_dd

    :cond_d2
    const/16 v7, 0xb

    if-ne v15, v7, :cond_dd

    add-float/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v10, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_dd
    :goto_dd
    if-ne v8, v5, :cond_e7

    add-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_f2

    :cond_e7
    const/16 v5, 0xc

    if-ne v8, v5, :cond_f2

    add-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v10, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_f2
    :goto_f2
    move v8, v9

    const/high16 v5, 0x40000000    # 2.0f

    goto/16 :goto_61

    :cond_f7
    invoke-super/range {p0 .. p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_50

    iget-object p1, p0, Lcom/tapjoy/internal/b7;->h:Ljava/util/ArrayList;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tapjoy/internal/o7;

    if-eqz p2, :cond_d

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/tapjoy/internal/o7;->b()V

    goto :goto_d

    :cond_29
    iget-object p1, p0, Lcom/tapjoy/internal/b7;->g:Ljava/util/ArrayList;

    if-eqz p1, :cond_90

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tapjoy/internal/o7;

    if-eqz p2, :cond_31

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/tapjoy/internal/o7;->d:Z

    invoke-virtual {p2}, Lcom/tapjoy/internal/o7;->a()V

    goto :goto_31

    :cond_50
    iget-object p1, p0, Lcom/tapjoy/internal/b7;->g:Ljava/util/ArrayList;

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_58
    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tapjoy/internal/o7;

    if-eqz p2, :cond_58

    invoke-virtual {p2}, Lcom/tapjoy/internal/o7;->b()V

    goto :goto_58

    :cond_70
    iget-object p1, p0, Lcom/tapjoy/internal/b7;->h:Ljava/util/ArrayList;

    if-eqz p1, :cond_90

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_78
    :goto_78
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tapjoy/internal/o7;

    if-eqz p2, :cond_78

    invoke-virtual {p2}, Lcom/tapjoy/internal/o7;->b()V

    goto :goto_78

    :cond_90
    return-void
.end method
