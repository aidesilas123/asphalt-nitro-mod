###### Class com.google.firebase.messaging.TopicsSyncTask (com.google.firebase.messaging.TopicsSyncTask)
.class Lcom/google/firebase/messaging/TopicsSyncTask;
.super Ljava/lang/Object;
.source "TopicsSyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "TOPIC_SYNC_TASK_LOCK"
    .end annotation
.end field

.field private static c:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "TOPIC_SYNC_TASK_LOCK"
    .end annotation
.end field


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/firebase/messaging/Metadata;

.field private final f:Landroid/os/PowerManager$WakeLock;

.field private final g:Lcom/google/firebase/messaging/TopicsSubscriber;

.field private final h:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/TopicsSyncTask;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/messaging/TopicsSubscriber;Landroid/content/Context;Lcom/google/firebase/messaging/Metadata;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->g:Lcom/google/firebase/messaging/TopicsSubscriber;

    iput-object p2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->d:Landroid/content/Context;

    iput-wide p4, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->h:J

    iput-object p3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->e:Lcom/google/firebase/messaging/Metadata;

    const-string p1, "power"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "wake:com.google.firebase.messaging"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->f:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/messaging/TopicsSyncTask;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/messaging/TopicsSyncTask;->i()Z

    move-result p0

    return p0
.end method

.method static synthetic b()Z
    .registers 1

    invoke-static {}, Lcom/google/firebase/messaging/TopicsSyncTask;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/firebase/messaging/TopicsSyncTask;)Lcom/google/firebase/messaging/TopicsSubscriber;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->g:Lcom/google/firebase/messaging/TopicsSubscriber;

    return-object p0
.end method

.method static synthetic d(Lcom/google/firebase/messaging/TopicsSyncTask;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->d:Landroid/content/Context;

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing Permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Z
    .registers 4

    sget-object v0, Lcom/google/firebase/messaging/TopicsSyncTask;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/messaging/TopicsSyncTask;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_e

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v2, v1}, Lcom/google/firebase/messaging/TopicsSyncTask;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_12
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/firebase/messaging/TopicsSyncTask;->c:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 4

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-nez p0, :cond_22

    const/4 p2, 0x3

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-static {p1}, Lcom/google/firebase/messaging/TopicsSyncTask;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return p0
.end method

.method private static h(Landroid/content/Context;)Z
    .registers 4

    sget-object v0, Lcom/google/firebase/messaging/TopicsSyncTask;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/messaging/TopicsSyncTask;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_e

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-static {p0, v2, v1}, Lcom/google/firebase/messaging/TopicsSyncTask;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_12
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/firebase/messaging/TopicsSyncTask;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method private declared-synchronized i()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->d:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_20

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    monitor-exit p0

    return v0

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static j()Z
    .registers 4

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_18

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    const-string v0, "TopicsSyncTask\'s wakelock was already released due to timeout."

    const-string v1, "FirebaseMessaging"

    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/messaging/TopicsSyncTask;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->f:Landroid/os/PowerManager$WakeLock;

    sget-wide v3, Lcom/google/firebase/messaging/Constants;->a:J

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_13
    const/4 v2, 0x0

    :try_start_14
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->g:Lcom/google/firebase/messaging/TopicsSubscriber;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/firebase/messaging/TopicsSubscriber;->l(Z)V

    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->e:Lcom/google/firebase/messaging/Metadata;

    invoke-virtual {v3}, Lcom/google/firebase/messaging/Metadata;->g()Z

    move-result v3

    if-nez v3, :cond_39

    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->g:Lcom/google/firebase/messaging/TopicsSubscriber;

    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/TopicsSubscriber;->l(Z)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_27} :catch_83
    .catchall {:try_start_14 .. :try_end_27} :catchall_81

    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/messaging/TopicsSyncTask;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_38

    :try_start_2f
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_34} :catch_35

    goto :goto_38

    :catch_35
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    return-void

    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/messaging/TopicsSyncTask;->f(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-direct {p0}, Lcom/google/firebase/messaging/TopicsSyncTask;->i()Z

    move-result v3

    if-nez v3, :cond_61

    new-instance v3, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;

    invoke-direct {v3, p0, p0}, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;-><init>(Lcom/google/firebase/messaging/TopicsSyncTask;Lcom/google/firebase/messaging/TopicsSyncTask;)V

    invoke-virtual {v3}, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;->a()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4f} :catch_83
    .catchall {:try_start_39 .. :try_end_4f} :catchall_81

    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/messaging/TopicsSyncTask;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_60

    :try_start_57
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_5c} :catch_5d

    goto :goto_60

    :catch_5d
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_60
    return-void

    :cond_61
    :try_start_61
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->g:Lcom/google/firebase/messaging/TopicsSubscriber;

    invoke-virtual {v3}, Lcom/google/firebase/messaging/TopicsSubscriber;->o()Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->g:Lcom/google/firebase/messaging/TopicsSubscriber;

    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/TopicsSubscriber;->l(Z)V

    goto :goto_76

    :cond_6f
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->g:Lcom/google/firebase/messaging/TopicsSubscriber;

    iget-wide v4, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->h:J

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/messaging/TopicsSubscriber;->p(J)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_76} :catch_83
    .catchall {:try_start_61 .. :try_end_76} :catchall_81

    :goto_76
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/messaging/TopicsSyncTask;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b2

    :try_start_7e
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->f:Landroid/os/PowerManager$WakeLock;
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_7e .. :try_end_80} :catch_af

    goto :goto_ab

    :catchall_81
    move-exception v2

    goto :goto_b3

    :catch_83
    move-exception v3

    :try_start_84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to sync topics. Won\'t retry sync. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->g:Lcom/google/firebase/messaging/TopicsSubscriber;

    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/TopicsSubscriber;->l(Z)V
    :try_end_a1
    .catchall {:try_start_84 .. :try_end_a1} :catchall_81

    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/messaging/TopicsSyncTask;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b2

    :try_start_a9
    iget-object v2, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->f:Landroid/os/PowerManager$WakeLock;

    :goto_ab
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_ae
    .catch Ljava/lang/RuntimeException; {:try_start_a9 .. :try_end_ae} :catch_af

    goto :goto_b2

    :catch_af
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    :goto_b2
    return-void

    :goto_b3
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/messaging/TopicsSyncTask;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c4

    :try_start_bb
    iget-object v3, p0, Lcom/google/firebase/messaging/TopicsSyncTask;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_c0
    .catch Ljava/lang/RuntimeException; {:try_start_bb .. :try_end_c0} :catch_c1

    goto :goto_c4

    :catch_c1
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c4
    :goto_c4
    throw v2
