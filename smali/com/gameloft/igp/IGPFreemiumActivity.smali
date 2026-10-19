###### Class com.gameloft.igp.IGPFreemiumActivity (com.gameloft.igp.IGPFreemiumActivity)
.class public Lcom/gameloft/igp/IGPFreemiumActivity;
.super Landroid/app/Activity;
.source "IGPFreemiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/igp/IGPFreemiumActivity$i;,
        Lcom/gameloft/igp/IGPFreemiumActivity$h;,
        Lcom/gameloft/igp/IGPFreemiumActivity$g;,
        Lcom/gameloft/igp/IGPFreemiumActivity$j;,
        Lcom/gameloft/igp/IGPFreemiumActivity$f;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:[Ljava/lang/String;


# instance fields
.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/VideoView;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:[I

.field private s:[I

.field private t:[I

.field private u:Landroid/view/Display;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/webkit/WebView;

.field private x:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const-string v0, "EN"

    const-string v1, "FR"

    const-string v2, "DE"

    const-string v3, "IT"

    const-string v4, "SP"

    const-string v5, "JP"

    const-string v6, "KR"

    const-string v7, "CN"

    const-string v8, "BR"

    const-string v9, "RU"

    const-string v10, "TR"

    const-string v11, "AR"

    const-string v12, "TH"

    const-string v13, "ID"

    const-string v14, "VI"

    const-string v15, "ZT"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/igp/IGPFreemiumActivity;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->c:I

    iput-boolean v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->d:Z

    iput-boolean v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->f:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->g:Landroid/widget/VideoView;

    iput-boolean v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->h:Z

    iput-boolean v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->i:Z

    const/16 v0, 0x320

    iput v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->j:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->k:I

    const-string v0, "https://201205igp.gameloft.com/redir/freemium/hdfreemium.php?from=GAME_CODE&country=COUNTRY_DETECTED&lg=LANG&udid=UDIDPHONE&hdidfv=HDIDFV&d=DEVICE&f=FIRMWARE&game_ver=VERSION&os=android&igp_rev=1006&conn=CONNSPEED"

    iput-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    const-string v0, "https://signal-back.com"

    iput-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->n:Ljava/lang/String;

    const-string v0, "https://201205igp.gameloft.com/redir/android/index.php?page=gameinformation"

    iput-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->o:Ljava/lang/String;

    const-string v0, "https://201205igp.gameloft.com/redir/?from="

    iput-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->q:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v2, v0, [I

    fill-array-data v2, :array_4c

    iput-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->r:[I

    new-array v2, v0, [I

    fill-array-data v2, :array_70

    iput-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->s:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_94

    iput-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->t:[I

    iput-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->x:Landroid/app/ProgressDialog;

    return-void

    nop

    :array_4c
    .array-data 4
        0x7f12005c
        0x7f12005d
        0x7f12005b
        0x7f12005f
        0x7f120063
        0x7f120060
        0x7f120061
        0x7f12005a
        0x7f120059
        0x7f120062
        0x7f120065
        0x7f120058
        0x7f120064
        0x7f12005e
        0x7f120066
        0x7f120067
    .end array-data

    :array_70
    .array-data 4
        0x7f12006c
        0x7f12006d
        0x7f12006b
        0x7f12006f
        0x7f120073
        0x7f120070
        0x7f120071
        0x7f12006a
        0x7f120069
        0x7f120072
        0x7f120075
        0x7f120068
        0x7f120074
        0x7f12006e
        0x7f120076
        0x7f120077
    .end array-data

    :array_94
    .array-data 4
        0x7f12007c
        0x7f12007d
        0x7f12007b
        0x7f12007f
        0x7f120083
        0x7f120080
        0x7f120081
        0x7f12007a
        0x7f120079
        0x7f120082
        0x7f120085
        0x7f120078
        0x7f120084
        0x7f12007e
        0x7f120086
        0x7f120087
    .end array-data
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    new-instance v3, Lcom/gameloft/igp/IGPFreemiumActivity$h;

    invoke-direct {v3, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$h;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    new-instance v3, Lcom/gameloft/igp/IGPFreemiumActivity$i;

    invoke-direct {v3, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$i;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    const/16 v3, 0xff

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    new-instance v3, Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v4, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->v:Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0, p0, v4}, Lcom/gameloft/igp/IGPFreemiumActivity$g;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/content/Context;Landroid/view/ViewGroup;)V

    const-string v4, "Android"

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_ab

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_ab
    const/16 v1, 0x15

    if-lt v0, v1, :cond_b8

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_b8
    const/16 v1, 0x11

    if-lt v0, v1, :cond_c5

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_c5
    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->v:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/gameloft/igp/IGPFreemiumActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/igp/IGPFreemiumActivity;->p()V

    return-void
.end method

.method static synthetic access$1100(Lcom/gameloft/igp/IGPFreemiumActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/igp/IGPFreemiumActivity;->f()V

    return-void
.end method

.method static synthetic access$1200(Lcom/gameloft/igp/IGPFreemiumActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->l(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->n(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->k(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/gameloft/igp/IGPFreemiumActivity;)[I
    .registers 1

    iget-object p0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->s:[I

    return-object p0
.end method

.method static synthetic access$1800(Lcom/gameloft/igp/IGPFreemiumActivity;)[I
    .registers 1

    iget-object p0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->t:[I

    return-object p0
.end method

.method static synthetic access$1900(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/app/ProgressDialog;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->x:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->x:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/gameloft/igp/IGPFreemiumActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->h:Z

    return p0
.end method

.method static synthetic access$202(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->h:Z

    return p1
.end method

.method static synthetic access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->g:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->g:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/gameloft/igp/IGPFreemiumActivity;->getHttpResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$602(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->f:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$700(Lcom/gameloft/igp/IGPFreemiumActivity;)[I
    .registers 1

    iget-object p0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->r:[I

    return-object p0
.end method

.method static synthetic access$800(Lcom/gameloft/igp/IGPFreemiumActivity;)I
    .registers 1

    iget p0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->c:I

    return p0
.end method

.method static synthetic access$902(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->i:Z

    return p1
.end method

.method private c()V
    .registers 2

    iget-boolean v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->h:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->h:Z

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->g:Landroid/widget/VideoView;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    nop

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    if-eqz v0, :cond_26

    new-instance v0, Lcom/gameloft/igp/IGPFreemiumActivity$a;

    invoke-direct {v0, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$a;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_26
    return-void
.end method

.method private d(I)Z
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/16 v3, 0x8

    if-lt v0, v3, :cond_c

    if-ne p1, v2, :cond_c

    return v1

    :cond_c
    const/16 v3, 0x9

    const/4 v4, 0x1

    if-lt v0, v3, :cond_16

    const/16 v3, 0xc

    if-ne p1, v3, :cond_16

    return v4

    :cond_16
    const/16 v3, 0xd

    if-lt v0, v2, :cond_22

    const/16 v2, 0xe

    if-ne p1, v2, :cond_1f

    return v4

    :cond_1f
    if-ne p1, v3, :cond_22

    return v4

    :cond_22
    if-lt v0, v3, :cond_29

    const/16 v0, 0xf

    if-ne p1, v0, :cond_29

    return v4

    :cond_29
    return v1
.end method

.method private e(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method private f()V
    .registers 2

    new-instance v0, Lcom/gameloft/igp/IGPFreemiumActivity$e;

    invoke-direct {v0, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$e;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getHttpResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "[?]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&enc=1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_49} :catch_71
    .catchall {:try_start_1 .. :try_end_49} :catchall_6a

    :try_start_49
    new-instance p0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {p0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5a

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_50

    :cond_5a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_61} :catch_68
    .catchall {:try_start_49 .. :try_end_61} :catchall_65

    :goto_61
    :try_start_61
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_75

    goto :goto_75

    :catchall_65
    move-exception p0

    move-object v0, v1

    goto :goto_6b

    :catch_68
    nop

    goto :goto_72

    :catchall_6a
    move-exception p0

    :goto_6b
    if-eqz v0, :cond_70

    :try_start_6d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_70

    :catch_70
    :cond_70
    throw p0

    :catch_71
    move-object v1, v0

    :goto_72
    if-eqz v1, :cond_75

    goto :goto_61

    :catch_75
    :cond_75
    :goto_75
    return-object v0
.end method

.method private h()V
    .registers 3

    iget-boolean v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->h:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_d

    :try_start_8
    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    nop

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    if-eqz v0, :cond_20

    const-string v1, "javascript:onPause()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_20
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, "www.amazon.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :try_start_f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "amzn://"

    const-string v3, "http://"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_2a

    :catch_2a
    :cond_2a
    return-void
.end method

.method private k(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->m(Ljava/lang/String;)Z

    return-void
.end method

.method private l(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details"

    const-string v3, "https://play.google.com/store/apps/details"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "market://search"

    const-string v3, "https://play.google.com/store/search"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method

.method private m(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v2, 0x10000

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2c

    const/4 p1, 0x1

    return p1

    :catch_2c
    :cond_2c
    return v0
.end method

.method private n(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.skt.skaf.A000Z00040"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_42

    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "COLLAB_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRODUCT_VIEW/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "com.skt.skaf.COL.URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "com.skt.skaf.COL.REQUESTER"

    const-string v1, "A000Z00040"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_63

    :cond_42
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://tsto.re/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_63
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private o(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/gameloft/igp/IGPFreemiumActivity$d;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/igp/IGPFreemiumActivity$d;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private p()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->r:[I

    iget v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->c:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->o(Ljava/lang/String;)V

    return-void
.end method

.method private r(Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    :try_start_b
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    nop

    :cond_17
    :goto_17
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_36

    :try_start_1b
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_36

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_34} :catch_35

    goto :goto_36

    :catch_35
    nop

    :cond_36
    :goto_36
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_52

    :goto_3a
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_4d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->r(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_4d
    :try_start_4d
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_52

    :catch_52
    :cond_52
    return-void
.end method

.method public static retrieveItems(ILjava/lang/String;Lcom/gameloft/igp/IGPFreemiumActivity$j;)V
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gameloft/igp/IGPFreemiumActivity$c;

    invoke-direct {v1, p1, p0, p2}, Lcom/gameloft/igp/IGPFreemiumActivity$c;-><init>(Ljava/lang/String;ILcom/gameloft/igp/IGPFreemiumActivity$j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 1

    :try_start_0
    invoke-direct {p0}, Lcom/gameloft/igp/IGPFreemiumActivity;->c()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method

.method public g()Z
    .registers 5

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_31

    :cond_16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    return v3

    :cond_22
    if-nez v2, :cond_31

    packed-switch v0, :pswitch_data_32

    invoke-direct {p0, v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->d(I)Z

    move-result v0

    return v0

    :pswitch_2c
    return v3

    :pswitch_2d
    return v1

    :pswitch_2e
    return v3

    :pswitch_2f
    return v1

    :pswitch_30
    return v3

    :cond_31
    :goto_31
    :pswitch_31
    return v1

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method public i()V
    .registers 2

    new-instance v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;

    invoke-direct {v0, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$b;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->u:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AGHM"

    const/4 v1, 0x6

    const/16 v2, 0x1b

    const/4 v3, -0x1

    const/16 v4, 0x1a

    const/4 v5, 0x0

    if-eqz p1, :cond_5c

    const-string v6, "language"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_31

    sget-object v7, Lcom/gameloft/igp/IGPFreemiumActivity;->b:[Ljava/lang/String;

    array-length v7, v7

    if-lt v6, v7, :cond_32

    :cond_31
    const/4 v6, 0x0

    :cond_32
    const-string v7, "isPortrait"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->d:Z

    const-string v7, "gamecode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_43

    goto :goto_44

    :cond_43
    move-object v0, p1

    :goto_44
    iget-boolean p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->d:Z

    const/4 v7, 0x1

    if-ne p1, v7, :cond_4d

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_6e

    :cond_4d
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq p1, v4, :cond_58

    if-ne p1, v2, :cond_54

    goto :goto_58

    :cond_54
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_6e

    :cond_58
    :goto_58
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_6e

    :cond_5c
    iget v6, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->c:I

    iput-boolean v5, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->d:Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq p1, v4, :cond_6b

    if-ne p1, v2, :cond_67

    goto :goto_6b

    :cond_67
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_6e

    :cond_6b
    :goto_6b
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_6e
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->u:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->k:I

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->u:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->j:I

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->v:Landroid/widget/RelativeLayout;

    new-instance p1, Lcom/gameloft/igp/IGPFreemiumActivity$f;

    invoke-direct {p1, p0, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$f;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/gameloft/igp/IGPFreemiumActivity;->a()V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt p1, v7, :cond_a9

    if-eq p1, v4, :cond_a3

    if-ne p1, v2, :cond_9f

    goto :goto_a3

    :cond_9f
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_a6

    :cond_a3
    :goto_a3
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_a6
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    :cond_a9
    if-ltz v6, :cond_b2

    sget-object p1, Lcom/gameloft/igp/IGPFreemiumActivity;->b:[Ljava/lang/String;

    array-length p1, p1

    if-le v6, p1, :cond_b1

    goto :goto_b2

    :cond_b1
    move v5, v6

    :cond_b2
    :goto_b2
    invoke-virtual {p0, v5, v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->q(ILjava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->v:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->r(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x52

    if-ne p1, v0, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 3

    const/16 p2, 0x52

    if-ne p1, p2, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_44

    const/16 v0, 0x60

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x61

    if-eq p1, v0, :cond_44

    const/16 v0, 0x63

    if-eq p1, v0, :cond_29

    const/16 v0, 0x64

    if-eq p1, v0, :cond_29

    const/16 v0, 0x66

    if-eq p1, v0, :cond_29

    const/16 v0, 0x67

    if-eq p1, v0, :cond_29

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_29

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_29

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_29
    return v1

    :cond_2a
    :try_start_2a
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    if-eqz p1, :cond_43

    new-instance p2, Landroid/view/KeyEvent;

    const/4 v0, 0x0

    const/16 v2, 0x42

    invoke-direct {p2, v0, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    new-instance p2, Landroid/view/KeyEvent;

    invoke-direct {p2, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_43} :catch_43

    :catch_43
    :cond_43
    return v1

    :cond_44
    iget-boolean p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->h:Z

    if-nez p1, :cond_5a

    iget-boolean p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->i:Z

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    if-eqz p1, :cond_56

    const-string p2, "javascript:onBackPressed()"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1

    :cond_56
    invoke-virtual {p0}, Lcom/gameloft/igp/IGPFreemiumActivity;->b()V

    return v1

    :cond_5a
    invoke-virtual {p0}, Lcom/gameloft/igp/IGPFreemiumActivity;->b()V

    return v1
.end method

.method public onPause()V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/igp/IGPFreemiumActivity;->h()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/gameloft/igp/IGPFreemiumActivity;->i()V

    return-void
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    sput-boolean p1, Lcom/gameloft/igp/IGPFreemiumActivity;->a:Z

    return-void
.end method

.method q(ILjava/lang/String;)V
    .registers 9

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/igp/IGPFreemiumActivity;->a:Z

    iput p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->c:I

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getDeviceId()Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->l:Ljava/lang/String;

    sget-object v4, Lcom/gameloft/igp/IGPFreemiumActivity;->b:[Ljava/lang/String;

    iget v5, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->c:I

    aget-object v4, v4, v5

    const-string v5, "LANG"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    const-string v4, "GAME_CODE"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    const-string v3, "COUNTRY_DETECTED"

    invoke-virtual {p2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getAndroidId()Ljava/lang/String;

    move-result-object p2

    const-string v3, "ANDROIDID"

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getSerial()Ljava/lang/String;

    move-result-object p2

    const-string v3, "UDIDPHONE"

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getHDIDFV()Ljava/lang/String;

    move-result-object p2

    const-string v3, "HDIDFV"

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    const-string p2, "DEVICE"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    const-string p2, "FIRMWARE"

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    const-string p2, "VERSION"

    const-string v2, "1.8.0a"

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gameloft/igp/IGPFreemiumActivity;->g()Z

    move-result p2

    if-eqz p2, :cond_91

    const-string p2, "fast"

    goto :goto_93

    :cond_91
    const-string p2, "slow"

    :goto_93
    const-string v2, "CONNSPEED"

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&google_optout="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getGoogleAdIdStatus()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    const-string p2, " "

    const-string v2, ""

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&width="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&height="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    const-string p2, "[?]"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?data="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&enc=1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-eq p1, p2, :cond_14d

    const/16 p2, 0xc

    if-ne p1, p2, :cond_13a

    goto :goto_14d

    :cond_13a
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "kindle"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_153

    iget p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->k:I

    add-int/lit8 p1, p1, -0x14

    iput p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->k:I

    goto :goto_153

    :cond_14d
    :goto_14d
    iget p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->k:I

    add-int/lit8 p1, p1, -0x30

    iput p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->k:I

    :cond_153
    :goto_153
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->v:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->w:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
