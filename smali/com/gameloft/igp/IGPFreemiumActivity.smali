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

###### Class com.gameloft.igp.IGPFreemiumActivity.a (com.gameloft.igp.IGPFreemiumActivity$a)
.class Lcom/gameloft/igp/IGPFreemiumActivity$a;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$100(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$002(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_27

    :catch_27
    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.b (com.gameloft.igp.IGPFreemiumActivity$b)
.class Lcom/gameloft/igp/IGPFreemiumActivity$b;
.super Ljava/lang/Thread;
.source "IGPFreemiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    :goto_a
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_11
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    new-instance v1, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;

    invoke-direct {v1, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.b.a (com.gameloft.igp.IGPFreemiumActivity$b$a)
.class Lcom/gameloft/igp/IGPFreemiumActivity$b$a;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity$b;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$b;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$200(Lcom/gameloft/igp/IGPFreemiumActivity;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_21

    :try_start_14
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    nop

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$b$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$b;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:onResume()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_4e
    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.c (com.gameloft.igp.IGPFreemiumActivity$c)
.class Lcom/gameloft/igp/IGPFreemiumActivity$c;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;->retrieveItems(ILjava/lang/String;Lcom/gameloft/igp/IGPFreemiumActivity$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/gameloft/igp/IGPFreemiumActivity$j;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/gameloft/igp/IGPFreemiumActivity$j;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->b:I

    iput-object p3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    const/4 v0, -0x1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://201205igp.gameloft.com/redir/rewards.php?action=retrieveItems&game_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&game_ver=1.8.0a&lang="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gameloft/igp/IGPFreemiumActivity;->b:[Ljava/lang/String;

    iget v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&hdidfv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getHDIDFV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ba

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_c2

    const-string v3, "message"

    if-nez v1, :cond_b0

    :try_start_4f
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    :goto_56
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_8c

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "amount"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v7, "isInstall"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v7, "destGameCode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v7, "creation"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v8, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    invoke-interface/range {v8 .. v14}, Lcom/gameloft/igp/IGPFreemiumActivity$j;->a(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_8c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_a8

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    invoke-interface {v3, v2, v1}, Lcom/gameloft/igp/IGPFreemiumActivity$j;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dd

    :cond_a8
    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    const-string v3, "No items retrieved."

    invoke-interface {v2, v1, v3}, Lcom/gameloft/igp/IGPFreemiumActivity$j;->b(ILjava/lang/String;)V

    goto :goto_dd

    :cond_b0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    invoke-interface {v3, v1, v2}, Lcom/gameloft/igp/IGPFreemiumActivity$j;->b(ILjava/lang/String;)V

    goto :goto_dd

    :cond_ba
    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    const-string v2, "Response is null. Check your network connection."

    invoke-interface {v1, v0, v2}, Lcom/gameloft/igp/IGPFreemiumActivity$j;->b(ILjava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_c1} :catch_c2

    goto :goto_dd

    :catch_c2
    move-exception v1

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$c;->c:Lcom/gameloft/igp/IGPFreemiumActivity$j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/gameloft/igp/IGPFreemiumActivity$j;->b(ILjava/lang/String;)V

    :goto_dd
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.d (com.gameloft.igp.IGPFreemiumActivity$d)
.class Lcom/gameloft/igp/IGPFreemiumActivity$d;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;->o(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$d;->b:Lcom/gameloft/igp/IGPFreemiumActivity;

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$d;->b:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1100(Lcom/gameloft/igp/IGPFreemiumActivity;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$d;->b:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$d;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1902(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$d;->b:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1900(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.e (com.gameloft.igp.IGPFreemiumActivity$e)
.class Lcom/gameloft/igp/IGPFreemiumActivity$e;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1900(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1900(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_11
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1902(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.f (com.gameloft.igp.IGPFreemiumActivity$f)
.class Lcom/gameloft/igp/IGPFreemiumActivity$f;
.super Landroid/webkit/WebView;
.source "IGPFreemiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method public constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$f;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x60

    if-eq v0, v1, :cond_29

    const/16 v1, 0x61

    if-eq v0, v1, :cond_29

    const/16 v1, 0x63

    if-eq v0, v1, :cond_29

    const/16 v1, 0x64

    if-eq v0, v1, :cond_29

    const/16 v1, 0x66

    if-eq v0, v1, :cond_29

    const/16 v1, 0x67

    if-eq v0, v1, :cond_29

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_29

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_29

    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_29
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$f;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_49

    :cond_3a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$f;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_49
    :goto_49
    return v1
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.g (com.gameloft.igp.IGPFreemiumActivity$g)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 4

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public checkBackPressed(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_11

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$902(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    return-void

    :cond_11
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$902(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$200(Lcom/gameloft/igp/IGPFreemiumActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0, p4}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$500(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object p4, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    new-instance v0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p4, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.g.a (com.gameloft.igp.IGPFreemiumActivity$g$a)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g$a;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$g;->playVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/graphics/Bitmap;

.field final synthetic e:Lcom/gameloft/igp/IGPFreemiumActivity$g;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->d:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$202(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v3, v3, Lcom/gameloft/igp/IGPFreemiumActivity$g;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$602(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$600(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    new-instance v3, Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v4, v4, Lcom/gameloft/igp/IGPFreemiumActivity$g;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$302(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$600(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v3, v3, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v3}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$700(Lcom/gameloft/igp/IGPFreemiumActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v3, v3, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v3}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$800(Lcom/gameloft/igp/IGPFreemiumActivity;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v2

    new-instance v3, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;

    invoke-direct {v3, p0, v0}, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v2

    new-instance v3, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;

    invoke-direct {v3, p0, v0}, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v2

    new-instance v3, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;

    invoke-direct {v3, p0, v0}, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object v0

    new-instance v2, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;

    invoke-direct {v2, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12a

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v2, v2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    const/16 v2, 0x46

    int-to-float v2, v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v3, v3, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object v1, v1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$600(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;

    invoke-direct {v1, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_12a
    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.g.a.C0218a (com.gameloft.igp.IGPFreemiumActivity$g$a$a)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;Landroid/app/ProgressDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_d
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.g.a.b (com.gameloft.igp.IGPFreemiumActivity$g$a$b)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;Landroid/app/ProgressDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_d
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$202(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$100(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$302(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "javascript:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$b;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p3, p3, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "()"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.g.a.c (com.gameloft.igp.IGPFreemiumActivity$g$a$c)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;Landroid/app/ProgressDialog;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_d
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$202(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$100(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$c;->b:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object v1, v1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.g.a.d (com.gameloft.igp.IGPFreemiumActivity$g$a$d)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_59

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p2, p2, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p2, p2, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p2, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$202(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$100(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$300(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$302(Lcom/gameloft/igp/IGPFreemiumActivity;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "javascript:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$d;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p3, p3, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "()"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_59
    return p1
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.g.a.e (com.gameloft.igp.IGPFreemiumActivity$g$a$e)
.class Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_b1

    const/4 v5, 0x0

    if-eq p2, v3, :cond_4c

    const/4 v6, 0x2

    if-eq p2, v6, :cond_19

    return v4

    :cond_19
    cmpg-float p2, v0, v5

    if-ltz p2, :cond_40

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v0, p2

    if-gtz p2, :cond_40

    cmpg-float p2, v1, v5

    if-ltz p2, :cond_40

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-lez p2, :cond_34

    goto :goto_40

    :cond_34
    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4b

    :cond_40
    :goto_40
    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_4b
    return v3

    :cond_4c
    cmpg-float p2, v0, v5

    if-ltz p2, :cond_a5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v0, p2

    if-gtz p2, :cond_a5

    cmpg-float p2, v1, v5

    if-ltz p2, :cond_a5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-lez p2, :cond_67

    goto :goto_a5

    :cond_67
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1, v4}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$202(Lcom/gameloft/igp/IGPFreemiumActivity;Z)Z

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$100(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->e:Lcom/gameloft/igp/IGPFreemiumActivity$g;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$g;->c:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$000(Lcom/gameloft/igp/IGPFreemiumActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a$e;->a:Lcom/gameloft/igp/IGPFreemiumActivity$g$a;

    iget-object v0, v0, Lcom/gameloft/igp/IGPFreemiumActivity$g$a;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v3

    :cond_a5
    :goto_a5
    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return v3

    :cond_b1
    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return v3
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.h (com.gameloft.igp.IGPFreemiumActivity$h)
.class Lcom/gameloft/igp/IGPFreemiumActivity$h;
.super Landroid/webkit/WebChromeClient;
.source "IGPFreemiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$h;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.i (com.gameloft.igp.IGPFreemiumActivity$i)
.class Lcom/gameloft/igp/IGPFreemiumActivity$i;
.super Landroid/webkit/WebViewClient;
.source "IGPFreemiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1100(Lcom/gameloft/igp/IGPFreemiumActivity;)V

    const-string p2, "javascript:window.Android.checkBackPressed(isBackPressed)"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1000(Lcom/gameloft/igp/IGPFreemiumActivity;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    new-instance p3, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;

    invoke-direct {p3, p0, p1}, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$i;Landroid/webkit/WebView;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 12

    const-string v0, "play:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    if-eqz v1, :cond_46

    :try_start_c
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "[?]"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2c} :catch_2d

    goto :goto_45

    :catch_2d
    nop

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1200(Lcom/gameloft/igp/IGPFreemiumActivity;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_45

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1200(Lcom/gameloft/igp/IGPFreemiumActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1202(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_45
    :goto_45
    return v4

    :cond_46
    const-string v0, "exit:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11b

    const-string v0, "unavailable:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    goto/16 :goto_11b

    :cond_58
    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1300(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_66
    const-string v0, "amzn://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1400(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_74
    const-string v1, "www.amazon.com"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "https://"

    const-string v7, "http://"

    if-eqz v5, :cond_8e

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1400(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_8e
    const-string v5, "skt:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a0

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1500(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_a0
    const-string v5, "link:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c6

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c0

    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1400(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_c0
    iget-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p2, p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1600(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_c6
    const-string v0, "201205igp.gameloft.com/redir/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_115

    const-string v0, "ctg=PLAY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    const-string v5, "t=bundle"

    const-string v6, "t=game"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ctg=FRINSTALL&old_ctg=PLAY"

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1202(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_e9
    const-string v1, "type=SKTMARKET"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_114

    const-string v1, "&pp=1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_114

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v0}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1200(Lcom/gameloft/igp/IGPFreemiumActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1202(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_10c
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v4

    :cond_114
    return v2

    :cond_115
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {p1, p2}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1600(Lcom/gameloft/igp/IGPFreemiumActivity;Ljava/lang/String;)V

    return v4

    :cond_11b
    :goto_11b
    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->b()V

    return v4
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.i.a (com.gameloft.igp.IGPFreemiumActivity$i$a)
.class Lcom/gameloft/igp/IGPFreemiumActivity$i$a;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$i;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/gameloft/igp/IGPFreemiumActivity$i;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$i;Landroid/webkit/WebView;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iput-object p2, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->a:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :try_start_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object v1, v1, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object v1, v1, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1800(Lcom/gameloft/igp/IGPFreemiumActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object v3, v3, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v3}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$800(Lcom/gameloft/igp/IGPFreemiumActivity;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$b;

    invoke-direct {v2, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$b;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$i$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$a;

    invoke-direct {v1, p0}, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$a;-><init>(Lcom/gameloft/igp/IGPFreemiumActivity$i$a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object v1, v1, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v1}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$1700(Lcom/gameloft/igp/IGPFreemiumActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object v3, v3, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-static {v3}, Lcom/gameloft/igp/IGPFreemiumActivity;->access$800(Lcom/gameloft/igp/IGPFreemiumActivity;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5c} :catch_5c

    :catch_5c
    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.i.a.DialogInterfaceOnCancelListenerC0219a (com.gameloft.igp.IGPFreemiumActivity$i$a$a)
.class Lcom/gameloft/igp/IGPFreemiumActivity$i$a$a;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity$i$a;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$i$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$a;->a:Lcom/gameloft/igp/IGPFreemiumActivity$i$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->b()V

    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.i.a.b (com.gameloft.igp.IGPFreemiumActivity$i$a$b)
.class Lcom/gameloft/igp/IGPFreemiumActivity$i$a$b;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/igp/IGPFreemiumActivity$i$a;


# direct methods
.method constructor <init>(Lcom/gameloft/igp/IGPFreemiumActivity$i$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity$i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/gameloft/igp/IGPFreemiumActivity$i$a$b;->a:Lcom/gameloft/igp/IGPFreemiumActivity$i$a;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$i$a;->b:Lcom/gameloft/igp/IGPFreemiumActivity$i;

    iget-object p1, p1, Lcom/gameloft/igp/IGPFreemiumActivity$i;->a:Lcom/gameloft/igp/IGPFreemiumActivity;

    invoke-virtual {p1}, Lcom/gameloft/igp/IGPFreemiumActivity;->b()V

    return-void
.end method

###### Class com.gameloft.igp.IGPFreemiumActivity.j (com.gameloft.igp.IGPFreemiumActivity$j)
.class public interface abstract Lcom/gameloft/igp/IGPFreemiumActivity$j;
.super Ljava/lang/Object;
.source "IGPFreemiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/igp/IGPFreemiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "j"
.end annotation


# virtual methods
.method public abstract a(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(ILjava/lang/String;)V
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;)V
.end method
