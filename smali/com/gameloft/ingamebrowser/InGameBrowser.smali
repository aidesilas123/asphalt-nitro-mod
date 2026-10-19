###### Class com.gameloft.ingamebrowser.InGameBrowser (com.gameloft.ingamebrowser.InGameBrowser)
.class public Lcom/gameloft/ingamebrowser/InGameBrowser;
.super Landroid/app/Activity;
.source "InGameBrowser.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/ingamebrowser/InGameBrowser$k;,
        Lcom/gameloft/ingamebrowser/InGameBrowser$j;,
        Lcom/gameloft/ingamebrowser/InGameBrowser$m;,
        Lcom/gameloft/ingamebrowser/InGameBrowser$l;,
        Lcom/gameloft/ingamebrowser/InGameBrowser$UserGender;
    }
.end annotation


# static fields
.field private static A:[Ljava/lang/String; = null

.field public static B:Z = false

.field private static C:Ljava/lang/Thread; = null

.field private static D:Ljava/lang/Thread; = null

.field private static E:Lcom/gameloft/ingamebrowser/InGameBrowser$k; = null

.field private static F:Z = false

.field private static G:Z = false

.field private static H:Ljava/lang/String; = null

.field private static I:Ljava/lang/String; = null

.field private static J:Landroid/os/Message; = null

.field private static K:Ljava/lang/String; = null

.field private static a:Lcom/gameloft/ingamebrowser/InGameBrowser; = null

.field private static b:Ljava/lang/String; = ""

.field private static c:Ljava/lang/String; = "from=FROM&op=OPERATOR&country=COUNTRY&lg=LANG&udid=UDID&androidid=ANDROID_ID&hdidfv=HDIDFV&game_ver=VERSION&d=DEVICE&f=FIRMWARE&anonymous=ANONYMOUS_ACCOUNT&fbid=FACEBOOK_ID&gliveusername=GLIVE_USERNAME&googleplaygames=GOOGLEID&clientid=CLIENT_ID&os=android&user_age=CURRENT_USER_AGE"

.field private static d:Ljava/lang/String; = "from=FROM&op=OPERATOR&country=COUNTRY&lg=LANG&udid=UDID&androidid=ANDROID_ID&hdidfv=HDIDFV&game_ver=VERSION&d=DEVICE&f=FIRMWARE&anonymous=ANONYMOUS_ACCOUNT&fbid=FACEBOOK_ID&gliveusername=GLIVE_USERNAME&googleplaygames=GOOGLEID&clientid=CLIENT_ID&os=android&game=GAME_NAME&user_age=CURRENT_USER_AGE"

.field private static e:Ljava/lang/String; = ""

.field private static f:Ljava/lang/String; = "from=FROM&op=OPERATOR&ctg=FORUM&game_ver=VERSION&lg=LANG&country=COUNTRY&d=DEVICE&f=FIRMWARE&udid=UDID&hdidfv=HDIDFV&androidid=ANDROID_ID&clientid=CLIENT_ID&user_age=CURRENT_USER_AGE"

.field private static g:Ljava/lang/String; = ""

.field private static h:Ljava/lang/String; = ""

.field private static i:Ljava/lang/String; = ""

.field public static j:I = 0x0

.field public static k:Ljava/lang/String; = ""

.field public static l:Ljava/lang/String; = ""

.field public static m:Ljava/lang/String; = ""

.field public static n:Ljava/lang/String; = ""

.field public static o:Ljava/lang/String; = "1.8.0a"

.field public static p:Ljava/lang/String; = "AGHM"

.field public static q:I = 0x0

.field private static r:Z = true

.field private static s:Ljava/lang/String; = ""

.field private static t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static u:Lcom/gameloft/ingamebrowser/InGameBrowser$UserGender;

.field public static v:Ljava/lang/String;

.field private static w:Z

.field private static x:I

.field private static y:I

.field private static z:Lcom/gameloft/ingamebrowser/InGameBrowser$l;


# instance fields
.field private L:Landroid/webkit/WebView;

.field private M:Landroid/widget/RelativeLayout;

.field private N:Landroid/widget/ImageButton;

.field private O:Landroid/widget/ImageButton;

.field private P:Landroid/widget/ImageButton;

.field private Q:Landroid/widget/ImageButton;

.field private R:[I

.field private S:[I

.field private T:[I

.field private U:Ljava/lang/String;

.field private V:Landroid/widget/AbsoluteLayout;

.field private W:Landroid/widget/ImageView;

.field private X:Landroid/view/InputDevice;

.field private Y:F

.field private Z:F

.field private a0:F

.field private b0:F

.field private c0:F

.field private i0:F

.field private j0:I

.field private k0:I

.field private l0:Z

.field private m0:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser$UserGender;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$UserGender;

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->u:Lcom/gameloft/ingamebrowser/InGameBrowser$UserGender;

    const-string v0, "2361:59882:1.8.0a:android:googleplay"

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->v:Ljava/lang/String;

    sput-boolean v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->w:Z

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->x:I

    sput v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->y:I

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->z:Lcom/gameloft/ingamebrowser/InGameBrowser$l;

    const-string v2, "EN"

    const-string v3, "FR"

    const-string v4, "DE"

    const-string v5, "IT"

    const-string v6, "SP"

    const-string v7, "JP"

    const-string v8, "KR"

    const-string v9, "CN"

    const-string v10, "BR"

    const-string v11, "RU"

    const-string v12, "TR"

    const-string v13, "AR"

    const-string v14, "TH"

    const-string v15, "ID"

    const-string v16, "VI"

    const-string v17, "ZT"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->A:[Ljava/lang/String;

    sput-boolean v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->B:Z

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->C:Ljava/lang/Thread;

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->D:Ljava/lang/Thread;

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->E:Lcom/gameloft/ingamebrowser/InGameBrowser$k;

    sput-boolean v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->F:Z

    sput-boolean v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->G:Z

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->H:Ljava/lang/String;

    const-string v1, "Unknown"

    sput-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->I:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->J:Landroid/os/Message;

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->K:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->M:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->Q:Landroid/widget/ImageButton;

    const/16 v1, 0x10

    new-array v2, v1, [I

    fill-array-data v2, :array_42

    iput-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->R:[I

    new-array v2, v1, [I

    fill-array-data v2, :array_66

    iput-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->S:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_8a

    iput-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->T:[I

    const-string v1, "NONE"

    iput-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->U:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->V:Landroid/widget/AbsoluteLayout;

    iput-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->X:Landroid/view/InputDevice;

    const/4 v1, 0x0

    iput v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->Y:F

    iput v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->Z:F

    iput v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->a0:F

    iput v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->b0:F

    iput v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->c0:F

    iput v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->i0:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->j0:I

    iput v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->k0:I

    iput-boolean v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->l0:Z

    iput-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->m0:Landroid/app/ProgressDialog;

    return-void

    :array_42
    .array-data 4
        0x7f12002c
        0x7f12002d
        0x7f12002b
        0x7f12002f
        0x7f120033
        0x7f120030
        0x7f120031
        0x7f12002a
        0x7f120029
        0x7f120032
        0x7f120035
        0x7f120028
        0x7f120034
        0x7f12002e
        0x7f120036
        0x7f120037
    .end array-data

    :array_66
    .array-data 4
        0x7f12003c
        0x7f12003d
        0x7f12003b
        0x7f12003f
        0x7f120043
        0x7f120040
        0x7f120041
        0x7f12003a
        0x7f120039
        0x7f120042
        0x7f120045
        0x7f120038
        0x7f120044
        0x7f12003e
        0x7f120046
        0x7f120047
    .end array-data

    :array_8a
    .array-data 4
        0x7f12004c
        0x7f12004d
        0x7f12004b
        0x7f12004f
        0x7f120053
        0x7f120050
        0x7f120051
        0x7f12004a
        0x7f120049
        0x7f120052
        0x7f120055
        0x7f120048
        0x7f120054
        0x7f12004e
        0x7f120056
        0x7f120057
    .end array-data
.end method

.method public static native InGameBrowserCheckRewardCallback(Ljava/lang/String;Z)V
.end method

.method public static native InGameBrowserExitCallback()V
.end method

.method public static native InGameBrowserExternalPageFailedToOpenCallback()V
.end method

.method private static ModalModeFinish()V
    .registers 2

    sget-boolean v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->F:Z

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->G:Z

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modalwebviewerror:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->ModalRespond(Ljava/lang/String;)V

    :cond_1e
    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->E:Lcom/gameloft/ingamebrowser/InGameBrowser$k;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->F:Z

    sput-boolean v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->G:Z

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->H:Ljava/lang/String;

    const-string v1, "Unknown"

    sput-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->I:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->J:Landroid/os/Message;

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->K:Ljava/lang/String;

    return-void
.end method

.method private static ModalRespond(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->E:Lcom/gameloft/ingamebrowser/InGameBrowser$k;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->H:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/gameloft/ingamebrowser/InGameBrowser$k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->G:Z

    :cond_c
    return-void
.end method

.method public static QuitIGB()V
    .registers 2

    :try_start_0
    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->B:Z

    if-nez v0, :cond_9

    goto :goto_2e

    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-direct {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->a()V

    return-void

    :cond_1d
    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    iget-object v0, v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->M:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/gameloft/ingamebrowser/InGameBrowser$a;

    invoke-direct {v1}, Lcom/gameloft/ingamebrowser/InGameBrowser$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :goto_29
    sget-boolean v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->F:Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2e

    if-eqz v0, :cond_2e

    goto :goto_29

    :catch_2e
    :cond_2e
    :goto_2e
    return-void
.end method

.method public static RedirectNewVersionScreen()V
    .registers 3

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->e:Ljava/lang/String;

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->d:Ljava/lang/String;

    const-string v2, "UPDATE"

    invoke-static {v0, v1, v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->ShowBrowserWithCtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static RedirectRateThisApp()V
    .registers 3

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->e:Ljava/lang/String;

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->d:Ljava/lang/String;

    const-string v2, "GAME_REVIEW"

    invoke-static {v0, v1, v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->ShowBrowserWithCtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SetAnonymousAccount(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->k:Ljava/lang/String;

    return-void
.end method

.method public static SetBaseUrl(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_82

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_82

    :cond_9
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "redir/ingamebrowser.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "redir/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "redir/ingamenews.php?action=checkNews&last-id=LAST_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "redir/ingamenews.php?action=saveNews&last-id=LAST_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "redir/ingamenews.php?action=displayNews"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->i:Ljava/lang/String;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->w:Z

    :cond_82
    :goto_82
    return-void
.end method

.method public static SetFacebookAccount(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->l:Ljava/lang/String;

    return-void
.end method

.method public static SetGLLiveAccount(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->m:Ljava/lang/String;

    return-void
.end method

.method public static SetGameLanguage(I)V
    .registers 1

    sput p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->j:I

    return-void
.end method

.method public static SetGameLanguage(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->A:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    sput p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->j:I

    :cond_f
    return-void
.end method

.method public static SetGoogleAccount(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->n:Ljava/lang/String;

    return-void
.end method

.method public static SetParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->p:Ljava/lang/String;

    sput-object p1, Lcom/gameloft/ingamebrowser/InGameBrowser;->o:Ljava/lang/String;

    sput-object p2, Lcom/gameloft/ingamebrowser/InGameBrowser;->v:Ljava/lang/String;

    sput-object p4, Lcom/gameloft/ingamebrowser/InGameBrowser;->k:Ljava/lang/String;

    invoke-static {p5}, Lcom/gameloft/ingamebrowser/InGameBrowser;->SetGameLanguage(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/gameloft/ingamebrowser/InGameBrowser;->SetBaseUrl(Ljava/lang/String;)V

    invoke-static {p6}, Lcom/gameloft/ingamebrowser/InGameBrowser;->SetUserAge(I)V

    return-void
.end method

.method public static SetUserAge(I)V
    .registers 2

    const/16 v0, 0xd

    if-ge p0, v0, :cond_8

    const/4 p0, 0x0

    sput p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->q:I

    goto :goto_a

    :cond_8
    sput p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->q:I

    :goto_a
    return-void
.end method

.method public static SetUserGender(I)V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser$UserGender;->values()[Lcom/gameloft/ingamebrowser/InGameBrowser$UserGender;

    move-result-object v0

    aget-object p0, v0, p0

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->u:Lcom/gameloft/ingamebrowser/InGameBrowser$UserGender;
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    sget-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser$UserGender;->a:Lcom/gameloft/ingamebrowser/InGameBrowser$UserGender;

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->u:Lcom/gameloft/ingamebrowser/InGameBrowser$UserGender;

    :goto_d
    return-void
.end method

.method private static ShowBrowserWithCtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&ctg="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&data="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->solveTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&enc=1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UPDATE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49

    const-string p1, "GAME_REVIEW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_49

    :cond_3a
    sget-object p1, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_45

    return-void

    :cond_45
    invoke-static {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->showInGameBrowserWithUrl(Ljava/lang/String;)V

    goto :goto_4c

    :cond_49
    :goto_49
    invoke-static {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->openBrowser(Ljava/lang/String;)V

    :goto_4c
    return-void
.end method

.method public static ShowEULA()V
    .registers 3

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->e:Ljava/lang/String;

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->c:Ljava/lang/String;

    const-string v2, "EULA"

    invoke-static {v0, v1, v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->ShowBrowserWithCtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ShowInModalMode(Ljava/lang/String;Lcom/gameloft/ingamebrowser/InGameBrowser$k;Landroid/os/Message;)V
    .registers 8

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "link"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->base64decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "exitURL"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/ingamebrowser/InGameBrowser;->base64decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gameloft/ingamebrowser/InGameBrowser;->H:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_57

    sget-object v3, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_4f

    sput-object p1, Lcom/gameloft/ingamebrowser/InGameBrowser;->E:Lcom/gameloft/ingamebrowser/InGameBrowser$k;

    sput-boolean v4, Lcom/gameloft/ingamebrowser/InGameBrowser;->F:Z

    sput-boolean v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->G:Z

    sput-object p2, Lcom/gameloft/ingamebrowser/InGameBrowser;->J:Landroid/os/Message;

    const-string p2, "onModalWebviewLoad"

    invoke-virtual {v2, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->base64decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/gameloft/ingamebrowser/InGameBrowser;->K:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->showInGameBrowserWithUrl(Ljava/lang/String;Z)V

    goto :goto_8b

    :cond_4f
    new-instance p0, Ljava/lang/Exception;

    const-string p2, "AlreadyInUse"

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    new-instance p0, Ljava/lang/Exception;

    const-string p2, "ParseRequestError"

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception p0

    sget-object p2, Lcom/gameloft/ingamebrowser/InGameBrowser;->H:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6c

    const-string p2, "Unknown"

    sput-object p2, Lcom/gameloft/ingamebrowser/InGameBrowser;->H:Ljava/lang/String;

    :cond_6c
    sget-object p2, Lcom/gameloft/ingamebrowser/InGameBrowser;->H:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modalwebviewerror:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/gameloft/ingamebrowser/InGameBrowser$k;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_8b
    return-void
.end method

.method public static ShowPrivacyPolicy()V
    .registers 3

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->e:Ljava/lang/String;

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->c:Ljava/lang/String;

    const-string v2, "PRIVACY"

    invoke-static {v0, v1, v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->ShowBrowserWithCtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ShowTermsOfUse()V
    .registers 3

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->e:Ljava/lang/String;

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->c:Ljava/lang/String;

    const-string v2, "TERMS"

    invoke-static {v0, v1, v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->ShowBrowserWithCtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    sget-boolean v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->B:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->B:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->s:Ljava/lang/String;

    invoke-static {v1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->processReward(Ljava/lang/String;)V

    const-string v1, ""

    sput-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->s:Ljava/lang/String;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->r:Z

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->ModalModeFinish()V

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->InGameBrowserExitCallback()V

    return-void
.end method

.method static synthetic access$000()Lcom/gameloft/ingamebrowser/InGameBrowser;
    .registers 1

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gameloft/ingamebrowser/InGameBrowser;)V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->a()V

    return-void
.end method

.method static synthetic access$1000(Lcom/gameloft/ingamebrowser/InGameBrowser;)F
    .registers 1

    iget p0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->i0:F

    return p0
.end method

.method static synthetic access$1100(Lcom/gameloft/ingamebrowser/InGameBrowser;)I
    .registers 1

    iget p0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->j0:I

    return p0
.end method

.method static synthetic access$1200(Lcom/gameloft/ingamebrowser/InGameBrowser;)I
    .registers 1

    iget p0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->k0:I

    return p0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->getLastNewsIndex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->solveTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->postData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lorg/json/JSONObject;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->saveJsonData(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$1902(Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 1

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->C:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/gameloft/ingamebrowser/InGameBrowser;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->l0:Z

    return p1
.end method

.method static synthetic access$2102(Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 1

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->D:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/gameloft/ingamebrowser/InGameBrowser;)V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->d()V

    return-void
.end method

.method static synthetic access$2300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/app/ProgressDialog;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->m0:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/gameloft/ingamebrowser/InGameBrowser;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->m0:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2400()Z
    .registers 1

    sget-boolean v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->F:Z

    return v0
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->ModalRespond(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/gameloft/ingamebrowser/InGameBrowser;)V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->i()V

    return-void
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/gameloft/ingamebrowser/InGameBrowser;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/gameloft/ingamebrowser/InGameBrowser;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/gameloft/ingamebrowser/InGameBrowser;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->openBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/gameloft/ingamebrowser/InGameBrowser;)[I
    .registers 1

    iget-object p0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->S:[I

    return-object p0
.end method

.method static synthetic access$3502(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->I:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/gameloft/ingamebrowser/InGameBrowser;)[I
    .registers 1

    iget-object p0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->T:[I

    return-object p0
.end method

.method static synthetic access$400(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/view/InputDevice;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->X:Landroid/view/InputDevice;

    return-object p0
.end method

.method static synthetic access$402(Lcom/gameloft/ingamebrowser/InGameBrowser;Landroid/view/InputDevice;)Landroid/view/InputDevice;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->X:Landroid/view/InputDevice;

    return-object p1
.end method

.method static synthetic access$500(Lcom/gameloft/ingamebrowser/InGameBrowser;I)Landroid/view/InputDevice;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->b(I)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/gameloft/ingamebrowser/InGameBrowser;)Landroid/widget/AbsoluteLayout;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->V:Landroid/widget/AbsoluteLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/gameloft/ingamebrowser/InGameBrowser;)F
    .registers 1

    iget p0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->a0:F

    return p0
.end method

.method static synthetic access$800(Lcom/gameloft/ingamebrowser/InGameBrowser;)F
    .registers 1

    iget p0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->b0:F

    return p0
.end method

.method static synthetic access$900(Lcom/gameloft/ingamebrowser/InGameBrowser;)F
    .registers 1

    iget p0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->c0:F

    return p0
.end method

.method private b(I)Landroid/view/InputDevice;
    .registers 7

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_37

    aget v2, v0, v1

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getSources()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    and-int/2addr v3, p1

    if-eqz v3, :cond_34

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ats_input"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xf

    if-le p1, v0, :cond_33

    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_33

    :cond_33
    return-object v2

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_37
    const/4 p1, 0x0

    return-object p1
.end method

.method private static base64decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    const-string p0, ""

    return-object p0
.end method

.method private c(I)V
    .registers 2

    packed-switch p1, :pswitch_data_1e

    :pswitch_3
    goto :goto_1d

    :pswitch_4
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_1d

    :pswitch_a
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    goto :goto_1d

    :pswitch_10
    const-string p1, "UserCancel"

    sput-object p1, Lcom/gameloft/ingamebrowser/InGameBrowser;->I:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->a()V

    goto :goto_1d

    :pswitch_18
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x7f0a023d
        :pswitch_18
        :pswitch_10
        :pswitch_a
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private d()V
    .registers 2

    new-instance v0, Lcom/gameloft/ingamebrowser/InGameBrowser$h;

    invoke-direct {v0, p0}, Lcom/gameloft/ingamebrowser/InGameBrowser$h;-><init>(Lcom/gameloft/ingamebrowser/InGameBrowser;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->openIntent(Ljava/lang/String;)Z

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

.method private f(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->openIntent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?"

    const-string v3, "https://play.google.com/store/apps/details?"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "market://search?"

    const-string v3, "https://play.google.com/store/search?"

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

.method private g(Ljava/lang/String;)V
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

.method private static getFacebookPageLink()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&t=facebook&data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&game=GAME_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->solveTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&enc=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFacebookShareLink()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ctg=FBOOK&data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&game=GAME_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->solveTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&enc=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLastNewsIndex()Ljava/lang/String;
    .registers 4

    const-string v0, "-1"

    :try_start_2
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "InGameBrowser_lastNewsIndex"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "LAST_NEWS_INDEX"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_13

    :catch_13
    return-object v0
.end method

.method public static getUnreadNewsNumber()I
    .registers 1

    sget v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->x:I

    return v0
.end method

.method private h(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/gameloft/ingamebrowser/InGameBrowser$g;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/ingamebrowser/InGameBrowser$g;-><init>(Lcom/gameloft/ingamebrowser/InGameBrowser;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->R:[I

    sget v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->j:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->h(Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .registers 16

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long v10, v0, v2

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v12, v0, v1

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v13, v0, v1

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v0, v8

    move-wide v2, v10

    move v5, v12

    move v6, v13

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v4, 0x1

    move-wide v0, v8

    move-wide v2, v10

    move v5, v12

    move v6, v13

    move v7, v14

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4d

    :catch_4d
    return-void
.end method

.method public static native nativeUnreadNewsChangedCallback(I)V
.end method

.method private static openBrowser(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->openIntent(Ljava/lang/String;)Z

    return-void
.end method

.method private static openIntent(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x10000

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_34

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_34
    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->InGameBrowserExternalPageFailedToOpenCallback()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_37

    :catch_37
    return v0
.end method

.method private static postData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_a
    new-instance p0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "[&]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_a0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_19
    const-string v5, ""

    if-ge v4, v2, :cond_5a

    :try_start_1d
    aget-object v6, p1, v4

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_43

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_43

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v7, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    :cond_43
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_57

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v7, v6, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_5a
    new-instance p1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p1, p0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_7d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7d

    :cond_98
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_9f} :catch_a0

    goto :goto_a1

    :catch_a0
    const/4 p0, 0x0

    :goto_a1
    return-object p0
.end method

.method private static processReward(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    aget-object p0, p0, v1

    invoke-static {p0, v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->InGameBrowserCheckRewardCallback(Ljava/lang/String;Z)V

    goto :goto_34

    :cond_18
    array-length v0, p0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_34

    aget-object v0, p0, v2

    const-string v2, "delivered"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    aget-object v0, p0, v1

    const/4 v1, 0x2

    aget-object p0, p0, v1

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->InGameBrowserCheckRewardCallback(Ljava/lang/String;Z)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_34

    :catch_34
    :cond_34
    :goto_34
    return-void
.end method

.method public static refreshUnreadNewsNumber()V
    .registers 1

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->C:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/gameloft/ingamebrowser/InGameBrowser$e;

    invoke-direct {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser$e;-><init>()V

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->C:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static refreshUnreadNewsNumberInternal()V
    .registers 1

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->D:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/gameloft/ingamebrowser/InGameBrowser$f;

    invoke-direct {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser$f;-><init>()V

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->D:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static saveJsonData(Lorg/json/JSONObject;Z)V
    .registers 4

    const-string v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-eqz p1, :cond_16

    const-string p1, "current-id"

    const-string v0, "-1"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->saveLastNewsIndex(Ljava/lang/String;)V

    :cond_16
    const/4 p1, -0x1

    const-string v0, "unread"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->x:I

    :try_start_1f
    invoke-static {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->nativeUnreadNewsChangedCallback(I)V
    :try_end_22
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_24

    :catch_23
    nop

    :goto_24
    sget-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->z:Lcom/gameloft/ingamebrowser/InGameBrowser$l;

    if-eqz p0, :cond_2d

    sget p1, Lcom/gameloft/ingamebrowser/InGameBrowser;->x:I

    invoke-interface {p0, p1}, Lcom/gameloft/ingamebrowser/InGameBrowser$l;->a(I)V

    :cond_2d
    return-void
.end method

.method private static saveLastNewsIndex(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "InGameBrowser_lastNewsIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_NEWS_INDEX"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method

.method public static setUnreadNewsChangedCallback(Lcom/gameloft/ingamebrowser/InGameBrowser$l;)V
    .registers 1

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->z:Lcom/gameloft/ingamebrowser/InGameBrowser$l;

    return-void
.end method

.method public static showCustomerCare()V
    .registers 3

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?ctg=SUPPORT&data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->solveTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&enc=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->openBrowser(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_38} :catch_39

    goto :goto_3e

    :catch_39
    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_3e
    return-void
.end method

.method public static showCustomerCareWithBANType(I)V
    .registers 6

    const-string v0, "&enc=1"

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_64

    :try_start_6
    sget-object v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    sget-object v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->solveTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUPPORT"

    if-ltz p0, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&extra_14="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BANNED"

    :cond_30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gameloft/ingamebrowser/InGameBrowser;->b:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?ctg="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&data="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->openBrowser(Ljava/lang/String;)V

    sget-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5d} :catch_5e

    goto :goto_8f

    :catch_5e
    sget-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_8f

    :cond_64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ctg=BANNED&data="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->solveTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->openBrowser(Ljava/lang/String;)V

    sget-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_8f
    return-void
.end method

.method public static showFacebookPage(Z)V
    .registers 4

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->getFacebookPageLink()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_a

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->openBrowser(Ljava/lang/String;)V

    goto :goto_18

    :cond_a
    sget-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-nez p0, :cond_15

    return-void

    :cond_15
    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->showInGameBrowserWithUrl(Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public static showFacebookShare(Z)V
    .registers 4

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->getFacebookShareLink()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_a

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->openBrowser(Ljava/lang/String;)V

    goto :goto_18

    :cond_a
    sget-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-nez p0, :cond_15

    return-void

    :cond_15
    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->showInGameBrowserWithUrl(Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public static showForum()V
    .registers 3

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->solveTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&enc=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->openBrowser(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static showInGameBrowserWithUrl(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->showInGameBrowserWithUrl(Ljava/lang/String;Z)V

    return-void
.end method

.method public static showInGameBrowserWithUrl(Ljava/lang/String;Z)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/gameloft/ingamebrowser/InGameBrowser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sput-boolean p1, Lcom/gameloft/ingamebrowser/InGameBrowser;->r:Z

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_23

    :catch_1a
    const/4 p0, 0x1

    sput-boolean p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->r:Z

    sget-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_23
    return-void
.end method

.method public static showNews()V
    .registers 3

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v0, "news"

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->showInGameBrowserWithUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static solveTemplate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p0, :cond_143

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_143

    :cond_c
    sget v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->j:I

    if-ltz v1, :cond_15

    sget-object v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->A:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_18

    :cond_15
    const/4 v1, 0x0

    sput v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->j:I

    :cond_18
    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->p:Ljava/lang/String;

    const-string v2, "FROM"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "OPERATOR"

    const-string v2, "ANMP"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COUNTRY"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->A:[Ljava/lang/String;

    sget v2, Lcom/gameloft/ingamebrowser/InGameBrowser;->j:I

    aget-object v1, v1, v2

    const-string v2, "LANG"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getSerial()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UDID"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ANDROID_ID"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getHDIDFV()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HDIDFV"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->o:Ljava/lang/String;

    const-string v2, "VERSION"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    const-string v2, "DEVICE"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "FIRMWARE"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->k:Ljava/lang/String;

    const-string v2, "ANONYMOUS_ACCOUNT"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->l:Ljava/lang/String;

    const-string v2, "FACEBOOK_ID"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->m:Ljava/lang/String;

    const-string v2, "GLIVE_USERNAME"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->n:Ljava/lang/String;

    const-string v2, "GOOGLEID"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->p:Ljava/lang/String;

    const-string v2, "GAME_NAME"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->v:Ljava/lang/String;

    const-string v2, "CLIENT_ID"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CURRENT_USER_AGE"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser$i;->a:[I

    sget-object v1, Lcom/gameloft/ingamebrowser/InGameBrowser;->u:Lcom/gameloft/ingamebrowser/InGameBrowser$UserGender;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_108

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e4

    goto :goto_119

    :cond_e4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&gender="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_119

    :cond_f6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&gender=female"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_119

    :cond_108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&gender=male"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&can_open_external_pages=1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&google_optout="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getGoogleAdIdStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_143
    :goto_143
    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_15

    :cond_e
    const-string v0, "UserCancel"

    sput-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->I:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->a()V

    :goto_15
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->a:Lcom/gameloft/ingamebrowser/InGameBrowser;

    sget-boolean p1, Lcom/gameloft/ingamebrowser/InGameBrowser;->w:Z

    if-nez p1, :cond_11

    const-string p1, "NotItitialized"

    sput-object p1, Lcom/gameloft/ingamebrowser/InGameBrowser;->I:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->a()V

    return-void

    :cond_11
    const/4 p1, 0x1

    sput-boolean p1, Lcom/gameloft/ingamebrowser/InGameBrowser;->B:Z

    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->j0:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->k0:I

    const v0, 0x7f0a0242

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/gameloft/ingamebrowser/InGameBrowser$m;

    invoke-direct {v1, p0, p0}, Lcom/gameloft/ingamebrowser/InGameBrowser$m;-><init>(Lcom/gameloft/ingamebrowser/InGameBrowser;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    new-instance v1, Lcom/gameloft/ingamebrowser/InGameBrowser$j;

    invoke-direct {v1, p0}, Lcom/gameloft/ingamebrowser/InGameBrowser$j;-><init>(Lcom/gameloft/ingamebrowser/InGameBrowser;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_91

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_91
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    const p1, 0x7f0a023d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->N:Landroid/widget/ImageButton;

    const p1, 0x7f0a023f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->O:Landroid/widget/ImageButton;

    const p1, 0x7f0a0241

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->P:Landroid/widget/ImageButton;

    const p1, 0x7f0a023e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->Q:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->N:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->O:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->P:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->Q:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->solveTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/gameloft/ingamebrowser/InGameBrowser;->J:Landroid/os/Message;

    if-eqz v3, :cond_104

    :try_start_eb
    iget-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    sget-object p1, Lcom/gameloft/ingamebrowser/InGameBrowser;->J:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f9} :catch_fb

    goto/16 :goto_1b6

    :catch_fb
    const-string p1, "NavigationFailed"

    sput-object p1, Lcom/gameloft/ingamebrowser/InGameBrowser;->I:Ljava/lang/String;

    invoke-direct {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->a()V

    goto/16 :goto_1b6

    :cond_104
    const-string v3, "BASE64"

    if-eqz p1, :cond_16c

    const-string v4, "forum"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_140

    const-string p1, "FORUM"

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->U:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "data="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gameloft/ingamebrowser/InGameBrowser;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->solveTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&enc=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1b6

    :cond_140
    const-string v4, "news"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_158

    const-string p1, "NEWS"

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->U:Ljava/lang/String;

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    sget-object v4, Lcom/gameloft/ingamebrowser/InGameBrowser;->i:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_1b6

    :cond_158
    sget-boolean v4, Lcom/gameloft/ingamebrowser/InGameBrowser;->r:Z

    if-eqz v4, :cond_166

    iget-object v4, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-static {v0, v3}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_1b6

    :cond_166
    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1b6

    :cond_16c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "ban_type"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_191

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&extra_14="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p1, "BANNED"

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->U:Ljava/lang/String;

    goto :goto_195

    :cond_191
    const-string p1, "SUPPORT"

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->U:Ljava/lang/String;

    :goto_195
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/gameloft/ingamebrowser/InGameBrowser;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?ctg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->U:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    :goto_1b6
    const p1, 0x7f0a0240

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/gameloft/ingamebrowser/InGameBrowser$b;

    invoke-direct {v3, p0, p1}, Lcom/gameloft/ingamebrowser/InGameBrowser$b;-><init>(Lcom/gameloft/ingamebrowser/InGameBrowser;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, Landroid/widget/AbsoluteLayout;

    invoke-direct {p1, p0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->V:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p1, v2}, Landroid/widget/AbsoluteLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->V:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    const v0, 0x7f080126

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->j0:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->k0:I

    div-int/lit8 v1, v1, 0x2

    const/4 v3, -0x2

    invoke-direct {p1, v3, v3, v0, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->V:Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->V:Landroid/widget/AbsoluteLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    const p1, 0x1000010

    invoke-direct {p0, p1}, Lcom/gameloft/ingamebrowser/InGameBrowser;->b(I)Landroid/view/InputDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->X:Landroid/view/InputDevice;

    if-eqz p1, :cond_21f

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->V:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p1, v2}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    :cond_21f
    new-instance p1, Lcom/gameloft/ingamebrowser/InGameBrowser$c;

    invoke-direct {p1, p0}, Lcom/gameloft/ingamebrowser/InGameBrowser$c;-><init>(Lcom/gameloft/ingamebrowser/InGameBrowser;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/gameloft/ingamebrowser/InGameBrowser$d;

    invoke-direct {p1, p0}, Lcom/gameloft/ingamebrowser/InGameBrowser$d;-><init>(Lcom/gameloft/ingamebrowser/InGameBrowser;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->U:Ljava/lang/String;

    const-string v1, "NEWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/gameloft/ingamebrowser/InGameBrowser;->refreshUnreadNewsNumberInternal()V

    :cond_d
    invoke-direct {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->a()V

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    if-eqz v0, :cond_31

    :try_start_14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1d

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_1d
    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_31} :catch_31

    :catch_31
    :cond_31
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    iget-boolean v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->l0:Z

    if-nez v0, :cond_7e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    iput v1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->a0:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    iput v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->b0:F

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    iput v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->c0:F

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    iput v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->i0:F

    const/16 v2, 0xf

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    iput v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->Y:F

    const/16 v2, 0x10

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    iput v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->Z:F

    const/16 v2, 0x17

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/16 v3, 0x16

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    float-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v6, v2, v4

    if-gez v6, :cond_4d

    float-to-double v2, p1

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_50

    :cond_4d
    invoke-direct {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->j()V

    :cond_50
    iget p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->Y:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-nez p1, :cond_5d

    iget p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->Z:F

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_65

    :cond_5d
    iput v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->a0:F

    iput v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->b0:F

    iput v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->c0:F

    iput v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->i0:F

    :cond_65
    iget p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->Z:F

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_7d

    iget-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    if-eqz v2, :cond_7d

    float-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v3, v5

    if-nez p1, :cond_7a

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto :goto_7d

    :cond_7a
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->pageUp(Z)Z

    :cond_7d
    :goto_7d
    return v1

    :cond_7e
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    iget-boolean v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->l0:Z

    if-nez v0, :cond_a4

    const/16 v0, 0x60

    const/4 v1, 0x1

    if-eq p1, v0, :cond_a0

    const/16 v0, 0x66

    if-eq p1, v0, :cond_a0

    const/16 v0, 0x67

    if-eq p1, v0, :cond_a0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    packed-switch p1, :pswitch_data_aa

    goto/16 :goto_a4

    :pswitch_1a
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p1

    add-float/2addr p1, v3

    iget p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->j0:I

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_34

    iget-object p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setX(F)V

    :cond_34
    return v1

    :pswitch_35
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p1

    sub-float/2addr p1, v3

    cmpl-float p2, p1, v2

    if-ltz p2, :cond_45

    iget-object p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setX(F)V

    :cond_45
    return v1

    :pswitch_46
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result p1

    add-float/2addr p1, v3

    iget p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->k0:I

    iget-object v2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_61

    iget-object p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_77

    :cond_61
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    new-instance p2, Landroid/view/KeyEvent;

    const/16 v2, 0x5d

    invoke-direct {p2, v0, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    new-instance p2, Landroid/view/KeyEvent;

    invoke-direct {p2, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :goto_77
    return v1

    :pswitch_78
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result p1

    sub-float/2addr p1, v3

    cmpl-float p2, p1, v2

    if-ltz p2, :cond_89

    iget-object p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->W:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_9f

    :cond_89
    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    new-instance p2, Landroid/view/KeyEvent;

    const/16 v2, 0x5c

    invoke-direct {p2, v0, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object p1, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    new-instance p2, Landroid/view/KeyEvent;

    invoke-direct {p2, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :goto_9f
    return v1

    :cond_a0
    invoke-direct {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->j()V

    return v1

    :cond_a4
    :goto_a4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_aa
    .packed-switch 0x13
        :pswitch_78
        :pswitch_46
        :pswitch_35
        :pswitch_1a
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->l0:Z

    const/4 v1, 0x0

    const-string v2, "input_method"

    const/16 v3, 0x61

    const/4 v4, 0x1

    if-nez v0, :cond_59

    const/4 v0, 0x4

    if-eq p1, v0, :cond_40

    const/16 v0, 0x60

    if-eq p1, v0, :cond_30

    if-eq p1, v3, :cond_40

    const/16 v0, 0x63

    if-eq p1, v0, :cond_30

    const/16 v0, 0x64

    if-eq p1, v0, :cond_30

    const/16 v0, 0x66

    if-eq p1, v0, :cond_30

    const/16 v0, 0x67

    if-eq p1, v0, :cond_30

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_30

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_30

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_30
    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->X:Landroid/view/InputDevice;

    if-eqz v0, :cond_3b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-ne v0, v1, :cond_3b

    return v4

    :cond_3b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_40
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    if-eqz p2, :cond_55

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p1

    if-eqz p1, :cond_55

    return v4

    :cond_55
    invoke-virtual {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->onBackPressed()V

    return v4

    :cond_59
    if-eq p1, v3, :cond_60

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_60
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    if-eqz p2, :cond_75

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p1

    if-eqz p1, :cond_75

    return v4

    :cond_75
    invoke-virtual {p0}, Lcom/gameloft/ingamebrowser/InGameBrowser;->onBackPressed()V

    return v4
.end method

.method public onPause()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    if-eqz v0, :cond_d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_d

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_d
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/gameloft/ingamebrowser/InGameBrowser;->L:Landroid/webkit/WebView;

    if-eqz v0, :cond_10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_10

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_10
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const-string v2, "#a3a3a3"

    const/4 v3, 0x1

    if-eqz p2, :cond_6b

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq p2, v3, :cond_44

    const/4 v6, 0x2

    if-eq p2, v6, :cond_19

    return v4

    :cond_19
    cmpg-float p2, v0, v5

    if-ltz p2, :cond_3e

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v0, p2

    if-gtz p2, :cond_3e

    cmpg-float p2, v1, v5

    if-ltz p2, :cond_3e

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-lez p2, :cond_34

    goto :goto_3e

    :cond_34
    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    goto :goto_43

    :cond_3e
    :goto_3e
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    :goto_43
    return v3

    :cond_44
    cmpg-float p2, v0, v5

    if-ltz p2, :cond_65

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v0, p2

    if-gtz p2, :cond_65

    cmpg-float p2, v1, v5

    if-ltz p2, :cond_65

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-gtz p2, :cond_65

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/gameloft/ingamebrowser/InGameBrowser;->c(I)V

    :cond_65
    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    return v3

    :cond_6b
    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    return v3
.end method
