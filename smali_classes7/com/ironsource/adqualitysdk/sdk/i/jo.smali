###### Class com.json.adqualitysdk.sdk.i.jo (com.ironsource.adqualitysdk.sdk.i.jo)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/jo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:J = -0xb86ed69acefb585L

.field private static b:I = 0x0

.field private static c:I = 0x1


# instance fields
.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adqualitysdk/sdk/i/jl;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_6
    check-cast p0, [C

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﻛ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    sput p1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    array-length p1, p0

    new-array p1, p1, [C

    const/4 v1, 0x0

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    :goto_13
    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    array-length v2, p0

    if-ge v1, v2, :cond_2e

    aget-char v2, p0, v1

    sget v3, Lcom/ironsource/adqualitysdk/sdk/i/h;->ｋ:I

    mul-int v3, v3, v1

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lcom/ironsource/adqualitysdk/sdk/i/jo;->a:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/h;->ﾒ:I

    goto :goto_13

    :cond_2e
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_35

    return-object p0

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Lcom/ironsource/adqualitysdk/sdk/i/at$e;)V
    .registers 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget p0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->c:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->b:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private c(Lcom/ironsource/adqualitysdk/sdk/i/jl;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->e:Ljava/lang/ref/WeakReference;

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jo;->b:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->c:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x5b

    if-nez p1, :cond_18

    const/16 p1, 0x11

    goto :goto_1a

    :cond_18
    const/16 p1, 0x5b

    :goto_1a
    if-ne p1, v0, :cond_1d

    return-void

    :cond_1d
    const/4 p1, 0x0

    :try_start_1e
    throw p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p1

    throw p1
.end method


# virtual methods
.method public final ﻛ()Z
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->b:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jo;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->f:Z

    const/16 v2, 0xd

    :try_start_16
    div-int/2addr v2, v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v0

    throw v0

    :cond_1a
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->f:Z

    :goto_1c
    return v0
.end method

.method public final ｋ()Landroid/webkit/WebView;
    .registers 4

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->b:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jo;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    goto :goto_27

    :cond_1c
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const/16 v1, 0x54

    :try_start_26
    div-int/2addr v1, v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_28

    :goto_27
    return-object v0

    :catchall_28
    move-exception v0

    throw v0
.end method

.method public final ｋ(Landroid/webkit/WebChromeClient;)V
    .registers 6

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->c:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jo;->b:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->ｋ()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_51

    :try_start_10
    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->ｋ(Landroid/webkit/WebView;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/hg;

    invoke-direct {v2, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hg;-><init>(Landroid/webkit/WebChromeClient;Landroid/webkit/WebChromeClient;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->b(Lcom/ironsource/adqualitysdk/sdk/i/at$e;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1f} :catch_2a

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jo;->b:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->c:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :catch_2a
    move-exception p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v0

    add-int/lit16 v0, v0, 0x35e7

    const-string v2, "\u4a2c\u7ff9\u21d7\ueb98\u9d8e\u479d\u0966\u336f\ue53b\uaf10\u5118\u1af8\uccdc\uf6a9\ub8b6\u629c"

    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    rsub-int v2, v2, 0x26b3

    const-string v3, "\u4a3e\u6cba\u076f\u3e0d\ud0c5\u8b24\ua22e\u44fb\u7f97\u1644\uc8ec\ue3a4\u9a78\ubd4c\u57e6\u0e63\u2129\udbdb\uf285\u9540\u4fe8\u66b9\u197c\u302d\ueadf\u8d69\ua430\u5ef4\u719b"

    invoke-static {v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_51
    return-void
.end method

.method public final ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/jl;
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->e:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x4

    if-eqz v0, :cond_7

    const/4 v2, 0x5

    goto :goto_8

    :cond_7
    const/4 v2, 0x4

    :goto_8
    if-eq v2, v1, :cond_2d

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/jl;

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jo;->c:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jo;->b:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x2c

    if-eqz v1, :cond_21

    const/16 v1, 0x2c

    goto :goto_23

    :cond_21
    const/16 v1, 0x5c

    :goto_23
    if-eq v1, v2, :cond_26

    return-object v0

    :cond_26
    const/16 v1, 0x1c

    :try_start_28
    div-int/lit8 v1, v1, 0x0
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2b

    return-object v0

    :catchall_2b
    move-exception v0

    throw v0

    :cond_2d
    const/4 v0, 0x0

    sget v1, Lcom/ironsource/adqualitysdk/sdk/i/jo;->c:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/ironsource/adqualitysdk/sdk/i/jo;->b:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final ﾒ(Landroid/webkit/WebViewClient;)V
    .registers 7

    sget v0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->b:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/ironsource/adqualitysdk/sdk/i/jo;->c:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->ｋ()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    :try_start_11
    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->ﾇ(Landroid/webkit/WebView;)Landroid/webkit/WebViewClient;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/hd;

    invoke-direct {v3, v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hd;-><init>(Landroid/webkit/WebViewClient;Landroid/webkit/WebViewClient;)V

    invoke-direct {p0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->c(Lcom/ironsource/adqualitysdk/sdk/i/jl;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->f:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p1

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int v0, v0, 0x35e7

    const-string v2, "\u4a2c\u7ff9\u21d7\ueb98\u9d8e\u479d\u0966\u336f\ue53b\uaf10\u5118\u1af8\uccdc\uf6a9\ub8b6\u629c"

    invoke-static {v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const v2, 0x9c80

    const/16 v3, 0x30

    const-string v4, ""

    invoke-static {v4, v3, v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "\u4a3e\ud676\u72f7\u9f69\u3bf5\u4420\ue0e6\u0d67\ua9f7\uca78\u56e4\uf360\u1fe8\ub828\uc4de\u616f\u8de9\u2e42\u4afc\ud773\u73e0\u9c53\u38fd\u457b\ue1f6\u0272\uaee9"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jy;->ﻛ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_50
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->f:Z

    sget p1, Lcom/ironsource/adqualitysdk/sdk/i/jo;->b:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/ironsource/adqualitysdk/sdk/i/jo;->c:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
