###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.AsyncTask.a (com.gameloft.android.ANMP.GloftAGHM.PushNotification.AsyncTask$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask$a;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;->a(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;Ljava/lang/Integer;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask$a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;

    iput-object p2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask$a;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask$a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;->access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask$a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;->b()V

    goto :goto_15

    :cond_e
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask$a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask$a;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;->c(Ljava/lang/Integer;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    :goto_15
    return-void
.end method
