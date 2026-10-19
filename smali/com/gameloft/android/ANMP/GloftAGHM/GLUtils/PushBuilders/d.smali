###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders.d (com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders.d)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/d;
.super Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;
.source "PushBuilderV26.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .registers 6

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f08022b

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->g:J

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->d:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->h:Z

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->q:I

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_59

    const-string v1, "GL_Channel"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_59
    sget-boolean v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->f:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_82

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->i:Ljava/lang/String;

    if-eqz v1, :cond_82

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetAsset()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_82

    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    iget-object v3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    iget-object v3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetAsset()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_a6

    :cond_82
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->j:[Ljava/lang/String;

    if-eqz v1, :cond_a6

    array-length v1, v1

    if-le v1, v2, :cond_a6

    new-instance v1, Landroid/app/Notification$InboxStyle;

    invoke-direct {v1}, Landroid/app/Notification$InboxStyle;-><init>()V

    iget-object v3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    iget-object v3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->j:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    :goto_97
    if-ltz v3, :cond_a3

    iget-object v4, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->j:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    add-int/lit8 v3, v3, -0x1

    goto :goto_97

    :cond_a3
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_a6
    :goto_a6
    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->o:Z

    if-nez v1, :cond_ae

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :cond_ae
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;->getIcon()I

    move-result v3

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    iget v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->i:I

    if-le v1, v2, :cond_c6

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    :cond_c6
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->e:Landroid/app/PendingIntent;

    if-eqz v1, :cond_cd

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_cd
    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->n:Z

    if-eqz v1, :cond_da

    iget v1, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->k:I

    iget v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->l:I

    iget-boolean v3, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->m:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    :cond_da
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
