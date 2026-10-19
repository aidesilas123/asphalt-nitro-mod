###### Class com.bytedance.sdk.openadsdk.core.widget.c (com.bytedance.sdk.openadsdk.core.widget.c)
.class public Lcom/bytedance/sdk/openadsdk/core/widget/c;
.super Landroid/graphics/drawable/Drawable;
.source "TTCustomShadowBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    }
.end annotation


# instance fields
.field private final a:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final b:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final c:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:[F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Landroid/graphics/LinearGradient;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[I[FILandroid/graphics/LinearGradient;IIII)V
    .registers 10
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/LinearGradient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c:[I

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->d:[F

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->b:I

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->e:Landroid/graphics/LinearGradient;

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->f:I

    iput p7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->g:I

    iput p8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:I

    iput p9, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->i:I

    return-void
.end method

.method private a()V
    .registers 12

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:I

    int-to-float v3, v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->i:I

    int-to-float v4, v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->b:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Landroid/graphics/RectF;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c:[I

    if-eqz v0, :cond_56

    array-length v2, v0

    if-le v2, v1, :cond_56

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->d:[F

    if-eqz v2, :cond_32

    array-length v3, v2

    if-lez v3, :cond_32

    array-length v2, v2

    array-length v0, v0

    if-ne v2, v0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->e:Landroid/graphics/LinearGradient;

    if-nez v2, :cond_52

    new-instance v2, Landroid/graphics/LinearGradient;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x0

    iget v6, v3, Landroid/graphics/RectF;->right:F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c:[I

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->d:[F

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    move-object v9, v1

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    :cond_52
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_5d

    :cond_56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5d
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/widget/c$a;)V
    .registers 4

    if-eqz p0, :cond_11

    if-nez p1, :cond_5

    goto :goto_11

    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a()Lcom/bytedance/sdk/openadsdk/core/widget/c;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Landroid/graphics/RectF;

    if-nez v0, :cond_29

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->g:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->h:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->i:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    sub-int/2addr v7, v4

    int-to-float v4, v7

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v6

    int-to-float v0, v0

    invoke-direct {v1, v2, v5, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Landroid/graphics/RectF;

    :cond_29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    if-nez v0, :cond_30

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a()V

    :cond_30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->j:Landroid/graphics/RectF;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->f:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_7
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c;->k:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_7
    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.core.widget.c.a (com.bytedance.sdk.openadsdk.core.widget.c$a)
.class public Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
.super Ljava/lang/Object;
.source "TTCustomShadowBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private b:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private c:[I

.field private d:[F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroid/graphics/LinearGradient;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->h:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->i:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_ssxinmian8"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/s;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_ssxinxian3"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/s;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->b:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->f:I

    const/16 v1, 0x10

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->g:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->h:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->i:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a:I

    return-object p0
.end method

.method public a([I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .registers 2
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->c:[I

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/core/widget/c;
    .registers 12

    new-instance v10, Lcom/bytedance/sdk/openadsdk/core/widget/c;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->c:[I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->d:[F

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->b:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->e:Landroid/graphics/LinearGradient;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->f:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->g:I

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->h:I

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->i:I

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/core/widget/c;-><init>(I[I[FILandroid/graphics/LinearGradient;IIII)V

    return-object v10
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->b:I

    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->f:I

    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->h:I

    return-object p0
.end method

.method public e(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->i:I

    return-object p0
.end method
