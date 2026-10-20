###### Class io.didomi.drawable.j9 (io.didomi.sdk.j9)
.class public final Lio/didomi/sdk/j9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u001a\u0019\u0010\u0006\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0005\u001am\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0004\u0010\u0013\u001a\u0011\u0010\u0004\u001a\u00020\u0003*\u00020\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0014\u001a\u0011\u0010\u0006\u001a\u00020\u0003*\u00020\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0014\u001a%\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0016\u001a\u0011\u0010\u0017\u001a\u00020\u0003*\u00020\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroid/view/View;",
        "Lio/didomi/sdk/a;",
        "accessibility",
        "",
        "a",
        "(Landroid/view/View;Lio/didomi/sdk/a;)V",
        "b",
        "",
        "label",
        "actionDescription",
        "stateDescription",
        "",
        "announceState",
        "announceStateLabel",
        "",
        "actionId",
        "collectionItemPosition",
        "Lio/didomi/sdk/b;",
        "customClassName",
        "(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;)V",
        "(Landroid/view/View;)V",
        "description",
        "(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V",
        "c",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Landroid/view/View;)V
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/j9$b;

    invoke-direct {v0}, Lio/didomi/sdk/j9$b;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private static final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "$this_forceAnnounceForAccessibility"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_16

    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    goto :goto_1a

    :cond_16
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    :goto_1a
    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p0

    if-eqz p2, :cond_3e

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    if-eqz p3, :cond_43

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static final a(Landroid/view/View;Lio/didomi/sdk/a;)V
    .registers 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/sdk/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/didomi/sdk/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/didomi/sdk/a;->c()Z

    move-result v5

    invoke-virtual {p1}, Lio/didomi/sdk/a;->b()I

    move-result v7

    invoke-virtual {p1}, Lio/didomi/sdk/a;->d()Ljava/lang/Integer;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x90

    const/4 v11, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    return-void
.end method

.method public static final a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/didomi/sdk/a0;->a(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/didomi/sdk/qe;

    invoke-direct {v2, p0, v0, p1, p2}, Lio/didomi/sdk/qe;-><init>(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    return-void
.end method

.method private static final a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "$this_applyAccessibilityCustom"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    move-object p1, p2

    :cond_8
    invoke-static {p0, p1, p3}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;)V
    .registers 21

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_10

    invoke-static {p1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_10
    if-eqz p2, :cond_a1

    invoke-static {p2}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_a1

    :cond_1a
    const/4 v0, 0x1

    if-eqz v9, :cond_26

    invoke-static {p3}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_26

    :cond_24
    const/4 v1, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v1, 0x1

    :goto_27
    xor-int/lit8 v10, v1, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3d

    if-eqz v9, :cond_34

    invoke-virtual {p0, p3}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_34
    if-eqz v8, :cond_39

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_39
    move-object/from16 v3, p8

    move-object v1, v8

    goto :goto_82

    :cond_3d
    instance-of v0, v7, Landroid/widget/ImageButton;

    if-nez v0, :cond_4e

    if-nez v10, :cond_4e

    if-eqz p2, :cond_4b

    invoke-static {p2}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4b
    move-object/from16 v3, p8

    goto :goto_80

    :cond_4e
    if-eqz v8, :cond_67

    if-eqz v9, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6c

    :cond_67
    if-nez v8, :cond_6b

    move-object v0, v9

    goto :goto_6c

    :cond_6b
    move-object v0, v8

    :goto_6c
    if-eqz v0, :cond_4b

    instance-of v1, v7, Lio/didomi/sdk/view/mobile/DidomiToggle;

    if-nez v1, :cond_7d

    sget-object v1, Lio/didomi/sdk/b;->c:Lio/didomi/sdk/b;

    move-object/from16 v3, p8

    if-ne v3, v1, :cond_79

    goto :goto_81

    :cond_79
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_81

    :cond_7d
    move-object/from16 v3, p8

    goto :goto_81

    :goto_80
    const/4 v0, 0x0

    :goto_81
    move-object v1, v0

    :goto_82
    new-instance v11, Lio/didomi/sdk/j9$a;

    move-object v0, v11

    move-object v2, p0

    move-object/from16 v3, p8

    move-object v4, p2

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/j9$a;-><init>(Ljava/lang/String;Landroid/view/View;Lio/didomi/sdk/b;Ljava/lang/String;ILjava/lang/Integer;)V

    invoke-static {p0, v11}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    if-eqz p4, :cond_a1

    if-eqz v10, :cond_a1

    new-instance v0, Lio/didomi/sdk/se;

    move-object/from16 v1, p5

    invoke-direct {v0, p0, p1, v1, p3}, Lio/didomi/sdk/se;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a1
    :goto_a1
    return-void
.end method

.method public static synthetic a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V
    .registers 12

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_15

    const/4 p4, 0x0

    :cond_15
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1a

    move-object p5, v0

    :cond_1a
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_20

    const/16 p6, 0x10

    :cond_20
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_25

    move-object p7, v0

    :cond_25
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_2a

    move-object p8, v0

    :cond_2a
    invoke-static/range {p0 .. p8}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;)V

    return-void
.end method

.method public static final b(Landroid/view/View;)V
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/j9$c;

    invoke-direct {v0}, Lio/didomi/sdk/j9$c;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static final b(Landroid/view/View;Lio/didomi/sdk/a;)V
    .registers 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x37

    const/4 v10, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v10}, Lio/didomi/sdk/a;->a(Lio/didomi/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;ILjava/lang/Object;)Lio/didomi/sdk/a;

    move-result-object v0

    invoke-static {p0, v0}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Lio/didomi/sdk/a;)V

    new-instance v0, Lio/didomi/sdk/re;

    invoke-direct {v0, p0, p1}, Lio/didomi/sdk/re;-><init>(Landroid/view/View;Lio/didomi/sdk/a;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3b

    :cond_2a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x37

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lio/didomi/sdk/a;->a(Lio/didomi/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;ILjava/lang/Object;)Lio/didomi/sdk/a;

    move-result-object p1

    invoke-static {p0, p1}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Lio/didomi/sdk/a;)V

    :goto_3b
    return-void
.end method

.method public static final c(Landroid/view/View;)V
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/j9$d;

    invoke-direct {v0}, Lio/didomi/sdk/j9$d;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private static final c(Landroid/view/View;Lio/didomi/sdk/a;)V
    .registers 3

    const-string v0, "$this_updateState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$accessibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/a;->f()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;Lio/didomi/sdk/a;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/j9;->c(Landroid/view/View;Lio/didomi/sdk/a;)V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
