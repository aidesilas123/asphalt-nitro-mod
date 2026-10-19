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
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/Didomi;->getCurrentUserStatus()Lio/didomi/sdk/models/CurrentUserStatus;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/models/CurrentUserStatus;->getVendors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;

    if-nez v2, :cond_24

    const-string v2, "c:"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;

    :cond_24
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;->getEnabled()Z

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2d

    if-eqz p0, :cond_2d

    const/4 v0, 0x1

    :catch_2d
    :cond_2d
    return v0
.end method

.method public static GetConsentStatusForPurpose(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/Didomi;->getCurrentUserStatus()Lio/didomi/sdk/models/CurrentUserStatus;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/models/CurrentUserStatus;->getPurposes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;->getEnabled()Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1c

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    :catch_1c
    :cond_1c
    return v0
.end method

.method public static GetIABConsentString()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/Didomi;->getCurrentUserStatus()Lio/didomi/sdk/models/CurrentUserStatus;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/models/CurrentUserStatus;->getConsentString()Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_30

    :try_start_e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {}, Lcom/gameloft/didomiwrapper/Utils;->GetActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "IABTCF_TCString"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v3, "IABConsent_ConsentString"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2e} :catch_2f

    goto :goto_31

    :catch_2f
    move-object v0, v1

    :catch_30
    move-object v1, v0

    :cond_31
    :goto_31
    return-object v1
.end method

.method public static GetIABVendorCount()I
    .registers 1

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->getIabVendorCount()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public static GetNonIABVendorCount()I
    .registers 1

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->getNonIabVendorCount()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public static GetText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/didomi/sdk/Didomi;->getText(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_1b

    :try_start_13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_1a

    if-eqz v1, :cond_1a

    goto :goto_1b

    :catch_1a
    :cond_1a
    move-object v0, p0

    :catch_1b
    :goto_1b
    return-object v0
.end method

.method public static GetTotalVendorCount()I
    .registers 1

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->getTotalVendorCount()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public static GetTranslatedText(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/didomi/sdk/Didomi;->getTranslatedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_12

    :try_start_a
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_11

    if-eqz v1, :cond_11

    goto :goto_12

    :catch_11
    :cond_11
    move-object v0, p0

    :catch_12
    :goto_12
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
    .registers 1

    new-instance v0, Lcom/gameloft/didomiwrapper/DidomiWrapper$d;

    invoke-direct {v0}, Lcom/gameloft/didomiwrapper/DidomiWrapper$d;-><init>()V

    invoke-static {v0}, Lcom/gameloft/didomiwrapper/Utils;->RunOnMainThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static HidePreferences()V
    .registers 1

    new-instance v0, Lcom/gameloft/didomiwrapper/DidomiWrapper$f;

    invoke-direct {v0}, Lcom/gameloft/didomiwrapper/DidomiWrapper$f;-><init>()V

    invoke-static {v0}, Lcom/gameloft/didomiwrapper/Utils;->RunOnMainThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    move-object p1, v1

    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object p2, v1

    :cond_f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object p3, v1

    :cond_16
    new-instance v0, Lcom/gameloft/didomiwrapper/DidomiWrapper$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gameloft/didomiwrapper/DidomiWrapper$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/didomiwrapper/Utils;->RunOnMainThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static InitializeNotifications()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/gameloft/didomiwrapper/DidomiWrapper;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    sget-object v1, Lcom/gameloft/didomiwrapper/b;->a:Lcom/gameloft/didomiwrapper/b;

    invoke-virtual {v0, v1}, Lio/didomi/sdk/Didomi;->onReady(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V

    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    sget-object v1, Lcom/gameloft/didomiwrapper/a;->a:Lcom/gameloft/didomiwrapper/a;

    invoke-virtual {v0, v1}, Lio/didomi/sdk/Didomi;->onError(Lio/didomi/sdk/functionalinterfaces/DidomiCallable;)V

    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    new-instance v1, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;

    invoke-direct {v1}, Lcom/gameloft/didomiwrapper/DidomiWrapperEventListener;-><init>()V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/Didomi;->addEventListener(Lio/didomi/sdk/events/EventListener;)V

    :cond_28
    return-void
.end method

.method public static IsConsentRequired()Z
    .registers 1

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->shouldUserStatusBeCollected()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public static IsNoticeVisible()Z
    .registers 1

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->isNoticeVisible()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public static IsPreferencesVisible()Z
    .registers 1

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->isPreferencesVisible()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public static IsReady()Z
    .registers 1

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->isReady()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public static IsUserConsentStatusPartial()Z
    .registers 1

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->isUserStatusPartial()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public static ResetData()V
    .registers 1

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->reset()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
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
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/16 v0, 0x10

    if-eq p0, v0, :cond_11

    const/16 v0, 0x11

    goto :goto_11

    :cond_e
    const/4 v1, 0x3

    goto :goto_11

    :cond_10
    const/4 v1, 0x4

    :cond_11
    :goto_11
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object p0

    invoke-virtual {p0, v1}, Lio/didomi/sdk/Didomi;->setLogLevel(I)V

    return-void
.end method

.method public static SetUserAgreeToAll()Z
    .registers 1

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->setUserAgreeToAll()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public static SetUserDisagreeToAll()Z
    .registers 1

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->setUserDisagreeToAll()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public static SetupUI()V
    .registers 1

    new-instance v0, Lcom/gameloft/didomiwrapper/DidomiWrapper$b;

    invoke-direct {v0}, Lcom/gameloft/didomiwrapper/DidomiWrapper$b;-><init>()V

    invoke-static {v0}, Lcom/gameloft/didomiwrapper/Utils;->RunOnMainThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ShouldConsentBeCollected()Z
    .registers 1

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->shouldUserStatusBeCollected()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public static ShowNotice()V
    .registers 1

    new-instance v0, Lcom/gameloft/didomiwrapper/DidomiWrapper$c;

    invoke-direct {v0}, Lcom/gameloft/didomiwrapper/DidomiWrapper$c;-><init>()V

    invoke-static {v0}, Lcom/gameloft/didomiwrapper/Utils;->RunOnMainThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ShowPreferences()V
    .registers 1

    new-instance v0, Lcom/gameloft/didomiwrapper/DidomiWrapper$e;

    invoke-direct {v0}, Lcom/gameloft/didomiwrapper/DidomiWrapper$e;-><init>()V

    invoke-static {v0}, Lcom/gameloft/didomiwrapper/Utils;->RunOnMainThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ShowVendors()V
    .registers 1

    new-instance v0, Lcom/gameloft/didomiwrapper/DidomiWrapper$g;

    invoke-direct {v0}, Lcom/gameloft/didomiwrapper/DidomiWrapper$g;-><init>()V

    invoke-static {v0}, Lcom/gameloft/didomiwrapper/Utils;->RunOnMainThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static UpdateSelectedLanguage(Ljava/lang/String;)V
    .registers 2

    :try_start_0
    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/didomi/sdk/Didomi;->updateSelectedLanguage(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
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
