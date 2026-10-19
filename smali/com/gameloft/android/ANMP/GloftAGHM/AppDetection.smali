###### Class com.gameloft.android.ANMP.GloftAGHM.AppDetection (com.gameloft.android.ANMP.GloftAGHM.AppDetection)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;
.super Ljava/lang/Object;
.source "AppDetection.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllPackageNames()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->getApplications()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    return-object v1
.end method

.method private static getApplications()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->a:Landroid/content/Context;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getGameloftPackages()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->getPackages()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_27

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.gameloft"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2a
    return-object v1
.end method

.method public static getInstalledPackages()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->b:Ljava/util/List;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->getNonSystemPackageNames()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->b:Ljava/util/List;

    :cond_a
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getNonSystemPackageNames()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->getApplications()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1d

    goto :goto_22

    :cond_1d
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_25
    return-object v1
.end method

.method private static getPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->a:Landroid/content/Context;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->a:Landroid/content/Context;

    return-void
.end method

.method public static isAppInstalled(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->b:Ljava/util/List;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->getNonSystemPackageNames()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->b:Ljava/util/List;

    :cond_a
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    return v1

    :cond_14
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->c:Ljava/util/List;

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->getAllPackageNames()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->c:Ljava/util/List;

    :cond_1e
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/AppDetection;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    return v1

    :cond_27
    const/4 p0, 0x0

    return p0
.end method
