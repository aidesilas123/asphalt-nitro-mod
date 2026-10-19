###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.DontDisturbPolicy (com.gameloft.android.ANMP.GloftAGHM.PushNotification.DontDisturbPolicy)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/DontDisturbPolicy;
.super Ljava/lang/Object;
.source "DontDisturbPolicy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isDontDisturbEnable(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->isDontDisturbEnable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isDontDisturbeTime(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->isDontDisturbEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, p0

    const/16 p0, 0x1e0

    if-le v0, p0, :cond_21

    const/16 p0, 0x564

    if-lt v0, p0, :cond_23

    :cond_21
    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method static setDontDisturbEnable(Landroid/content/Context;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->setDontDisturbEnable(Landroid/content/Context;Z)V

    return-void
.end method
