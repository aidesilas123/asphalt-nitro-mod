###### Class com.tapjoy.internal.b5 (com.tapjoy.internal.b5)
.class public final Lcom/tapjoy/internal/b5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Notification$Builder;

.field public final b:Lcom/tapjoy/internal/c9;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/c9;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/b5;->c:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/b5;->d:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/tapjoy/internal/b5;->b:Lcom/tapjoy/internal/c9;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_25

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p1, Lcom/tapjoy/internal/c9;->a:Landroid/content/Context;

    iget-object v4, p1, Lcom/tapjoy/internal/c9;->j:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    goto :goto_2e

    :cond_25
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p1, Lcom/tapjoy/internal/c9;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    :goto_2e
    iget-object v2, p1, Lcom/tapjoy/internal/c9;->k:Landroid/app/Notification;

    iget-object v3, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    iget-wide v4, v2, Landroid/app/Notification;->when:J

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->icon:I

    iget v5, v2, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->ledARGB:I

    iget v6, v2, Landroid/app/Notification;->ledOnMS:I

    iget v7, v2, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v3, v4, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_67

    const/4 v4, 0x1

    goto :goto_68

    :cond_67
    const/4 v4, 0x0

    :goto_68
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_74

    const/4 v4, 0x1

    goto :goto_75

    :cond_74
    const/4 v4, 0x0

    :goto_75
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    const/16 v8, 0x10

    and-int/2addr v4, v8

    if-eqz v4, :cond_82

    const/4 v4, 0x1

    goto :goto_83

    :cond_82
    const/4 v4, 0x0

    :goto_83
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->defaults:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/tapjoy/internal/c9;->c:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/tapjoy/internal/c9;->d:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/tapjoy/internal/c9;->e:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v4, v2, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b0

    goto :goto_b1

    :cond_b0
    const/4 v6, 0x0

    :goto_b1
    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/tapjoy/internal/c9;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v7, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    const/16 v3, 0x15

    if-ge v0, v3, :cond_cf

    iget-object v4, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    iget-object v6, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v9, v2, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v4, v6, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    :cond_cf
    if-lt v0, v8, :cond_f7

    iget-object v0, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, p1, Lcom/tapjoy/internal/c9;->g:I

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Lcom/tapjoy/internal/c9;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/tapjoy/internal/g6;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tapjoy/internal/b5;->a()V

    goto :goto_e6

    :cond_f7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_125

    iget-object v4, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    iget-boolean v6, p1, Lcom/tapjoy/internal/c9;->h:Z

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    if-ge v0, v3, :cond_125

    iget-object v4, p1, Lcom/tapjoy/internal/c9;->l:Ljava/util/ArrayList;

    if-eqz v4, :cond_125

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_125

    iget-object v4, p0, Lcom/tapjoy/internal/b5;->d:Landroid/os/Bundle;

    iget-object v6, p1, Lcom/tapjoy/internal/c9;->l:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const-string v8, "android.people"

    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_125
    const/16 v4, 0x14

    if-lt v0, v4, :cond_13a

    iget-object v4, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_13a
    if-lt v0, v3, :cond_16d

    iget-object v0, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v2, v2, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v3, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Lcom/tapjoy/internal/c9;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_15b

    :cond_16d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_17c

    iget-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_17c
    if-lt v0, v1, :cond_1aa

    iget-object v0, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    iget-object p1, p1, Lcom/tapjoy/internal/c9;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1aa

    iget-object p1, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v7, v7, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_1aa
    return-void
.end method

.method public static a()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_f

    const/16 v2, 0x10

    if-ge v0, v2, :cond_c

    return-void

    :cond_c
    sget-object v0, Lcom/tapjoy/internal/a0;->a:Ljava/lang/Object;

    throw v1

    :cond_f
    new-instance v0, Landroid/app/Notification$Action$Builder;

    throw v1
.end method


# virtual methods
.method public final b()Landroid/app/Notification;
    .registers 13

    iget-object v0, p0, Lcom/tapjoy/internal/b5;->b:Lcom/tapjoy/internal/c9;

    iget-object v0, v0, Lcom/tapjoy/internal/c9;->i:Lcom/tapjoy/internal/n9;

    const/16 v1, 0x10

    if-eqz v0, :cond_21

    move-object v2, v0

    check-cast v2, Lcom/tapjoy/internal/s8;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_21

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    iget-object v4, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-direct {v3, v4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v4, v2, Lcom/tapjoy/internal/n9;->b:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    iget-object v2, v2, Lcom/tapjoy/internal/s8;->c:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_21
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/16 v4, 0x15

    if-lt v2, v3, :cond_31

    iget-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_102

    :cond_31
    const/16 v3, 0x18

    if-lt v2, v3, :cond_3d

    iget-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_102

    :cond_3d
    if-lt v2, v4, :cond_4e

    iget-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/tapjoy/internal/b5;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_102

    :cond_4e
    const/16 v3, 0x14

    if-lt v2, v3, :cond_61

    iget-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/tapjoy/internal/b5;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_102

    :cond_61
    const/16 v3, 0x13

    const-string v5, "android.support.actionExtras"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-lt v2, v3, :cond_9d

    iget-object v2, p0, Lcom/tapjoy/internal/b5;->c:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/a0;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_71
    if-ge v6, v3, :cond_88

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    if-eqz v8, :cond_85

    if-nez v7, :cond_82

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    :cond_82
    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_85
    add-int/lit8 v6, v6, 0x1

    goto :goto_71

    :cond_88
    if-eqz v7, :cond_8f

    iget-object v2, p0, Lcom/tapjoy/internal/b5;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_8f
    iget-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/tapjoy/internal/b5;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_102

    :cond_9d
    if-lt v2, v1, :cond_fc

    iget-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/internal/a5;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v8, Landroid/os/Bundle;

    iget-object v9, p0, Lcom/tapjoy/internal/b5;->d:Landroid/os/Bundle;

    invoke-direct {v8, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v9, p0, Lcom/tapjoy/internal/b5;->d:Landroid/os/Bundle;

    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_ba
    :goto_ba
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ba

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_ba

    :cond_d0
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/tapjoy/internal/b5;->c:Ljava/util/ArrayList;

    sget-object v8, Lcom/tapjoy/internal/a0;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_db
    if-ge v6, v8, :cond_f2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    if-eqz v9, :cond_ef

    if-nez v7, :cond_ec

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    :cond_ec
    invoke-virtual {v7, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_ef
    add-int/lit8 v6, v6, 0x1

    goto :goto_db

    :cond_f2
    if-eqz v7, :cond_102

    invoke-static {v2}, Lcom/tapjoy/internal/a5;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_102

    :cond_fc
    iget-object v2, p0, Lcom/tapjoy/internal/b5;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    :cond_102
    :goto_102
    iget-object v3, p0, Lcom/tapjoy/internal/b5;->b:Lcom/tapjoy/internal/c9;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_114

    if-eqz v0, :cond_114

    iget-object v4, p0, Lcom/tapjoy/internal/b5;->b:Lcom/tapjoy/internal/c9;

    iget-object v4, v4, Lcom/tapjoy/internal/c9;->i:Lcom/tapjoy/internal/n9;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_114
    if-lt v3, v1, :cond_11b

    if-eqz v0, :cond_11b

    invoke-static {v2}, Lcom/tapjoy/internal/a5;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    :cond_11b
    return-object v2
.end method
