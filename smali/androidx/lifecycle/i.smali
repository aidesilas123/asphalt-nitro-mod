###### Class androidx.lifecycle.i (androidx.lifecycle.i)
.class public final synthetic Landroidx/lifecycle/i;
.super Ljava/lang/Object;
.source "LifecycleRegistryOwner.java"


# direct methods
.method public static synthetic a(Landroidx/lifecycle/LifecycleRegistryOwner;)Landroidx/lifecycle/Lifecycle;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleRegistryOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v0

    return-object v0
.end method
