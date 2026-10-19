###### Class dagger.android.DaggerActivity (dagger.android.DaggerActivity)
.class public abstract Ldagger/android/DaggerActivity;
.super Landroid/app/Activity;
.source "DaggerActivity.java"

# interfaces
.implements Ldagger/android/e;


# instance fields
.field a:Ldagger/android/d;
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

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

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

    iget-object v0, p0, Ldagger/android/DaggerActivity;->a:Ldagger/android/d;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
