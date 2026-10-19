###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.LocationPlugin (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.LocationPlugin)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;
.super Ljava/lang/Object;
.source "LocationPlugin.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


# static fields
.field private static a:Landroid/app/Activity; = null

.field private static b:I = -0x1

.field private static c:D = 0.0

.field private static d:D = 0.0

.field private static e:F = 0.0f

.field private static f:Ljava/lang/String; = "0"

.field private static g:Landroid/location/Location; = null

.field private static h:Landroid/location/Location; = null

.field private static i:D = 30.0

.field private static j:Landroid/location/LocationListener;

.field private static k:Landroid/location/LocationManager;

.field private static l:Z

.field private static m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DisableUserLocation()V
    .registers 8

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->unregisterLocationListener()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->m:Z

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->resetLocationValues()V

    const/4 v1, -0x1

    sput v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    sget-wide v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->c:D

    sget-wide v4, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->d:D

    sget v6, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->e:F

    sget-object v7, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->f:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetUserLocation(IDDFLjava/lang/String;)V

    return-void
.end method

.method public static EnableUserLocation()V
    .registers 8

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->isLocationPermissionEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v1, 0x3

    sput v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    sget-wide v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->c:D

    sget-wide v4, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->d:D

    sget v6, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->e:F

    sget-object v7, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->f:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetUserLocation(IDDFLjava/lang/String;)V

    return-void

    :cond_15
    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->m:Z

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->a:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin$a;

    invoke-direct {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1

    sput p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    return p0
.end method

.method static synthetic access$100(Landroid/location/Location;)Landroid/location/Location;
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->getLocationToTrack(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()D
    .registers 2

    sget-wide v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->c:D

    return-wide v0
.end method

.method static synthetic access$202(D)D
    .registers 2

    sput-wide p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->c:D

    return-wide p0
.end method

.method static synthetic access$300()D
    .registers 2

    sget-wide v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->d:D

    return-wide v0
.end method

.method static synthetic access$302(D)D
    .registers 2

    sput-wide p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->d:D

    return-wide p0
.end method

.method static synthetic access$400()F
    .registers 1

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->e:F

    return v0
.end method

.method static synthetic access$402(F)F
    .registers 1

    sput p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->e:F

    return p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Landroid/location/LocationManager;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->k:Landroid/location/LocationManager;

    return-object v0
.end method

.method private static getLocationToTrack(Landroid/location/Location;)Landroid/location/Location;
    .registers 8

    :try_start_0
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->g:Landroid/location/Location;

    if-eqz v0, :cond_32

    invoke-virtual {p0, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    sget-wide v4, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->i:D

    const/4 v0, 0x0

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_18

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->g:Landroid/location/Location;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->h:Landroid/location/Location;

    goto :goto_34

    :cond_18
    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->h:Landroid/location/Location;

    if-eqz v2, :cond_2d

    invoke-virtual {p0, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    div-float/2addr v2, v1

    float-to-double v1, v2

    sget-wide v3, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->i:D

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_2d

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->g:Landroid/location/Location;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->h:Landroid/location/Location;

    goto :goto_34

    :cond_2d
    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->h:Landroid/location/Location;

    sget-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->g:Landroid/location/Location;

    goto :goto_34

    :cond_32
    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->g:Landroid/location/Location;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_34

    :catch_34
    :goto_34
    return-object p0
.end method

.method public static getUserLocationAccuracy()F
    .registers 1

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->e:F

    return v0
.end method

.method public static getUserLocationLatitude()D
    .registers 2

    sget-wide v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->c:D

    return-wide v0
.end method

.method public static getUserLocationLongitude()D
    .registers 2

    sget-wide v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->d:D

    return-wide v0
.end method

.method public static getUserLocationStatus()I
    .registers 2

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->isLocationPermissionEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x3

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->resetLocationValues()V

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    return v0

    :cond_14
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->initUserLocation()Ljava/lang/String;

    :cond_17
    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    return v0
.end method

.method public static getUserLocationTime()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static initUserLocation()Ljava/lang/String;
    .registers 16

    const-string v0, "network"

    sget-boolean v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->m:Z

    if-eqz v1, :cond_b3

    sget v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b3

    const/4 v1, 0x2

    :try_start_c
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    sput-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->k:Landroid/location/LocationManager;

    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    new-instance v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin$b;

    invoke-direct {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin$b;-><init>()V

    sput-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->j:Landroid/location/LocationListener;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->registerLocationListener()V

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->k:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const/4 v2, 0x0

    sput v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->k:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->getLocationToTrack(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    sput-wide v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->c:D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    sput-wide v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->d:D

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    sput v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->e:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->f:Ljava/lang/String;

    goto :goto_6c

    :cond_69
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->resetLocationValues()V

    :goto_6c
    sget v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    sget-wide v3, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->c:D

    sget-wide v5, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->d:D

    sget v7, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->e:F

    sget-object v8, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->f:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetUserLocation(IDDFLjava/lang/String;)V

    goto :goto_b3

    :cond_7a
    const/4 v0, 0x1

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->resetLocationValues()V

    sget v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    sget-wide v3, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->c:D

    sget-wide v5, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->d:D

    sget v7, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->e:F

    sget-object v8, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->f:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetUserLocation(IDDFLjava/lang/String;)V

    goto :goto_b3

    :cond_8e
    sput v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->resetLocationValues()V

    sget v9, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    sget-wide v10, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->c:D

    sget-wide v12, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->d:D

    sget v14, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->e:F

    sget-object v15, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->f:Ljava/lang/String;

    invoke-static/range {v9 .. v15}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetUserLocation(IDDFLjava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_a0} :catch_a1

    goto :goto_b3

    :catch_a1
    sput v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->resetLocationValues()V

    sget v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->b:I

    sget-wide v3, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->c:D

    sget-wide v5, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->d:D

    sget v7, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->e:F

    sget-object v8, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->f:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->SetUserLocation(IDDFLjava/lang/String;)V

    :cond_b3
    :goto_b3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerLocationListener()V
    .registers 7

    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->m:Z

    if-eqz v0, :cond_1c

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->k:Landroid/location/LocationManager;

    if-eqz v1, :cond_1c

    sget-object v6, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->j:Landroid/location/LocationListener;

    if-eqz v6, :cond_1c

    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->l:Z

    if-nez v0, :cond_1c

    const-wide/32 v3, 0x493e0

    const/4 v5, 0x0

    const-string v2, "network"

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->l:Z

    :cond_1c
    return-void
.end method

.method public static resetLocationValues()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->c:D

    sput-wide v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->d:D

    const/4 v0, 0x0

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->e:F

    const-string v0, "0"

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->f:Ljava/lang/String;

    return-void
.end method

.method public static unregisterLocationListener()V
    .registers 3

    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->m:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->k:Landroid/location/LocationManager;

    if-eqz v0, :cond_16

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->j:Landroid/location/LocationListener;

    if-eqz v1, :cond_16

    sget-boolean v2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->l:Z

    if-eqz v2, :cond_16

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->l:Z

    :cond_16
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    sput-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->a:Landroid/app/Activity;

    return-void
.end method

.method public onPostNativePause()V
    .registers 1

    return-void
.end method

.method public onPostNativeResume()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->g:Landroid/location/Location;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->registerLocationListener()V

    return-void
.end method

.method public onPreNativePause()V
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->unregisterLocationListener()V

    return-void
.end method

.method public onPreNativeResume()V
    .registers 1

    return-void
.end method
