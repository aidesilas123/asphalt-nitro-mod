###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsBridgeClass (com.gameloft.android.ANMP.GloftAGHM.PopUpsBridgeClass)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;
.super Ljava/lang/Object;
.source "PopUpsBridgeClass.java"


# static fields
.field static a:Landroid/app/Activity;


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

.method public static CallJavascript(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->GetInstance()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static DestroyPopUps()V
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->a:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$a;

    invoke-direct {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static HidePopUpsView()V
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->a:Landroid/app/Activity;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$c;

    invoke-direct {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public static InitBridgeLibrary(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .registers 3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->GetInstance()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->j(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->a:Landroid/app/Activity;

    return-void
.end method

.method public static InitPopUps()Z
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->GetInstance()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->o()Z

    move-result v0

    return v0
.end method

.method public static Log(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->nativeLog(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static OnAssetTracking(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->nativeOnAssetTracking(Ljava/lang/String;)V

    return-void
.end method

.method public static OnControllerEvent(ID)V
    .registers 4

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->GetInstance()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->e(ID)V

    return-void
.end method

.method public static OnDownloadState(I)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->nativeOnDownloadState(I)V

    return-void
.end method

.method public static OnErrorMessage(I)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->nativeOnErrorMessage(I)V

    return-void
.end method

.method public static OnViewState(I)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->nativeOnViewState(I)V

    return-void
.end method

.method public static PopUpsViewState()I
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->GetInstance()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->n()I

    move-result v0

    return v0
.end method

.method public static SetDataSurvey(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->GetInstance()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static SetPopUpsViewSize(IIII)V
    .registers 5

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->GetInstance()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->q(IIII)V

    return-void
.end method

.method public static ShowPopUpsView(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    :try_start_2
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$b;

    invoke-direct {v2, p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->a:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    move-object v0, p0

    :catch_18
    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;->e()I

    move-result p0

    return p0
.end method

.method public static native nativeLog(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native nativeOnAssetTracking(Ljava/lang/String;)V
.end method

.method public static native nativeOnDownloadState(I)V
.end method

.method public static native nativeOnErrorMessage(I)V
.end method

.method public static native nativeOnViewState(I)V
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsBridgeClass.a (com.gameloft.android.ANMP.GloftAGHM.PopUpsBridgeClass$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$a;
.super Ljava/lang/Object;
.source "PopUpsBridgeClass.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->DestroyPopUps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->GetInstance()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->f()V

    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsBridgeClass.b (com.gameloft.android.ANMP.GloftAGHM.PopUpsBridgeClass$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$b;
.super Ljava/lang/Object;
.source "PopUpsBridgeClass.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->ShowPopUpsView(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->GetInstance()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$b;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->k(ZLjava/lang/String;Ljava/lang/String;)Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$b;->a()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager$PopUpsError;

    move-result-object v0

    return-object v0
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.PopUpsBridgeClass.c (com.gameloft.android.ANMP.GloftAGHM.PopUpsBridgeClass$c)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass$c;
.super Ljava/lang/Object;
.source "PopUpsBridgeClass.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsBridgeClass;->HidePopUpsView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->GetInstance()Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PopUpsManager;->d()V

    return-void
.end method
