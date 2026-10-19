###### Class dagger.android.DaggerIntentService (dagger.android.DaggerIntentService)
.class public abstract Ldagger/android/DaggerIntentService;
.super Landroid/app/IntentService;
.source "DaggerIntentService.java"


# virtual methods
.method public onCreate()V
    .registers 1

    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Service;)V

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method
