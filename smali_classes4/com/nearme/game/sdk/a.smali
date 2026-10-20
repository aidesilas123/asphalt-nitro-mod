###### Class com.nearme.game.sdk.a (com.nearme.game.sdk.a)
.class public final Lcom/nearme/game/sdk/a;
.super Lcom/nearme/game/sdk/d;
.source "GCInternalImpl.java"


# static fields
.field private static u:Z = true


# instance fields
.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/nearme/game/sdk/d;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/a;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nearme/game/sdk/a;->v:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/nearme/game/sdk/a;->C(Landroid/content/Context;Ljava/lang/String;)Lcom/nearme/game/sdk/common/model/biz/a;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/nearme/game/sdk/d;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/a;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nearme/game/sdk/a;->v:Z

    return-void
.end method

.method private static C(Landroid/content/Context;Ljava/lang/String;)Lcom/nearme/game/sdk/common/model/biz/a;
    .registers 18

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v0, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_c
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "debug_mode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_18} :catch_6f

    :try_start_18
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "is_offline_game"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/nearme/game/sdk/a;->u:Z

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "game_mode"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_2a} :catch_68

    :try_start_2a
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "app_type"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_32} :catch_65

    :try_start_32
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v2, v8, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_48

    if-eq v3, v8, :cond_50

    const/4 v9, 0x7

    if-ne v9, v8, :cond_46

    goto :goto_50

    :cond_46
    const/4 v3, 0x0

    goto :goto_50

    :catch_48
    :try_start_48
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "is_orientation_portrait"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48 .. :try_end_50} :catch_62

    :cond_50
    :goto_50
    :try_start_50
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "app_key"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_50 .. :try_end_58} :catch_5c

    move-object v10, v0

    move v13, v3

    move v12, v5

    goto :goto_7b

    :catch_5c
    move-exception v0

    move v15, v5

    move-object v5, v0

    move v0, v3

    move v3, v15

    goto :goto_74

    :catch_62
    move-exception v0

    move v3, v5

    goto :goto_6c

    :catch_65
    move-exception v0

    move v3, v5

    goto :goto_6b

    :catch_68
    move-exception v0

    move v3, v5

    const/4 v6, 0x0

    :goto_6b
    const/4 v7, 0x0

    :goto_6c
    move-object v5, v0

    const/4 v0, 0x1

    goto :goto_74

    :catch_6f
    move-exception v0

    move-object v5, v0

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_74
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v5, 0x0

    move v13, v0

    move v12, v3

    move-object v10, v5

    :goto_7b
    move v14, v6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a2

    new-instance v3, Lcom/nearme/game/sdk/common/model/biz/a;

    sget-boolean v9, Lcom/nearme/game/sdk/a;->u:Z

    move-object v8, v3

    move-object/from16 v11, p1

    invoke-direct/range {v8 .. v14}, Lcom/nearme/game/sdk/common/model/biz/a;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZI)V

    iput-object v1, v3, Lcom/nearme/game/sdk/common/model/biz/a;->f:Ljava/lang/String;

    iput v7, v3, Lcom/nearme/game/sdk/common/model/biz/a;->j:I

    :try_start_90
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, v3, Lcom/nearme/game/sdk/common/model/biz/a;->g:I

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, v3, Lcom/nearme/game/sdk/common/model/biz/a;->h:Ljava/lang/String;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_9c} :catch_9d

    goto :goto_a1

    :catch_9d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a1
    return-object v3

    :cond_a2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8bf7\u53c2\u7167\u6700\u65b0sdk\u63a5\u5165\u6587\u6863\uff0c\u6b63\u786e\u914d\u7f6eAndroidManifest.xml\u4e2d\u76f8\u5173meta-data\u53c2\u6570\uff01"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final B(Lcom/nearme/game/sdk/common/model/biz/b;)V
    .registers 3

    const/16 v0, 0x1b65

    invoke-virtual {p0, v0, p1}, Lcom/nearme/game/sdk/d;->v(ILjava/lang/Object;)V

    return-void
.end method
