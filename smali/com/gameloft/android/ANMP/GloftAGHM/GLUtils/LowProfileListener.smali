###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.LowProfileListener (com.gameloft.android.ANMP.GloftAGHM.GLUtils.LowProfileListener)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;
.super Ljava/lang/Object;
.source "LowProfileListener.java"


# static fields
.field private static a:Landroid/view/View$OnSystemUiVisibilityChangeListener; = null

.field private static b:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ActivateImmersiveMode(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_31

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->RegisterSystemUIListener(Landroid/app/Activity;)V

    goto :goto_46

    :cond_31
    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->MakeImmersive(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->RegisterSystemUIListener(Landroid/app/Activity;)V

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$a;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$a;-><init>(Landroid/app/Activity;)V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_46
    return-void
.end method

.method private static MakeImmersive(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static RegisterSystemUIListener(Landroid/app/Activity;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->a:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->b:Ljava/lang/String;

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener$b;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->a:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    :cond_25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->a:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public static VisibleImmersive(Landroid/app/Activity;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1e

    :try_start_6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_1e
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->MakeImmersive(Landroid/app/Activity;)V

    return-void
.end method

.method public static inVisibleImmersive(Landroid/app/Activity;)V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method

.method public static onKeyDown(Landroid/app/Activity;I)V
    .registers 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/16 v0, 0x19

    if-eq p1, v0, :cond_17

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1a

    :cond_17
    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->ActivateImmersiveMode(Landroid/app/Activity;)V

    :cond_1a
    return-void
.end method
