###### Class com.tapjoy.internal.j2 (com.tapjoy.internal.j2)
.class public final Lcom/tapjoy/internal/j2;
.super Lcom/tapjoy/internal/q1;
.source "SourceFile"


# static fields
.field public static c:Lcom/tapjoy/internal/j2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/tapjoy/internal/e2;

    invoke-direct {v0}, Lcom/tapjoy/internal/e2;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/internal/q1;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/e2;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fiverocks"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2e1

    invoke-static/range {p0 .. p0}, Lcom/tapjoy/internal/d3;->a(Landroid/content/Context;)Lcom/tapjoy/internal/d3;

    move-result-object v3

    iget-object v3, v3, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v3, v3, Lcom/tapjoy/internal/s5;->w:Ljava/lang/Boolean;

    sget-object v4, Lcom/tapjoy/internal/p6;->d:Ljava/lang/Boolean;

    if-eqz v3, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v4

    :goto_1f
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_42

    sget-object v1, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/v1;->g(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/tapjoy/internal/r1;->a:Lcom/tapjoy/internal/r1;

    const-string v2, "push_ignore"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    const-string v3, "unknownFields == null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    return-void

    :cond_42
    const-string v3, "title"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "message"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2e1

    const-string v5, "rich"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "sound"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "payload"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "always"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v12, 0x0

    if-nez v10, :cond_88

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_86

    goto :goto_88

    :cond_86
    const/4 v8, 0x0

    goto :goto_89

    :cond_88
    :goto_88
    const/4 v8, 0x1

    :goto_89
    const-string v10, "repeatable"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a2

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a0

    goto :goto_a2

    :cond_a0
    const/4 v10, 0x0

    goto :goto_a3

    :cond_a2
    :goto_a2
    const/4 v10, 0x1

    :goto_a3
    const-string v13, "placement"

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "nid"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Ljava/lang/Number;

    if-eqz v15, :cond_bc

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    goto :goto_c8

    :cond_bc
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_c7

    :try_start_c0
    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_c6
    .catch Ljava/lang/NumberFormatException; {:try_start_c0 .. :try_end_c6} :catch_c7

    goto :goto_c8

    :catch_c7
    :cond_c7
    const/4 v14, 0x0

    :goto_c8
    const-string v15, "channel_id"

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v8, :cond_e8

    sget-object v8, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v8, v0}, Lcom/tapjoy/internal/v1;->g(Landroid/content/Context;)V

    iget-object v8, v8, Lcom/tapjoy/internal/v1;->j:Lcom/tapjoy/internal/e9;

    if-eqz v8, :cond_e5

    iget-object v8, v8, Lcom/tapjoy/internal/e9;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_e5

    const/4 v8, 0x1

    goto :goto_e6

    :cond_e5
    const/4 v8, 0x0

    :goto_e6
    if-nez v8, :cond_2e1

    :cond_e8
    if-nez v3, :cond_ec

    const-string v3, ""

    :cond_ec
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_fd

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fb

    goto :goto_fd

    :cond_fb
    const/4 v5, 0x0

    goto :goto_fe

    :cond_fd
    :goto_fd
    const/4 v5, 0x1

    :goto_fe
    invoke-virtual {v8, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10d

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10b

    goto :goto_10d

    :cond_10b
    const/4 v6, 0x0

    goto :goto_10e

    :cond_10d
    :goto_10d
    const/4 v6, 0x1

    :goto_10e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    new-instance v15, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v15, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v15, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v15, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_154

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_132

    goto :goto_154

    :cond_132
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v15, 0x10000000

    invoke-virtual {v11, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v15, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_155

    :cond_154
    :goto_154
    const/4 v11, 0x0

    :goto_155
    if-eqz v11, :cond_176

    const-string v8, "com.tapjoy.PUSH_CLICK"

    invoke-virtual {v11, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "com.tapjoy.PUSH_ID"

    invoke-virtual {v11, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v7, :cond_16f

    const-string v8, "com.tapjoy.PUSH_PAYLOAD"

    invoke-virtual {v11, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16f
    if-eqz v13, :cond_176

    const-string v7, "com.tapjoy.PUSH_PLACEMENT"

    invoke-virtual {v11, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_176
    const/high16 v7, 0x8000000

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v8, v13, :cond_180

    const/high16 v7, 0x4000000

    :cond_180
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v14, v11, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const-string v11, "notification"

    if-nez v7, :cond_18e

    goto/16 :goto_2cc

    :cond_18e
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v9, 0x80

    :try_start_198
    invoke-virtual {v13, v15, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9
    :try_end_19c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_198 .. :try_end_19c} :catch_2cc

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1a7

    invoke-virtual {v13, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1ad

    :cond_1a7
    if-eqz v5, :cond_1ad

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    :cond_1ad
    :goto_1ad
    if-eqz v5, :cond_1b3

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    :cond_1b3
    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v13, "drawable"

    if-eqz v5, :cond_1d8

    const-string v15, "com.tapjoy.notification.icon"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v15, v5, Ljava/lang/Integer;

    if-eqz v15, :cond_1d8

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :try_start_1c9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_1d5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c9 .. :try_end_1d5} :catch_1d8

    if-eqz v15, :cond_1d8

    goto :goto_1d9

    :catch_1d8
    :cond_1d8
    const/4 v5, 0x0

    :goto_1d9
    if-nez v5, :cond_1e3

    iget v5, v9, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v5, :cond_1e0

    goto :goto_1e3

    :cond_1e0
    const v5, 0x1080093

    :cond_1e3
    :goto_1e3
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v15, :cond_206

    const-string v12, "com.tapjoy.notification.icon.large"

    invoke-virtual {v15, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v15, v12, Ljava/lang/Integer;

    if-eqz v15, :cond_206

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :try_start_1f7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_203
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f7 .. :try_end_203} :catch_206

    if-eqz v13, :cond_206

    goto :goto_207

    :catch_206
    :cond_206
    const/4 v12, 0x0

    :goto_207
    if-eqz v12, :cond_212

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_213

    :cond_212
    const/4 v12, 0x0

    :goto_213
    const-string v13, "tapjoy"

    if-nez v1, :cond_221

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_221

    const-string v1, "com.tapjoy.notification.default_channel_id"

    invoke-virtual {v9, v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_221
    const/4 v9, 0x3

    const/16 v15, 0x1a

    if-lt v8, v15, :cond_243

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    if-eqz v1, :cond_237

    invoke-virtual {v8, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v15

    if-nez v15, :cond_235

    goto :goto_237

    :cond_235
    move-object v9, v1

    goto :goto_244

    :cond_237
    :goto_237
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v15, "Tapjoy"

    invoke-direct {v1, v13, v15, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v8, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    move-object v9, v13

    goto :goto_244

    :cond_243
    const/4 v9, 0x0

    :goto_244
    new-instance v1, Lcom/tapjoy/internal/c9;

    invoke-direct {v1, v0, v9}, Lcom/tapjoy/internal/c9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/tapjoy/internal/c9;->k:Landroid/app/Notification;

    iput v5, v8, Landroid/app/Notification;->icon:I

    const/16 v5, 0x1400

    if-nez v3, :cond_252

    goto :goto_25e

    :cond_252
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v9, v5, :cond_25e

    const/4 v9, 0x0

    invoke-interface {v3, v9, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v13

    goto :goto_260

    :cond_25e
    :goto_25e
    const/4 v9, 0x0

    move-object v13, v3

    :goto_260
    iput-object v13, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-nez v3, :cond_265

    goto :goto_270

    :cond_265
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v8, v5, :cond_270

    invoke-interface {v3, v9, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_271

    :cond_270
    :goto_270
    move-object v8, v3

    :goto_271
    iput-object v8, v1, Lcom/tapjoy/internal/c9;->c:Ljava/lang/CharSequence;

    if-nez v4, :cond_276

    goto :goto_281

    :cond_276
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v8, v5, :cond_281

    invoke-interface {v4, v9, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_282

    :cond_281
    :goto_281
    move-object v8, v4

    :goto_282
    iput-object v8, v1, Lcom/tapjoy/internal/c9;->d:Ljava/lang/CharSequence;

    iput-object v7, v1, Lcom/tapjoy/internal/c9;->e:Landroid/app/PendingIntent;

    iget-object v7, v1, Lcom/tapjoy/internal/c9;->k:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/app/Notification;->flags:I

    iput v9, v1, Lcom/tapjoy/internal/c9;->g:I

    new-instance v7, Lcom/tapjoy/internal/s8;

    invoke-direct {v7}, Lcom/tapjoy/internal/s8;-><init>()V

    if-nez v3, :cond_298

    goto :goto_2a2

    :cond_298
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v8, v5, :cond_2a2

    invoke-interface {v3, v9, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_2a2
    :goto_2a2
    iput-object v3, v7, Lcom/tapjoy/internal/n9;->b:Ljava/lang/CharSequence;

    if-nez v4, :cond_2a7

    goto :goto_2b1

    :cond_2a7
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v5, :cond_2b1

    invoke-interface {v4, v9, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    :cond_2b1
    :goto_2b1
    iput-object v4, v7, Lcom/tapjoy/internal/s8;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Lcom/tapjoy/internal/c9;->a(Lcom/tapjoy/internal/s8;)Lcom/tapjoy/internal/c9;

    move-result-object v1

    if-eqz v6, :cond_2be

    iget-object v3, v1, Lcom/tapjoy/internal/c9;->k:Landroid/app/Notification;

    const/4 v4, 0x1

    iput v4, v3, Landroid/app/Notification;->defaults:I

    :cond_2be
    if-eqz v12, :cond_2c2

    iput-object v12, v1, Lcom/tapjoy/internal/c9;->f:Landroid/graphics/Bitmap;

    :cond_2c2
    new-instance v3, Lcom/tapjoy/internal/b5;

    invoke-direct {v3, v1}, Lcom/tapjoy/internal/b5;-><init>(Lcom/tapjoy/internal/c9;)V

    invoke-virtual {v3}, Lcom/tapjoy/internal/b5;->b()Landroid/app/Notification;

    move-result-object v9

    goto :goto_2cd

    :catch_2cc
    :goto_2cc
    const/4 v9, 0x0

    :goto_2cd
    sget-object v1, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/v1;->g(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, v10}, Lcom/tapjoy/internal/v1;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2e1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v14, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2e1
    return-void
.end method
