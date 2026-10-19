###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.LocationPlugin.a (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.LocationPlugin$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin$a;
.super Ljava/lang/Object;
.source "LocationPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->EnableUserLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->initUserLocation()Ljava/lang/String;

    return-void
.end method
