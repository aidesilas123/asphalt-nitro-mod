###### Class com.json.adqualitysdk.sdk.i.hd (com.ironsource.adqualitysdk.sdk.i.hd)
.class public Lcom/ironsource/adqualitysdk/sdk/i/hd;
.super Landroid/webkit/WebViewClient;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/cg;
.implements Lcom/ironsource/adqualitysdk/sdk/i/jl;


# static fields
.field private static a:I = -0x2ddb5790

.field private static b:I = 0x7c

.field private static c:I = 0xfd974b6

.field private static d:[B = null

.field private static e:[S = null

.field private static f:C = '\u0000'

.field private static g:C = '\u0000'

.field private static h:C = '\u0000'

.field private static i:C = '\u0000'

.field private static j:I = 0x0

.field private static k:I = 0x1


# instance fields
.field private l:Landroid/webkit/WebViewClient;

.field private m:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x218

    new-array v1, v0, [B

    const-string v2, "\u009a\u0003\u00fb\u0013\u00ef\u0003\u000c\u00fe!\u00d0\u0006\t\u00fc\u00fd)\u00cc\u0012\u00fc\u0013\u00f4\u00fd\u000e\u00b6\u00bd\u00fa\u00fdM\u00c1\u00f9\u0005\u0005\u0003\u00f2#\u00e0\u00fa\u001d\u00f0\u0001\u00fb\u00f7\u0000\r\u00ef\'\u00eb\u00f8\u00f7\u0006\u0007\u00f5S\u00ae\r\u00f7\t\u00f1\u0001\n\u001d\u00ea\u000e\u00e7M\u00b2\u0005I\u00ae\u0003\u00fd\u0000-\u00b8\u00bd\u00fa\u00fdM\u00c1\u00f9\u0005\u0005\u0003\u00f2#\u00e0\u00fa\u001d\u00f0\u0001\u00fb\u00f7\u0000\r\u00ef\'\u00eb\u00f8\u00f7\u0006\u0007\u00f5S\u00ac\u0006\t\u00fc\u00fd)\u00d5\u0005\u0002\u00fe\u00f7#\u00e2M\u00b2\u0005I\u00ae\u0003\u00fd\u0000-\u00ba\u00b5\u0001\u000e\u00f0\u0004\u000c\u00f3J\u00c1\u00f9\u0005\u0005\u0003\u00f2#\u00e0\u00fa\u001d\u00f0\u0001\u00fb\u00f7\u0000\r\u00ef\'\u00eb\u00f8\u00f7\u0006\u0007\u00f5S\u00ae\r\u00f7\t\u00f1\u0001\n\u001d\u00ea\u000e\u00e7M\u00b2\u0005I\u00ae\u0003\u00fd\u0000-\u00a6\u00ff\u00f1\u0002\u0011\u00ed!\u00ee\u00fe\u0006\u0011\u00e2\u00ffO\u00ae\r\u00f7\t\u00f1\u0001\n\u001d\u00ea\u000e\u00e7M\u00b2\u0005I\u00ae\u0003\u00fd\u0000-\u00a7\u00ff\u00fd\u00f5\n\u00fb\u0005#\u00e1\u00fe\u0006\u0011\u00e2\u00ffO\u00ae\r\u00f7\t\u00f1\u0001\n\u001d\u00ea\u000e\u00e7M\u00b2\u0005I\u00ae\u0003\u00fd\u0000-\u00af\u0001\u000e\u00f0\u0004\u000c\u0013\u00de\u0004\u000b\u0002\u00f1\r\u00f1\u0006%\u00e5\u00f8\u00f7\u0006\u0007\u00f5S\u00ae\r\u00f7\t\u00f1\u0001\n\u001d\u00ea\u000e\u00e7M\u00b2\u0005I\u00ae\u0003\u00fd\u0000-\u00a8\u0003\u00fd\u0000-\u00e1\u00ff\u00ef\r\u0004\u0002\u00fe\u0013\u00e4\u00ffO\u00ae\r\u00f7\t\u00f1\u0001\n\u001d\u00ea\u000e\u00e7M\u00b2\u0005I\u00ae\u0003\u00fd\u0000-\u00ab\u00ff\u0006\u00f6\u0000\n\u00fc\u000b\u00ed\u0002\u000e\u0013\u00e5\u00fb\u0003)\u00d8\u00ffO\u00ae\r\u00f7\t\u00f1\u0001\n\u001d\u00ea\u000e\u00e7M\u00b2\u0005I\u00ae\u0003\u00fd\u0000-\u00af\u0007\u0003\u00fb\u0001\n!\u00e4\u00ff\u00f1\u000b\u00f6\n\u0013\u00f1\u00f1\u0013\u00fd\u00f4\u001b\u00e6\u000bD\u00ae\r\u00f7\t\u00f1\u0001\n\u001d\u00ea\u000e\u00e7M\u00b2\u0005I\u00ae\u0003\u00fd\u0000-\u00b4\u0001\u000e\u00f0\u0004\u000c\u0013\u00de\u0002\r\"\u00cf\u0006\t\u00fc\u00fd)\u00df\u00ff\u00ef\r\u0004\u0002\u00fe\u0013\u00e4\u00ffO\u00ae\r\u00f7\t\u00f1\u0001\n\u001d\u00ea\u000e\u00e7M\u00b2\u0005I\u00ae\u0003\u00fd\u0000-\u00ac\u0006\t\u00ef1\u00cc\u0014\u001a\u00e7\u00ff\u00f9\u0008\u00f6\r\u00f9\u00fa\u0019\u00e7\u00ffO\u00ae\r\u00f7\t\u00f1\u0001\n\u001d\u00ea\u000e\u00e7M\u00b2\u0005I\u00ae\u0003\u00fd\u0000-\u00ac\u00f7\u00ff(\u00d4\u0000\u000e\u0002\u00f4\u00fd\"\u00de\r\u0001\u00f6\t\u0013\u00e4\u00ffO\u00ae\r\u00f7\t\u00f1\u0001\n\u001d\u00ea\u000e\u00e7M\u00b2\u0005I\u00ae\u0003\u00fd\u0000-"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d:[B

    const/16 v0, 0x4d19

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->h:C

    const v0, 0xd183

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->g:C

    const/16 v0, 0x130d

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->i:C

    const/16 v0, 0x6248

    sput-char v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f:C

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewClient;Landroid/webkit/WebViewClient;)V
    .registers 3

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    return-void
.end method

.method private a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Z)Z
    .registers 22
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ""

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    const v5, 0x2ddb5791

    const-wide/16 v6, 0x0

    const v8, -0xfd9745f

    const/16 v9, 0x30

    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_1e
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_44

    if-nez v0, :cond_38

    if-eqz p3, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    if-eq v0, v10, :cond_38

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v12, v0, 0x80

    sput v12, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_9e

    :cond_38
    :try_start_38
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    instance-of v12, v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;

    if-eqz v12, :cond_43

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;

    invoke-direct {v0, v2, v3, v10}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Z)Z
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_44

    :cond_43
    return v10

    :catchall_44
    move-exception v0

    invoke-static {v4, v9}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v12

    add-int/lit8 v12, v12, -0x7c

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v13

    sub-int v13, v8, v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v14

    shr-int/lit8 v14, v14, 0x10

    int-to-byte v14, v14

    invoke-static {v6, v7}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v15

    int-to-short v15, v15

    invoke-static {v11}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v16

    add-int v10, v16, v5

    invoke-static {v12, v13, v14, v15, v10}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v12

    rsub-int/lit8 v12, v12, -0x7d

    const v13, -0xfd97471

    const/4 v14, 0x0

    invoke-static {v11, v14, v14}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v15

    cmpl-float v15, v15, v14

    sub-int/2addr v13, v15

    invoke-static {v4, v11}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v15

    int-to-byte v15, v15

    invoke-static {v11}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v16

    cmpl-float v14, v16, v14

    int-to-short v14, v14

    const v16, 0x2ddb580c

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v17

    shr-int/lit8 v17, v17, 0x10

    sub-int v6, v16, v17

    invoke-static {v12, v13, v15, v14, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v0, v11}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_9e
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a4

    const/4 v10, 0x0

    goto :goto_a5

    :cond_a4
    const/4 v10, 0x1

    :goto_a5
    if-eqz v10, :cond_a8

    goto :goto_ea

    :cond_a8
    :try_start_a8
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_ad

    return v0

    :catchall_ad
    move-exception v0

    move-object v6, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, -0x7d

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    sub-int/2addr v8, v7

    invoke-static {v4, v11, v11}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v7

    int-to-byte v7, v7

    invoke-static {v4, v11}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v10

    int-to-short v10, v10

    invoke-static {v4, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v0, v8, v7, v10, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    add-int/lit8 v4, v4, 0x38

    const-string v5, "\uae36\u5b6c\ue7d1\uf360\ue507\u2504\uf5b4\u1692\u7b00\ubba3\ue503\u30ad\u0f10\uc89f\uf5b4\u1692\ua9fa\ucab5\u387c\u50b0\ud0c6\udba2\u5b75\u61e6\u576c\u8cfe\t\u6bf9\u340e\u1832\u803b\u571a\ucdcc\ue1ef\u736c\ube92\ud308\ud66e\ub6ed\ud778\uee47\ud28c\u3a25\u69b3\uf5b4\u1692\uaf91\u7fa5\u5f0a\uaa44\ua1a2\u9b12\u2d10\u5524\ud2a4\u72f5"

    invoke-static {v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v6, v11}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_ea
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_fb

    return v0

    :cond_fb
    const/4 v0, 0x0

    :try_start_fc
    throw v0
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fd

    :catchall_fd
    move-exception v0

    move-object v2, v0

    throw v2
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ""

    const v5, -0xfd97471

    const v6, 0x2ddb5790

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_13
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz p3, :cond_a5

    :cond_1d
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    instance-of v11, v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_4a

    if-eqz v11, :cond_26

    const/16 v11, 0x10

    goto :goto_27

    :cond_26
    const/4 v11, 0x0

    :goto_27
    if-eq v11, v8, :cond_2a

    goto :goto_3f

    :cond_2a
    sget v11, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v11, v11, 0x53

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_3c

    :try_start_36
    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;

    :goto_38
    invoke-direct {v0, v2, v3, v9}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    goto :goto_3f

    :cond_3c
    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_4a

    goto :goto_38

    :goto_3f
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    return v9

    :catchall_4a
    move-exception v0

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v11

    cmpl-float v11, v11, v7

    rsub-int/lit8 v11, v11, -0x7c

    const v12, -0xfd9745e

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v13

    int-to-byte v13, v13

    add-int/2addr v13, v12

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v12

    int-to-byte v12, v12

    invoke-static {v4, v4, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v14

    int-to-short v14, v14

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    sub-int v15, v6, v15

    invoke-static {v11, v13, v12, v14, v15}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, -0x7c

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v13

    shr-int/2addr v13, v8

    sub-int v13, v5, v13

    const/16 v14, 0x30

    invoke-static {v4, v14, v10, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v14

    add-int/2addr v14, v9

    int-to-byte v14, v14

    invoke-static {v4}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v15, v9

    int-to-short v15, v15

    const v16, 0x2ddb57a7

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v17

    cmpl-float v17, v17, v7

    sub-int v9, v16, v17

    invoke-static {v12, v13, v14, v15, v9}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9, v0, v10}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_a5
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->c()Z

    move-result v0

    if-eqz v0, :cond_122

    :try_start_ab
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0
    :try_end_b1
    .catchall {:try_start_ab .. :try_end_b1} :catchall_c8

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_bf

    const/4 v9, 0x0

    goto :goto_c0

    :cond_bf
    const/4 v9, 0x1

    :goto_c0
    if-eqz v9, :cond_c3

    return v0

    :cond_c3
    const/4 v0, 0x0

    :try_start_c4
    throw v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception v0

    move-object v2, v0

    throw v2

    :catchall_c8
    move-exception v0

    invoke-static {v10, v10, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    add-int/lit8 v9, v9, -0x7d

    const v11, -0xfd9745f

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v12

    add-int/2addr v12, v11

    const-wide/16 v13, 0x0

    invoke-static {v13, v14}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v11

    int-to-byte v11, v11

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    shr-int/lit8 v15, v15, 0x16

    int-to-short v15, v15

    invoke-static {v4, v4, v10, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v4

    sub-int/2addr v6, v4

    invoke-static {v9, v12, v11, v15, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v11

    cmp-long v6, v11, v13

    add-int/lit8 v6, v6, -0x7d

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v9

    shr-int/lit8 v8, v9, 0x10

    add-int/2addr v8, v5

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v5

    cmpl-float v5, v5, v7

    int-to-byte v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    int-to-short v7, v7

    const v9, 0x2ddb57d8

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int/2addr v9, v11

    invoke-static {v6, v8, v5, v7, v9}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0, v10}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_122
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c()Z
    .registers 5

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v1, 0x2a

    if-eqz v0, :cond_13

    const/16 v2, 0x3f

    goto :goto_15

    :cond_13
    const/16 v2, 0x2a

    :goto_15
    const/4 v3, 0x0

    if-eq v2, v1, :cond_41

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x19

    const/16 v2, 0x61

    if-nez v0, :cond_2b

    const/16 v0, 0x19

    goto :goto_2d

    :cond_2b
    const/16 v0, 0x61

    :goto_2d
    if-eq v0, v2, :cond_41

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x1

    :goto_3e
    if-eqz v0, :cond_41

    return v1

    :cond_41
    return v3
.end method

.method private static d(IIBSI)Ljava/lang/String;
    .registers 12

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﺙ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->b:I

    add-int/2addr p0, v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p0, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_2a

    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d:[B

    if-eqz p0, :cond_21

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/hd;->a:I

    add-int/2addr v6, p4

    aget-byte p0, p0, v6

    add-int/2addr p0, v2

    int-to-byte p0, p0

    goto :goto_2a

    :cond_21
    sget-object p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->e:[S

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/hd;->a:I

    add-int/2addr v6, p4

    aget-short p0, p0, v6

    add-int/2addr p0, v2

    int-to-short p0, p0

    :cond_2a
    :goto_2a
    if-lez p0, :cond_89

    add-int/2addr p4, p0

    add-int/lit8 p4, p4, -0x2

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->a:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    :cond_35
    add-int/2addr p4, v4

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    sput-byte p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->c:I

    add-int/2addr p1, p2

    int-to-char p1, p1

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    :goto_49
    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    if-ge p1, p0, :cond_89

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d:[B

    if-eqz p1, :cond_65

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    aget-byte p1, p1, p2

    sget-char p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    add-int/2addr p1, p3

    int-to-byte p1, p1

    sget-byte p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    xor-int/2addr p1, p4

    add-int/2addr p2, p1

    int-to-char p1, p2

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    goto :goto_7a

    :cond_65
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->e:[S

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾇ:I

    aget-short p1, p1, p2

    sget-char p2, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    add-int/2addr p1, p3

    int-to-short p1, p1

    sget-byte p4, Lcom/ironsource/adqualitysdk/sdk/i/n;->ｋ:B

    xor-int/2addr p1, p4

    add-int/2addr p2, p1

    int-to-char p1, p2

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    :goto_7a
    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻐ:C

    sput-char p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﻛ:C

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    add-int/2addr p1, v5

    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/n;->ﾒ:I

    goto :goto_49

    :cond_89
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8f

    return-object p0

    :catchall_8f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private e()Ljava/lang/Object;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x54

    if-eqz v0, :cond_11

    const/16 v0, 0x1b

    goto :goto_13

    :cond_11
    const/16 v0, 0x54

    :goto_13
    if-eq v0, v2, :cond_1e

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    const/16 v2, 0x24

    :try_start_19
    div-int/lit8 v2, v2, 0x0
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v0

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    :goto_20
    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private static f(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﾇ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    array-length v1, p0

    new-array v1, v1, [C

    const/4 v2, 0x0

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    const/4 v3, 0x2

    new-array v3, v3, [C

    :goto_14
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    array-length v5, p0

    if-ge v4, v5, :cond_76

    aget-char v5, p0, v4

    aput-char v5, v3, v2

    add-int/lit8 v4, v4, 0x1

    aget-char v4, p0, v4

    const/4 v5, 0x1

    aput-char v4, v3, v5

    const v4, 0xe370

    const/4 v6, 0x0

    :goto_28
    const/16 v7, 0x10

    if-ge v6, v7, :cond_65

    aget-char v7, v3, v5

    aget-char v8, v3, v2

    add-int/2addr v8, v4

    aget-char v9, v3, v2

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/hd;->h:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v2

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/hd;->i:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v5

    aget-char v7, v3, v2

    aget-char v8, v3, v5

    add-int/2addr v8, v4

    aget-char v9, v3, v5

    shl-int/lit8 v9, v9, 0x4

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    aget-char v9, v3, v5

    ushr-int/lit8 v9, v9, 0x5

    sget-char v10, Lcom/ironsource/adqualitysdk/sdk/i/hd;->g:C

    add-int/2addr v9, v10

    xor-int/2addr v8, v9

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v2

    const v7, 0x9e37

    sub-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_65
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    aget-char v6, v3, v2

    aput-char v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    aget-char v5, v3, v5

    aput-char v5, v1, v6

    add-int/lit8 v4, v4, 0x2

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/o;->ﻛ:I

    goto :goto_14

    :cond_76
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_b .. :try_end_7c} :catchall_7d

    return-object p0

    :catchall_7d
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 13

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_6b

    :catchall_11
    move-exception v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x7d

    const v3, -0xfd9745f

    invoke-static {v0, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-short v5, v5

    const v6, 0x2ddb57c0

    const/16 v7, 0x30

    invoke-static {v7}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x7d

    const v4, -0xfd97471

    invoke-static {v0, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-short v6, v6

    const v7, 0x2ddb58fd

    const-string v8, ""

    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v3, v5, v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_6b
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v2, 0x44

    if-eqz v1, :cond_74

    const/16 v3, 0x2d

    goto :goto_76

    :cond_74
    const/16 v3, 0x44

    :goto_76
    if-eq v3, v2, :cond_93

    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v2, v2, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_86

    const/4 v2, 0x0

    goto :goto_87

    :cond_86
    const/4 v2, 0x1

    :goto_87
    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    if-eqz v2, :cond_8d

    goto :goto_90

    :cond_8d
    const/16 p1, 0x3b

    :try_start_8f
    div-int/2addr p1, v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_91

    :goto_90
    return-void

    :catchall_91
    move-exception p1

    throw p1

    :cond_93
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 16

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x27

    if-eqz v0, :cond_11

    const/16 v0, 0x3b

    goto :goto_13

    :cond_11
    const/16 v0, 0x27

    :goto_13
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1f

    :try_start_17
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_8d

    :catchall_1d
    move-exception v0

    goto :goto_25

    :cond_1f
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    throw v2
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_1d

    :goto_25
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, -0x7d

    const v4, -0xfd9745f

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v4

    const-string v4, ""

    invoke-static {v4, v3, v3}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    int-to-short v6, v6

    const v7, 0x2ddb5790

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v1, v5, v4, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v4, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v5

    const-wide/16 v6, 0x0

    cmpl-float v5, v5, v4

    add-int/lit8 v5, v5, -0x7d

    const v8, -0xfd97471

    invoke-static {v3, v4, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v9

    cmpl-float v4, v9, v4

    add-int/2addr v4, v8

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v8

    cmp-long v10, v8, v6

    int-to-byte v8, v10

    invoke-static {v3, v3}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v9

    cmp-long v11, v9, v6

    add-int/lit8 v11, v11, 0x1

    int-to-short v6, v11

    const v7, 0x2ddb58d6

    invoke-static {v3, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v5, v4, v8, v6, v9}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_8d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v1, 0x3f

    if-eqz v0, :cond_96

    const/16 v4, 0x4c

    goto :goto_98

    :cond_96
    const/16 v4, 0x3f

    :goto_98
    if-eq v4, v1, :cond_b0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_aa

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void

    :cond_aa
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :try_start_ad
    throw v2
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ae

    :catchall_ae
    move-exception p1

    throw p1

    :cond_b0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0xd

    if-nez p1, :cond_c4

    const/16 p1, 0x42

    goto :goto_c6

    :cond_c4
    const/16 p1, 0xd

    :goto_c6
    if-eq p1, p2, :cond_ce

    const/16 p1, 0x21

    :try_start_ca
    div-int/2addr p1, v3
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_cc

    return-void

    :catchall_cc
    move-exception p1

    throw p1

    :cond_ce
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 12

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_57

    :catchall_11
    move-exception v1

    const-string v2, ""

    const/16 v3, 0x30

    invoke-static {v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit8 v4, v4, -0x7c

    const v5, -0xfd9745f

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v0, v0, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v2, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x1

    int-to-short v2, v2

    const v3, 0x2ddb5790

    invoke-static {v0, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v7

    sub-int/2addr v3, v7

    invoke-static {v4, v5, v6, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const-string v7, "\uae36\u5b6c\ue7d1\uf360\ue507\u2504\uf5b4\u1692\u7b00\ubba3\u0899\u5438\u995f\u7155\uca89\u5906\u5719\ueae4\u1551\u5e39\ud0ad\uae66\u37af\ue3ea\u963d\ufdb9\u73e4\u5e77\u2d10\u5524\ub7dc\u5486\u10be\uadd2\u5187\u7935"

    cmp-long v8, v3, v5

    rsub-int/lit8 v3, v8, 0x24

    invoke-static {v7, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_57
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/4 v2, 0x1

    if-eqz v1, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v0, 0x1

    :goto_5e
    if-eqz v0, :cond_64

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :cond_64
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 14
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_6e

    :catchall_7
    move-exception v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x7d

    const v3, -0xfd97460

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    cmp-long v10, v4, v6

    add-int/2addr v10, v3

    invoke-static {v0, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v9, v9, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v4

    int-to-short v4, v4

    const v5, 0x2ddb578f

    invoke-static {v9}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v2, v10, v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, -0x7d

    const v4, -0xfd97472

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    cmpl-float v5, v5, v8

    add-int/2addr v5, v4

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    shr-int/lit8 v4, v4, 0x6

    int-to-byte v4, v4

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    cmpl-float v6, v6, v8

    add-int/lit8 v6, v6, -0x1

    int-to-short v6, v6

    const v7, 0x2ddb5842

    invoke-static {v0, v0}, Landroid/view/View;->getDefaultSize(II)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v3, v5, v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_6e
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/4 v2, 0x1

    if-eqz v1, :cond_74

    goto :goto_75

    :cond_74
    const/4 v0, 0x1

    :goto_75
    if-eq v0, v2, :cond_8f

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :cond_8f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1d

    :try_start_14
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/16 v0, 0x3b

    div-int/2addr v0, v5

    goto :goto_90

    :cond_1d
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_23

    goto :goto_90

    :catchall_23
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    rsub-int/lit8 v6, v6, -0x7d

    const v7, -0xfd9745f

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-string v14, ""

    cmp-long v15, v9, v11

    rsub-int/lit8 v9, v15, 0x1

    int-to-short v9, v9

    const v10, 0x2ddb5790

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v15

    sub-int/2addr v10, v15

    invoke-static {v6, v8, v7, v9, v10}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v13}, Landroid/graphics/PointF;->length(FF)F

    move-result v7

    cmpl-float v7, v7, v13

    rsub-int/lit8 v7, v7, -0x7d

    const v8, -0xfd97471

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    add-int/2addr v9, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v15

    cmp-long v8, v15, v11

    rsub-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    invoke-static {v14}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v10

    rsub-int/lit8 v10, v10, -0x1

    int-to-short v10, v10

    const v11, 0x2ddb5864

    invoke-static {v5}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v12

    cmpl-float v12, v12, v13

    sub-int/2addr v11, v12

    invoke-static {v7, v9, v8, v10, v11}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_90
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v6, 0x51

    if-eqz v0, :cond_99

    const/16 v7, 0x39

    goto :goto_9b

    :cond_99
    const/16 v7, 0x51

    :goto_9b
    if-eq v7, v6, :cond_b6

    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v6, v6, 0x63

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_aa

    goto :goto_ab

    :cond_aa
    const/4 v5, 0x1

    :goto_ab
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    if-ne v5, v4, :cond_b1

    return-void

    :cond_b1
    const/4 v0, 0x0

    :try_start_b2
    throw v0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b3

    :catchall_b3
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_b6
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_76

    :catchall_10
    move-exception v0

    const-string v1, ""

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x7e

    const v5, -0xfd9745f

    invoke-static {v3, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v1, v1, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v1, v1, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v7

    int-to-short v7, v7

    const v8, 0x2ddb578f

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v4, v6, v5, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    add-int/lit8 v9, v9, -0x7e

    const v5, -0xfd97471

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v5

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    int-to-byte v5, v5

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    const v2, 0x2ddb5842

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    sub-int/2addr v2, v7

    invoke-static {v9, v6, v5, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_76
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v1, 0x2b

    if-eqz v0, :cond_7f

    const/16 v2, 0x15

    goto :goto_81

    :cond_7f
    const/16 v2, 0x2b

    :goto_81
    if-eq v2, v1, :cond_91

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    :cond_91
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .registers 16
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    :try_start_e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    goto :goto_82

    :catchall_14
    move-exception v0

    goto :goto_1c

    :cond_16
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    throw v2
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_14

    :goto_1c
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    rsub-int/lit8 v4, v4, -0x7d

    const v5, -0xfd97460

    const-string v6, ""

    const/16 v7, 0x30

    invoke-static {v6, v7, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v8

    sub-int/2addr v5, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    cmpl-float v8, v8, v9

    rsub-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    invoke-static {v6, v7, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x1

    int-to-short v7, v7

    const v9, 0x2ddb5790

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v12

    shr-int/lit8 v12, v12, 0x18

    add-int/2addr v12, v9

    invoke-static {v4, v5, v8, v7, v12}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v7

    cmp-long v5, v7, v10

    rsub-int/lit8 v5, v5, -0x7c

    const v7, -0xfd97470

    invoke-static {v10, v11}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    int-to-byte v7, v7

    invoke-static {v3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v9

    int-to-short v9, v9

    const v10, 0x2ddb5928

    invoke-static {v6, v6, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    add-int/2addr v6, v10

    invoke-static {v5, v8, v7, v9, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_82
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v4, 0x2d

    if-eqz v0, :cond_8b

    const/16 v5, 0x2d

    goto :goto_8d

    :cond_8b
    const/16 v5, 0x14

    :goto_8d
    if-eq v5, v4, :cond_a6

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_9f

    goto :goto_a0

    :cond_9f
    const/4 v1, 0x0

    :goto_a0
    if-nez v1, :cond_a3

    return-void

    :cond_a3
    :try_start_a3
    throw v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception p1

    throw p1

    :cond_a6
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v4, v4, 0x67

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_b3

    const/4 v3, 0x1

    :cond_b3
    if-eq v3, v1, :cond_b9

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    return-void

    :cond_b9
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    :try_start_bc
    throw v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bd

    :catchall_bd
    move-exception p1

    throw p1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/4 v6, 0x0

    :try_start_b
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_7e

    :catchall_11
    move-exception v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, -0x7d

    const v8, -0xfd9745e

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-string v13, ""

    cmpl-float v9, v9, v12

    sub-int/2addr v8, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    shr-int/lit8 v14, v14, 0x16

    int-to-short v14, v14

    const v15, 0x2ddb5790

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v16

    add-int v15, v16, v15

    invoke-static {v7, v8, v9, v14, v15}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v14, v8, v10

    rsub-int/lit8 v8, v14, -0x7c

    const v9, -0xfd97472

    const/16 v14, 0x30

    invoke-static {v13, v14, v6, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v13

    sub-int/2addr v9, v13

    invoke-static {v12, v12}, Landroid/graphics/PointF;->length(FF)F

    move-result v13

    cmpl-float v12, v13, v12

    int-to-byte v12, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v13

    shr-int/lit8 v13, v13, 0x18

    int-to-short v13, v13

    const v14, 0x2ddb58b1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v17, v15, v10

    add-int v10, v17, v14

    invoke-static {v8, v9, v12, v13, v10}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0, v6}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_7e
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_83

    goto :goto_84

    :cond_83
    const/4 v6, 0x1

    :goto_84
    if-eqz v6, :cond_94

    invoke-super/range {p0 .. p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :cond_94
    sget v6, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v6, v6, 0x33

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v6, v6, 0x2

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 16
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_1b

    :try_start_13
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    const/4 v0, 0x7

    div-int/2addr v0, v2

    goto :goto_83

    :cond_1b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_21

    goto :goto_83

    :catchall_21
    move-exception v0

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x7d

    const v4, -0xfd9745f

    const-string v5, ""

    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-short v7, v7

    const v8, 0x2ddb5790

    invoke-static {v2, v2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v11

    sub-int/2addr v8, v11

    invoke-static {v3, v6, v4, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x7d

    const v6, -0xfd97470

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    cmp-long v11, v7, v9

    sub-int/2addr v6, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    invoke-static {v2, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v8

    int-to-short v8, v8

    const v9, 0x2ddb58b3

    const/16 v10, 0x30

    invoke-static {v5, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    add-int/2addr v5, v9

    invoke-static {v4, v6, v7, v8, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_83
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_88

    const/4 v2, 0x1

    :cond_88
    if-eq v2, v1, :cond_8e

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void

    :cond_8e
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    :try_start_d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    div-int/2addr v0, v1

    goto :goto_64

    :cond_16
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1c

    goto :goto_64

    :catchall_1c
    move-exception v0

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "\uae36\u5b6c\ue7d1\uf360\ue507\u2504\uf5b4\u1692\u7b00\ubba3\u0899\u5438\u995f\u7155\uca89\u5906\u5719\ueae4\u1551\u5e39\ud0ad\uae66\u791a\udd04\ubc54\u1358\ub3c2\u9670\u803b\u571a\u4e37\u4730\u3c9d\ud6c7\ud1d5\uddf5\ue2c8\u13d0\ued99\uf984\ube8a\u9a22\uc070\u45f9\uca89\u5906"

    cmp-long v7, v2, v4

    add-int/lit8 v7, v7, -0x7e

    const v2, -0xfd9745f

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    shr-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    invoke-static {v1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    int-to-short v4, v4

    const v5, 0x2ddb5790

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v8

    sub-int/2addr v5, v8

    invoke-static {v7, v2, v3, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x2e

    invoke-static {v6, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_64
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v2, 0x23

    if-eqz v0, :cond_6d

    const/16 v3, 0x23

    goto :goto_6f

    :cond_6d
    const/16 v3, 0x4e

    :goto_6f
    if-eq v3, v2, :cond_75

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_75
    sget v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v2, v2, 0x3b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_82

    const/4 v1, 0x1

    :cond_82
    if-nez v1, :cond_88

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_88
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_8c
    throw p1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception p1

    throw p1
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 15
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_c
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v2, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    goto :goto_5d

    :catchall_12
    move-exception v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, -0x7d

    const v4, -0xfd97460

    const/16 v5, 0x30

    const-string v6, ""

    invoke-static {v6, v5, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v5

    const/4 v7, 0x0

    const-string v8, "\uae36\u5b6c\ue7d1\uf360\ue507\u2504\uf5b4\u1692\u7b00\ubba3\u0899\u5438\u995f\u7155\uca89\u5906\u5719\ueae4\u1551\u5e39\ud0ad\uae66\u791a\udd04\ubc54\u1358\ub3c2\u9670\u803b\u571a\u4e37\u4730\u3c9d\ud6c7\u2e03\u4fce\ucdcc\ue1ef\u60e9\u1ce8"

    cmpl-float v5, v5, v7

    rsub-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    int-to-short v7, v7

    const v9, 0x2ddb5790

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    add-int/2addr v10, v9

    invoke-static {v3, v4, v5, v7, v10}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-static {v8, v4}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_5d
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    if-eqz v2, :cond_62

    const/4 v0, 0x0

    :cond_62
    if-eqz v0, :cond_68

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void

    :cond_68
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_a
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_57

    :catchall_10
    move-exception v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    rsub-int/lit8 v1, v1, -0x7d

    const v3, -0xfd9745f

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-short v5, v5

    const v6, 0x2ddb5791

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v1, v3, v4, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x2b

    const-string v4, "\uae36\u5b6c\ue7d1\uf360\ue507\u2504\uf5b4\u1692\u7b00\ubba3\u0899\u5438\u995f\u7155\uca89\u5906\u5719\ueae4\u1551\u5e39\ud0ad\uae66\u791a\udd04\ubc54\u1358\ub3c2\u9670\u803b\u571a\ue0af\u8fd5\uf3e4\uae9e\uf5b4\u1692\uaeeb\u09d9\ua1a2\u9b12\u2d10\u5524\u591d\u31bb"

    invoke-static {v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_57
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v1, 0x8

    if-eqz v0, :cond_60

    const/16 v2, 0xa

    goto :goto_62

    :cond_60
    const/16 v2, 0x8

    :goto_62
    if-eq v2, v1, :cond_81

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x63

    if-nez v1, :cond_75

    const/16 v1, 0x63

    goto :goto_77

    :cond_75
    const/16 v1, 0x1b

    :goto_77
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eq v1, v2, :cond_7d

    return-void

    :cond_7d
    const/4 p1, 0x0

    :try_start_7e
    throw p1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception p1

    throw p1

    :cond_81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 14

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_58

    :catchall_11
    move-exception v1

    const-string v2, ""

    invoke-static {v2, v2, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v3

    rsub-int/lit8 v3, v3, -0x7d

    const v4, -0xfd9745f

    invoke-static {v2, v0, v0}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v4

    const/4 v6, 0x0

    const-string v7, "\uae36\u5b6c\ue7d1\uf360\ue507\u2504\uf5b4\u1692\u7b00\ubba3\u0899\u5438\u995f\u7155\uca89\u5906\u5719\ueae4\u1551\u5e39\ud0ad\uae66\u791a\udd04\ubc54\u1358\ub3c2\u9670\u803b\u571a\ud31e\u8a41\uc046\u1506\uae36\u5b6c\ue7d1\uf360\ufb9d\u5c23"

    cmpl-float v4, v4, v6

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    invoke-static {v2, v0}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    int-to-short v6, v6

    const v8, 0x2ddb5790

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    sub-int/2addr v8, v9

    invoke-static {v3, v5, v4, v6, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x30

    invoke-static {v2, v4, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x26

    invoke-static {v7, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_58
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v2, 0x3a

    if-eqz v1, :cond_60

    const/4 v3, 0x3

    goto :goto_62

    :cond_60
    const/16 v3, 0x3a

    :goto_62
    if-eq v3, v2, :cond_72

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void

    :cond_72
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x1e

    if-nez p1, :cond_86

    const/16 p1, 0x2d

    goto :goto_88

    :cond_86
    const/16 p1, 0x1e

    :goto_88
    if-eq p1, p2, :cond_8e

    :try_start_8a
    div-int/2addr v2, v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8c

    return-void

    :catchall_8c
    move-exception p1

    throw p1

    :cond_8e
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 20
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v4, 0x1

    :try_start_11
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    goto :goto_83

    :catchall_17
    move-exception v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/16 v9, 0x30

    const-string v10, ""

    const/4 v11, 0x0

    cmp-long v12, v5, v7

    add-int/lit8 v12, v12, -0x7e

    const v5, -0xfd9745f

    invoke-static {v11, v11}, Landroid/view/View;->resolveSize(II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v11}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    const/4 v13, 0x0

    cmpl-float v5, v5, v13

    int-to-byte v5, v5

    invoke-static {v10, v9, v11, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v13

    add-int/2addr v13, v4

    int-to-short v13, v13

    const v14, 0x2ddb5790

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    sub-int/2addr v14, v15

    invoke-static {v12, v6, v5, v13, v14}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v6

    add-int/lit8 v6, v6, -0x7c

    const v12, -0xfd97471

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    sub-int/2addr v12, v13

    invoke-static {v9}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    int-to-byte v9, v9

    invoke-static {v10}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v10

    rsub-int/lit8 v10, v10, -0x1

    int-to-short v10, v10

    const v13, 0x2ddb5980

    invoke-static {v11}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v14

    cmp-long v16, v14, v7

    add-int v7, v16, v13

    invoke-static {v6, v12, v9, v10, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0, v11}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_83
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v5, 0x2b

    if-eqz v0, :cond_8c

    const/16 v6, 0x2b

    goto :goto_8e

    :cond_8c
    const/16 v6, 0x5b

    :goto_8e
    if-eq v6, v5, :cond_9b

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    return v4

    :cond_9b
    sget v4, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v4, v4, 0x2f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result v0

    return v0
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 15

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_55

    :catchall_11
    move-exception v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x7d

    const v3, -0xfd97460

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const-string v8, ""

    const-string v9, "\uae36\u5b6c\ue7d1\uf360\ue507\u2504\uf5b4\u1692\u7b00\ubba3\u0899\u5438\u995f\u7155\uca89\u5906\u5719\ueae4\u1551\u5e39\ud0ad\uae66\u366d\ufd39\u4eaf\ua718\ud6ce\u34da\u9b8a\uf4f1\u0ff7\u6308\uab59\u8b05\u476e\u3909"

    cmp-long v10, v4, v6

    add-int/2addr v10, v3

    invoke-static {v0, v0}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v8}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    int-to-short v4, v4

    const v5, 0x2ddb5790

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v5

    invoke-static {v2, v10, v3, v4, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x23

    invoke-static {v9, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_55
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v2, 0x37

    if-eqz v1, :cond_5d

    const/16 v0, 0x37

    :cond_5d
    if-eq v0, v2, :cond_63

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    return-void

    :cond_63
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .registers 15

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_5c

    :catchall_11
    move-exception v1

    invoke-static {v0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "\uae36\u5b6c\ue7d1\uf360\ue507\u2504\uf5b4\u1692\u7b00\ubba3\u0899\u5438\u995f\u7155\uca89\u5906\u5719\ueae4\u1551\u5e39\ud0ad\uae66\u88e8\u7497\udca4\ub0ca\u0c88\u718b\u311d\ud72b\uaeeb\u09d9\ucb71\u3991\u5f0a\uaa44\uafc7\ub46a\u94e1\u89d7"

    cmpl-float v2, v2, v3

    add-int/lit8 v2, v2, -0x7d

    const v3, -0xfd9745e

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    sub-int/2addr v3, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    const/16 v7, 0x30

    invoke-static {v4, v7, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x1

    int-to-short v7, v7

    const v8, 0x2ddb5790

    invoke-static {v0, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v2, v3, v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x27

    invoke-static {v5, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_5c
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    if-eqz v1, :cond_61

    const/4 v0, 0x1

    :cond_61
    if-eqz v0, :cond_71

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void

    :cond_71
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .registers 15

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v1, :cond_1b

    :try_start_13
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_23

    :catchall_19
    move-exception v0

    goto :goto_2e

    :cond_1b
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    const/16 v0, 0x28

    div-int/2addr v0, v2
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_19

    :goto_23
    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_95

    :goto_2e
    const-string v3, ""

    invoke-static {v3, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit8 v4, v4, -0x7d

    const v5, -0xfd97460

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/16 v8, 0x30

    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    add-int/2addr v11, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    invoke-static {v3, v8, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    add-int/2addr v6, v1

    int-to-short v1, v6

    const v6, 0x2ddb578f

    invoke-static {v3, v8, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    sub-int/2addr v6, v3

    invoke-static {v4, v11, v5, v1, v6}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x7d

    const v4, -0xfd97472

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v11, v5, v7

    add-int/2addr v11, v4

    invoke-static {v2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    cmp-long v6, v4, v9

    int-to-byte v4, v6

    invoke-static {v2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v5

    int-to-short v5, v5

    const v6, 0x2ddb5958

    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    add-int/2addr v7, v6

    invoke-static {v3, v11, v4, v5, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_95
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_a7

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    return-void

    :cond_a7
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 15
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_6d

    :catchall_6
    move-exception v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    rsub-int/lit8 v3, v3, -0x7d

    const v4, -0xfd9745e

    invoke-static {v2, v2}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v5

    const/16 v7, 0x30

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    add-int/2addr v10, v4

    invoke-static {v1, v7, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v5

    cmp-long v11, v5, v8

    add-int/lit8 v11, v11, -0x1

    int-to-short v5, v11

    const v6, 0x2ddb5790

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/2addr v8, v6

    invoke-static {v3, v10, v4, v5, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, -0x7d

    const v5, -0xfd97471

    invoke-static {v1, v2, v2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v8

    int-to-short v8, v8

    const v9, 0x2ddb5888

    invoke-static {v1, v7, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    add-int/2addr v1, v9

    invoke-static {v4, v6, v5, v8, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_6d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v1, 0x37

    if-eqz v0, :cond_76

    const/16 v2, 0x37

    goto :goto_78

    :cond_76
    const/16 v2, 0x3c

    :goto_78
    if-eq v2, v1, :cond_89

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 p2, p2, 0x31

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1

    :cond_89
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 p2, p2, 0x25

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 p2, p2, 0x2

    const/16 v0, 0x27

    if-eqz p2, :cond_9e

    const/16 p2, 0x27

    goto :goto_9f

    :cond_9e
    const/4 p2, 0x4

    :goto_9f
    if-eq p2, v0, :cond_a2

    return-object p1

    :cond_a2
    const/4 p1, 0x0

    :try_start_a3
    throw p1
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception p1

    throw p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 15

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x15

    if-eqz v0, :cond_11

    const/16 v0, 0x15

    goto :goto_13

    :cond_11
    const/16 v0, 0x19

    :goto_13
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1d

    :try_start_17
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    goto :goto_92

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    const/16 v0, 0x3e

    div-int/2addr v0, v3
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_26

    goto :goto_92

    :catchall_26
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    add-int/lit8 v1, v1, -0x7d

    const v4, -0xfd9745f

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    add-int/2addr v5, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-string v10, ""

    cmp-long v11, v6, v8

    rsub-int/lit8 v6, v11, 0x1

    int-to-short v6, v6

    const v7, 0x2ddb5790

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    sub-int/2addr v7, v8

    invoke-static {v1, v5, v4, v6, v7}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    rsub-int/lit8 v4, v4, -0x7d

    const v5, -0xfd97471

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sub-int/2addr v5, v6

    const/16 v6, 0x30

    invoke-static {v10, v6, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    rsub-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    invoke-static {v10, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v7

    int-to-short v7, v7

    const v8, 0x2ddb5887

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    sub-int/2addr v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_92
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_97

    goto :goto_98

    :cond_97
    const/4 v2, 0x0

    :goto_98
    if-eqz v2, :cond_a9

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_a9
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 16

    const/16 v0, 0x2b

    :try_start_2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->m:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_12

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_5c

    :catchall_12
    move-exception v1

    const/16 v2, 0x30

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    add-int/lit8 v2, v2, -0x7c

    const v5, -0xfd9745f

    invoke-static {v4}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-string v10, "\uae36\u5b6c\ue7d1\uf360\ue507\u2504\uf5b4\u1692\u7b00\ubba3\u0899\u5438\u995f\u7155\uca89\u5906\u5719\ueae4\u1551\u5e39\u5b75\u61e6\u576c\u8cfe\t\u6bf9\u340e\u1832\u803b\u571a\ucdcc\ue1ef\u736c\ube92\uc775\u435d\ucaae\u3403\u4754\u018e\u5719\ueae4\u591d\u31bb"

    cmp-long v11, v6, v8

    sub-int/2addr v5, v11

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v4, v4}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v11

    cmp-long v7, v11, v8

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    const v8, 0x2ddb5790

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v9

    shr-int/lit8 v9, v9, 0x8

    sub-int/2addr v8, v9

    invoke-static {v2, v5, v6, v7, v8}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->d(IIBSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v3, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v10, v3}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v4}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_5c
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    const/16 v2, 0x5a

    if-eqz v1, :cond_63

    goto :goto_65

    :cond_63
    const/16 v0, 0x5a

    :goto_65
    if-eq v0, v2, :cond_88

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x43

    if-nez v0, :cond_78

    const/16 v0, 0x1a

    goto :goto_7a

    :cond_78
    const/16 v0, 0x43

    :goto_7a
    if-ne v0, v2, :cond_81

    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_81
    invoke-virtual {v1, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    const/4 p1, 0x0

    :try_start_85
    throw p1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception p1

    throw p1

    :cond_88
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->a(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Z)Z

    move-result p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 p2, p2, 0x57

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    if-nez v0, :cond_1f

    return p1

    :cond_1f
    const/4 p1, 0x0

    :try_start_20
    throw p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p1

    throw p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-direct {p0, p1, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result p1

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 p2, p2, 0x21

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 p2, p2, 0x2

    return p1
.end method

.method public final ﻐ()Landroid/webkit/WebViewClient;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->l:Landroid/webkit/WebViewClient;

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-nez v1, :cond_1c

    return-object v0

    :cond_1c
    const/4 v0, 0x0

    :try_start_1d
    throw v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    throw v0
.end method

.method public final ﾒ(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/ch;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ironsource/adqualitysdk/sdk/i/ch;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget p2, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 p2, p2, 0x2b

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 p2, p2, 0x2

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, 0x15f0af40

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_3e

    const v0, 0x16be0135

    if-eq p3, v0, :cond_1c

    goto :goto_58

    :cond_1c
    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result p3

    int-to-byte p3, p3

    add-int/lit8 p3, p3, 0x18

    const-string v0, "\uab59\u8b05\ufb9f\u6f9c\u43f5\u252b\u101f\ud413\u6bf7\u179f\u20a6\u3b3b\uea59\ufa1f\u387c\u50b0\u5437\ue998\udd9d\ua767\u5719\ueae4\u591d\u31bb"

    invoke-static {v0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p3, 0x5e

    if-eqz p1, :cond_38

    const/16 p1, 0x5f

    goto :goto_3a

    :cond_38
    const/16 p1, 0x5e

    :goto_3a
    if-eq p1, p3, :cond_58

    const/4 p2, 0x0

    goto :goto_58

    :cond_3e
    invoke-static {v2, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p3

    add-int/lit8 p3, p3, 0x12

    const-string v0, "\uab59\u8b05\u3504\uf688\ued16\u1902\u79de\u69ba\u14cd\ub282\ua433\uec0d\ua9fa\ucab5\u387c\u50b0\ud0c6\udba2"

    invoke-static {v0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    const/4 v2, 0x1

    :cond_55
    if-eqz v2, :cond_58

    const/4 p2, 0x1

    :cond_58
    :goto_58
    const/4 p1, 0x0

    if-eqz p2, :cond_63

    if-eq p2, v1, :cond_5e

    return-object p1

    :cond_5e
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->e()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_63
    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hd;->ﻐ()Landroid/webkit/WebViewClient;

    move-result-object p2

    sget p3, Lcom/ironsource/adqualitysdk/sdk/i/hd;->j:I

    add-int/lit8 p3, p3, 0x6d

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/hd;->k:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_74

    return-object p2

    :cond_74
    :try_start_74
    throw p1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p1

    throw p1
.end method
