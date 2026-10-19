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
