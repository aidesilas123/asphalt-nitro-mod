###### Class com.tapjoy.internal.c7 (com.tapjoy.internal.c7)
.class public final Lcom/tapjoy/internal/c7;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Z

.field public b:F

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/FrameLayout;

.field public f:Landroid/widget/ImageView;

.field public g:Lcom/tapjoy/internal/j3;

.field public final h:Lcom/tapjoy/internal/t3;

.field public final i:Lcom/tapjoy/internal/y5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/t3;Lcom/tapjoy/internal/y5;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/tapjoy/internal/c7;->b:F

    iput-object p2, p0, Lcom/tapjoy/internal/c7;->h:Lcom/tapjoy/internal/t3;

    iput-object p3, p0, Lcom/tapjoy/internal/c7;->i:Lcom/tapjoy/internal/y5;

    invoke-virtual {p0}, Lcom/tapjoy/internal/c7;->b()V

    iget-object p1, p0, Lcom/tapjoy/internal/c7;->f:Landroid/widget/ImageView;

    iget-object p3, p2, Lcom/tapjoy/internal/t3;->c:Lcom/tapjoy/internal/n3;

    invoke-virtual {p3}, Lcom/tapjoy/internal/n3;->a()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/tapjoy/internal/c7;->g:Lcom/tapjoy/internal/j3;

    if-eqz p1, :cond_2c

    iget-object p2, p2, Lcom/tapjoy/internal/t3;->l:Lcom/tapjoy/internal/g8;

    if-eqz p2, :cond_2c

    iget-object p2, p2, Lcom/tapjoy/internal/g8;->b:Lcom/tapjoy/internal/n3;

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Lcom/tapjoy/internal/n3;->a()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/j3;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    int-to-float p1, p1

    iget v0, p0, Lcom/tapjoy/internal/c7;->b:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public final b()V
    .registers 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/c7;->c:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/tapjoy/internal/c7;->c:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/c7;->d:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/tapjoy/internal/c7;->d:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/c7;->e:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/tapjoy/internal/c7;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/c7;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/tapjoy/internal/c7;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/tapjoy/internal/c7;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/tapjoy/internal/c7;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tapjoy/internal/c7;->h:Lcom/tapjoy/internal/t3;

    iget-object v1, v1, Lcom/tapjoy/internal/t3;->l:Lcom/tapjoy/internal/g8;

    if-eqz v1, :cond_ae

    iget-object v4, v1, Lcom/tapjoy/internal/g8;->b:Lcom/tapjoy/internal/n3;

    if-eqz v4, :cond_82

    iget-object v4, v1, Lcom/tapjoy/internal/g8;->c:Landroid/graphics/Point;

    if-nez v4, :cond_83

    iget-object v1, v1, Lcom/tapjoy/internal/g8;->d:Landroid/graphics/Point;

    if-eqz v1, :cond_82

    goto :goto_83

    :cond_82
    const/4 v2, 0x0

    :cond_83
    :goto_83
    if-eqz v2, :cond_ae

    new-instance v1, Lcom/tapjoy/internal/j3;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/j3;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tapjoy/internal/c7;->g:Lcom/tapjoy/internal/j3;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tapjoy/internal/c7;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/tapjoy/internal/c7;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/tapjoy/internal/c7;->g:Lcom/tapjoy/internal/j3;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_ae
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 10

    iget-object v0, p0, Lcom/tapjoy/internal/c7;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lcom/tapjoy/internal/c7;->i:Lcom/tapjoy/internal/y5;

    iget-object p1, p1, Lcom/tapjoy/internal/y5;->c:Lcom/tapjoy/internal/i6;

    iget-object p1, p1, Lcom/tapjoy/internal/i6;->h:Lcom/tapjoy/internal/d;

    invoke-virtual {p1}, Lcom/tapjoy/internal/d;->cancel()V

    goto/16 :goto_d7

    :cond_f
    const/4 v0, 0x1

    if-eqz p1, :cond_34

    iget-object v1, p0, Lcom/tapjoy/internal/c7;->g:Lcom/tapjoy/internal/j3;

    if-ne p1, v1, :cond_34

    iget-boolean p1, v1, Lcom/tapjoy/internal/j3;->a:Z

    xor-int/2addr p1, v0

    iput-boolean p1, v1, Lcom/tapjoy/internal/j3;->a:Z

    if-eqz p1, :cond_22

    iget-object p1, v1, Lcom/tapjoy/internal/j3;->c:Landroid/graphics/Rect;

    iput-object p1, v1, Lcom/tapjoy/internal/j3;->e:Landroid/graphics/Rect;

    goto :goto_26

    :cond_22
    iget-object p1, v1, Lcom/tapjoy/internal/j3;->d:Landroid/graphics/Rect;

    iput-object p1, v1, Lcom/tapjoy/internal/j3;->e:Landroid/graphics/Rect;

    :goto_26
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/tapjoy/internal/c7;->i:Lcom/tapjoy/internal/y5;

    iget-object p1, p1, Lcom/tapjoy/internal/y5;->c:Lcom/tapjoy/internal/i6;

    iget-boolean v1, p1, Lcom/tapjoy/internal/i6;->l:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/tapjoy/internal/i6;->l:Z

    goto/16 :goto_d7

    :cond_34
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/tapjoy/internal/j9;

    if-eqz v1, :cond_d7

    iget-object v1, p0, Lcom/tapjoy/internal/c7;->i:Lcom/tapjoy/internal/y5;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/j9;

    iget-object v2, v1, Lcom/tapjoy/internal/y5;->c:Lcom/tapjoy/internal/i6;

    iget-object v3, v2, Lcom/tapjoy/internal/i6;->e:Lcom/tapjoy/internal/v1;

    iget-object v2, v2, Lcom/tapjoy/internal/i6;->g:Lcom/tapjoy/internal/t3;

    iget-object v2, v2, Lcom/tapjoy/internal/t3;->k:Ljava/util/LinkedHashMap;

    iget-object v4, p1, Lcom/tapjoy/internal/j9;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/tapjoy/internal/r1;->b:Lcom/tapjoy/internal/r1;

    const-string v6, "click"

    invoke-virtual {v3, v5, v6}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "region"

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Lcom/tapjoy/internal/h1;

    invoke-direct {v4, v2}, Lcom/tapjoy/internal/h1;-><init>(Ljava/io/StringWriter;)V

    const/4 v7, 0x0

    :try_start_70
    invoke-virtual {v4, v6}, Lcom/tapjoy/internal/h1;->a(Ljava/lang/Object;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_d2

    :try_start_73
    iget-object v4, v4, Lcom/tapjoy/internal/h1;->a:Ljava/io/Writer;

    invoke-virtual {v4}, Ljava/io/Writer;->flush()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7b} :catch_cd

    invoke-virtual {v3, v5}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    iget-object v2, v1, Lcom/tapjoy/internal/y5;->a:Landroid/app/Activity;

    iget-object v3, p1, Lcom/tapjoy/internal/j9;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_89

    goto :goto_99

    :cond_89
    :try_start_89
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_97} :catch_98

    goto :goto_99

    :catch_98
    nop

    :goto_99
    iget-object v2, p1, Lcom/tapjoy/internal/j9;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b6

    iget-object v2, v1, Lcom/tapjoy/internal/y5;->c:Lcom/tapjoy/internal/i6;

    iget-object v2, v2, Lcom/tapjoy/internal/x0;->b:Lcom/tapjoy/internal/z4;

    iget-object v3, v1, Lcom/tapjoy/internal/y5;->a:Landroid/app/Activity;

    iget-object v4, p1, Lcom/tapjoy/internal/j9;->f:Ljava/lang/String;

    iget-object v5, p1, Lcom/tapjoy/internal/j9;->g:Ljava/lang/String;

    invoke-static {v5}, Lcom/tapjoy/internal/r9;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tapjoy/internal/z4;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tapjoy/internal/y5;->c:Lcom/tapjoy/internal/i6;

    iput-boolean v0, v2, Lcom/tapjoy/internal/x0;->a:Z

    :cond_b6
    iget-object v0, v1, Lcom/tapjoy/internal/y5;->b:Lcom/tapjoy/internal/g2;

    iget-object v2, v1, Lcom/tapjoy/internal/y5;->c:Lcom/tapjoy/internal/i6;

    iget-object v2, v2, Lcom/tapjoy/internal/i6;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/j9;->h:Lcom/tapjoy/internal/a;

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/g2;->a(Ljava/lang/String;Lcom/tapjoy/internal/a;)V

    iget-boolean p1, p1, Lcom/tapjoy/internal/j9;->d:Z

    if-eqz p1, :cond_d7

    iget-object p1, v1, Lcom/tapjoy/internal/y5;->c:Lcom/tapjoy/internal/i6;

    iget-object p1, p1, Lcom/tapjoy/internal/i6;->h:Lcom/tapjoy/internal/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_d7

    :catch_cd
    move-exception p1

    invoke-static {p1}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v7

    :catch_d2
    move-exception p1

    invoke-static {p1}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v7

    :cond_d7
    :goto_d7
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .registers 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/tapjoy/internal/c7;->a:Z

    const/high16 v3, 0x43f00000    # 480.0f

    const/high16 v4, 0x43a00000    # 320.0f

    if-eqz v2, :cond_1b

    int-to-float v0, v0

    div-float/2addr v0, v3

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/c7;->b:F

    goto :goto_25

    :cond_1b
    int-to-float v0, v0

    div-float/2addr v0, v4

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/c7;->b:F

    :goto_25
    iget-object v0, p0, Lcom/tapjoy/internal/c7;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/tapjoy/internal/c7;->a:Z

    const/16 v2, 0x1e0

    const/16 v3, 0x140

    if-eqz v1, :cond_38

    const/16 v1, 0x1e0

    goto :goto_3a

    :cond_38
    const/16 v1, 0x140

    :goto_3a
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-boolean v1, p0, Lcom/tapjoy/internal/c7;->a:Z

    if-eqz v1, :cond_46

    const/16 v2, 0x140

    :cond_46
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/tapjoy/internal/c7;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/tapjoy/internal/c7;->a:Z

    const/16 v2, 0x1c0

    const/16 v3, 0x122

    if-eqz v1, :cond_5f

    const/16 v1, 0x1c0

    goto :goto_61

    :cond_5f
    const/16 v1, 0x122

    :goto_61
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-boolean v1, p0, Lcom/tapjoy/internal/c7;->a:Z

    if-eqz v1, :cond_6d

    const/16 v2, 0x122

    :cond_6d
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/tapjoy/internal/c7;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/tapjoy/internal/c7;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8b
    if-ge v3, v1, :cond_8f

    const/4 v4, 0x1

    goto :goto_90

    :cond_8f
    const/4 v4, 0x0

    :goto_90
    if-eqz v4, :cond_cc

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/j9;

    iget-object v3, v3, Lcom/tapjoy/internal/j9;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v6}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v3, v4

    goto :goto_8b

    :cond_cc
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/c7;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/tapjoy/internal/c7;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x1e

    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v3, v0

    iget-object v4, p0, Lcom/tapjoy/internal/c7;->h:Lcom/tapjoy/internal/t3;

    iget-object v4, v4, Lcom/tapjoy/internal/t3;->d:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/tapjoy/internal/c7;->h:Lcom/tapjoy/internal/t3;

    iget-object v4, v4, Lcom/tapjoy/internal/t3;->d:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/tapjoy/internal/c7;->g:Lcom/tapjoy/internal/j3;

    if-eqz v1, :cond_165

    iget-boolean v1, p0, Lcom/tapjoy/internal/c7;->a:Z

    const/16 v3, 0x10

    const/16 v4, 0xf

    if-eqz v1, :cond_111

    const/16 v1, 0x10

    goto :goto_113

    :cond_111
    const/16 v1, 0xf

    :goto_113
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v1

    iget-boolean v5, p0, Lcom/tapjoy/internal/c7;->a:Z

    if-eqz v5, :cond_11d

    const/16 v3, 0xf

    :cond_11d
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/tapjoy/internal/c7;->g:Lcom/tapjoy/internal/j3;

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tapjoy/internal/c7;->g:Lcom/tapjoy/internal/j3;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x1a

    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/tapjoy/internal/c7;->h:Lcom/tapjoy/internal/t3;

    iget-object v4, v4, Lcom/tapjoy/internal/t3;->l:Lcom/tapjoy/internal/g8;

    if-eqz v4, :cond_156

    iget-boolean v5, p0, Lcom/tapjoy/internal/c7;->a:Z

    if-eqz v5, :cond_149

    iget-object v5, v4, Lcom/tapjoy/internal/g8;->c:Landroid/graphics/Point;

    if-nez v5, :cond_14f

    iget-object v5, v4, Lcom/tapjoy/internal/g8;->d:Landroid/graphics/Point;

    goto :goto_14f

    :cond_149
    iget-object v5, v4, Lcom/tapjoy/internal/g8;->d:Landroid/graphics/Point;

    if-nez v5, :cond_14f

    iget-object v5, v4, Lcom/tapjoy/internal/g8;->c:Landroid/graphics/Point;

    :cond_14f
    :goto_14f
    if-eqz v5, :cond_156

    iget v2, v5, Landroid/graphics/Point;->x:I

    iget v4, v5, Landroid/graphics/Point;->y:I

    goto :goto_157

    :cond_156
    const/4 v4, 0x0

    :goto_157
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v4}, Lcom/tapjoy/internal/c7;->a(I)I

    move-result v1

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_165
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public setLandscape(Z)V
    .registers 7

    iput-boolean p1, p0, Lcom/tapjoy/internal/c7;->a:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/tapjoy/internal/c7;->h:Lcom/tapjoy/internal/t3;

    iget-object v0, p1, Lcom/tapjoy/internal/t3;->b:Lcom/tapjoy/internal/n3;

    iget-object v0, v0, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/tapjoy/internal/t3;->f:Lcom/tapjoy/internal/n3;

    iget-object v1, v1, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/tapjoy/internal/t3;->j:Ljava/util/ArrayList;

    goto :goto_1d

    :cond_11
    iget-object p1, p0, Lcom/tapjoy/internal/c7;->h:Lcom/tapjoy/internal/t3;

    iget-object v0, p1, Lcom/tapjoy/internal/t3;->a:Lcom/tapjoy/internal/n3;

    iget-object v0, v0, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/tapjoy/internal/t3;->e:Lcom/tapjoy/internal/n3;

    iget-object v1, v1, Lcom/tapjoy/internal/n3;->d:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/tapjoy/internal/t3;->i:Ljava/util/ArrayList;

    :goto_1d
    iget-object v2, p0, Lcom/tapjoy/internal/c7;->c:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v3}, Lcom/tapjoy/internal/ta;->a(Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    iget-object v0, p0, Lcom/tapjoy/internal/c7;->d:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v2}, Lcom/tapjoy/internal/ta;->a(Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    iget-object v0, p0, Lcom/tapjoy/internal/c7;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3f

    iget-object v0, p0, Lcom/tapjoy/internal/c7;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/j9;

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v3, p0, Lcom/tapjoy/internal/c7;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_47

    :cond_6c
    return-void
.end method
