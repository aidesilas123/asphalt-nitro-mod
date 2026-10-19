###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders.a (com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders.a)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/a;
.super Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;
.source "PushBuilderV10.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .registers 7

    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f08022b

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->g:J

    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->d:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->h:Z

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/DontDisturbPolicy;->isDontDisturbeTime(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_98

    sget-boolean v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->e:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_91

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->h:Ljava/lang/String;

    if-eqz v1, :cond_91

    :try_start_42
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->h:Ljava/lang/String;

    const-string v4, "raw"

    iget-object v5, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_85

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/raw/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_98

    :cond_85
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_88} :catch_89

    goto :goto_98

    :catch_89
    move-exception v1

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_98

    :cond_91
    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->o:Z

    if-nez v1, :cond_98

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_98
    :goto_98
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;->getIcon()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    iget v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->i:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_b1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_b1
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->e:Landroid/app/PendingIntent;

    if-eqz v1, :cond_b8

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_b8
    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->n:Z

    if-eqz v1, :cond_c5

    iget v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->k:I

    iget v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->l:I

    iget-boolean v3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->m:Z

    invoke-virtual {v0, v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    :cond_c5
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
