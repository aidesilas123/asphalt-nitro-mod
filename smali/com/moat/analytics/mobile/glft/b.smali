###### Class com.moat.analytics.mobile.glft.b (com.moat.analytics.mobile.glft.b)
.class Lcom/moat/analytics/mobile/glft/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/glft/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/moat/analytics/mobile/glft/i;

.field final b:Ljava/lang/String;

.field final c:Z

.field d:Z

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private h:Z

.field private i:Lcom/moat/analytics/mobile/glft/b$a;

.field private j:Lorg/json/JSONObject;

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/Rect;

.field private m:Lorg/json/JSONObject;

.field private n:Lorg/json/JSONObject;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;ZZ)V
    .registers 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/b;->o:Ljava/util/Map;

    const-string v0, "{}"

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/b;->p:Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "MoatBaseTracker"

    const-string v2, "Initializing."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :cond_2e
    const-string v0, ""

    :goto_30
    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/b;->e:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/moat/analytics/mobile/glft/b;->g:Z

    iput-boolean p3, p0, Lcom/moat/analytics/mobile/glft/b;->c:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/glft/b;->d:Z

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/glft/b;->h:Z

    new-instance p2, Lcom/moat/analytics/mobile/glft/b$a;

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const-wide/16 v0, 0x0

    invoke-direct {p2, p0, p3, v0, v1}, Lcom/moat/analytics/mobile/glft/b$a;-><init>(Lcom/moat/analytics/mobile/glft/b;Landroid/graphics/Rect;D)V

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/b;->i:Lcom/moat/analytics/mobile/glft/b$a;

    return-void
.end method

.method private a(Landroid/view/View;)F
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_4
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2f

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_14

    goto :goto_2f

    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_4

    :cond_2f
    :goto_2f
    return v0
.end method

