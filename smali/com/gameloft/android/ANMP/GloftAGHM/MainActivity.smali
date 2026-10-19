###### Class com.gameloft.android.ANMP.GloftAGHM.MainActivity (com.gameloft.android.ANMP.GloftAGHM.MainActivity)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/view/SurfaceView;

.field private g:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;

.field private h:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;

.field private i:Z

.field j:Z

.field public k:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->b:Z

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->c:Z

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->e:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->f:Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->g:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;

    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->h:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->j:Z

    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->k:Landroid/content/Intent;

    return-void
.end method

.method private O()I
    .registers 10

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x8

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_2c

    if-ne v0, v7, :cond_2e

    :cond_2c
    if-gt v1, v2, :cond_3e

    :cond_2e
    if-eq v0, v8, :cond_32

    if-ne v0, v6, :cond_35

    :cond_32
    if-le v2, v1, :cond_35

    goto :goto_3e

    :cond_35
    if-eqz v0, :cond_4a

    if-eq v0, v8, :cond_4c

    if-eq v0, v7, :cond_4d

    if-eq v0, v6, :cond_47

    goto :goto_4a

    :cond_3e
    :goto_3e
    if-eqz v0, :cond_4c

    if-eq v0, v8, :cond_4a

    if-eq v0, v7, :cond_47

    if-eq v0, v6, :cond_4d

    goto :goto_4c

    :cond_47
    const/16 v3, 0x9

    goto :goto_4d

    :cond_4a
    :goto_4a
    const/4 v3, 0x0

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v3, 0x1

    :cond_4d
    :goto_4d
    return v3
.end method

.method private Q()V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->R()V

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->S()V

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->ActivateImmersiveMode(Landroid/app/Activity;)V

    return-void
.end method

.method private R()V
    .registers 3

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->g:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->h:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->d(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private S()V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeSetActivityContainer(Landroid/app/Activity;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeInit()V

    return-void
.end method

.method private Start()V
    .registers 6

    const-string v1, "TElURUFQS1MuQ09NICYgOU1PRC5DT00="

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private T()V
    .registers 9

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v3, 0x8000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x384

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_35

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_38

    :cond_35
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_38
    return-void
.end method

.method private V()V
    .registers 2

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->c:Z

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->h:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->c()V

    :cond_c
    return-void
.end method

.method private Y(Z)V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->T()V

    return-void
.end method

.method static synthetic access$100(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->Y(Z)V

    return-void
.end method

.method public static getActivityContext()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    return-object v0
.end method


# virtual methods
.method public N(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->b:Z

    new-instance p1, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$b;

    invoke-direct {p1, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$b;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public P()I
    .registers 6

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eqz v0, :cond_25

    const/4 v3, 0x2

    if-ne v0, v3, :cond_27

    :cond_25
    if-gt v1, v2, :cond_31

    :cond_27
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2d

    const/4 v4, 0x3

    if-ne v0, v4, :cond_30

    :cond_2d
    if-le v2, v1, :cond_30

    goto :goto_31

    :cond_30
    return v3

    :cond_31
    :goto_31
    const/4 v0, 0x0

    return v0
.end method

.method public U()V
    .registers 2

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$a;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public W(Z)V
    .registers 3

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$c;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$c;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public X(Z)V
    .registers 3

    if-nez p1, :cond_a

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->O()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3d

    :cond_a
    iget-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->j:Z

    const/16 v0, 0x12

    if-eqz p1, :cond_2f

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_2a

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "SO-01G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3d

    :cond_24
    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3d

    :cond_2a
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3d

    :cond_2f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_39

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_3d

    :cond_39
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_3d
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p1, p2, p3}, Lcom/gameloft/android2d/iap/IAPLib;->handleActivityResult(IILandroid/content/Intent;)Z

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->h:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->a(IILandroid/content/Intent;)V

    :cond_f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_f

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_13

    :cond_f
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_13
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->Start()V

    move-object/from16 v0, p0

    invoke-static {v0}, Lcom/save;->a(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->k:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2d

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2d
    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->j:Z

    invoke-virtual {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->X(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    const-string v0, "asphaltnitro"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->e:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/TopLayer;->SetContainer(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->Q()V

    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->g:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->onKeyDown(Landroid/app/Activity;I)V

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->g:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->inVisibleImmersive(Landroid/app/Activity;)V

    :cond_b
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->g:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;->c(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->c:Z

    if-nez v0, :cond_16

    iput-boolean v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->c:Z

    iput-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->d:Z

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->h:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->b()V

    :cond_16
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-ne v0, v2, :cond_1e

    iput-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    :cond_1e
    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->d:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->V()V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->g:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/a;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onTrimMemory(I)V

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NotifyTrimMemory(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-ge v0, v2, :cond_26

    if-eqz p1, :cond_15

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->c:Z

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->V()V

    const/4 v0, 0x1

    goto :goto_27

    :cond_15
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->c:Z

    if-nez v0, :cond_24

    iput-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->c:Z

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->h:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->b()V

    :cond_24
    iput-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->d:Z

    :cond_26
    const/4 v0, 0x0

    :goto_27
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Galaxy Nexus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    if-eqz p1, :cond_3d

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->c:Z

    if-eqz v0, :cond_4a

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->V()V

    goto :goto_4a

    :cond_3d
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->c:Z

    if-nez v0, :cond_48

    iput-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->c:Z

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->h:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->b()V

    :cond_48
    iput-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->d:Z

    :cond_4a
    :goto_4a
    if-eqz p1, :cond_4f

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/LowProfileListener;->ActivateImmersiveMode(Landroid/app/Activity;)V

    :cond_4f
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    iget-boolean p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    if-eqz p2, :cond_d

    if-le p3, p4, :cond_d

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeSurfaceChanged(Landroid/view/Surface;II)V

    :cond_d
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->i:Z

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeSurfaceChanged(Landroid/view/Surface;II)V

    :cond_9
    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.MainActivity.a (com.gameloft.android.ANMP.GloftAGHM.MainActivity$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$a;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$a;->a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.MainActivity.b (com.gameloft.android.ANMP.GloftAGHM.MainActivity$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$b;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->N(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$b;->a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$b;->a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;)V

    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.MainActivity.c (com.gameloft.android.ANMP.GloftAGHM.MainActivity$c)
.class Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$c;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->W(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$c;->b:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    iput-boolean p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$c;->b:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity$c;->a:Z

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->access$100(Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;Z)V

    return-void
.end method
