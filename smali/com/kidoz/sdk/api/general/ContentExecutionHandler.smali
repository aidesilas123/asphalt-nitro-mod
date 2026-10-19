###### Class com.kidoz.sdk.api.general.ContentExecutionHandler (com.kidoz.sdk.api.general.ContentExecutionHandler)
.class public Lcom/kidoz/sdk/api/general/ContentExecutionHandler;
.super Ljava/lang/Object;
.source "ContentExecutionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;,
        Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;
    }
.end annotation


# static fields
.field public static final CLICK_REGULATION_TIME_FRAME:I = 0x6a4

.field public static final PROMOTED_CONTENT_CLICK_RESTORE_TIMEOUT:I = 0xbb8

.field public static final TAG:Ljava/lang/String; = "ContentExecutionHandler"

.field public static mLastClickActionTimeStamp:J

.field protected static mStaticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;


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

.method static synthetic access$000(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onExternalLinkItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static checkForParentalLock(Landroid/content/Context;Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;)V
    .registers 4

    invoke-static {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    new-instance v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$5;

    invoke-direct {v0, p1}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$5;-><init>(Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p0, v1, p1, p1, v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->startParentalDialog(Landroid/content/Context;ZFFLcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    goto :goto_15

    :cond_12
    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;->onLockNotActive()V

    :goto_15
    return-void
.end method

.method private static getUiHandlerInstance()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->mStaticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    if-nez v0, :cond_f

    new-instance v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$6;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->mStaticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    :cond_f
    sget-object v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->mStaticHandler:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    return-object v0
.end method

.method public static handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V
    .registers 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->mLastClickActionTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x6a4

    cmp-long v4, v0, v2

    if-lez v4, :cond_db

    sget-object v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$7;->$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_dc

    goto/16 :goto_bf

    :pswitch_1e
    invoke-static/range {p0 .. p5}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onHtmlItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_bf

    :pswitch_23
    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->isPromoted()Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v6, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, v6}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->checkForParentalLock(Landroid/content/Context;Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;)V

    goto/16 :goto_bf

    :cond_39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onExternalLinkItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_bf

    :pswitch_3e
    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->isPromoted()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-static {p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/kidoz/events/EventManager;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_6f

    :cond_5c
    invoke-static {p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v4, "Feed Click"

    const-string v5, "URL"

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/kidoz/events/EventManager;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    :goto_6f
    invoke-static/range {p0 .. p5}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onUrlItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_bf

    :pswitch_74
    invoke-static/range {p0 .. p5}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onlineGameItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_bf

    :pswitch_78
    if-eqz p0, :cond_bf

    new-instance v7, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {p0, v7}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->checkForParentalLock(Landroid/content/Context;Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;)V

    goto :goto_bf

    :pswitch_8a
    new-instance v6, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, v6}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->checkForParentalLock(Landroid/content/Context;Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;)V

    goto :goto_bf

    :pswitch_99
    invoke-static {p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/kidoz/events/EventManager;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    new-instance v7, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    sget-object v5, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;Z)V

    invoke-virtual {v7}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->openDialog()V

    :cond_bf
    :goto_bf
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->mLastClickActionTimeStamp:J

    invoke-static {}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->getUiHandlerInstance()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->getUiHandlerInstance()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$4;

    invoke-direct {v1, p6}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$4;-><init>(Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_db
    return-void

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_99
        :pswitch_8a
        :pswitch_78
        :pswitch_74
        :pswitch_3e
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method

.method private static onExternalLinkItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 21

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->isPromoted()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static/range {p0 .. p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/kidoz/events/EventManager;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_39

    :cond_22
    invoke-static/range {p0 .. p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v14

    const-string v12, "Feed Click"

    const-string v13, "External Url"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v15, p4

    invoke-virtual/range {v8 .. v15}, Lcom/kidoz/events/EventManager;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    :goto_39
    :try_start_39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_52} :catch_52

    :catch_52
    return-void
.end method

.method protected static onGooglePlayApp(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 21

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->isPromoted()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static/range {p0 .. p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/kidoz/events/EventManager;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_39

    :cond_22
    invoke-static/range {p0 .. p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v14

    const-string v12, "Feed Click"

    const-string v13, "Google Play App"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v15, p4

    invoke-virtual/range {v8 .. v15}, Lcom/kidoz/events/EventManager;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    :goto_39
    :try_start_39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_63} :catch_63

    :catch_63
    return-void
.end method

.method protected static onHtmlItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 13

    new-instance p4, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    sget-object v5, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->HTML_PLAYBACK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;Z)V

    invoke-virtual {p4}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->openDialog()V

    return-void
.end method

.method protected static onPromotedAppItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KIDOZ_LOG  - onPromotedAppItemClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LEV"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    :cond_2c
    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_60

    :cond_45
    invoke-static {p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/kidoz/events/EventManager;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-static/range {p0 .. p5}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onUrlItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_ce

    :cond_60
    :goto_60
    :try_start_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_98

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_98

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_98
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_ae
    .catch Landroid/content/ActivityNotFoundException; {:try_start_60 .. :try_end_ae} :catch_cb
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_ae} :catch_af

    goto :goto_ce

    :catch_af
    move-exception p0

    sget-object p1, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error when trying to open google start for promoted app: \n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    :catch_cb
    invoke-static/range {p0 .. p5}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onUrlItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_ce
    return-void
.end method

.method protected static onUrlItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 13

    sget-object p4, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->WEB_BROWSER:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->PROMOTED_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-ne v0, v1, :cond_12

    sget-object p4, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    const/4 p5, 0x0

    move-object v5, p4

    const/4 v6, 0x0

    goto :goto_14

    :cond_12
    move-object v5, p4

    move v6, p5

    :goto_14
    new-instance p4, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;Z)V

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object p0

    sget-object p1, Lcom/kidoz/sdk/api/general/enums/ContentType;->PROMOTED_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-ne p0, p1, :cond_2b

    invoke-virtual {p4}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->setAutoCloseTimer()V

    :cond_2b
    invoke-virtual {p4}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->openDialog()V

    return-void
.end method

.method protected static onlineGameItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 22

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->isPromoted()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static/range {p0 .. p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/kidoz/events/EventManager;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_39

    :cond_22
    invoke-static/range {p0 .. p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v14

    const-string v12, "Feed Click"

    const-string v13, "Online Game"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v15, p4

    invoke-virtual/range {v8 .. v15}, Lcom/kidoz/events/EventManager;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    :goto_39
    new-instance v7, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;

    sget-object v5, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ONLINE_GAME:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;Z)V

    invoke-virtual {v7}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerDialog;->openDialog()V

    return-void
.end method

###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.AnonymousClass1 (com.kidoz.sdk.api.general.ContentExecutionHandler$1)
.class Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;
.super Ljava/lang/Object;
.source "ContentExecutionHandler.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$position:I

.field final synthetic val$styleId:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iput-object p3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$widgetType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$styleId:Ljava/lang/String;

    iput p5, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockActive(Z)V
    .registers 11

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$widgetType:Ljava/lang/String;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$styleId:Ljava/lang/String;

    iget v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$position:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onGooglePlayApp(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2d

    :cond_11
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$widgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$styleId:Ljava/lang/String;

    sget v4, Lcom/kidoz/events/EventManager;->b:I

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v6, "SDK"

    const-string v7, "Incorrect Password"

    invoke-virtual/range {v0 .. v8}, Lcom/kidoz/events/EventManager;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method public onLockNotActive()V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$widgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$styleId:Ljava/lang/String;

    iget v4, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$1;->val$position:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onGooglePlayApp(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.AnonymousClass2 (com.kidoz.sdk.api.general.ContentExecutionHandler$2)
.class Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;
.super Ljava/lang/Object;
.source "ContentExecutionHandler.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$allowModifyOrientation:Z

.field final synthetic val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$position:I

.field final synthetic val$styleId:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 7

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iput-object p3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$widgetType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$styleId:Ljava/lang/String;

    iput p5, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$position:I

    iput-boolean p6, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$allowModifyOrientation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockActive(Z)V
    .registers 11

    const/4 v0, 0x1

    if-ne p1, v0, :cond_74

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$widgetType:Ljava/lang/String;

    iget-object v4, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$styleId:Ljava/lang/String;

    iget v5, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$position:I

    iget-boolean v6, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$allowModifyOrientation:Z

    invoke-static/range {v1 .. v6}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onPromotedAppItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance p1, Lcom/kidoz/sdk/api/structure/IsEventRecord;

    invoke-direct {p1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;-><init>()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setContentType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setName(Ljava/lang/String;)V

    iget v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$position:I

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setPositionIndex(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setAdvertiserId(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setTimeStamp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$widgetType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setWidgetType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$styleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setStyleId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->getIsEventTable()Lcom/kidoz/sdk/api/general/database/IsEventTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/general/database/IsEventTable;->insertRecord(Lcom/kidoz/sdk/api/structure/IsEventRecord;)V

    goto :goto_90

    :cond_74
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$widgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$styleId:Ljava/lang/String;

    sget v4, Lcom/kidoz/events/EventManager;->b:I

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v6, "Sponsored Content"

    const-string v7, "Incorrect Password"

    invoke-virtual/range {v0 .. v8}, Lcom/kidoz/events/EventManager;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_90
    return-void
.end method

.method public onLockNotActive()V
    .registers 7

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$widgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$styleId:Ljava/lang/String;

    iget v4, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$position:I

    iget-boolean v5, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$allowModifyOrientation:Z

    invoke-static/range {v0 .. v5}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onPromotedAppItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance v0, Lcom/kidoz/sdk/api/structure/IsEventRecord;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;-><init>()V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setContentType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setName(Ljava/lang/String;)V

    iget v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setPositionIndex(I)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setAdvertiserId(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setTimeStamp(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$widgetType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setWidgetType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$styleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setStyleId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->getIsEventTable()Lcom/kidoz/sdk/api/general/database/IsEventTable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/general/database/IsEventTable;->insertRecord(Lcom/kidoz/sdk/api/structure/IsEventRecord;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.AnonymousClass3 (com.kidoz.sdk.api.general.ContentExecutionHandler$3)
.class Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;
.super Ljava/lang/Object;
.source "ContentExecutionHandler.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$position:I

.field final synthetic val$styleId:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iput-object p3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$widgetType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$styleId:Ljava/lang/String;

    iput p5, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockActive(Z)V
    .registers 11

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$widgetType:Ljava/lang/String;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$styleId:Ljava/lang/String;

    iget v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$position:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->access$000(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2d

    :cond_11
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$widgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$styleId:Ljava/lang/String;

    sget v4, Lcom/kidoz/events/EventManager;->b:I

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v6, "Sponsored Content"

    const-string v7, "Incorrect Password"

    invoke-virtual/range {v0 .. v8}, Lcom/kidoz/events/EventManager;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method public onLockNotActive()V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$widgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$styleId:Ljava/lang/String;

    iget v4, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$position:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->access$000(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.AnonymousClass4 (com.kidoz.sdk.api.general.ContentExecutionHandler$4)
.class Lcom/kidoz/sdk/api/general/ContentExecutionHandler$4;
.super Ljava/lang/Object;
.source "ContentExecutionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$handleClickListener:Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$4;->val$handleClickListener:Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$4;->val$handleClickListener:Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;->onRestoreClick()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.AnonymousClass5 (com.kidoz.sdk.api.general.ContentExecutionHandler$5)
.class Lcom/kidoz/sdk/api/general/ContentExecutionHandler$5;
.super Ljava/lang/Object;
.source "ContentExecutionHandler.java"

# interfaces
.implements Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->checkForParentalLock(Landroid/content/Context;Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$lockStatusListener:Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$5;->val$lockStatusListener:Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseDialog()V
    .registers 1

    return-void
.end method

.method public onInputPass(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$5;->val$lockStatusListener:Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;->onLockActive(Z)V

    return-void
.end method

###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.AnonymousClass6 (com.kidoz.sdk.api.general.ContentExecutionHandler$6)
.class Lcom/kidoz/sdk/api/general/ContentExecutionHandler$6;
.super Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
.source "ContentExecutionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->getUiHandlerInstance()Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.AnonymousClass7 (com.kidoz.sdk.api.general.ContentExecutionHandler$7)
.class synthetic Lcom/kidoz/sdk/api/general/ContentExecutionHandler$7;
.super Ljava/lang/Object;
.source "ContentExecutionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/ContentExecutionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/general/enums/ContentType;->values()[Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$7;->$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->ROVIO_ITEM:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$7;->$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->GOOGLE_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$7;->$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->PROMOTED_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$7;->$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->WEB_GAME_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$7;->$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->WEBSITE_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$7;->$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->EXTERNAL_BROWSER_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$7;->$SwitchMap$com$kidoz$sdk$api$general$enums$ContentType:[I

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/ContentType;->HTML:Lcom/kidoz/sdk/api/general/enums/ContentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method

###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.IOnHandleClickListener (com.kidoz.sdk.api.general.ContentExecutionHandler$IOnHandleClickListener)
.class public interface abstract Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;
.super Ljava/lang/Object;
.source "ContentExecutionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/ContentExecutionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnHandleClickListener"
.end annotation


# virtual methods
.method public abstract onRestoreClick()V
.end method

###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.IOnParentalLockStatusListener (com.kidoz.sdk.api.general.ContentExecutionHandler$IOnParentalLockStatusListener)
.class public interface abstract Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;
.super Ljava/lang/Object;
.source "ContentExecutionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/ContentExecutionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnParentalLockStatusListener"
.end annotation


# virtual methods
.method public abstract onLockActive(Z)V
.end method

.method public abstract onLockNotActive()V
.end method