.end method

###### Class com.google.firebase.messaging.TopicsSyncTask.ConnectivityChangeReceiver (com.google.firebase.messaging.TopicsSyncTask$ConnectivityChangeReceiver)
.class Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TopicsSyncTask.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/TopicsSyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectivityChangeReceiver"
.end annotation


# instance fields
.field private a:Lcom/google/firebase/messaging/TopicsSyncTask;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic b:Lcom/google/firebase/messaging/TopicsSyncTask;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/TopicsSyncTask;Lcom/google/firebase/messaging/TopicsSyncTask;)V
    .registers 3

    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;->b:Lcom/google/firebase/messaging/TopicsSyncTask;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;->a:Lcom/google/firebase/messaging/TopicsSyncTask;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-static {}, Lcom/google/firebase/messaging/TopicsSyncTask;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "FirebaseMessaging"

    const-string v1, "Connectivity change received registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;->b:Lcom/google/firebase/messaging/TopicsSyncTask;

    invoke-static {v0}, Lcom/google/firebase/messaging/TopicsSyncTask;->d(Lcom/google/firebase/messaging/TopicsSyncTask;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object p2, p0, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;->a:Lcom/google/firebase/messaging/TopicsSyncTask;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    if-nez p2, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-static {p2}, Lcom/google/firebase/messaging/TopicsSyncTask;->a(Lcom/google/firebase/messaging/TopicsSyncTask;)Z

    move-result p2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_31

    if-nez p2, :cond_f

    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/google/firebase/messaging/TopicsSyncTask;->b()Z

    move-result p2

    if-eqz p2, :cond_1c

    const-string p2, "FirebaseMessaging"

    const-string v0, "Connectivity changed. Starting background sync."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object p2, p0, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;->a:Lcom/google/firebase/messaging/TopicsSyncTask;

    invoke-static {p2}, Lcom/google/firebase/messaging/TopicsSyncTask;->c(Lcom/google/firebase/messaging/TopicsSyncTask;)Lcom/google/firebase/messaging/TopicsSubscriber;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;->a:Lcom/google/firebase/messaging/TopicsSyncTask;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/firebase/messaging/TopicsSubscriber;->k(Ljava/lang/Runnable;J)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/messaging/TopicsSyncTask$ConnectivityChangeReceiver;->a:Lcom/google/firebase/messaging/TopicsSyncTask;
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method
