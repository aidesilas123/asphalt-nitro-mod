###### Class com.google.android.material.color.DynamicColors.d (com.google.android.material.color.DynamicColors$d)
.class Lcom/google/android/material/color/DynamicColors$d;
.super Ljava/lang/Object;
.source "DynamicColors.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/DynamicColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/color/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/d;)V
    .registers 2
    .param p1    # Lcom/google/android/material/color/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/DynamicColors$d;->a:Lcom/google/android/material/color/d;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/google/android/material/color/DynamicColors$d;->a:Lcom/google/android/material/color/d;

    invoke-virtual {p2}, Lcom/google/android/material/color/d;->e()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/color/DynamicColors$d;->a:Lcom/google/android/material/color/d;

    invoke-virtual {v0}, Lcom/google/android/material/color/d;->d()Lcom/google/android/material/color/DynamicColors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/DynamicColors$d;->a:Lcom/google/android/material/color/d;

    invoke-virtual {v1}, Lcom/google/android/material/color/d;->c()Lcom/google/android/material/color/DynamicColors$e;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/color/DynamicColors;->a(Landroid/app/Activity;ILcom/google/android/material/color/DynamicColors$f;Lcom/google/android/material/color/DynamicColors$e;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
