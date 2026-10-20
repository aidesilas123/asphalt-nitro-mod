###### Class com.gameloft.didomiwrapper.DidomiWrapper (com.gameloft.didomiwrapper.DidomiWrapper)
.class public Lcom/gameloft/didomiwrapper/DidomiWrapper;
.super Ljava/lang/Object;
.source "DidomiWrapper.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/gameloft/didomiwrapper/DidomiWrapper;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/gameloft/didomiwrapper/DidomiWrapper;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/gameloft/didomiwrapper/DidomiWrapper;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetConsentStatus(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static GetConsentStatusForPurpose(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static GetIABConsentString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static GetIABVendorCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static GetNonIABVendorCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static GetText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static GetTotalVendorCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static GetTranslatedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static HasAdvertisingIdClient()Z
    .registers 1

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Lcom/gameloft/didomiwrapper/Utils;->ClassExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static HideNotice()V
    .locals 0

    return-void
.end method

.method public static HidePreferences()V
    .locals 0

    return-void
.end method

.method public static Initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static InitializeNotifications()V
    .locals 0

    return-void
.end method

.method public static IsConsentRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static IsNoticeVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static IsPreferencesVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static IsReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static IsUserConsentStatusPartial()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static ResetData()V
    .locals 0

    return-void
.end method

.method public static SetActivity(Ljava/lang/Object;)Z
    .registers 1

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p0}, Lcom/gameloft/didomiwrapper/Utils;->SetActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static SetLogLevel(I)V
    .locals 0

    return-void
.end method

.method public static SetUserAgreeToAll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static SetUserDisagreeToAll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static SetupUI()V
    .locals 0

    return-void
.end method

.method public static ShouldConsentBeCollected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static ShowNotice()V
    .locals 0

    return-void
.end method

.method public static ShowPreferences()V
    .locals 0

    return-void
.end method

.method public static ShowVendors()V
    .locals 0

    return-void
.end method

.method public static UpdateSelectedLanguage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/gameloft/didomiwrapper/DidomiWrapper;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapper;->InitializeNotifications()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/gameloft/didomiwrapper/DidomiWrapper;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic lambda$InitializeNotifications$0()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnReady()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method static synthetic lambda$InitializeNotifications$1()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;->NativeOnError()V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
