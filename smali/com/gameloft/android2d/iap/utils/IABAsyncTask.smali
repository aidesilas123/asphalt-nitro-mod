###### Class com.gameloft.android2d.iap.utils.IABAsyncTask (com.gameloft.android2d.iap.utils.IABAsyncTask)
.class public abstract Lcom/gameloft/android2d/iap/utils/IABAsyncTask;
.super Ljava/lang/Object;
.source "IABAsyncTask.java"


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->b:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->a:Z

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/android2d/iap/utils/IABAsyncTask;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->a:Z

    return p0
.end method

.method static synthetic access$100(Lcom/gameloft/android2d/iap/utils/IABAsyncTask;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->c(Ljava/lang/Integer;)V

    return-void
.end method

.method private c(Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->b:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$a;

    invoke-direct {v1, p0, p1}, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$a;-><init>(Lcom/gameloft/android2d/iap/utils/IABAsyncTask;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/Bundle;)Ljava/lang/Integer;
.end method

.method public final b(Landroid/os/Bundle;Landroid/content/Context;)V
    .registers 4

    iput-object p2, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->f()V

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$b;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$b;-><init>(Lcom/gameloft/android2d/iap/utils/IABAsyncTask;Landroid/os/Bundle;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected d()V
    .registers 1

    return-void
.end method

.method protected e(Ljava/lang/Integer;)V
    .registers 2

    return-void
.end method

.method protected f()V
    .registers 1

    return-void
.end method
