###### Class com.gameloft.adsmanager.JavaUtils.AnonymousClass1 (com.gameloft.adsmanager.JavaUtils$1)
.class Lcom/gameloft/adsmanager/JavaUtils$1;
.super Ljava/lang/Object;
.source "JavaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/Runnable;

.field final synthetic val$inCaseOfException:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/JavaUtils$1;->val$action:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/gameloft/adsmanager/JavaUtils$1;->val$inCaseOfException:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/adsmanager/JavaUtils$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_13

    :catch_6
    move-exception v0

    const-string v1, "PostAndLogExcepions"

    invoke-static {v1, v1, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/JavaUtils$1;->val$inCaseOfException:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_13
    :goto_13
    return-void
.end method
