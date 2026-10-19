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
