###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.AsyncTask (com.gameloft.android.ANMP.GloftAGHM.PushNotification.AsyncTask)
.class public abstract Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;->a:Z

    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;->a:Z

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .registers 3

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask$a;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask$a;-><init>(Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;->a:Z

    return p0
.end method

.method static synthetic access$100(Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/AsyncTask;->a(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .registers 1

    return-void
.end method

.method protected c(Ljava/lang/Integer;)V
    .registers 2

    return-void
.end method
