###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.b.b (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.b.b)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;
.super Ljava/lang/Object;
.source "SignalDispatcher.java"


# instance fields
.field private a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->e(IILandroid/content/Intent;)Z

    return-void
.end method

.method public b()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->onPreNativePause()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->h()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->onPause()V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->f()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->onPostNativePause()V

    return-void
.end method

.method public c()V
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->onPreNativeResume()V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->i()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->onResume()V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->g()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->onPostNativeResume()V

    return-void
.end method

.method public d(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 4

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->SetActivityRef(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/b/b;->a:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;

    invoke-virtual {v0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method
