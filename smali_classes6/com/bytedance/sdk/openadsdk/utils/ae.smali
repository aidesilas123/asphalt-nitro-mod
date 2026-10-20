###### Class com.bytedance.sdk.openadsdk.utils.ae (com.bytedance.sdk.openadsdk.utils.ae)
.class public Lcom/bytedance/sdk/openadsdk/utils/ae;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/ae$b;
    }
.end annotation


# direct methods
.method static synthetic a(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/utils/ae$b;Ljava/lang/Integer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/utils/ae$b;Ljava/lang/Integer;)V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/utils/ae$b;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "ZI",
            "Lcom/bytedance/sdk/openadsdk/utils/ae$b;",
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    const v0, 0x1f000045

    invoke-virtual {p0, v0, p3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const p3, 0x1f000046

    invoke-virtual {p0, p3, p2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const p2, 0x1f000044

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p3, v0, :cond_1c

    return-void

    :cond_1c
    new-instance p3, Lcom/bytedance/sdk/openadsdk/utils/ae$a;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/utils/ae$a;-><init>(Landroid/view/ViewGroup;)V

    if-eqz p4, :cond_41

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_41

    const/4 v0, 0x0

    :goto_2a
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/ae$1;

    invoke-direct {v2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ae$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/ae$a;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    if-eqz p1, :cond_56

    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/ae$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ae$2;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_56
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x12

    if-lt p1, p3, :cond_68

    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/ae$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ae$3;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_68
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/ae$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ae$4;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private static a(Landroid/view/View;I)Z
    .registers 3

    const/16 v0, 0x14

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/utils/ae$b;Ljava/lang/Integer;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_a

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/ae;->a(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_18

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/ae$b;->a(Landroid/view/View;Z)V

    :cond_18
    return-void
.end method