.method private static a(Landroid/graphics/Rect;)I
    .registers 2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method static a(Landroid/graphics/Rect;Ljava/util/Set;)I
    .registers 12
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/moat/analytics/mobile/glft/b$1;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/glft/b$1;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3f
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    :goto_43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_b1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_af

    :cond_5e
    new-instance v3, Landroid/graphics/Rect;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v5, p0, Landroid/graphics/Rect;->top:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v1, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_81
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_af

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-static {v6, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_81

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    if-le v7, v1, :cond_a9

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v8, v1

    mul-int v7, v7, v8

    add-int/2addr v2, v7

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    :cond_a9
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v6, v7, :cond_81

    :cond_af
    :goto_af
    move v1, v4

    goto :goto_43

    :cond_b1
    move v1, v2

    :cond_b2
    return v1
.end method

.method private a(Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;
    .registers 5

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private a(Landroid/graphics/Rect;ZZZ)Lcom/moat/analytics/mobile/glft/b$a;
    .registers 13

    new-instance v0, Lcom/moat/analytics/mobile/glft/b$a;

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const-wide/16 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/moat/analytics/mobile/glft/b$a;-><init>(Lcom/moat/analytics/mobile/glft/b;Landroid/graphics/Rect;D)V

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/b;->a(Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->k()Z

    move-result v1

    if-eqz v1, :cond_6a

    if-eqz p2, :cond_6a

    if-eqz p3, :cond_6a

    if-nez p4, :cond_6a

    if-lez p1, :cond_6a

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_6a

    invoke-static {p2}, Lcom/moat/analytics/mobile/glft/b;->a(Landroid/graphics/Rect;)I

    move-result p3

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6a

    iput-object p2, v0, Lcom/moat/analytics/mobile/glft/b$a;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v1

    invoke-static {p2, v1, p4}, Lcom/moat/analytics/mobile/glft/b;->a(Landroid/graphics/Rect;Landroid/view/View;Ljava/util/Set;)Z

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_53

    iput-wide v2, v0, Lcom/moat/analytics/mobile/glft/b$a;->c:D

    :cond_53
    if-nez v1, :cond_6a

    invoke-static {p2, p4}, Lcom/moat/analytics/mobile/glft/b;->a(Landroid/graphics/Rect;Ljava/util/Set;)I

    move-result p2

    if-lez p2, :cond_62

    int-to-double v4, p2

    int-to-double v6, p3

    mul-double v6, v6, v2

    div-double/2addr v4, v6

    iput-wide v4, v0, Lcom/moat/analytics/mobile/glft/b$a;->c:D

    :cond_62
    sub-int/2addr p3, p2

    int-to-double p2, p3

    int-to-double v4, p1

    mul-double v4, v4, v2

    div-double/2addr p2, v4

    iput-wide p2, v0, Lcom/moat/analytics/mobile/glft/b$a;->b:D

    :cond_6a
    return-object v0
.end method

.method private a(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/glft/b;->b(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/b;->b(Landroid/graphics/Rect;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private static a(Landroid/graphics/Rect;Landroid/view/View;Ljava/util/Set;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    const-string v2, "MoatBaseTracker"

    const-string v3, "starting covering rect search"

    invoke-static {v0, v2, p1, v3}, Lcom/moat/analytics/mobile/glft/n;->b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_18
    :goto_18
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c1

    const/16 v7, 0xfa

    if-lt v5, v7, :cond_24

    goto/16 :goto_c1

    :cond_24
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    const-string v6, "found target"

    invoke-static {v0, v2, p0, v6}, Lcom/moat/analytics/mobile/glft/n;->b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto :goto_18

    :cond_39
    invoke-static {v7}, Lcom/moat/analytics/mobile/glft/b;->b(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_40

    goto :goto_18

    :cond_40
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_5c

    instance-of v8, v7, Landroid/widget/ListView;

    if-nez v8, :cond_5c

    move-object v8, v7

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v4

    :goto_50
    if-ltz v9, :cond_5c

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, -0x1

    goto :goto_50

    :cond_5c
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_7e

    invoke-virtual {v7}, Landroid/view/View;->getElevation()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6f

    goto :goto_80

    :cond_6f
    if-eqz v6, :cond_82

    invoke-virtual {v7}, Landroid/view/View;->getElevation()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_82

    goto :goto_80

    :cond_7e
    if-eqz v6, :cond_82

    :goto_80
    const/4 v8, 0x1

    goto :goto_83

    :cond_82
    const/4 v8, 0x0

    :goto_83
    if-eqz v8, :cond_18

    invoke-static {v7}, Lcom/moat/analytics/mobile/glft/b;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8, p0, v8}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_18

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Covered by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v2, v7, v9}, Lcom/moat/analytics/mobile/glft/n;->b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_18

    return v4

    :cond_c1
    :goto_c1
    return v3
.end method

.method private b(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;
    .registers 6

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_8

    return-object p1

    :cond_8
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    div-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private static b(Landroid/graphics/Rect;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "w"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "h"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Landroid/view/View;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    float-to-double v0, p0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method private static c(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v2, v1, v0, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    nop

    :array_20
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method private d()V
    .registers 6

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/b;->f:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/a/a/a;->a(Ljava/lang/Object;)V

    const/4 v0, 0x3

    const-string v1, "MoatBaseTracker"

    const-string v2, "Attempting bridge installation."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->i()Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, Lcom/moat/analytics/mobile/glft/b;->g:Z

    if-nez v2, :cond_28

    iget-boolean v2, p0, Lcom/moat/analytics/mobile/glft/b;->c:Z

    if-nez v2, :cond_28

    new-instance v2, Lcom/moat/analytics/mobile/glft/i;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->j()Landroid/webkit/WebView;

    move-result-object v3

    sget-object v4, Lcom/moat/analytics/mobile/glft/i$a;->a:Lcom/moat/analytics/mobile/glft/i$a;

    invoke-direct {v2, v3, v4}, Lcom/moat/analytics/mobile/glft/i;-><init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/glft/i$a;)V

    iput-object v2, p0, Lcom/moat/analytics/mobile/glft/b;->a:Lcom/moat/analytics/mobile/glft/i;

    :cond_28
    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/b;->a:Lcom/moat/analytics/mobile/glft/i;

    iget-boolean v2, v2, Lcom/moat/analytics/mobile/glft/i;->a:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bridge "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3b

    const-string v2, ""

    goto :goto_3d

    :cond_3b
    const-string v2, "not "

    :goto_3d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "installed."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4f

    :cond_4a
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/moat/analytics/mobile/glft/b;->a:Lcom/moat/analytics/mobile/glft/i;

    const-string v2, "Bridge not installed, WebView is null."

    :goto_4f
    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private e()Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v0, v3, :cond_1b

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->k()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1

    :cond_1b
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->k()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    return v1
.end method

.method private f()Z
    .registers 2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->k()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private g()Z
    .registers 2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private h()F
    .registers 2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->k()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/glft/b;->a(Landroid/view/View;)F

    move-result v0

    :goto_10
    return v0
.end method

.method private i()Z
    .registers 2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->j()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private j()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method private k()Z
    .registers 2

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private l()Landroid/util/DisplayMetrics;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_23

    sget-object v0, Lcom/moat/analytics/mobile/glft/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_23

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object v1

    :cond_23
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 15

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "{}"

    :try_start_7
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->k()Z

    move-result v2

    if-eqz v2, :cond_145

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->l()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->e()Z

    move-result v3

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->f()Z

    move-result v4

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->g()Z

    move-result v5

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->h()F

    move-result v6

    const-string v7, "dr"

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "dv"

    invoke-static {}, Lcom/moat/analytics/mobile/glft/p;->a()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "adKey"

    iget-object v8, p0, Lcom/moat/analytics/mobile/glft/b;->b:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "isAttached"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_48

    const/4 v10, 0x1

    goto :goto_49

    :cond_48
    const/4 v10, 0x0

    :goto_49
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "inFocus"

    if-eqz v4, :cond_56

    const/4 v10, 0x1

    goto :goto_57

    :cond_56
    const/4 v10, 0x0

    :goto_57
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "isHidden"

    if-eqz v5, :cond_64

    const/4 v10, 0x1

    goto :goto_65

    :cond_64
    const/4 v10, 0x0

    :goto_65
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "opacity"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/moat/analytics/mobile/glft/b;->a(Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->b()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {p0, v7, v3, v4, v5}, Lcom/moat/analytics/mobile/glft/b;->a(Landroid/graphics/Rect;ZZZ)Lcom/moat/analytics/mobile/glft/b$a;

    move-result-object v3

    iget-object v4, p0, Lcom/moat/analytics/mobile/glft/b;->j:Lorg/json/JSONObject;

    if-eqz v4, :cond_a3

    iget-wide v4, v3, Lcom/moat/analytics/mobile/glft/b$a;->b:D

    iget-object v10, p0, Lcom/moat/analytics/mobile/glft/b;->i:Lcom/moat/analytics/mobile/glft/b$a;

    iget-wide v11, v10, Lcom/moat/analytics/mobile/glft/b$a;->b:D

    cmpl-double v13, v4, v11

    if-nez v13, :cond_a3

    iget-object v4, v3, Lcom/moat/analytics/mobile/glft/b$a;->a:Landroid/graphics/Rect;

    iget-object v5, v10, Lcom/moat/analytics/mobile/glft/b$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    iget-wide v4, v3, Lcom/moat/analytics/mobile/glft/b$a;->c:D

    iget-object v10, p0, Lcom/moat/analytics/mobile/glft/b;->i:Lcom/moat/analytics/mobile/glft/b$a;

    iget-wide v10, v10, Lcom/moat/analytics/mobile/glft/b$a;->c:D

    cmpl-double v12, v4, v10

    if-eqz v12, :cond_b5

    :cond_a3
    iput-object v3, p0, Lcom/moat/analytics/mobile/glft/b;->i:Lcom/moat/analytics/mobile/glft/b$a;

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/moat/analytics/mobile/glft/b;->i:Lcom/moat/analytics/mobile/glft/b$a;

    iget-object v5, v5, Lcom/moat/analytics/mobile/glft/b$a;->a:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v2}, Lcom/moat/analytics/mobile/glft/b;->a(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v4, p0, Lcom/moat/analytics/mobile/glft/b;->j:Lorg/json/JSONObject;

    const/4 v8, 0x1

    :cond_b5
    const-string v4, "coveredPercent"

    iget-wide v10, v3, Lcom/moat/analytics/mobile/glft/b$a;->c:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/b;->n:Lorg/json/JSONObject;

    if-eqz v3, :cond_cc

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/b;->l:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_da

    :cond_cc
    iput-object v6, p0, Lcom/moat/analytics/mobile/glft/b;->l:Landroid/graphics/Rect;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {p0, v6, v2}, Lcom/moat/analytics/mobile/glft/b;->a(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lcom/moat/analytics/mobile/glft/b;->n:Lorg/json/JSONObject;

    const/4 v8, 0x1

    :cond_da
    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/b;->m:Lorg/json/JSONObject;

    if-eqz v3, :cond_e6

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/b;->k:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f4

    :cond_e6
    iput-object v7, p0, Lcom/moat/analytics/mobile/glft/b;->k:Landroid/graphics/Rect;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {p0, v7, v2}, Lcom/moat/analytics/mobile/glft/b;->a(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lcom/moat/analytics/mobile/glft/b;->m:Lorg/json/JSONObject;

    const/4 v8, 0x1

    :cond_f4
    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/b;->o:Ljava/util/Map;

    if-eqz v2, :cond_101

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ff

    goto :goto_101

    :cond_ff
    move v9, v8

    goto :goto_103

    :cond_101
    :goto_101
    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/b;->o:Ljava/util/Map;

    :goto_103
    if-eqz v9, :cond_13c

    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/b;->o:Ljava/util/Map;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "screen"

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/b;->n:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "view"

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/b;->m:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "visible"

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "maybe"

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/b;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "visiblePercent"

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/b;->i:Lcom/moat/analytics/mobile/glft/b$a;

    iget-wide v3, v3, Lcom/moat/analytics/mobile/glft/b$a;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/moat/analytics/mobile/glft/b;->p:Ljava/lang/String;

    goto :goto_145

    :cond_13c
    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/b;->p:Ljava/lang/String;
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13e} :catch_13f

    goto :goto_145

    :catch_13f
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/glft/b;->p:Ljava/lang/String;

    :cond_145
    :goto_145
    return-object v1
.end method

.method a(Landroid/webkit/WebView;)V
    .registers 3

    if-eqz p1, :cond_1b

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/b;->f:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/b;->a:Lcom/moat/analytics/mobile/glft/i;

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->d()V

    :cond_10
    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/b;->a:Lcom/moat/analytics/mobile/glft/i;

    if-eqz p1, :cond_1b

    iget-boolean v0, p1, Lcom/moat/analytics/mobile/glft/i;->a:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p1, p0}, Lcom/moat/analytics/mobile/glft/i;->a(Lcom/moat/analytics/mobile/glft/b;)V

    :cond_1b
    return-void
.end method

.method a(Lcom/moat/analytics/mobile/glft/i;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/b;->a:Lcom/moat/analytics/mobile/glft/i;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/b;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-virtual {v0, p1}, Lcom/moat/analytics/mobile/glft/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method b()Landroid/graphics/Rect;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/b;->k()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v0, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/b;->c()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    :cond_31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    nop

    :array_38
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data
.end method

.method c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public changeTargetView(Landroid/view/View;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changing view to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_2d
    const-string v1, "null"

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MoatBaseTracker"

    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/b;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method startTracking()V
    .registers 6

    const/4 v0, 0x3

    const-string v1, "MoatBaseTracker"

    const-string v2, "Attempting to start impression."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/moat/analytics/mobile/glft/b;->h:Z

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/b;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-virtual {v2, p0}, Lcom/moat/analytics/mobile/glft/i;->b(Lcom/moat/analytics/mobile/glft/b;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Impression "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_21

    const-string v4, ""

    goto :goto_23

    :cond_21
    const-string v4, "not "

    :goto_23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "started."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, p0, v3}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_3f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/b;->d:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/glft/b;->h:Z

    goto :goto_3f

    :cond_3a
    const-string v2, "startTracking failed, tracker already started"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public stopTracking()V
    .registers 6

    const/4 v0, 0x3

    const-string v1, "MoatBaseTracker"

    const-string v2, "Attempting to stop impression."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/glft/b;->d:Z

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/b;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-virtual {v2, p0}, Lcom/moat/analytics/mobile/glft/i;->c(Lcom/moat/analytics/mobile/glft/b;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Impression tracking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_20

    const-string v2, ""

    goto :goto_22

    :cond_20
    const-string v2, "not "

    :goto_22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "stopped."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
