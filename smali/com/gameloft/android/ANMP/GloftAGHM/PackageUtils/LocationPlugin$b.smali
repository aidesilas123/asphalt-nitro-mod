###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.LocationPlugin.b (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.LocationPlugin$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin$b;
.super Ljava/lang/Object;
.source "LocationPlugin.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->initUserLocation()Ljava/lang/String;
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
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 9

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$002(I)I

    if-eqz p1, :cond_30

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$100(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$202(D)D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$302(D)D

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$402(F)F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$502(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_33

    :cond_30
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->resetLocationValues()V

    :goto_33
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$000()I

    move-result v0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$200()D

    move-result-wide v1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$300()D

    move-result-wide v3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$400()F

    move-result v5

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetUserLocation(IDDFLjava/lang/String;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 9

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$002(I)I

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->resetLocationValues()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$000()I

    move-result v0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$200()D

    move-result-wide v1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$300()D

    move-result-wide v3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$400()F

    move-result v5

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetUserLocation(IDDFLjava/lang/String;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 9

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$002(I)I

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$600()Landroid/location/LocationManager;

    move-result-object p1

    const-string v0, "network"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_3a

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$100(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$202(D)D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$302(D)D

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$402(F)F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$502(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3d

    :cond_3a
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->resetLocationValues()V

    :goto_3d
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$000()I

    move-result v0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$200()D

    move-result-wide v1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$300()D

    move-result-wide v3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$400()F

    move-result v5

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetUserLocation(IDDFLjava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 11

    if-eqz p2, :cond_b

    const/4 p1, 0x1

    if-ne p2, p1, :cond_6

    goto :goto_b

    :cond_6
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$002(I)I

    goto :goto_12

    :cond_b
    :goto_b
    const/4 p1, 0x2

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$002(I)I

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->resetLocationValues()V

    :goto_12
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$000()I

    move-result v0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$200()D

    move-result-wide v1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$300()D

    move-result-wide v3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$400()F

    move-result v5

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetUserLocation(IDDFLjava/lang/String;)V

    return-void
.end method
