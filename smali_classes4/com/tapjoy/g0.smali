###### Class com.tapjoy.g0 (com.tapjoy.g0)
.class public Lcom/tapjoy/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Z

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/g0;->d:I

    iput v0, p0, Lcom/tapjoy/g0;->e:I

    iput-object p1, p0, Lcom/tapjoy/g0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-virtual {p0}, Lcom/tapjoy/g0;->i()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/tapjoy/g0;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Lcom/tapjoy/i0;

    const-string v1, "Failed to load manifest.xml meta-data, \'com.google.android.gms.version\' not found. For more information about including the Google Play services client library visit http://developer.android.com/google/play-services/setup.html or http://tech.tapjoy.com/product-overview/sdk-change-log/tapjoy-and-identifiers"

    invoke-direct {v0, v1}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Lcom/tapjoy/i0;

    const-string v1, "Tapjoy SDK is disabled because Google Play Services was not found. For more information about including the Google Play services client library visit http://developer.android.com/google/play-services/setup.html or http://tech.tapjoy.com/product-overview/sdk-change-log/tapjoy-and-identifiers"

    invoke-direct {v0, v1}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/g0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/tapjoy/g0;->d:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/tapjoy/g0;->e:I

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/g0;->f:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/g0;->c:Z

    return v0
.end method

.method public g()Z
    .registers 6

    iget-object v0, p0, Lcom/tapjoy/g0;->a:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "optout_advertising_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v4

    return v0

    :cond_20
    return v4
.end method

.method public h()Z
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/g0;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_29

    :try_start_4
    iget-object v0, p0, Lcom/tapjoy/g0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/g0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/g0;->e:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/g0;->h:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/g0;->h:Ljava/lang/Boolean;

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/tapjoy/g0;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/g0;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_1d

    :try_start_4
    iget-object v0, p0, Lcom/tapjoy/g0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/g0;->g:Ljava/lang/Boolean;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_19
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_13} :catch_14

    goto :goto_1d

    :catch_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/g0;->g:Ljava/lang/Boolean;

    goto :goto_1d

    :catch_19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/tapjoy/g0;->g:Ljava/lang/Boolean;

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/tapjoy/g0;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j(Z)V
    .registers 8

    const-string v0, "Device\'s Google Play Services version: "

    const-string v1, "TapjoyGpsHelper"

    const-string v2, "Looking for Google Play Services..."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/g0;->i()Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-virtual {p0}, Lcom/tapjoy/g0;->h()Z

    move-result v2

    if-eqz v2, :cond_c3

    const-string v2, "Packaged Google Play Services found, fetching advertisingID..."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Packaged Google Play Services version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tapjoy/g0;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tapjoy/a0;

    iget-object v3, p0, Lcom/tapjoy/g0;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tapjoy/a0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tapjoy/g0;->g()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_42

    invoke-virtual {v2}, Lcom/tapjoy/a0;->c()Z

    move-result v3

    iput-boolean v3, p0, Lcom/tapjoy/g0;->f:Z

    goto :goto_44

    :cond_42
    iput-boolean v4, p0, Lcom/tapjoy/g0;->f:Z

    :goto_44
    :try_start_44
    iget-object v3, p0, Lcom/tapjoy/g0;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "com.google.android.gms"

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/tapjoy/g0;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/tapjoy/g0;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_65} :catch_66

    goto :goto_6b

    :catch_66
    const-string v0, "Error getting device\'s Google Play Services version"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6b
    iget-boolean v0, p0, Lcom/tapjoy/g0;->f:Z

    if-eqz v0, :cond_a6

    invoke-virtual {v2}, Lcom/tapjoy/a0;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tapjoy/g0;->c:Z

    invoke-virtual {v2}, Lcom/tapjoy/a0;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/g0;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Found advertising ID: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/g0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Is ad tracking enabled: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tapjoy/g0;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    :cond_a6
    const-string v0, "Error getting advertisingID from Google Play Services"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_c8

    iput-boolean v4, p0, Lcom/tapjoy/g0;->c:Z

    invoke-virtual {p0}, Lcom/tapjoy/g0;->g()Z

    move-result p1

    if-eqz p1, :cond_bd

    const-string p1, "00000000-0000-0000-0000-000000000000"

    iput-object p1, p0, Lcom/tapjoy/g0;->b:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/g0;->f:Z

    goto :goto_c8

    :cond_bd
    invoke-virtual {p0}, Lcom/tapjoy/g0;->k()V

    iput-boolean v4, p0, Lcom/tapjoy/g0;->f:Z

    goto :goto_c8

    :cond_c3
    const-string p1, "Google Play Services not found"

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c8
    :goto_c8
    return-void
.end method

.method public k()V
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/g0;->b:Ljava/lang/String;

    return-void
.end method
