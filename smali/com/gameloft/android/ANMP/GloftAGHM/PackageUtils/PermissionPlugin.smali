###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.PermissionPlugin (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.PermissionPlugin)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;
.super Ljava/lang/Object;
.source "PermissionPlugin.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


# static fields
.field private static a:Landroid/app/Activity;

.field private static b:I

.field private static c:I

.field private static d:Z


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

.method public static GetAliasOfPermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "Contacts"

    goto :goto_44

    :cond_b
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "Location"

    goto :goto_44

    :cond_16
    const-string v0, "android.permission.SEND_SMS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "Sms"

    goto :goto_44

    :cond_21
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "Microphone"

    goto :goto_44

    :cond_2c
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "Phone"

    goto :goto_44

    :cond_37
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p0, "Notification"

    goto :goto_44

    :cond_42
    const-string p0, "Storage"

    :goto_44
    return-object p0
.end method

.method public static IsFirstTimeAskingForPermission(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->GetAliasOfPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstTimeAskingFor_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "permissions"

    const/4 v2, -0x1

    invoke-static {p0, v2, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_22

    if-ne p0, v2, :cond_26

    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_26

    :catch_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    :goto_26
    return v0
.end method

.method public static IsNeverAskAgainTicked(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    invoke-static {v0, p0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->IsFirstTimeAskingForPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 v0, 0x0

    :cond_f
    return v0
.end method

.method public static SetAskedForPermission(Ljava/lang/String;)V
    .registers 4

    const-string v0, "permissions"

    :try_start_2
    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->GetAliasOfPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstTimeAskingFor_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {p0, v1, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_27

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3a

    :cond_27
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    sput-boolean p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->d:Z

    return p0
.end method

.method static synthetic access$202(I)I
    .registers 1

    sput p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->c:I

    return p0
.end method

.method private static askSystemForPermission(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->b:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.gameloft.android.ANMP.GloftAGHM"

    const-string v2, "com.gameloft.android.ANMP.GloftAGHM.PackageUtils.PermissionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "permissionType"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1b
    sget p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->b:I

    if-nez p0, :cond_27

    const-wide/16 v0, 0x1f4

    :try_start_21
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_1b

    :catch_25
    nop

    goto :goto_1b

    :cond_27
    return p0
.end method

.method public static isContactsPermissionEnabled()Z
    .registers 1

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->isPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLocationPermissionEnabled()Z
    .registers 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->isPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMicrophonePermissionEnabled()Z
    .registers 1

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->isPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNotificationPermissionEnabled()Z
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->AreNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public static isPhonePermissionEnabled()Z
    .registers 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->isPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSMSPermissionEnabled()Z
    .registers 1

    const-string v0, "android.permission.SEND_SMS"

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->isPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isStoragePermissionEnabled()Z
    .registers 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->isPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static requestContactsPermission(Z)I
    .registers 8

    const-string v0, "android.permission.GET_ACCOUNTS"

    const v1, 0x7f120451

    const v2, 0x7f120450

    const v3, 0x7f12044e

    const v4, 0x7f12044f

    const v6, 0x7f120089

    move v5, p0

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->requestPermission(Ljava/lang/String;IIIIZI)I

    move-result p0

    return p0
.end method

.method public static requestLocationPermission(Z)I
    .registers 8

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const v1, 0x7f120455

    const v2, 0x7f120454

    const v3, 0x7f120452

    const v4, 0x7f120453

    const v6, 0x7f120089

    move v5, p0

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->requestPermission(Ljava/lang/String;IIIIZI)I

    move-result p0

    return p0
.end method

.method public static requestMicrophonePermission(Z)I
    .registers 8

    const-string v0, "android.permission.RECORD_AUDIO"

    const v1, 0x7f120459

    const v2, 0x7f120458

    const v3, 0x7f120456

    const v4, 0x7f120457

    const v6, 0x7f120089

    move v5, p0

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->requestPermission(Ljava/lang/String;IIIIZI)I

    move-result p0

    return p0
.end method

.method public static requestNotificationPermission(Z)I
    .registers 10

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Tamaaa teesting requestNotificationPermission"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const v3, 0x7f12045d

    const v4, 0x7f12045c

    const v5, 0x7f12045a

    const v6, 0x7f12045b

    const v8, 0x7f120089

    move v7, p0

    invoke-static/range {v2 .. v8}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->requestPermission(Ljava/lang/String;IIIIZI)I

    move-result p0

    return p0
.end method

.method public static requestPermission(Ljava/lang/String;IIIIZI)I
    .registers 15

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    invoke-virtual {p1, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    invoke-virtual {p1, p6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move v6, p5

    invoke-static/range {v1 .. v7}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .registers 11

    const/4 v0, 0x0

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->b:I

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_50

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->IsNeverAskAgainTicked(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->SetAskedForPermission(Ljava/lang/String;)V

    if-eqz v1, :cond_1d

    if-eqz p5, :cond_1c

    invoke-static {p6, p3, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->showPermissionsMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1c
    return v0

    :cond_1d
    invoke-static {p1, p4}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->showExplanationMessage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p4, 0x1

    :cond_22
    :goto_22
    if-nez p1, :cond_4f

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->c:I

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->askSystemForPermission(Ljava/lang/String;)I

    move-result p5

    const/4 v1, 0x2

    if-ne p5, v1, :cond_4d

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->c:I

    sget-object p5, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    invoke-static {p5, p0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p5

    xor-int/2addr p5, v2

    if-eqz p5, :cond_3a

    move-object v3, p3

    goto :goto_3b

    :cond_3a
    move-object v3, p2

    :goto_3b
    invoke-static {p6, v3, p5}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->showPermissionsMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    sget p5, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->c:I

    if-ne p5, v2, :cond_44

    const/4 p1, 0x1

    const/4 p4, 0x0

    :cond_44
    if-ne p5, v1, :cond_47

    const/4 p1, 0x0

    :cond_47
    const/4 v1, 0x3

    if-ne p5, v1, :cond_22

    const/4 p1, 0x1

    const/4 p4, 0x0

    goto :goto_22

    :cond_4d
    const/4 p1, 0x1

    goto :goto_22

    :cond_4f
    move v2, p4

    :cond_50
    return v2
.end method

.method public static requestPhonePermission(Z)I
    .registers 8

    const-string v0, "android.permission.READ_PHONE_STATE"

    const v1, 0x7f120461

    const v2, 0x7f120460

    const v3, 0x7f12045e

    const v4, 0x7f12045f

    const v6, 0x7f120089

    move v5, p0

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->requestPermission(Ljava/lang/String;IIIIZI)I

    move-result p0

    return p0
.end method

.method public static requestSMSPermission(Z)I
    .registers 8

    const-string v0, "android.permission.SEND_SMS"

    const v1, 0x7f120465

    const v2, 0x7f120464

    const v3, 0x7f120462

    const v4, 0x7f120463

    const v6, 0x7f120089

    move v5, p0

    invoke-static/range {v0 .. v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->requestPermission(Ljava/lang/String;IIIIZI)I

    move-result p0

    return p0
.end method

.method public static requestStoragePermission(Z)I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private static showExplanationMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->d:Z

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$a;

    invoke-direct {v1, p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_d
    sget-boolean p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->d:Z

    if-nez p0, :cond_19

    const-wide/16 p0, 0x64

    :try_start_13
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_d

    :catch_17
    nop

    goto :goto_d

    :cond_19
    return-void
.end method

.method public static showPermissionsMessage(IIZ)V
    .registers 4

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->showPermissionsMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static showPermissionsMessage(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin$b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_a
    sget p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->c:I

    if-nez p0, :cond_16

    const-wide/16 p0, 0x64

    :try_start_10
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_a

    :catch_14
    nop

    goto :goto_a

    :cond_16
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/16 p3, 0x2bc

    if-ne p1, p3, :cond_8

    sput p2, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->b:I

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    sput-object p1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->a:Landroid/app/Activity;

    const/4 p1, 0x0

    sput p1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/PermissionPlugin;->b:I

    return-void
.end method

.method public onPostNativePause()V
    .registers 1

    return-void
.end method

.method public onPostNativeResume()V
    .registers 1

    return-void
.end method

.method public onPreNativePause()V
    .registers 1

    return-void
.end method

.method public onPreNativeResume()V
    .registers 1

    return-void
.end method
