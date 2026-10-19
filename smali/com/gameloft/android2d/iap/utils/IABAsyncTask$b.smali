###### Class com.gameloft.android2d.iap.utils.IABAsyncTask.b (com.gameloft.android2d.iap.utils.IABAsyncTask$b)
.class Lcom/gameloft/android2d/iap/utils/IABAsyncTask$b;
.super Ljava/lang/Object;
.source "IABAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->b(Landroid/os/Bundle;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/gameloft/android2d/iap/utils/IABAsyncTask;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/IABAsyncTask;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$b;->b:Lcom/gameloft/android2d/iap/utils/IABAsyncTask;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$b;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$b;->b:Lcom/gameloft/android2d/iap/utils/IABAsyncTask;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$b;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->a(Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/IABAsyncTask$b;->b:Lcom/gameloft/android2d/iap/utils/IABAsyncTask;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;->access$100(Lcom/gameloft/android2d/iap/utils/IABAsyncTask;Ljava/lang/Integer;)V

    return-void
.end method
