###### Class com.kidoz.events.b (com.kidoz.events.b)
.class public Lcom/kidoz/events/b;
.super Landroid/os/AsyncTask;
.source "EventSyncAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/kidoz/events/EventBulk;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/events/b;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kidoz/events/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/kidoz/events/EventBulk;)Ljava/lang/Void;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, " ----------------------  ********************* ----------------------"

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V

    const-string v1, " -----------------    START EVENTS SYNCING THREAD ---------------------"

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V

    const-string v1, " ----------------------  ******************** ----------------------"

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/events/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_67

    if-eqz p1, :cond_67

    array-length v2, p1

    if-lez v2, :cond_67

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_3f

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_35

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_35

    return-object v0

    :cond_35
    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_3f

    return-object v0

    :cond_3f
    const/4 v2, 0x0

    aget-object p1, p1, v2

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Lcom/kidoz/events/EventBulk;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log Events Sync info : bulk value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printWarningLog(Ljava/lang/String;)V

    if-eqz p1, :cond_67

    invoke-static {v1}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->getSdkApiInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->sendKidozEventsToServerNotAsync(Ljava/lang/String;)Lcom/kidoz/sdk/api/server_connect/ResultData;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_65} :catch_66

    goto :goto_67

    :catch_66
    nop

    :cond_67
    :goto_67
    iget-object p1, p0, Lcom/kidoz/events/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_6e
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Lcom/kidoz/events/EventBulk;

    invoke-virtual {p0, p1}, Lcom/kidoz/events/b;->a([Lcom/kidoz/events/EventBulk;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
