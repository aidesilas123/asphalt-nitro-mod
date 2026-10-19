###### Class dagger.android.DaggerService (dagger.android.DaggerService)
.class public abstract Ldagger/android/DaggerService;
.super Landroid/app/Service;
.source "DaggerService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Service;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method
