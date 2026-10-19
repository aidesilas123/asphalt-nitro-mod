###### Class dagger.android.DaggerApplication (dagger.android.DaggerApplication)
.class public abstract Ldagger/android/DaggerApplication;
.super Landroid/app/Application;
.source "DaggerApplication.java"

# interfaces
.implements Ldagger/android/e;


# instance fields
.field volatile a:Ldagger/android/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Ldagger/android/DaggerApplication;->a:Ldagger/android/d;

    if-nez v0, :cond_22

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Ldagger/android/DaggerApplication;->a:Ldagger/android/d;

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->b()Ldagger/android/a;

    move-result-object v0

    invoke-interface {v0, p0}, Ldagger/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Ldagger/android/DaggerApplication;->a:Ldagger/android/d;

    if-eqz v0, :cond_15

    goto :goto_1d

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AndroidInjector returned from applicationInjector() did not inject the DaggerApplication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_1d
    monitor-exit p0

    goto :goto_22

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public a()Ldagger/android/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ldagger/android/DaggerApplication;->c()V

    iget-object v0, p0, Ldagger/android/DaggerApplication;->a:Ldagger/android/d;

    return-object v0
.end method

.method protected abstract b()Ldagger/android/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/a<",
            "+",
            "Ldagger/android/DaggerApplication;",
            ">;"
        }
    .end annotation
.end method

.method public onCreate()V
    .registers 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-direct {p0}, Ldagger/android/DaggerApplication;->c()V

    return-void
.end method
