###### Class com.gameloft.android2d.iap.utils.IABAsyncTask.a (com.gameloft.android2d.iap.utils.IABAsyncTask$a)
.class Lcom/gameloft/android2d/iap/utils/IABAsyncTask$a;
.super Ljava/lang/Object;
.source "IABAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->c(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/gameloft/android2d/iap/utils/IABAsyncTask;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/IABAsyncTask;Ljava/lang/Integer;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$a;->b:Lcom/gameloft/android2d/iap/utils/IABAsyncTask;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$a;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$a;->b:Lcom/gameloft/android2d/iap/utils/IABAsyncTask;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->access$000(Lcom/gameloft/android2d/iap/utils/IABAsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$a;->b:Lcom/gameloft/android2d/iap/utils/IABAsyncTask;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->d()V

    goto :goto_15

    :cond_e
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$a;->b:Lcom/gameloft/android2d/iap/utils/IABAsyncTask;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$a;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->e(Ljava/lang/Integer;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    :goto_15
    return-void
.end method
