###### Class com.google.firebase.iid.ServiceStarter (com.google.firebase.iid.ServiceStarter)
.class public Lcom/google/firebase/iid/ServiceStarter;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static a:Lcom/google/firebase/iid/ServiceStarter;


# instance fields
.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/ServiceStarter;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/firebase/iid/ServiceStarter;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/iid/ServiceStarter;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const-class v0, Lcom/google/firebase/iid/ServiceStarter;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/iid/ServiceStarter;->a:Lcom/google/firebase/iid/ServiceStarter;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/firebase/iid/ServiceStarter;

    invoke-direct {v1}, Lcom/google/firebase/iid/ServiceStarter;-><init>()V

    sput-object v1, Lcom/google/firebase/iid/ServiceStarter;->a:Lcom/google/firebase/iid/ServiceStarter;

    :cond_e
    sget-object v1, Lcom/google/firebase/iid/ServiceStarter;->a:Lcom/google/firebase/iid/ServiceStarter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setForTesting(Lcom/google/firebase/iid/ServiceStarter;)V
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/google/firebase/iid/ServiceStarter;->a:Lcom/google/firebase/iid/ServiceStarter;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/ServiceStarter;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/ServiceStarter;->c:Ljava/lang/Boolean;

    :cond_15
    iget-object p1, p0, Lcom/google/firebase/iid/ServiceStarter;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x3

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object p1, p0, Lcom/google/firebase/iid/ServiceStarter;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method b(Landroid/content/Context;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/iid/ServiceStarter;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    const-string v0, "android.permission.WAKE_LOCK"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/ServiceStarter;->b:Ljava/lang/Boolean;

    :cond_15
    iget-object p1, p0, Lcom/google/firebase/iid/ServiceStarter;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2b

    const/4 p1, 0x3

    const-string v0, "FirebaseInstanceId"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object p1, p0, Lcom/google/firebase/iid/ServiceStarter;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
