###### Class com.tapjoy.TapjoyPluginAPI (com.tapjoy.TapjoyPluginAPI)
.class public Lcom/tapjoy/TapjoyPluginAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/TJOfferwallDiscoverView; = null

.field public static b:Landroid/widget/PopupWindow; = null

.field public static c:F = -1.0f

.field public static d:F = -1.0f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreatePopupWindow(Landroid/app/Activity;Landroid/view/ViewGroup;II)Landroid/widget/PopupWindow;
    .registers 9

    const-string v0, "TapjoyPluginAPI"

    const-string v1, "Unable to set popUpWindow window layout type: %s"

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    :try_start_1c
    const-class p2, Landroid/widget/PopupWindow;

    const-string p3, "setWindowLayoutType"

    new-array v3, p1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p0

    invoke-virtual {p2, p3, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array p3, p1, [Ljava/lang/Object;

    const/16 v3, 0x3ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p3, p0

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_3a} :catch_5d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_3a} :catch_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_3a} :catch_3b

    goto :goto_6d

    :catch_3b
    move-exception p2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p0

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    :catch_4c
    move-exception p2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p0

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    :catch_5d
    move-exception p2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p0

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6d
    return-object v2
.end method

.method public static DestroyOWDiscover()V
    .registers 1

    sget-object v0, Lcom/tapjoy/h;->a:Lcom/tapjoy/h;

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static RequestOWDiscover(Landroid/app/Activity;Ljava/lang/String;FFFFLcom/tapjoy/TJOfferwallDiscoverListener;)V
    .registers 16

    new-instance v8, Lcom/tapjoy/i;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/tapjoy/i;-><init>(Landroid/app/Activity;Lcom/tapjoy/TJOfferwallDiscoverListener;Ljava/lang/String;FFFF)V

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static RequestOWDiscover(Landroid/app/Activity;Ljava/lang/String;FLcom/tapjoy/TJOfferwallDiscoverListener;)V
    .registers 11

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/tapjoy/TapjoyPluginAPI;->RequestOWDiscover(Landroid/app/Activity;Ljava/lang/String;FFFFLcom/tapjoy/TJOfferwallDiscoverListener;)V

    return-void
.end method

.method public static ShowOWDiscover(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget v1, Lcom/tapjoy/TapjoyPluginAPI;->d:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    sget v3, Lcom/tapjoy/TapjoyPluginAPI;->c:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_21

    goto :goto_2b

    :cond_21
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v2, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v3, v0

    :goto_2b
    new-instance v0, Lcom/tapjoy/j;

    invoke-direct {v0, p0, v1, v3}, Lcom/tapjoy/j;-><init>(Landroid/app/Activity;FF)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a()V
    .registers 2

    sget-object v0, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_13

    sget-object v0, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAttachedInDecor()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    sget-object v0, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    sget-object v0, Lcom/tapjoy/TapjoyPluginAPI;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/tapjoy/TJOfferwallDiscoverView;->a()V

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyPluginAPI;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    :cond_22
    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;FF)V
    .registers 6

    sget-object v0, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    sget v0, Lcom/tapjoy/TapjoyPluginAPI;->c:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23

    const v0, 0x800033

    goto :goto_26

    :cond_23
    const v0, 0x800005

    :goto_26
    sget-object v2, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v2, p0, v0, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    sput v1, Lcom/tapjoy/TapjoyPluginAPI;->c:F

    sput v1, Lcom/tapjoy/TapjoyPluginAPI;->d:F

    :cond_3d
    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Lcom/tapjoy/TJOfferwallDiscoverListener;Ljava/lang/String;FFFF)V
    .registers 9

    invoke-static {}, Lcom/tapjoy/TapjoyPluginAPI;->DestroyOWDiscover()V

    new-instance v0, Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJOfferwallDiscoverView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyPluginAPI;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJOfferwallDiscoverView;->setListener(Lcom/tapjoy/TJOfferwallDiscoverListener;)V

    sget-object p1, Lcom/tapjoy/TapjoyPluginAPI;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-virtual {p1, p0, p2}, Lcom/tapjoy/TJOfferwallDiscoverView;->b(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/tapjoy/e0;

    invoke-direct {p1, p0}, Lcom/tapjoy/e0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/tapjoy/e0;->b()F

    move-result p1

    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object p2, Lcom/tapjoy/TapjoyPluginAPI;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p3, v0

    if-eqz v1, :cond_35

    mul-float p3, p3, p1

    :cond_35
    float-to-int p3, p3

    mul-float p4, p4, p1

    float-to-int p4, p4

    invoke-static {p0, p2, p3, p4}, Lcom/tapjoy/TapjoyPluginAPI;->CreatePopupWindow(Landroid/app/Activity;Landroid/view/ViewGroup;II)Landroid/widget/PopupWindow;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    cmpl-float p0, p5, v0

    if-eqz p0, :cond_49

    mul-float p5, p5, p1

    :cond_49
    sput p5, Lcom/tapjoy/TapjoyPluginAPI;->d:F

    cmpl-float p0, p6, v0

    if-eqz p0, :cond_51

    mul-float p6, p6, p1

    :cond_51
    sput p6, Lcom/tapjoy/TapjoyPluginAPI;->c:F

    return-void
.end method
