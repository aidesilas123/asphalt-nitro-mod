###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders.PushTheme (com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders.PushTheme)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;
.super Ljava/lang/Object;
.source "PushTheme.java"


# static fields
.field public static a:I = 0x7f080186

.field public static b:I


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

.method public static getIcon()I
    .registers 1

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;->a:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;->initCustoms(Landroid/content/Context;)V

    return-void
.end method

.method static initCustoms(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->d:Z

    const-string v2, "drawable"

    if-eqz v1, :cond_29

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->g:Ljava/lang/String;

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;->a:I

    :cond_18
    sget v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;->a:I

    if-nez v1, :cond_35

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pn_custom_icon"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;->a:I

    goto :goto_35

    :cond_29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pn_icon"

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;->a:I

    :cond_35
    :goto_35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "custom_notification_layout"

    const-string v2, "layout"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;->b:I

    sget p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;->a:I

    if-nez p0, :cond_4c

    const p0, 0x7f080186

    sput p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;->a:I

    :cond_4c
    return-void
.end method
