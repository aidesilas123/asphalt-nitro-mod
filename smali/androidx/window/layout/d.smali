###### Class androidx.window.layout.d (androidx.window.layout.d)
.class public final synthetic Landroidx/window/layout/d;
.super Ljava/lang/Object;
.source "WindowInfoTracker.kt"


# direct methods
.method public static a(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;
    .registers 2

    sget-object v0, Landroidx/window/layout/WindowInfoTracker;->Companion:Landroidx/window/layout/WindowInfoTracker$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/layout/WindowInfoTracker$Companion;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object p0

    return-object p0
.end method
