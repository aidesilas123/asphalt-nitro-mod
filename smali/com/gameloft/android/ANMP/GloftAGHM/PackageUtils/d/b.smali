###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.b (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.b)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;
.super Ljava/lang/Object;
.source "PluginEventDispatcher.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private b(Landroid/app/Activity;Landroid/view/ViewGroup;[Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_38

    aget-object v1, p3, v0

    :try_start_6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    :goto_10
    if-nez v2, :cond_20

    :try_start_12
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_35

    :cond_20
    :goto_20
    :try_start_20
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_31

    instance-of v2, v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;

    if-eqz v2, :cond_35

    check-cast v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;

    invoke-virtual {p0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->d(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;)V

    invoke-interface {v1, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;->onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    goto :goto_35

    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_38
    return-void
.end method

.method private c()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 4

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/d;->a:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->b(Landroid/app/Activity;Landroid/view/ViewGroup;[Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/c;->a:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->b(Landroid/app/Activity;Landroid/view/ViewGroup;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->c()V

    return-void
.end method

.method public d(Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method public e(IILandroid/content/Intent;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;

    invoke-interface {v2, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public f()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;

    invoke-interface {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;->onPostNativePause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public g()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;

    invoke-interface {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;->onPostNativeResume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public h()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;

    invoke-interface {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;->onPreNativePause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public i()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;

    invoke-interface {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;->onPreNativeResume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method
